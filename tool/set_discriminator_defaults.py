#!/usr/bin/env python3
"""Default the discriminator field of every subtype of a discriminated parent.

openapi-generator emits, for a subtype such as SingleEntityFilter, an empty
builder hook (`static void _defaults(SingleEntityFilterBuilder b) => b;`; the
generate-client.sh patch removes the broken `b..type = b.discriminatorValue`).
Callers therefore have to set the discriminator by hand (`type: 'singleEntity'`,
`entityType` on DeviceId), otherwise built_value refuses to build the object or
the wrong JSON is sent.

The parent already records what each subtype stands for:

    static const String discriminatorFieldName = r'type';
    static const Map<String, Type> discriminatorMapping = {
      r'singleEntity': SingleEntityFilter, ...};

This script reads those two declarations and turns the subtype hook into
`=> b..type = r'singleEntity';` (String field) or `=> b..entityType =
EntityType.DEVICE;` (generated enum field, the constant whose wireName is the
mapping key). Subtypes mapped from several keys, and fields of any other type,
are skipped and reported. A hook that cannot be found is template drift and
fails the run. Running it again changes nothing.

Usage: set_discriminator_defaults.py <model dir>
"""

import os
import re
import sys

FIELD_DECL = re.compile(r"static const String discriminatorFieldName = r'([^']+)';")
MAPPING_DECL = re.compile(
    r'static const Map<String, Type> discriminatorMapping = \{(.*?)\};', re.DOTALL)
MAPPING_ENTRY = re.compile(r"r'([^']*)':\s*([\w$]+)\s*,")
CLASS_DECL = re.compile(r'^(?:abstract )?class ([\w$]+)', re.MULTILINE)
ENUM_CONST = re.compile(
    r"@BuiltValueEnumConst\([^)]*wireName: r'([^']*)'[^)]*\)\s*"
    r'static const \w+ (\w+) =')


def fail(message):
    sys.exit(f'set_discriminator_defaults.py: {message}')


def read(path):
    with open(path, encoding='utf-8') as f:
        return f.read()


def write(path, text):
    with open(path, 'w', encoding='utf-8') as f:
        f.write(text)


def index_classes(model_dir):
    """Maps every generated class name to its file name."""
    classes = {}
    for name in sorted(os.listdir(model_dir)):
        if name.endswith('.dart') and not name.endswith('.g.dart'):
            for cls in CLASS_DECL.findall(read(os.path.join(model_dir, name))):
                classes[cls] = name
    return classes


def field_type(parent_src, parent, field):
    """The Dart type the parent declares for the discriminator field."""
    match = re.search(
        r"@BuiltValueField\(wireName: r'%s'\)\s*([\w$<>, ]+?)\??\s+get (\w+);"
        % re.escape(field), parent_src)
    if not match:
        fail(f'{parent}: no declaration of discriminator field "{field}"')
    return match.group(1), match.group(2)


def enum_constants(model_dir, classes, type_name):
    """wireName -> constant name of a generated enum, or None if not one."""
    file_name = classes.get(type_name)
    if not file_name:
        return None
    src = read(os.path.join(model_dir, file_name))
    if f'class {type_name} extends EnumClass' not in src:
        return None
    return {wire: const for wire, const in ENUM_CONST.findall(src)}, file_name


def add_import(src, import_line):
    if import_line in src:
        return src
    first = src.index('import ')
    return src[:first] + import_line + '\n' + src[first:]


def main():
    if len(sys.argv) != 2:
        fail('usage: set_discriminator_defaults.py <model dir>')
    model_dir = sys.argv[1]
    classes = index_classes(model_dir)
    updated = skipped = strings = enums = 0

    for parent_file in sorted(os.listdir(model_dir)):
        if not parent_file.endswith('.dart') or parent_file.endswith('.g.dart'):
            continue
        parent_src = read(os.path.join(model_dir, parent_file))
        field_match = FIELD_DECL.search(parent_src)
        mapping_match = MAPPING_DECL.search(parent_src)
        if not field_match or not mapping_match:
            continue
        parent = CLASS_DECL.search(parent_src).group(1)
        if '@BuiltValue(instantiable: false)' not in parent_src:
            # oneOf wrapper: it has no discriminator field to inherit.
            print(f'skip {parent}: not an inheritance parent (oneOf wrapper)')
            skipped += len(MAPPING_ENTRY.findall(mapping_match.group(1)))
            continue
        field = field_match.group(1)
        entries = MAPPING_ENTRY.findall(mapping_match.group(1))
        keys_of = {}
        for key, subtype in entries:
            keys_of.setdefault(subtype, []).append(key)

        type_name, dart_field = field_type(parent_src, parent, field)
        enum = None
        if type_name != 'String':
            enum = enum_constants(model_dir, classes, type_name)
            if enum is None:
                print(f'skip {parent}: discriminator field {field} has '
                      f'unsupported type {type_name}')
                skipped += len(keys_of)
                continue

        for subtype, keys in sorted(keys_of.items()):
            if len(keys) != 1:
                print(f'skip {subtype}: mapped from {len(keys)} keys {keys}')
                skipped += 1
                continue
            key = keys[0]
            if enum is None:
                value, import_line = f"r'{key}'", None
            else:
                constants, enum_file = enum
                if key not in constants:
                    print(f'skip {subtype}: {type_name} has no constant for {key}')
                    skipped += 1
                    continue
                value = f'{type_name}.{constants[key]}'
                import_line = (
                    re.search(r"^import '[^']*/%s';$" % re.escape(enum_file),
                              parent_src, re.MULTILINE))
                if not import_line:
                    fail(f'{parent_file}: no import of {enum_file}')
                import_line = import_line.group(0)

            if subtype not in classes:
                fail(f'{parent}: subtype {subtype} has no generated class')
            path = os.path.join(model_dir, classes[subtype])
            src = read(path)
            # Whitespace-tolerant: the hook may already be dart-formatted.
            hook = re.compile(
                r'static void _defaults\(\s*%sBuilder b,?\s*\)\s*=>\s*b'
                % re.escape(subtype))
            wanted = re.compile(
                hook.pattern + r'\s*\.\.\s*%s\s*=' % re.escape(dart_field))
            if wanted.search(src):
                continue
            match = hook.search(src)
            if not match or not src[match.end():].lstrip().startswith(';'):
                fail(f'{classes[subtype]}: expected an empty _defaults hook '
                     f'for {subtype} (template drift?)')
            semi = src.index(';', match.end())
            src = (src[:match.end()] + f'..{dart_field} = {value}' + src[semi:])
            if import_line:
                src = add_import(src, import_line)
            write(path, src)
            updated += 1
            if enum is None:
                strings += 1
            else:
                enums += 1

    print(f'discriminator defaults: {updated} subtypes updated '
          f'({strings} string, {enums} enum), {skipped} skipped')


if __name__ == '__main__':
    main()
