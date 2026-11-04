#!/usr/bin/env python3
"""Generate per-operation serializer registries for a dart-dio/built_value client.

The generated `standardSerializers` lists every model of the spec, so any code
that touches it keeps all ~1000 models (and their serializers) in an AOT build.
This script replaces that dependency in the API classes:

* Every model file and every parameterised collection type (BuiltList<T>,
  BuiltMap<K, V>, ...) becomes a node of a dependency graph. A node's edges are
  the types named in the FullType expressions of its serializer, which includes
  the subtypes a discriminated parent dispatches to.
* Each node gets a register function that adds its serializer (or builder
  factory) once and then registers its dependencies.
* Each API operation registers only the roots it uses, through one shared
  registry that grows on demand (lib/src/api_serializers.dart). An operation the
  application never calls is tree-shaken together with the part of the graph
  only it needs.

Usage: generate_api_serializers.py <edition output dir> <package name> [roots file]

The optional roots file lists models (one per line, `#` comments and blank lines
allowed) that get a stable, operation-independent `register<Model>` function even
if no operation names them, for hand-written code that (de)serializes them.
"""

import os
import re
import sys

COLLECTION_BUILDERS = {
    'BuiltList': 'ListBuilder',
    'BuiltSet': 'SetBuilder',
    'BuiltMap': 'MapBuilder',
    'BuiltListMultimap': 'ListMultimapBuilder',
    'BuiltSetMultimap': 'SetMultimapBuilder',
}

# Types the base registry already serializes (built_value core serializers plus
# the extra ones standardSerializers adds), so they need no node.
BUILTIN_TYPES = {
    'String', 'int', 'double', 'num', 'bool', 'BigInt', 'DateTime', 'Duration',
    'Uri', 'RegExp', 'Int64', 'Uint8List', 'Object', 'JsonObject', 'Date',
    'MultipartFile', 'OneOf', 'AnyOf',
}

SERIALIZER_DECL = re.compile(r'static (?:const )?Serializer<([\w$]+)> (?:get )?serializer\b')
IDENTIFIER = re.compile(r'[A-Za-z_$][\w$]*')
FULL_TYPE = re.compile(r'\bFullType\b')
API_METHOD = re.compile(r'^  Future<Response<.*>> (\w+)\(\{', re.MULTILINE)


class FullType:
    def __init__(self, name, nullable, params):
        self.name = name
        self.nullable = nullable
        self.params = params

    def code(self, nullable=None):
        nullable = self.nullable if nullable is None else nullable
        ctor = 'FullType.nullable' if nullable else 'FullType'
        if not self.params:
            return f'{ctor}({self.name})'
        return f'{ctor}({self.name}, [{", ".join(p.code() for p in self.params)}])'

    def dart_type(self):
        args = f'<{", ".join(p.dart_type() for p in self.params)}>' if self.params else ''
        return f'{self.name}{args}{"?" if self.nullable else ""}'

    def is_collection(self):
        return self.name in COLLECTION_BUILDERS and bool(self.params)


def skip_ws(src, i):
    while i < len(src) and src[i].isspace():
        i += 1
    return i


def parse_full_type(src, i, where):
    """Parse the FullType expression at src[i] ('FullType...'). Returns
    (FullType or None, index after it); None for non-expressions such as
    `FullType specifiedType` parameters or FullType.unspecified."""
    i = skip_ws(src, i + len('FullType'))
    nullable = False
    if src.startswith('.nullable', i):
        nullable = True
        i = skip_ws(src, i + len('.nullable'))
    elif src.startswith('.unspecified', i):
        return None, i + len('.unspecified')
    if i >= len(src) or src[i] != '(':
        return None, i
    i = skip_ws(src, i + 1)
    m = IDENTIFIER.match(src, i)
    if not m:
        raise SystemExit(f'Error: cannot parse FullType in {where}: {src[i:i + 80]!r}')
    name = m.group()
    i = skip_ws(src, m.end())
    if name in ('oneOf', 'anyOf') and src.startswith('.valueType', i):
        # OneOf/AnyOf wrappers serialize their value by its runtime type; the
        # alternatives are listed in the same file's FullType(OneOf, [...]).
        return None, src.index(')', i) + 1
    params = []
    if src[i] == ',':
        i = skip_ws(src, i + 1)
        if src[i] == '[':
            i = skip_ws(src, i + 1)
            while src[i] != ']':
                if not src.startswith('FullType', i):
                    raise SystemExit(f'Error: unexpected FullType parameter in {where}: {src[i:i + 80]!r}')
                param, i = parse_full_type(src, i, where)
                params.append(param)
                i = skip_ws(src, i)
                if src[i] == ',':
                    i = skip_ws(src, i + 1)
            i = skip_ws(src, i + 1)
            if src[i] == ',':
                i = skip_ws(src, i + 1)
    if src[i] != ')':
        # e.g. FullType(object.runtimeType): the type is only known at runtime,
        # so the graph would be incomplete. Fail instead of guessing.
        raise SystemExit(f'Error: non-literal FullType in {where}: {src[i - 40:i + 40]!r}')
    return FullType(name, nullable, params), i + 1


