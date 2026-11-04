#!/bin/bash
#
# Copyright © 2021-2026 ThingsBoard, Inc.
#
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
#

#
# Generates Dart REST clients from OpenAPI specs using openapi-generator-cli.
#
# Usage:
#   tool/generate-client.sh [options] <edition>
#
# Arguments:
#   edition    onprem | all   (see "Editions" below)
#
# Options:
#   --verbose  Show full generator output (per-file writes, operations, etc.)
#   --dry-run  Run spec validation and generation steps, skip build_runner and
#              git staging.
#
# Examples:
#   tool/generate-client.sh onprem             # Generate thingsboard_client from spec/
#   tool/generate-client.sh all                # Generate all editions
#   tool/generate-client.sh --dry-run onprem   # Validate + generate only, no build_runner
#   tool/generate-client.sh --verbose onprem   # Full generator output
#
# What it does (per edition):
#   1. Validates OpenAPI spec with openapi-generator-cli
#   2. Checks for duplicate operationIds (suffixed by ThingsBoard spec generator)
#   3. Generates Dart/Dio client (per-tag API classes + built_value models)
#   4. Patches pubspec.yaml SDK constraint to >=3.10.0 <4.0.0 (PLAT-03)
#   5. Rewrites analysis_options.yaml to exclude generated dirs from lint (GEN-09)
#   6. Patches generated Dart source for known generator bugs (Step 6b) and
#      generates per-operation serializer registries (Step 6c)
#   7. Runs dart pub get + build_runner to compile .g.dart files (GEN-07)
#   8. Sets the license header (license-header-template.txt) on all .dart files
#   9. Stages generated output with git add (unless --dry-run)
#
# Output log: tool/generate-client.log (overwritten on each run, git-ignored)
#
# Prerequisites: Java, Dart/Flutter SDK, Perl, Python3
#
# CRITICAL flags intentionally omitted (see RESEARCH.md for rationale):
#   JsonNode=dynamic schema mapping         -- produces broken 'import dynamic'
#   openapi-normalizer with tag collapse    -- collapses into monolithic class
#

set -euo pipefail

# Glob expansion and sort order follow LC_COLLATE; pin it so the generated
# accessor class lists the APIs in the same order on every machine.
export LC_ALL=C

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

# ---------------------------------------------------------------------------
# Editions
#
# An edition is one published package generated from one OpenAPI spec at
# <edition_dir>/spec/openapi.json. The handwritten code in common/ is copied
# into every edition.
#
#   onprem  ThingsBoard (self-hosted)  ->  repository root, thingsboard_client
#
# To add a cloud client: put its spec at cloud/spec/openapi.json, add "cloud"
# to EDITIONS and a `cloud)` branch to each edition_* function below. It is
# generated into cloud/ as a separate package (for example
# thingsboard_cloud_client) next to the root one; the root .pubignore and
# analysis_options.yaml already exclude cloud/.
# ---------------------------------------------------------------------------

EDITIONS=("onprem")

# Directory the edition's package is generated into.
edition_dir() {
  case "$1" in
    onprem) echo "$REPO_ROOT" ;;
  esac
}

# pub.dev package name; also the library name of lib/<package>.dart.
edition_package() {
  case "$1" in
    onprem) echo "thingsboard_client" ;;
  esac
}

# Product name used in the pubspec description.
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

# PascalCase of a snake_case name (thingsboard_client -> ThingsboardClient).
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

# Log everything to file and stdout
exec > >(tee "$LOG_FILE") 2>&1

# ---------------------------------------------------------------------------
# openapi-generator-cli setup (version-pinned JAR from Maven Central)
# ---------------------------------------------------------------------------

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

# ---------------------------------------------------------------------------
# patch_generated_sources: fix known compiler errors in generated Dart source
#
# Applied BEFORE build_runner so the .g.dart output is clean.
#
# (A) is handled at generation time with --name-mappings (see Step 3).
#
# (B) Bare enum defaults: FAIL / RANDOM used as default values without class
#     qualifier. Fix: qualify with NameConflictPolicy.FAIL, UniquifyStrategy.RANDOM.
#
# (C) Discriminator type mismatch: generated _defaults hooks assign
#     b.discriminatorValue (String?) to enum-typed builder fields.
#     Fix: replace the discriminatorValue assignment with a no-op (b;).
#
# (D) is fixed in the spec: ColumnSettings declares allOf DataKeySettings
#     (thingsboard/thingsboard#16510).
#
# (E) Missing JsonObject import: Output.strategy is typed JsonObject (empty
#     OutputStrategy schema upstream) but json_object.dart is not imported.
#     Fix: insert the import in any model that references JsonObject without it.
# ---------------------------------------------------------------------------

