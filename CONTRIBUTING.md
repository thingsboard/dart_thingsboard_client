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

## The spec is composed

`spec/openapi.json` is not a plain fetch: it is the released lts-4.4 spec plus four unmerged ThingsBoard pull requests:

- thingsboard/thingsboard#16510: fixes the schemas of `ThingsboardErrorCode` (integer values), `AliasEntityId` (`entityType` is a string holding an `EntityType` or `AliasEntityType` name, `id` optional), `ColumnSettings` (allOf `DataKeySettings`) and the `/api/auth/token` request body (`refreshToken` string); its later commit 9231afe93cb fixes `LoginResponse` (`scope`, optional `refreshToken`);
- thingsboard/thingsboard#16555: device API responses (the device API is filtered out by `tool/fetch-spec.sh` anyway);
- thingsboard/thingsboard#16557: the `NotificationInfo` subtypes.
- thingsboard/thingsboard#16560: documents `/api/system/info` (`getSystemVersionInfo`), which the server version check uses.

Do not re-fetch the spec from a server without them: the build breaks (`LoginResponse.scope`, `SystemInfoControllerApi`) and the `NotificationInfo` subtypes disappear. When all four are merged into lts-4.4, re-fetch and diff.

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