def full_types(src, where):
    # Drop comment lines; doc comments may mention FullType in prose.
    src = '\n'.join(line for line in src.split('\n') if not line.lstrip().startswith('//'))
    found = []
    i = 0
    while True:
        m = FULL_TYPE.search(src, i)
        if not m:
            return found
        ft, i = parse_full_type(src, m.start(), where)
        if ft is not None:
            found.append(ft)


def lower_first(name):
    return name[0].lower() + name[1:]


def collection_fn_name(ft):
    def part(t):
        base = t.name.replace('Built', '')
        if t.params:
            joiner = 'To' if t.name in ('BuiltMap', 'BuiltListMultimap', 'BuiltSetMultimap') else ''
            base += 'Of' + joiner.join(part(p) for p in t.params)
        return ('Nullable' if t.nullable else '') + base
    return '_' + lower_first(part(FullType(ft.name, False, ft.params)))


class Graph:
    def __init__(self):
        self.models = {}       # class name -> model node key
        self.nodes = {}        # key -> node dict
        self.collections = {}  # canonical FullType code -> node key

    def add_model_file(self, path):
        src = open(path).read()
        classes = SERIALIZER_DECL.findall(src)
        if not classes:
            return
        stem = os.path.basename(path)[:-len('.dart')]
        main = next((c for c in classes if re.sub(r'(?<!^)(?=[A-Z])', '_', c).lower() == stem), classes[0])
        key = ('model', stem)
        self.nodes[key] = {
            'fn': '_' + lower_first(main),
            'classes': classes,
            'import': stem,
            'types': full_types(src, path),
            'deps': set(),
        }
        for c in classes:
            self.models[c] = key

    def nodes_for(self, ft, where):
        """Nodes needed to (de)serialize `ft`; empty for built-in types."""
        if ft.name in ('OneOf', 'AnyOf'):
            # No builder factory: one_of_serializer builds the wrapper itself.
            return set().union(*(self.nodes_for(p, where) for p in ft.params))
        if ft.is_collection():
            code = ft.code(nullable=False)
            if code not in self.collections:
                key = ('collection', code)
                self.collections[code] = key
                normalized = FullType(ft.name, False, ft.params)
                self.nodes[key] = {
                    'fn': collection_fn_name(ft),
                    'type': normalized,
                    'deps': set().union(*(self.nodes_for(p, where) for p in ft.params)),
                }
            return {self.collections[code]}
        if ft.name in self.models:
            return {self.models[ft.name]}
        if ft.name in BUILTIN_TYPES or ft.name in COLLECTION_BUILDERS:
            return set()
        raise SystemExit(f'Error: unknown type {ft.name!r} in {where}; add it to BUILTIN_TYPES '
                         'if the base registry serializes it')

    def link_models(self):
        for key, node in list(self.nodes.items()):
            if key[0] != 'model':
                continue
            for ft in node['types']:
                node['deps'] |= self.nodes_for(ft, node['import']) - {key}

    def closure(self, roots):
        seen = set()
        stack = list(roots)
        while stack:
            key = stack.pop()
            if key not in seen:
                seen.add(key)
                stack.extend(self.nodes[key]['deps'])
        return seen


