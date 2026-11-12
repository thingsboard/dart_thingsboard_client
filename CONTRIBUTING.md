# Contributing

## How the package is built

Most of the package is generated from the ThingsBoard OpenAPI spec:

| Path | What it is | How to change it |
|---|---|---|
| `spec/openapi.json` | The OpenAPI spec of the ThingsBoard server | `tool/fetch-spec.sh <server url>` |
| `lib/src/api/`, `lib/src/model/*.dart`, `doc/` | Generated REST API classes, models and their docs | Regenerate; never edit by hand |
| `common/lib/` | The handwritten facade: `ThingsboardClient` base, authentication, storage, errors, telemetry WebSocket | Edit here |
| `lib/src/` outside the generated paths | Copies of `common/lib/` | Copied by the generator; CI checks they match |
| `tool/` | Generation and publishing scripts | Edit here |

A fix in the REST models usually belongs in the server's API documentation (`@Schema`, `@ApiResponse`, ...) in the [ThingsBoard repository](https://github.com/thingsboard/thingsboard); the client is regenerated from the fixed spec.

## Regenerating the client

Prerequisites: Java, Dart SDK 3.10 or later, Perl, Python 3.

```bash
tool/fetch-spec.sh http://localhost:8080   # optional: take the spec of a running server
tool/generate-client.sh onprem             # regenerate the package from spec/openapi.json
```

`generate-client.sh` copies `common/lib/` into `lib/`, adds the license headers, removes unused imports, formats the code and stages the result. See the comments at the top of the script for every step.

## The spec

`spec/openapi.json` is fetched by `tool/fetch-spec.sh` from a server built from the ThingsBoard lts-4.4 branch at 55bea201b94. Its API documentation has fixes the client depends on and the released 4.4.0 lacks: the login response (`JwtPair`, optional `refreshToken`), numeric `ThingsboardErrorCode`, `AliasEntityId`, the `NotificationInfo` subtypes, `getSystemVersionInfo`, integer paging parameters, and the response fields the server can send as null. Do not fetch from a 4.4.0 server: those fields become required again and their responses fail to deserialize (`test/nullable_fields_test.dart` and `test/spec_fixes_test.dart` catch it). To update, run a server on a newer lts-4.4 commit, fetch, review the diff and record the commit here.

## Dependency versions

`pubspec.lock` is committed: the generated code (`.g.dart`, `lib/src/api_serializers.dart`) depends on the versions of `build_runner`, `built_value_generator` and `dart_style`, so everyone regenerates with the same ones. It does not affect applications that depend on the package. Dependabot updates it; CI also tests the newest and the lowest allowed versions.

## Checks

```bash
dart format --output=none --set-exit-if-changed lib test example common
dart analyze --fatal-infos
dart test
tool/publish.sh onprem      # dart pub publish --dry-run
```

CI runs the same checks, also with the lowest supported Dart SDK and with the lowest dependency versions.

## Pull requests

Describe the change for users in `CHANGELOG.md`. Keep a fix of the facade and a regeneration of the client in separate commits.
