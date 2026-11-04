#!/bin/bash
#
# Copyright © 2021-2026 ThingsBoard, Inc.
#
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
#

#
# Publishes ThingsBoard Dart client packages to pub.dev.
#
# Usage:
#   tool/publish.sh [options] <edition>
#
# Arguments:
#   edition    onprem | all   (see "Editions" in generate-client.sh)
#
# Options:
#   --publish  Actually upload to pub.dev (uses dart pub publish --force).
#              Without this flag the script runs in dry-run mode (default):
#              validates the package but does not upload anything.
#
# Examples:
#   tool/publish.sh onprem             # Dry-run: validate thingsboard_client
#   tool/publish.sh all                # Dry-run: validate all editions
#   tool/publish.sh --publish onprem   # Publish thingsboard_client to pub.dev
#   tool/publish.sh --publish all      # Publish all editions to pub.dev
#
# Prerequisites:
#   - Run tool/generate-client.sh first to ensure .g.dart files are up to date.
#   - First publish requires pub.dev authentication. Run `dart pub token add
#     https://pub.dev` or let the interactive flow open a browser on first use.
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

# Keep in sync with EDITIONS / edition_dir in generate-client.sh.
EDITIONS=("onprem")

edition_dir() {
  case "$1" in
    onprem) echo "$REPO_ROOT" ;;
  esac
}

PUBLISH=false
while [ $# -gt 0 ]; do
  case "$1" in
    --publish) PUBLISH=true; shift ;;
    -*) echo "Unknown option: $1"; exit 1 ;;
    *) break ;;
  esac
done

if [ $# -eq 0 ]; then
  echo "Usage: $0 [--publish] <edition>"
  echo "  edition: ${EDITIONS[*]} | all"
  exit 1
fi

EDITION="$1"

# ---------------------------------------------------------------------------
# publish_edition: validate or publish a single edition package
# ---------------------------------------------------------------------------

publish_edition() {
  local edition="$1"
  local edition_dir
  edition_dir=$(edition_dir "$edition")
  local pubspec="$edition_dir/pubspec.yaml"

  if [ ! -f "$pubspec" ]; then
    echo "Error: $pubspec not found. Run tool/generate-client.sh $edition first."
    exit 1
  fi

  # Extract package name and version from pubspec.yaml
  local pkg_name pkg_version
  pkg_name=$(grep '^name:' "$pubspec" | head -1 | sed 's/name: *//')
  pkg_version=$(grep '^version:' "$pubspec" | head -1 | sed 's/version: *//')

  echo ""
  echo "=== [$edition] Package: $pkg_name $pkg_version ==="

  (
    cd "$edition_dir"
    if [ "$PUBLISH" = true ]; then
      echo "Publishing $pkg_name $pkg_version to pub.dev..."
      dart pub publish --force
    else
      echo "Dry-run: validating $pkg_name $pkg_version (no upload)..."
      dart pub publish --dry-run
    fi
  )
}

# ---------------------------------------------------------------------------
# Main: dispatch to publish_edition() for one or all editions
# ---------------------------------------------------------------------------

PROCESSED=()

if [ "$EDITION" = "all" ]; then
  for e in "${EDITIONS[@]}"; do
    publish_edition "$e"
    PROCESSED+=("$e")
  done
elif [[ " ${EDITIONS[*]} " =~ " ${EDITION} " ]]; then
  publish_edition "$EDITION"
  PROCESSED+=("$EDITION")
else
  echo "Error: unknown edition '$EDITION'. Must be one of: ${EDITIONS[*]} all"
  exit 1
fi

echo ""
echo "=== Summary ==="
if [ "$PUBLISH" = true ]; then
  echo "Published editions: ${PROCESSED[*]}"
else
  echo "Dry-run validated editions: ${PROCESSED[*]}"
  echo "Run with --publish to upload to pub.dev."
fi