def patch_apis(api_dir, package, graph, root_sets):
    """Point every operation at its own roots. Fills and returns the root sets."""
    import_line = f"import 'package:{package}/src/api_serializers.dart';\n"
    for name in sorted(os.listdir(api_dir)):
        if not name.endswith('_api.dart'):
            continue
        path = os.path.join(api_dir, name)
        src = unpatch_api(open(path).read(), import_line)

        for old, new in (('final Serializers _serializers;', 'final Serializers? _serializers;'),):
            if src.count(old) != 1:
                raise SystemExit(f'Error: expected one {old!r} in {path}')
            src = src.replace(old, new)
        src, n = re.subn(r'const (\w+)\(this\._dio, this\._serializers\);',
                         r'const \1(this._dio, [this._serializers]);', src)
        if n != 1:
            raise SystemExit(f'Error: constructor not found in {path}')

        edits = []
        for m in API_METHOD.finditer(src):
            body_start = src.index(') async {\n', m.end()) + len(') async {\n')
            body_end = src.index('\n  }\n', body_start)
            body = src[body_start:body_end]
            if '_serializers' not in body:
                continue
            where = f'{name}:{m.group(1)}'
            roots = set().union(*(graph.nodes_for(ft, where) for ft in full_types(body, where)))
            # Roots reachable from another root add nothing.
            roots = {r for r in roots
                     if not any(r in graph.closure(graph.nodes[o]['deps']) for o in roots if o != r)}
            fn = root_set_fn(graph, roots, root_sets)
            arg = f'({fn})' if fn else '()'
            edits.append((body_start, f'    final _serializers = this._serializers ?? apiSerializers{arg};\n'))

        for pos, text in reversed(edits):
            src = src[:pos] + text + src[pos:]
        last_import = max(src.rfind('\nimport '), 0)
        insert_at = src.index('\n', last_import + 1) + 1
        src = src[:insert_at] + import_line + src[insert_at:]
        with open(path, 'w') as f:
            f.write(src)
    return root_sets


def unpatch_api(src, import_line):
    """Undo an earlier run of patch_apis. The generator rewrites the API files it
    produces, but a file it no longer produces stays in place already patched."""
    src = src.replace(import_line, '')
    src = re.sub(r'^    final _serializers = this\._serializers \?\? apiSerializers\(\w*\);\n', '',
                 src, flags=re.MULTILINE)
    src = src.replace('final Serializers? _serializers;', 'final Serializers _serializers;')
    return re.sub(r'const (\w+)\(this\._dio, \[this\._serializers\]\);',
                  r'const \1(this._dio, this._serializers);', src)


def root_set_fn(graph, roots, root_sets):
    if not roots:
        return None
    key = tuple(sorted(roots))
    if key not in root_sets:
        names = []
        for r in key:
            node = graph.nodes[r]
            names.append(node['classes'][0] if r[0] == 'model' else node['fn'].lstrip('_'))
        base = 'register' + 'And'.join(n[0].upper() + n[1:] for n in names[:3])
        if len(names) > 3:
            base += f'And{len(names) - 3}More'
        name, i = base, 2
        taken = {v for v in root_sets.values()}
        while name in taken:
            name, i = f'{base}{i}', i + 1
        root_sets[key] = name
    return root_sets[key]


