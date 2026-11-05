#!/bin/bash
#
# Copyright © 2021-2026 ThingsBoard, Inc.
#
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
#

# Generates the Dart REST client from the OpenAPI spec with openapi-generator-cli (dart-dio).
#
# Usage:
#   tool/generate-client.sh [options] <edition>
#
# Arguments:
#   edition    onprem | all   (see "Editions" below)
#
# Options:
#   --verbose  Show full generator output (per-file writes, operations, etc.)
#   --dry-run  Generate and patch only: skip build_runner and everything after
#              it (common/ copy, formatting, git staging).
#
# Examples:
#   tool/generate-client.sh onprem             # Generate thingsboard_client from spec/
#   tool/generate-client.sh --dry-run onprem   # Generate + patch only
#
# What it does (per edition):
#   1. Validates the OpenAPI spec
#   2. Checks for duplicate operationIds (suffixed by the ThingsBoard spec generator)
#   3. Generates the Dart/Dio client (per-tag API classes + built_value models)
#   4. Patches the pubspec.yaml SDK constraint and version
#   5. Rewrites analysis_options.yaml to exclude generated code from lint
#   6. Patches generated source for generator bugs, sets discriminator defaults
#      and generates per-operation serializer registries
#   7. Runs dart pub get + build_runner, copies common/, writes .pubignore, adds
#      pubspec dependencies, generates the ThingsboardClient accessor class and
#      barrel exports, removes unused imports, sets license headers, runs dart format
#   8. Stages generated output with git add (unless --dry-run)
#
# Output log: tool/generate-client.log (overwritten on each run, git-ignored)
#
# Prerequisites: Java, Dart/Flutter SDK, Perl, Python3
#
# Flags intentionally omitted:
#   JsonNode=dynamic schema mapping         -- produces broken 'import dynamic'
#   openapi-normalizer with tag collapse    -- collapses into monolithic class
#

set -euo pipefail

# Pin the sort order so the generated accessor class lists APIs the same on every machine.
export LC_ALL=C

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

# Editions: an edition is one package generated from <edition_dir>/spec/openapi.json;
# common/ is copied into every edition. To add a cloud client: put its spec at
# cloud/spec/openapi.json, add "cloud" to EDITIONS and a `cloud)` branch to each
# edition_* function. It is generated into cloud/ as a separate package.

EDITIONS=("onprem")

edition_dir() {
  case "$1" in
    onprem) echo "$REPO_ROOT" ;;
  esac
}

edition_package() {
  case "$1" in
    onprem) echo "thingsboard_client" ;;
  esac
}

edition_label() {
  case "$1" in
    onprem) echo "ThingsBoard" ;;
  esac
}

# ThingsBoard server version the edition targets; also the minimum server
# version the client accepts (tbMinServerVersion).
edition_server_version() {
  case "$1" in
    onprem) echo "4.4.0" ;;
  esac
}

# Package version. Independent of edition_server_version: the package follows
# its own semver (5.0.0 is the first release of the unified client), while
# tbMinServerVersion stays at the server version.
edition_version() {
  case "$1" in
    onprem) echo "5.0.0" ;;
  esac
}

pascal_case() {
  echo "$1" | perl -pe 's/(^|_)([a-z])/uc($2)/ge'
}

VERBOSE=false
DRY_RUN=false
while [ $# -gt 0 ]; do
  case "$1" in
    --verbose) VERBOSE=true; shift ;;
    --dry-run) DRY_RUN=true; shift ;;
    -*) echo "Unknown option: $1"; exit 1 ;;
    *) break ;;
  esac
done