patch_generated_sources() {
  local output_dir="$1"
  local model_dir="$output_dir/lib/src/model"
  local api_dir="$output_dir/lib/src/api"

  echo "Patching generated Dart source for known compiler errors..."

  # -------------------------------------------------------------------------
  # (B) API method default values: bare enum names FAIL and RANDOM are used
  #     as default parameter values without their class qualifier.
  #     Generated code:
  #       NameConflictPolicy? nameConflictPolicy = FAIL,
  #       UniquifyStrategy? uniquifyStrategy = RANDOM,
  #     Fixed:
  #       NameConflictPolicy? nameConflictPolicy = NameConflictPolicy.FAIL,
  #       UniquifyStrategy? uniquifyStrategy = UniquifyStrategy.RANDOM,
  # -------------------------------------------------------------------------
  echo "  (B) Qualifying bare enum defaults (FAIL → NameConflictPolicy.FAIL, RANDOM → UniquifyStrategy.RANDOM)"
  if ls "$api_dir/"*.dart >/dev/null 2>&1; then
    perl -i -pe 's/(NameConflictPolicy\? \w+) = FAIL\b/$1 = NameConflictPolicy.FAIL/g' "$api_dir/"*.dart
    perl -i -pe 's/(UniquifyStrategy\? \w+) = RANDOM\b/$1 = UniquifyStrategy.RANDOM/g' "$api_dir/"*.dart
  fi

  # -------------------------------------------------------------------------
  # (C) Discriminator type mismatch: _defaults hooks assign b.discriminatorValue
  #     (String?) to builder fields typed as enum (EntityType?, EventType?, etc.)
  #     or to fields on builder types that don't even have discriminatorValue.
  #
  #     All these assignments are no-ops at runtime (the discriminator value is
  #     set correctly during deserialization by the generated serializer).
  #     Fix: replace "b..field=b.discriminatorValue" with "b" (no-op).
  #
  #     Pattern matched:
  #       static void _defaults(SomeFooBuilder b) => b..field=b.discriminatorValue;
  #     Replacement:
  #       static void _defaults(SomeFooBuilder b) => b;
  # -------------------------------------------------------------------------
  echo "  (C) Removing discriminatorValue assignments from _defaults hooks"
  if ls "$model_dir/"*.dart >/dev/null 2>&1; then
    perl -i -pe 's/(static void _defaults\(\w+Builder b\) => b)\.\.\w+=b\.discriminatorValue;/$1;/' "$model_dir/"*.dart
  fi

  # -------------------------------------------------------------------------
  # (E) Missing JsonObject import — "Type 'JsonObject' not found" at compile
  #     time in attributes_output.dart / time_series_output.dart (CE, PE, PaaS).
  #
  #     Root cause: OutputStrategy.java upstream has no @Schema / @JsonTypeInfo /
  #     @JsonSubTypes annotations and no serialisable getters, so springdoc emits
  #     an empty schema ("OutputStrategy": {}), which dart-dio maps to the
  #     free-form JsonObject. Output.strategy $refs that schema, so the
  #     non-instantiable Output interface gets `JsonObject? get strategy`, and
  #     AttributesOutput / TimeSeriesOutput (which implement Output) must match
  #     that type even though their own schema declares *OutputStrategy. The
  #     generator emits the import for the declared schema (*_output_strategy)
  #     but not for the effective type (json_object).
  #
  #     The match below is generic, but the trigger is specifically an empty
  #     parent schema forcing JsonObject onto an instantiable: false interface —
  #     not a shape that can be anticipated in general. Retire this patch once
  #     OutputStrategy.java is annotated upstream like its sibling interfaces in
  #     common/data/.../cf/configuration/; that removes the only occurrence it
  #     exists for.
  #
  #     Fix: insert the json_object.dart import (before the built_value.dart
  #     import) in any model library that references JsonObject but lacks it.
  #     Only library files are patched: the companion .g.dart files are
  #     `part of` the library and inherit its imports — a `part` cannot declare
  #     its own — so they are skipped.
  # -------------------------------------------------------------------------
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

# ---------------------------------------------------------------------------
# copy_common_code: copy handwritten common/ files into edition's lib/src/
#
# The common/ directory contains handwritten runtime facade files (error,
# storage, model, interceptor, http, client base). These are edition-
# independent and are copied verbatim so relative imports resolve correctly.
#
# The one exception is tbMinServerVersion in model/version_models.dart: it
# must match the edition's target server version, so the copy is patched to
# edition_server_version.
# ---------------------------------------------------------------------------

copy_common_code() {
  local edition=$1
  local output_dir
  output_dir=$(edition_dir "$edition")
  echo "Copying common code into ${edition}..."
  cp -r "$REPO_ROOT"/common/lib/src/* "${output_dir}/lib/src/"
  # Top-level files of common/lib (none at present) go next to the barrel.
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

# ---------------------------------------------------------------------------
# copy_publishing_files: create .pubignore for the edition
#
# Creates a .pubignore that excludes spec/ and doc/ from the published
# package; the package at the repository root also excludes the generator
# inputs (common/, tool/) and the directory of a cloud edition. Called on every
# regeneration to keep publishing files in sync. LICENSE, CHANGELOG.md, and
# README.md are one-time artifacts and are NOT managed here — they must
# persist across regeneration.
# ---------------------------------------------------------------------------

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

# ---------------------------------------------------------------------------
# append_common_exports: append common handwritten file exports to the barrel
#
# Appends export statements for the handwritten runtime facade files and the
# edition-specific ThingsboardClient subclass to the barrel export file.
# ---------------------------------------------------------------------------

append_common_exports() {
  local edition=$1
  local pkg
  pkg=$(edition_package "$edition")
  local barrel
  barrel="$(edition_dir "$edition")/lib/${pkg}.dart"

  # The generator names its client class after the package (thingsboard_client
  # -> ThingsboardClient).
  local client_class
  client_class=$(pascal_case "$pkg")

  # Patch api.dart export to hide the generated client class (our facade takes precedence)
  perl -i -pe "s|export 'package:${pkg}/src/api.dart';|export 'package:${pkg}/src/api.dart' hide ${client_class};|" "$barrel"

  # ThingsboardClient.login() takes the generated LoginRequest and returns the
  # facade LoginResponse (the generated one lacks `scope` and requires
  # `refreshToken`), so the main library exports the facade LoginResponse from
  # login_models.dart instead of the generated login_response.dart.
  local m=login_response
  perl -i -ne "print unless m|^export 'package:${pkg}/src/model/${m}\.dart';|" "$barrel"
  if grep -q "src/model/${m}\.dart" "$barrel"; then
    echo "Error: could not remove the export of src/model/${m}.dart from $barrel"
    exit 1
  fi

  cat >> "$barrel" << EXPORTS

// Handwritten runtime facade
// Note: hide clauses suppress names also exported by generated model types.
// The generated model versions take precedence; facade types accessible via direct src/ imports.
export 'package:${pkg}/src/thingsboard_client_base.dart';
export 'package:${pkg}/src/thingsboard_client.dart';
export 'package:${pkg}/src/error/thingsboard_error.dart';
export 'package:${pkg}/src/http/http_utils.dart';
export 'package:${pkg}/src/interceptor/http_interceptor.dart';
export 'package:${pkg}/src/interceptor/interceptor_config.dart';
export 'package:${pkg}/src/interceptor/key_intercept_config.dart';
export 'package:${pkg}/src/model/constants.dart';
export 'package:${pkg}/src/model/version_models.dart';
export 'package:${pkg}/src/model/authority_enum.dart' hide Authority;
export 'package:${pkg}/src/model/login_models.dart';
export 'package:${pkg}/src/model/user_models.dart';
export 'package:${pkg}/src/model/page/page_data.dart';
export 'package:${pkg}/src/model/page/page_link.dart';
export 'package:${pkg}/src/model/page/sort_order.dart' hide Direction;
export 'package:${pkg}/src/storage/storage.dart';
export 'package:${pkg}/src/model/telemetry/telemetry_models.dart';
export 'package:${pkg}/src/service/telemetry_websocket_service.dart';
EXPORTS

  echo "Common exports appended to $barrel"
}

# ---------------------------------------------------------------------------
# patch_pubspec_dependencies: add runtime deps and fix version in pubspec.yaml
#
# Sets version to edition_version and adds jwt_decoder + pretty_dio_logger
# if not already present.
# ---------------------------------------------------------------------------

patch_pubspec_dependencies() {
  local edition=$1
  local pubspec
  pubspec="$(edition_dir "$edition")/pubspec.yaml"
  # Patch pubspec.yaml using Python to avoid BSD sed newline issues
  python3 - "$pubspec" "$(edition_label "$edition")" "$(edition_version "$edition")" <<'PYEOF'
import sys, re

pubspec_path = sys.argv[1]
edition_label = sys.argv[2]
version = sys.argv[3]

with open(pubspec_path) as f:
    content = f.read()

content = re.sub(r'^version: .*$', f'version: {version}', content, flags=re.MULTILINE)

# Fix description
new_desc = f"{edition_label} REST API client for Flutter. JWT auth, auto-refresh, WebSocket telemetry, typed error handling."
content = re.sub(r'^description:.*$', f'description: {new_desc}', content, flags=re.MULTILINE)

# Fix homepage
content = re.sub(r'^homepage: homepage$', 'homepage: https://thingsboard.io', content, flags=re.MULTILINE)

# Add repository if not present
if 'repository:' not in content:
    content = re.sub(r'^(homepage: .*)$', r'\1\nrepository: https://github.com/thingsboard/dart_thingsboard_client', content, flags=re.MULTILINE)

# Add issue_tracker if not present
if 'issue_tracker:' not in content:
    content = re.sub(r'^(repository: .*)$', r'\1\nissue_tracker: https://github.com/thingsboard/dart_thingsboard_client/issues', content, flags=re.MULTILINE)

# Add topics block if not present
if '\ntopics:' not in content:
    content = re.sub(r'^(issue_tracker: .*)$', r'\1\ntopics:\n  - thingsboard\n  - iot\n  - rest-api\n  - flutter\n  - websocket', content, flags=re.MULTILINE)

# Ensure blank line between topics and environment
content = re.sub(r'(  - websocket)\n(environment:)', r'\1\n\n\2', content)

# Add runtime dependencies after dio line if not present
deps_to_add = [
    ('jwt_decoder', "  jwt_decoder: '^2.0.1'"),
    ('pretty_dio_logger', "  pretty_dio_logger: '^1.4.0'"),
    ('web_socket_channel', "  web_socket_channel: '^3.0.3'"),
    ('  collection:', "  collection: '>=1.15.0 <2.0.0'"),
]
for check, dep_line in deps_to_add:
    if check not in content:
        content = re.sub(r"(^  dio: '[^']*')$", r"\1\n" + dep_line, content, flags=re.MULTILINE)

# Add stream_channel to dev_dependencies if not present
if 'stream_channel:' not in content:
    content = re.sub(r"(^  test: '[^']*')$", r"\1\n  stream_channel: ^2.1.0", content, flags=re.MULTILINE)

# Add fake_async to dev_dependencies if not present
if 'fake_async:' not in content:
    content = re.sub(r"(^  stream_channel: .*)$", r"\1\n  fake_async: ^1.3.1", content, flags=re.MULTILINE)

# Add lints (analysis_options.yaml includes package:lints) if not present
if '  lints:' not in content:
    content = re.sub(r"(^  fake_async: .*)$", r"\1\n  lints: ^6.0.0", content, flags=re.MULTILINE)

# The generator's dev dependency bounds (test ^1.16.0, build_runner any) let
# `dart pub downgrade` resolve versions that do not compile on Dart 3.
content = re.sub(r"^  test: .*$", "  test: ^1.25.0", content, flags=re.MULTILINE)
content = re.sub(r"^  build_runner: .*$", "  build_runner: ^2.4.0", content, flags=re.MULTILINE)

# Ensure file ends with newline
if not content.endswith('\n'):
    content += '\n'

with open(pubspec_path, 'w') as f:
    f.write(content)
PYEOF
}

# ---------------------------------------------------------------------------
# generate_service_accessors: create edition-specific ThingsboardClient subclass
#
# Reads the edition's api/ directory to discover all generated *ControllerApi
# classes and generates a ThingsboardXxxClient subclass with lazy accessor
# methods for each. The client extends ThingsboardClient. API classes are
# created without serializers, so each operation uses its own registry from
# api_serializers.dart (Step 6c) instead of the all-models standardSerializers.
# ---------------------------------------------------------------------------

generate_service_accessors() {
  local edition=$1
  local output_dir pkg
  output_dir=$(edition_dir "$edition")
  pkg=$(edition_package "$edition")
  local api_dir="${output_dir}/lib/src/api"
  local output_file="${output_dir}/lib/src/thingsboard_client.dart"

  # All editions use the same public class name (each is a separate package)
  local class_name="ThingsboardClient"

  # Collect all *_controller_api.dart files and extract class names
  local imports=""
  local fields=""
  local accessors=""

  for api_file in "$api_dir"/*.dart; do
    local filename
    filename=$(basename "$api_file" .dart)
    # Convert snake_case filename to PascalCase class name
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

# ---------------------------------------------------------------------------
# remove_previous_generated: delete the API, model and doc files of the last
# generation
#
# The generator overwrites the files it writes but never deletes the ones a
# new spec no longer produces (a removed controller or schema), so they would
# stay in the package. .openapi-generator/FILES lists what the last run wrote;
# its lib/src/api, lib/src/model and doc entries, and their .g.dart parts, are
# removed before generating. Handwritten copies of common/ (lib/src/model/login_models.dart,
# lib/src/model/telemetry/telemetry_models.dart, ...) are not in FILES and stay.
# ---------------------------------------------------------------------------

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

# ---------------------------------------------------------------------------
# apply_license_headers: set the license header of every .dart file
#
# The header is license-header-template.txt as a // comment block. A leading
# "// Copyright" block already in a file is replaced, so a change of the
# template reaches every file on the next run; files without one get it
# prepended. A copyright line ending in " and contributors" is kept as it is.
# Runs after all generation/patching steps so that every file —
# generated, common, and handwritten — carries the header.
# ---------------------------------------------------------------------------

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
            # A file that keeps code of outside contributors (see
            # "Contributors" in README.md) marks it with "... and contributors"
            # on its copyright line; that line is kept.
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

# ---------------------------------------------------------------------------
# generate: run the full pipeline for one edition
# ---------------------------------------------------------------------------

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

  # -------------------------------------------------------------------------
  # Step 1: Validate spec
  # -------------------------------------------------------------------------
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

  # -------------------------------------------------------------------------
  # Step 2: Duplicate operationId check (verbatim from Java client lines 139-147)
  # ThingsBoard's spec generator appends _1, _2 suffixes to deduplicate.
  # -------------------------------------------------------------------------
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

  # -------------------------------------------------------------------------
  # Step 3: Generate Dart/Dio client
  #
  # CRITICAL: Do NOT add JsonNode=dynamic schema mapping (produces broken 'import dynamic')
  # or openapi-normalizer tag-collapse (collapses all operations into monolithic class)
  # -------------------------------------------------------------------------
  echo ""
  echo "=== [$edition] Step 3: Generating Dart client from spec ==="

  local pub_description
  pub_description="$(edition_label "$edition") REST API client for Flutter"

  remove_previous_generated "$output_dir"

  # Back up human-authored files before generation (the generator overwrites
  # README.md and .gitignore with its own templates)
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

  # Restore human-authored files
  for f in README.md .gitignore; do
    if [ -f "$backup_dir/$f" ]; then
      cp "$backup_dir/$f" "$output_dir/$f"
    fi
  done
  rm -rf "$backup_dir"

  # -------------------------------------------------------------------------
  # Step 4: Patch pubspec.yaml SDK constraint (PLAT-03)
  # The generator's default lags behind; the client requires >=3.10.0 <4.0.0.
  # The floor is deliberate: it moves applications onto a current, patched
  # Dart/Flutter SDK.
  # Only quoted constraints are matched, so `sdk: flutter` entries are untouched.
  # -------------------------------------------------------------------------
  echo ""
  echo "=== [$edition] Step 4: Patching pubspec.yaml SDK constraint ==="
  perl -i -pe "s/^(\s*sdk: )(['\"])[^'\"]*\2/\$1'>=3.10.0 <4.0.0'/" "$output_dir/pubspec.yaml"
  echo "SDK constraint patched."
  grep "sdk:" "$output_dir/pubspec.yaml" | head -3

  # Patch version to match ThingsBoard server version (not generator default 1.0.0)
  local version
  version=$(edition_version "$edition")
  perl -i -pe "s/^version: .*/version: ${version}/" "$output_dir/pubspec.yaml"
  echo "Version patched to ${version}."

  # -------------------------------------------------------------------------
  # Step 5: Overwrite analysis_options.yaml to exclude generated dirs (GEN-09)
  # The generator produces a minimal version that only excludes test/*.dart.
  # We OVERWRITE entirely to get proper excludes for lib/src/api/, lib/src/model/,
  # and *.g.dart files — required for zero dart analyze errors.
  # -------------------------------------------------------------------------
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
    # common/ is a generator input whose files are copied into lib/src/;
    # cloud/ is a separate package.
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

  # -------------------------------------------------------------------------
  # Step 6b: Patch generated Dart source for known compiler errors
  #
  # Known categories of generator bugs that produce code that does not compile:
  #
  # (A) Reserved name clash: now --name-mappings update=updateFlag (Step 3).
  #
  # (B) Bare enum constant defaults: API methods use unqualified enum names
  #     (FAIL, RANDOM) as default parameter values. Fix: qualify them with
  #     their class names (NameConflictPolicy.FAIL, UniquifyStrategy.RANDOM).
  #
  # (C) Discriminator type mismatch: generated _defaults hooks assign
  #     b.discriminatorValue (String?) to enum-typed builder fields.
  #     Fix: remove the discriminatorValue initialization from _defaults;
  #     the field is set correctly during deserialization.
  #
  # (D) Fixed in the spec (ColumnSettings allOf DataKeySettings, #16510).
  #
  # (E) Missing JsonObject import: Output.strategy is typed JsonObject
  #     (empty OutputStrategy schema upstream), so its subtypes inherit that
  #     type, but the json_object.dart import is not emitted.
  #     Fix: insert the import in any model that references JsonObject
  #     without it.
  # -------------------------------------------------------------------------
  echo ""
  echo "=== [$edition] Step 6b: Patching generated Dart source for compiler errors ==="
  patch_generated_sources "$output_dir"

  # -------------------------------------------------------------------------
  # Step 6b2: Default the discriminator field of generated subtypes
  # Patch (C) above leaves `_defaults` empty, so callers would have to set
  # `type` / `entityType` of every filter and entity id by hand. The parents
  # record the value of each subtype in discriminatorMapping; the script
  # writes it into the subtype's `_defaults`.
  # -------------------------------------------------------------------------
  echo ""
  echo "=== [$edition] Step 6b2: Setting discriminator defaults in subtypes ==="
  python3 "$SCRIPT_DIR/set_discriminator_defaults.py" "$output_dir/lib/src/model"

  # -------------------------------------------------------------------------
  # Step 6c: Generate per-operation serializer registries
  # standardSerializers lists every model of the spec, so an API class that
  # uses it keeps all of them in an AOT build. Each operation instead registers
  # only the types it needs (see generate_api_serializers.py), and operations
  # the application never calls are tree-shaken with their models.
  # -------------------------------------------------------------------------
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

  # -------------------------------------------------------------------------
  # Step 7: Run build_runner to compile .g.dart files (GEN-07)
  # MANDATORY: the package does not compile without .g.dart files.
  # -------------------------------------------------------------------------
  echo ""
  echo "=== [$edition] Step 7: Running dart pub get + build_runner ==="
  (
    cd "$output_dir"
    dart pub get
    dart run build_runner build --delete-conflicting-outputs
  )

  # Verify .g.dart files were produced
  local g_dart_count
  g_dart_count=$(ls "$output_dir/lib/src/model/"*.g.dart 2>/dev/null | wc -l | tr -d ' ')
  if [ "$g_dart_count" -eq 0 ]; then
    echo "Error: build_runner completed but no .g.dart files found in $output_dir/lib/src/model/"
    echo "This indicates build_runner failed silently."
    exit 1
  fi
  echo "build_runner produced $g_dart_count .g.dart model files."

  # -------------------------------------------------------------------------
  # Step 7b: Copy common handwritten code into edition lib/src/
  # -------------------------------------------------------------------------
  echo ""
  echo "=== [$edition] Step 7b: Copying common code ==="
  copy_common_code "$edition"

  # -------------------------------------------------------------------------
  # Step 7b2: Create publishing files (.pubignore) for the edition
  # -------------------------------------------------------------------------
  echo ""
  echo "=== [$edition] Step 7b2: Creating publishing files ==="
  copy_publishing_files "$edition"

  # -------------------------------------------------------------------------
  # Step 7c: Patch pubspec.yaml with runtime dependencies
  # -------------------------------------------------------------------------
  echo ""
  echo "=== [$edition] Step 7c: Patching pubspec.yaml dependencies ==="
  patch_pubspec_dependencies "$edition"
  # Step 7 resolved before these dependencies existed; re-resolve so the
  # package config (used by dart analyze) includes them.
  (cd "$output_dir" && dart pub get)

  # -------------------------------------------------------------------------
  # Step 7d: Generate edition-specific ThingsboardClient subclass
  # -------------------------------------------------------------------------
  echo ""
  echo "=== [$edition] Step 7d: Generating service accessor class ==="
  generate_service_accessors "$edition"

  # -------------------------------------------------------------------------
  # Step 7e: Append common exports to barrel export
  # -------------------------------------------------------------------------
  echo ""
  echo "=== [$edition] Step 7e: Appending common exports to barrel ==="
  append_common_exports "$edition"

  # -------------------------------------------------------------------------
  # Step 7e2: Remove unused and duplicate imports from the generated code
  #
  # The dart-dio templates import json_object.dart twice and
  # thingsboard_error_response.dart (and some models) without using them,
  # which leaves ~200 analyzer warnings in lib/src/api and lib/src/model.
  # dart fix applies only to analyzed files, so it runs with analysis options
  # that exclude nothing; the generated ones are restored afterwards.
  # -------------------------------------------------------------------------
  echo ""
  echo "=== [$edition] Step 7e2: Removing unused and duplicate imports ==="
  (
    cd "$output_dir"
    cp analysis_options.yaml analysis_options.yaml.generated
    printf 'analyzer:\n  exclude:\n    - cloud/**\n    - common/**\n' > analysis_options.yaml
    dart fix --apply --code=unused_import --code=duplicate_import lib | tail -1
    mv analysis_options.yaml.generated analysis_options.yaml
  )

  # -------------------------------------------------------------------------
  # Step 7f: Format license headers on all .dart files
  # -------------------------------------------------------------------------
  echo ""
  echo "=== [$edition] Step 7f: Formatting license headers ==="
  apply_license_headers "$REPO_ROOT/common/lib" "$output_dir/lib" "$output_dir/test"

  # -------------------------------------------------------------------------
  # Step 7g: Format the Dart code (dart format, the language version's style)
  # -------------------------------------------------------------------------
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

  # -------------------------------------------------------------------------
  # Step 8: Stage generated output with git
  # -------------------------------------------------------------------------
  echo ""
  echo "=== [$edition] Step 8: Staging generated output ==="
  # Only the generator's outputs: at the repository root, $output_dir is the
  # whole repository.
  (
    cd "$output_dir"
    git add -A lib test doc spec pubspec.yaml analysis_options.yaml .pubignore \
      .openapi-generator .openapi-generator-ignore
  )
  git -C "$REPO_ROOT" add -A "$REPO_ROOT/common"
  echo "Staged generated output in $output_dir and common/"
}

# ---------------------------------------------------------------------------
# Main: dispatch to generate() for one or all editions
# ---------------------------------------------------------------------------

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