def write_registry(path, package, graph, root_sets):
    used = graph.closure({r for roots in root_sets for r in roots})
    order = sorted(used, key=lambda k: (k[0] != 'model', graph.nodes[k]['fn']))
    ids = {k: i for i, k in enumerate(order)}

    fn_names = [graph.nodes[k]['fn'] for k in order]
    if len(set(fn_names)) != len(fn_names):
        raise SystemExit('Error: register function names collide')

    out = []
    w = out.append
    w('//\n// AUTO-GENERATED FILE, DO NOT MODIFY!\n//\n')
    w('// Generated by generate_api_serializers.py. Each API operation registers only the\n')
    w('// serializers it needs, so the operations an application does not call are\n')
    w('// tree-shaken together with their models. See that script for details.\n\n')
    w('// ignore_for_file: unused_import\n\n')
    w("import 'package:built_collection/built_collection.dart';\n")
    w("import 'package:built_value/iso_8601_date_time_serializer.dart';\n")
    w("import 'package:built_value/json_object.dart';\n")
    w("import 'package:built_value/serializer.dart';\n")
    w("import 'package:built_value/standard_json_plugin.dart';\n")
    w("import 'package:one_of_serializer/any_of_serializer.dart';\n")
    w("import 'package:one_of_serializer/one_of_serializer.dart';\n")
    w(f"import 'package:{package}/src/date_serializer.dart';\n")
    w(f"import 'package:{package}/src/model/date.dart';\n")
    for stem in sorted({graph.nodes[k]['import'] for k in used if k[0] == 'model'}):
        w(f"import 'package:{package}/src/model/{stem}.dart';\n")
    w('''
/// Serializers covering [register] and everything registered before it.
///
/// API operations call this with their own register function instead of using
/// `standardSerializers`, which references every model of the spec.
Serializers apiSerializers([void Function(ApiSerializersRegistry)? register]) =>
    _registry._ensure(register);

final ApiSerializersRegistry _registry = ApiSerializersRegistry._();

/// The registry shared by all API operations. It starts with the serializers
/// `standardSerializers` adds on top of built_value's core ones and grows as
/// operations register their types; [Serializers] is immutable, so it is
/// rebuilt only after something new was registered.
class ApiSerializersRegistry {
  ApiSerializersRegistry._();

  final SerializersBuilder _builder = Serializers().toBuilder()
    ..add(const OneOfSerializer())
    ..add(const AnyOfSerializer())
    ..add(const DateSerializer())
    ..add(Iso8601DateTimeSerializer())
    ..addPlugin(StandardJsonPlugin());
  final Set<int> _visited = <int>{};
  Serializers? _serializers;

  Serializers _ensure(void Function(ApiSerializersRegistry)? register) {
    if (register != null) register(this);
    return _serializers ??= _builder.build();
  }

  /// Whether node [id] is new; a new node invalidates the built serializers.
  bool _visit(int id) {
    if (!_visited.add(id)) return false;
    _serializers = null;
    return true;
  }
}
''')
    w('\n// Register functions used by the API operations.\n')
    for key, name in sorted(root_sets.items(), key=lambda kv: kv[1]):
        calls = ' '.join(f'{graph.nodes[r]["fn"]}(r);' for r in key)
        w(f'\nvoid {name}(ApiSerializersRegistry r) {{ {calls} }}\n')

    w('\n// One register function per model file and per parameterised collection type.\n')
    for key in order:
        node = graph.nodes[key]
        w(f'\nvoid {node["fn"]}(ApiSerializersRegistry r) {{\n')
        w(f'  if (!r._visit({ids[key]})) return;\n')
        if key[0] == 'model':
            for c in node['classes']:
                w(f'  r._builder.add({c}.serializer);\n')
        else:
            ft = node['type']
            builder = COLLECTION_BUILDERS[ft.name]
            args = ', '.join(p.dart_type() for p in ft.params)
            w(f'  r._builder.addBuilderFactory(const {ft.code()}, () => {builder}<{args}>());\n')
        for dep in sorted(node['deps'], key=lambda d: graph.nodes[d]['fn']):
            w(f'  {graph.nodes[dep]["fn"]}(r);\n')
        w('}\n')

    with open(path, 'w') as f:
        f.write(''.join(out))
    return len(used)


def read_roots(path, graph):
    """Model names listed in the roots file, validated against the graph."""
    names = []
    with open(path) as f:
        for line in f.read().split('\n'):
            line = line.split('#', 1)[0].strip()
            if line:
                names.append(line)
    unknown = [n for n in names if n not in graph.models]
    if unknown:
        raise SystemExit(f'Error: unknown model(s) in {path}: {", ".join(unknown)}')
    return names


def main():
    if len(sys.argv) not in (3, 4):
        raise SystemExit(__doc__)
    output_dir, package = sys.argv[1], sys.argv[2]
    src_dir = os.path.join(output_dir, 'lib', 'src')
    model_dir = os.path.join(src_dir, 'model')

    graph = Graph()
    for name in sorted(os.listdir(model_dir)):
        if name.endswith('.dart') and not name.endswith('.g.dart'):
            graph.add_model_file(os.path.join(model_dir, name))
    graph.link_models()

    # Facade roots first: their singleton names are fixed, so an operation with
    # the same root set shares the function and no other set can take the name.
    root_sets = {}
    if len(sys.argv) == 4:
        for model in read_roots(sys.argv[3], graph):
            root_set_fn(graph, {graph.models[model]}, root_sets)
    patch_apis(os.path.join(src_dir, 'api'), package, graph, root_sets)
    nodes = write_registry(os.path.join(src_dir, 'api_serializers.dart'), package, graph, root_sets)
    print(f'api_serializers.dart: {len(root_sets)} root sets over {nodes} nodes '
          f'({len(graph.models)} serializable classes in the spec)')


if __name__ == '__main__':
    main()