if [ $# -eq 0 ]; then
  echo "Usage: $0 [--verbose] [--dry-run] <edition>"
  echo "  edition: ${EDITIONS[*]} | all"
  exit 1
fi

EDITION="$1"
LOG_FILE="$SCRIPT_DIR/generate-client.log"

exec > >(tee "$LOG_FILE") 2>&1

OPENAPI_GENERATOR_VERSION="7.26.0"
GENERATOR_CACHE_DIR="${OPENAPI_GENERATOR_CACHE_DIR:-${HOME}/.cache/openapi-generator}"
GENERATOR_JAR="$GENERATOR_CACHE_DIR/openapi-generator-cli-${OPENAPI_GENERATOR_VERSION}.jar"

if [ ! -f "$GENERATOR_JAR" ]; then
  echo "Downloading openapi-generator-cli ${OPENAPI_GENERATOR_VERSION}..."
  mkdir -p "$GENERATOR_CACHE_DIR"
  curl -fSL -o "$GENERATOR_JAR" \
    "https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/${OPENAPI_GENERATOR_VERSION}/openapi-generator-cli-${OPENAPI_GENERATOR_VERSION}.jar"
fi

openapi-generator-cli() { java -jar "$GENERATOR_JAR" "$@"; }

# Fixes generator bugs in the generated Dart source before build_runner, so the
# .g.dart output is clean. (A) is handled by --name-mappings (Step 3) and (D) in
# the spec (thingsboard/thingsboard#16510); (B), (C) and (E) are patched below.
patch_generated_sources() {
  local output_dir="$1"
  local model_dir="$output_dir/lib/src/model"
  local api_dir="$output_dir/lib/src/api"

  echo "Patching generated Dart source for known compiler errors..."

  # (B) Bare enum defaults: the generator emits `= FAIL` / `= RANDOM` without the class.
  echo "  (B) Qualifying bare enum defaults (FAIL → NameConflictPolicy.FAIL, RANDOM → UniquifyStrategy.RANDOM)"
  if ls "$api_dir/"*.dart >/dev/null 2>&1; then
    perl -i -pe 's/(NameConflictPolicy\? \w+) = FAIL\b/$1 = NameConflictPolicy.FAIL/g' "$api_dir/"*.dart
    perl -i -pe 's/(UniquifyStrategy\? \w+) = RANDOM\b/$1 = UniquifyStrategy.RANDOM/g' "$api_dir/"*.dart
  fi

  # (C) _defaults hooks assign b.discriminatorValue (String?) to enum-typed builder
  #     fields, or to builders that have no such field. The assignment is a no-op at
  #     runtime (the serializer sets the value), so it is replaced with `b`.
  echo "  (C) Removing discriminatorValue assignments from _defaults hooks"
  if ls "$model_dir/"*.dart >/dev/null 2>&1; then
    perl -i -pe 's/(static void _defaults\(\w+Builder b\) => b)\.\.\w+=b\.discriminatorValue;/$1;/' "$model_dir/"*.dart
  fi

  # (E) Missing JsonObject import. The upstream OutputStrategy has no annotations, so
  #     the spec has an empty schema that dart-dio maps to JsonObject; Output.strategy
  #     refs it, and AttributesOutput / TimeSeriesOutput inherit that type but the
  #     generator emits no json_object.dart import. Retire once upstream annotates
  #     OutputStrategy. Only library files are patched: .g.dart parts share the
  #     library's imports.
  echo "  (E) Adding missing json_object.dart import where JsonObject is used"
  local json_object_import_re="^import 'package:built_value/json_object\\.dart';"
  local json_object_patched=0
  if ls "$model_dir/"*.dart >/dev/null 2>&1; then
    for f in "$model_dir/"*.dart; do
      case "$f" in *.g.dart) continue;; esac
      if grep -q 'JsonObject' "$f" && ! grep -q "$json_object_import_re" "$f"; then
        perl -i -pe "s|^(import 'package:built_value/built_value\.dart';)|import 'package:built_value/json_object.dart';\n\$1|" "$f"
        if ! grep -q "$json_object_import_re" "$f"; then
          echo "    Error: (E) failed to insert json_object.dart import into $f"
          echo "    The built_value.dart import anchor was not found; the file will not compile."
          echo "    The generated import preamble may have changed; update the (E) anchor in generate-client.sh."
          exit 1
        fi
        json_object_patched=$((json_object_patched + 1))
        echo "    patched: $f"
      fi
    done
    if [ "$json_object_patched" -eq 0 ]; then
      echo "    no files needed patching: the generator may now emit the import; check whether (E) can be retired"
    fi
  fi

  echo "patch_generated_sources complete."
}

