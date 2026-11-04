#!/bin/bash
#
# Copyright © 2021-2026 ThingsBoard, Inc.
#
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.
#

#
# Fetches the OpenAPI spec of a running ThingsBoard server into
# <edition_dir>/spec/openapi.json, ready for tool/generate-client.sh.
#
# Usage:
#   tool/fetch-spec.sh <server url> [edition]
#
# Arguments:
#   server url  Base URL of the server, e.g. http://localhost:8080
#   edition     onprem (default); see "Editions" in generate-client.sh
#
# The spec is read from the springdoc group /v3/api-docs/thingsboard. The
# ungrouped /v3/api-docs is a different document: it lacks the security
# requirements, the error responses and the tag list, and includes internal
# controllers, so the generated client would differ.
#
# The device API (/api/v1/**, the device-token based HTTP transport of
# DeviceApiController) is removed, like in the specs the other ThingsBoard REST
# clients are generated from: it is the device side of the platform, not part
# of the user API this client wraps, and it is only in the spec when the
# server runs with the HTTP transport. Its tag goes with it.
#
# The servers[].url of the spec is the address the server was reached at; the
# generator writes it into the client as its default base path, so it is
# replaced by http://localhost:8080 to keep the output independent of the
# machine the spec was fetched on. Nothing else in the spec is changed.
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

if [ $# -lt 1 ]; then
  echo "Usage: $0 <server url> [edition]"
  exit 1
fi

SERVER_URL="${1%/}"
EDITION="${2:-onprem}"

case "$EDITION" in
  onprem) SPEC_FILE="$REPO_ROOT/spec/openapi.json" ;;
  *) echo "Error: unknown edition '$EDITION'"; exit 1 ;;
esac

TMP_FILE=$(mktemp)
trap 'rm -f "$TMP_FILE"' EXIT

echo "Fetching $SERVER_URL/v3/api-docs/thingsboard ..."
curl -fsS --max-time 600 -o "$TMP_FILE" "$SERVER_URL/v3/api-docs/thingsboard"

python3 - "$TMP_FILE" "$SPEC_FILE" <<'PYEOF'
import json, sys

src, dst = sys.argv[1], sys.argv[2]
with open(src) as f:
    spec = json.load(f)
if not spec.get('tags'):
    sys.exit('Error: the spec has no tags; is this the /v3/api-docs/thingsboard group?')
for server in spec.get('servers', []):
    server['url'] = 'http://localhost:8080'

device_api = [p for p in spec['paths'] if p.startswith('/api/v1/')]
device_tags = {t for p in device_api for op in spec['paths'][p].values()
               if isinstance(op, dict) for t in op.get('tags', [])}
for p in device_api:
    del spec['paths'][p]
used_tags = {t for item in spec['paths'].values() for op in item.values()
             if isinstance(op, dict) for t in op.get('tags', [])}
spec['tags'] = [t for t in spec.get('tags', [])
                if t['name'] not in device_tags or t['name'] in used_tags]
if device_api:
    print(f"Removed the device API: {len(device_api)} paths under /api/v1/.")
with open(dst, 'w') as f:
    json.dump(spec, f, indent=2, ensure_ascii=False)
info = spec.get('info', {})
print(f"Wrote {dst}: version {info.get('version')}, {len(spec['paths'])} paths, "
      f"{len(spec['components']['schemas'])} schemas.")
PYEOF