# Copies the handwritten common/ files into the edition's lib/src/. tbMinServerVersion
# in model/version_models.dart is patched to edition_server_version.
copy_common_code() {
  local edition=$1
  local output_dir
  output_dir=$(edition_dir "$edition")
  echo "Copying common code into ${edition}..."
  cp -r "$REPO_ROOT"/common/lib/src/* "${output_dir}/lib/src/"
  local top_level_file
  for top_level_file in "$REPO_ROOT"/common/lib/*.dart; do
    if [[ -e "$top_level_file" ]]; then
      cp "$top_level_file" "${output_dir}/lib/"
    fi
  done
  echo "Common code copied to ${output_dir}/lib/src/"

  local version_models="${output_dir}/lib/src/model/version_models.dart"
  local min_version
  min_version=$(edition_server_version "$edition")
  perl -i -pe "s/^(const String tbMinServerVersion = )'[^']*';/\$1'${min_version}';/" "$version_models"
  if ! grep -q "^const String tbMinServerVersion = '${min_version}';" "$version_models"; then
    echo "Error: could not set tbMinServerVersion to ${min_version} in ${version_models}"
    exit 1
  fi
  echo "tbMinServerVersion set to ${min_version}."
}

# Writes .pubignore on every run. LICENSE, CHANGELOG.md and README.md are not
# managed here and persist across regeneration.
copy_publishing_files() {
  local edition=$1
  local output_dir
  output_dir=$(edition_dir "$edition")
  {
    echo "spec/"
    echo "doc/"
    if [ "$output_dir" = "$REPO_ROOT" ]; then
      echo "common/"
      echo "tool/"
      echo "cloud/"
    fi
  } > "${output_dir}/.pubignore"
  echo "Created ${output_dir}/.pubignore"
}

append_common_exports() {
  local edition=$1
  local pkg
  pkg=$(edition_package "$edition")
  local barrel
  barrel="$(edition_dir "$edition")/lib/${pkg}.dart"

  # The generated client class is named after the package.
  local client_class
  client_class=$(pascal_case "$pkg")

  # The facade's ThingsboardClient takes precedence over the generated one.
  perl -i -pe "s|export 'package:${pkg}/src/api.dart';|export 'package:${pkg}/src/api.dart' hide ${client_class};|" "$barrel"

  cat >> "$barrel" << EXPORTS

// Handwritten runtime facade
// Note: hide clauses suppress names also exported by generated model types.
// The generated model versions take precedence; facade types accessible via direct src/ imports.
export 'package:${pkg}/src/thingsboard_client_base.dart';
export 'package:${pkg}/src/thingsboard_client.dart';
export 'package:${pkg}/src/error/thingsboard_error.dart';
export 'package:${pkg}/src/error/thingsboard_error_helpers.dart';
export 'package:${pkg}/src/http/http_utils.dart';
export 'package:${pkg}/src/interceptor/http_interceptor.dart';
export 'package:${pkg}/src/interceptor/interceptor_config.dart';
export 'package:${pkg}/src/model/constants.dart';
export 'package:${pkg}/src/model/version_models.dart';
export 'package:${pkg}/src/model/authority_enum.dart' hide Authority;
export 'package:${pkg}/src/model/user_models.dart';
export 'package:${pkg}/src/model/page/page_data.dart';
export 'package:${pkg}/src/model/page/page_link.dart';
export 'package:${pkg}/src/model/page/sort_order.dart';
export 'package:${pkg}/src/storage/storage.dart';
export 'package:${pkg}/src/model/telemetry/telemetry_models.dart';
export 'package:${pkg}/src/service/telemetry_websocket_service.dart';
EXPORTS

  echo "Common exports appended to $barrel"
}

patch_pubspec_dependencies() {
  local edition=$1
  local pubspec
  pubspec="$(edition_dir "$edition")/pubspec.yaml"
  # Python rather than sed: BSD sed handles newlines differently.
  python3 - "$pubspec" "$(edition_label "$edition")" "$(edition_version "$edition")" <<'PYEOF'
import sys, re

pubspec_path = sys.argv[1]
edition_label = sys.argv[2]
version = sys.argv[3]

with open(pubspec_path) as f:
    content = f.read()

content = re.sub(r'^version: .*$', f'version: {version}', content, flags=re.MULTILINE)

new_desc = f"{edition_label} REST API client for Flutter. JWT auth, auto-refresh, WebSocket telemetry, typed error handling."
content = re.sub(r'^description:.*$', f'description: {new_desc}', content, flags=re.MULTILINE)

content = re.sub(r'^homepage: homepage$', 'homepage: https://thingsboard.io', content, flags=re.MULTILINE)

if 'repository:' not in content:
    content = re.sub(r'^(homepage: .*)$', r'\1\nrepository: https://github.com/thingsboard/dart_thingsboard_client', content, flags=re.MULTILINE)

if 'issue_tracker:' not in content:
    content = re.sub(r'^(repository: .*)$', r'\1\nissue_tracker: https://github.com/thingsboard/dart_thingsboard_client/issues', content, flags=re.MULTILINE)

if '\ntopics:' not in content:
    content = re.sub(r'^(issue_tracker: .*)$', r'\1\ntopics:\n  - thingsboard\n  - iot\n  - rest-api\n  - flutter\n  - websocket', content, flags=re.MULTILINE)

content = re.sub(r'(  - websocket)\n(environment:)', r'\1\n\n\2', content)

deps_to_add = [
    ('jwt_decoder', "  jwt_decoder: '^2.0.1'"),
    ('pretty_dio_logger', "  pretty_dio_logger: '^1.4.0'"),
    ('web_socket_channel', "  web_socket_channel: '^3.0.3'"),
    ('  collection:', "  collection: '>=1.15.0 <2.0.0'"),
]
for check, dep_line in deps_to_add:
    if check not in content:
        content = re.sub(r"(^  dio: '[^']*')$", r"\1\n" + dep_line, content, flags=re.MULTILINE)

if 'stream_channel:' not in content:
    content = re.sub(r"(^  test: '[^']*')$", r"\1\n  stream_channel: ^2.1.0", content, flags=re.MULTILINE)

if 'fake_async:' not in content:
    content = re.sub(r"(^  stream_channel: .*)$", r"\1\n  fake_async: ^1.3.1", content, flags=re.MULTILINE)

if '  lints:' not in content:
    content = re.sub(r"(^  fake_async: .*)$", r"\1\n  lints: ^6.0.0", content, flags=re.MULTILINE)

# The generator's bounds (test ^1.16.0, build_runner any) let `dart pub downgrade`
# resolve versions that do not compile on Dart 3.
content = re.sub(r"^  test: .*$", "  test: ^1.25.0", content, flags=re.MULTILINE)
content = re.sub(r"^  build_runner: .*$", "  build_runner: ^2.4.0", content, flags=re.MULTILINE)

if not content.endswith('\n'):
    content += '\n'

with open(pubspec_path, 'w') as f:
    f.write(content)
PYEOF
}

# Generates the edition's ThingsboardClient subclass with a lazy accessor per
# generated *ControllerApi. The API classes are created without serializers: each
# operation uses its own registry from api_serializers.dart (Step 6c).
generate_service_accessors() {
  local edition=$1
  local output_dir pkg
  output_dir=$(edition_dir "$edition")
  pkg=$(edition_package "$edition")
  local api_dir="${output_dir}/lib/src/api"
  local output_file="${output_dir}/lib/src/thingsboard_client.dart"

  local class_name="ThingsboardClient"

  local imports=""
  local fields=""
  local accessors=""

  for api_file in "$api_dir"/*.dart; do
    local filename
    filename=$(basename "$api_file" .dart)
    local class
    class=$(pascal_case "$filename")
    local field_name="_$(echo "${class:0:1}" | tr '[:upper:]' '[:lower:]')${class:1}"
    local getter_name="get${class}"

    imports+="import 'package:${pkg}/src/api/${filename}.dart';\n"
    fields+="  ${class}? ${field_name};\n"
    accessors+="  ${class} ${getter_name}() {\n"
    accessors+="    ${field_name} ??= ${class}(dio);\n"
    accessors+="    return ${field_name}!;\n"
    accessors+="  }\n\n"
  done

  cat > "$output_file" << DART
$(printf '%b' "$imports")
import 'thingsboard_client_base.dart';

class ${class_name} extends ThingsboardClientBase {
$(printf '%b' "$fields")
  ${class_name}(
    super.apiEndpoint, {
    super.storage,
    super.apiKey,
    super.onUserLoaded,
    super.onMfaAuth,
    super.onMfaForce,
    super.onError,
    super.onLoadStarted,
    super.onLoadFinished,
    super.computeFunc,
    super.debugMode,
  }) : super.create();

$(printf '%b' "$accessors")}
DART

  echo "Generated ${output_file}"
}

# The generator never deletes files a changed spec no longer produces, so remove
# the api, model and doc files listed in .openapi-generator/FILES (and their
# .g.dart parts) before generating. Handwritten copies of common/ are not listed.
remove_previous_generated() {
  local output_dir=$1
  local files_list="$output_dir/.openapi-generator/FILES"
  if [ ! -f "$files_list" ]; then
    return
  fi
  local count=0 f
  while IFS= read -r f; do
    case "$f" in
      lib/src/api/*.dart|lib/src/model/*.dart|doc/*.md) ;;
      *) continue ;;
    esac
    rm -f "$output_dir/$f" "$output_dir/${f%.dart}.g.dart"
    count=$((count + 1))
  done < "$files_list"
  echo "Removed $count files of the previous generation."
}

# Sets the license-header-template.txt header on every .dart file, replacing a
# leading "// Copyright" block; a copyright line ending in " and contributors" is kept.
apply_license_headers() {
  local template="$SCRIPT_DIR/license-header-template.txt"
  if [ ! -f "$template" ]; then
    echo "Warning: license-header-template.txt not found — skipping license headers."
    return
  fi
  python3 - "$template" "$@" <<'PYEOF'
import os, sys

template, roots = sys.argv[1], sys.argv[2:]
with open(template) as f:
    lines = f.read().rstrip('\n').split('\n')
header = ''.join('//\n' if not l else f'// {l}\n' for l in lines) + '\n'

changed = 0
for root in roots:
    for d, _, files in os.walk(root):
        for name in files:
            if not name.endswith('.dart'):
                continue
            path = os.path.join(d, name)
            with open(path) as f:
                text = f.read()
            body = text
            file_header = header
            first = text.split('\n', 1)[0]
            if first.startswith('// Copyright') and first.endswith(' and contributors'):
                file_header = first + '\n' + header.split('\n', 1)[1]
            if body.startswith('// Copyright'):
                rest = body.split('\n')
                i = 0
                while i < len(rest) and rest[i].startswith('//'):
                    i += 1
                if i < len(rest) and rest[i] == '':
                    i += 1
                body = '\n'.join(rest[i:])
            new = file_header + body
            if new != text:
                with open(path, 'w') as f:
                    f.write(new)
                changed += 1
print(f'License headers set in {changed} files of {", ".join(roots)}.')
PYEOF
}

generate() {
  local edition="$1"
  local output_dir pkg
  output_dir=$(edition_dir "$edition")
  pkg=$(edition_package "$edition")
  local spec_file="$output_dir/spec/openapi.json"

  if [ ! -f "$spec_file" ]; then
    echo "Error: spec file not found: $spec_file"
    exit 1
  fi

  echo ""
  echo "=== [$edition] Step 1: Validating spec: $spec_file ==="
  local validate_output
  validate_output=$(openapi-generator-cli validate -i "$spec_file" 2>&1) || {
    echo "$validate_output" | grep -v "Unused model:"
    exit 1
  }
  if [ "$VERBOSE" = true ]; then
    echo "$validate_output"
  else
    echo "$validate_output" | grep -v "Unused model:" || true
  fi

  # The ThingsBoard spec generator appends _1, _2 suffixes to duplicate operationIds.
  echo ""
  echo "=== [$edition] Step 2: Checking for duplicate operationIds ==="
  local duplicates
  duplicates=$(grep -o '"operationId" *: *"[^"]*"' "$spec_file" | sed 's/.*: *"//;s/"//' | grep -E '_[0-9]+$' || true)
  if [ -n "$duplicates" ]; then
    echo "Error: spec contains duplicate operationIds (suffixed by ThingsBoard):"
    echo "$duplicates" | sed 's/^/  /'
    echo "Fix the @ApiOperation annotations in ThingsBoard source to use unique names."
    exit 1
  fi
  echo "No duplicate operationIds found."

  echo ""
  echo "=== [$edition] Step 3: Generating Dart client from spec ==="

  local pub_description
  pub_description="$(edition_label "$edition") REST API client for Flutter"

  remove_previous_generated "$output_dir"

  # The generator overwrites README.md and .gitignore with its templates.
  local backup_dir
  backup_dir=$(mktemp -d)
  local f
  for f in README.md .gitignore; do
    if [ -f "$output_dir/$f" ]; then
      cp "$output_dir/$f" "$backup_dir/$f"
    fi
  done

  # --name-mappings update=updateFlag: Mapping.update (BulkImportRequest.Mapping
  # on the server) would clash with the update(Function?) method a built_value
  # Builder inherits. The JSON name stays 'update'; no other schema has it.
  openapi-generator-cli generate \
    -i "$spec_file" \
    -g dart-dio \
    -o "$output_dir" \
    --additional-properties "pubName=${pkg},pubLibrary=${pkg},pubVersion=1.0.0,pubDescription=${pub_description},hideGenerationTimestamp=true,enumUnknownDefaultCase=true" \
    --global-property apiTests=false,modelTests=false \
    --name-mappings update=updateFlag \
    2>&1 | if [ "$VERBOSE" = true ]; then cat; else grep -v \
      -e "^\[main\] INFO  o.o.codegen.*writing file" \
      -e "^\[main\] INFO  o.o.c.languages.*Processing operation" \
      -e "Unknown scheme.*loginPassword" \
      -e "Skipped by.*options supplied by user" \
      -e "sun\.misc" || true; fi

  for f in README.md .gitignore; do
    if [ -f "$backup_dir/$f" ]; then
      cp "$backup_dir/$f" "$output_dir/$f"
    fi
  done
  rm -rf "$backup_dir"

  # The floor is deliberate: it moves applications onto a current, patched SDK.
  # Only quoted constraints match, so `sdk: flutter` entries are untouched.
  echo ""
  echo "=== [$edition] Step 4: Patching pubspec.yaml SDK constraint ==="
  perl -i -pe "s/^(\s*sdk: )(['\"])[^'\"]*\2/\$1'>=3.10.0 <4.0.0'/" "$output_dir/pubspec.yaml"
  echo "SDK constraint patched."
  grep "sdk:" "$output_dir/pubspec.yaml" | head -3

  local version
  version=$(edition_version "$edition")
  perl -i -pe "s/^version: .*/version: ${version}/" "$output_dir/pubspec.yaml"
  echo "Version patched to ${version}."

  # Replaces the generator's minimal file entirely.
  echo ""
  echo "=== [$edition] Step 5: Writing analysis_options.yaml ==="
  {
    cat << 'YAML'
# Generated analysis options — overwritten by tool/generate-client.sh on each
# regeneration.
#
# The recommended lints apply to the handwritten code: the facade copied from
# common/ into lib/src/ (outside lib/src/model/*.dart), the public libraries in
# lib/, test/ and example/. The generated code is excluded.
include: package:lints/recommended.yaml

analyzer:
  exclude:
    - lib/src/api/**
    - lib/src/auth/**
    - lib/src/model/*.dart
    - lib/src/**/*.g.dart
    - lib/src/api.dart
    - lib/src/api_serializers.dart
    - lib/src/api_util.dart
    - lib/src/date_serializer.dart
    - lib/src/serializers.dart
YAML
    if [ "$output_dir" = "$REPO_ROOT" ]; then
      echo "    - common/**"
      echo "    - cloud/**"
    fi
    cat << 'YAML'

linter:
  rules:
    # Public constants of the facade (LatestTelemetry.LATEST_TELEMETRY,
    # EntityKeyType.ENTITY_FIELD, ...) mirror the server's names; renaming
    # them would break client code.
    constant_identifier_names: false
YAML
  } > "$output_dir/analysis_options.yaml"
  echo "analysis_options.yaml written."

  echo ""
  echo "=== [$edition] Step 6b: Patching generated Dart source for compiler errors ==="
  patch_generated_sources "$output_dir"

  # Patch (C) leaves `_defaults` empty; the script writes each subtype's discriminator
  # value (from the parent's discriminatorMapping) into it, so callers need not set
  # `type` / `entityType` by hand.
  echo ""
  echo "=== [$edition] Step 6b2: Setting discriminator defaults in subtypes ==="
  python3 "$SCRIPT_DIR/set_discriminator_defaults.py" "$output_dir/lib/src/model"

  # standardSerializers lists every model, so an API class using it keeps them all in
  # an AOT build. Each operation instead registers only the types it needs, so unused
  # operations are tree-shaken with their models (see generate_api_serializers.py).
  echo ""
  echo "=== [$edition] Step 6c: Generating per-operation serializer registries ==="
  python3 "$SCRIPT_DIR/generate_api_serializers.py" "$output_dir" "$pkg" \
    "$SCRIPT_DIR/facade-serializer-roots.txt"

  if [ "$DRY_RUN" = true ]; then
    echo ""
    echo "=== [$edition] Dry run: skipping build_runner and git stage ==="
    echo "Generated output is at $output_dir"
    return
  fi

  echo ""
  echo "=== [$edition] Step 7: Running dart pub get + build_runner ==="
  (
    cd "$output_dir"
    dart pub get
    dart run build_runner build --delete-conflicting-outputs
  )

  local g_dart_count
  g_dart_count=$(ls "$output_dir/lib/src/model/"*.g.dart 2>/dev/null | wc -l | tr -d ' ')
  if [ "$g_dart_count" -eq 0 ]; then
    echo "Error: build_runner completed but no .g.dart files found in $output_dir/lib/src/model/"
    echo "This indicates build_runner failed silently."
    exit 1
  fi
  echo "build_runner produced $g_dart_count .g.dart model files."

  echo ""
  echo "=== [$edition] Step 7b: Copying common code ==="
  copy_common_code "$edition"

  echo ""
  echo "=== [$edition] Step 7b2: Creating publishing files ==="
  copy_publishing_files "$edition"

  echo ""
  echo "=== [$edition] Step 7c: Patching pubspec.yaml dependencies ==="
  patch_pubspec_dependencies "$edition"
  # Re-resolve: Step 7 ran before these dependencies existed.
  (cd "$output_dir" && dart pub get)

  echo ""
  echo "=== [$edition] Step 7d: Generating service accessor class ==="
  generate_service_accessors "$edition"

  echo ""
  echo "=== [$edition] Step 7e: Appending common exports to barrel ==="
  append_common_exports "$edition"

  # The dart-dio templates import json_object.dart twice and leave other imports
  # unused (~200 analyzer warnings). dart fix only touches analyzed files, so it runs
  # with options that exclude nothing; the generated ones are restored afterwards.
  echo ""
  echo "=== [$edition] Step 7e2: Removing unused and duplicate imports ==="
  (
    cd "$output_dir"
    cp analysis_options.yaml analysis_options.yaml.generated
    printf 'analyzer:\n  exclude:\n    - cloud/**\n    - common/**\n' > analysis_options.yaml
    dart fix --apply --code=unused_import --code=duplicate_import lib | tail -1
    mv analysis_options.yaml.generated analysis_options.yaml
  )

  echo ""
  echo "=== [$edition] Step 7f: Formatting license headers ==="
  apply_license_headers "$REPO_ROOT/common/lib" "$output_dir/lib" "$output_dir/test"

  echo ""
  echo "=== [$edition] Step 7g: Formatting Dart code ==="
  (
    cd "$output_dir"
    local dirs=(lib test example)
    if [ "$output_dir" = "$REPO_ROOT" ]; then
      dirs+=(common)
    fi
    local d existing=()
    for d in "${dirs[@]}"; do
      [ -d "$d" ] && existing+=("$d")
    done
    dart format "${existing[@]}" | tail -1
  )

  echo ""
  echo "=== [$edition] Step 8: Staging generated output ==="
  # Stage only the generator's outputs: at the repository root $output_dir is the whole repo.
  (
    cd "$output_dir"
    git add -A lib test doc spec pubspec.yaml analysis_options.yaml .pubignore \
      .openapi-generator .openapi-generator-ignore
  )
  git -C "$REPO_ROOT" add -A "$REPO_ROOT/common"
  echo "Staged generated output in $output_dir and common/"
}

if [ "$EDITION" = "all" ]; then
  for e in "${EDITIONS[@]}"; do
    generate "$e"
  done
elif [[ " ${EDITIONS[*]} " =~ " ${EDITION} " ]]; then
  generate "$EDITION"
else
  echo "Error: unknown edition '$EDITION'. Must be one of: ${EDITIONS[*]} all"
  exit 1
fi

echo ""
echo "=== Generation complete ==="
