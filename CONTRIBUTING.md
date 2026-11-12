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

`spec/openapi.json` is not a plain fetch: it is the released lts-4.4 spec plus these ThingsBoard pull requests:

- thingsboard/thingsboard#16510 (merged into lts-4.4): compatible fixes: `LoginResponse` (`scope`, optional `refreshToken`), `ColumnSettings` (allOf `DataKeySettings`), the `/api/auth/token` request body (`refreshToken` string), the responses of `claimDevice` (`ClaimResult`), `getPersistedRpcByDevice` (`PageDataRpc`) and `exportIntegrationPackage` (`application/zip`), and the `mobileLogin` request mapping;
- thingsboard/thingsboard#16557 (merged): the `NotificationInfo` subtypes;
- thingsboard/thingsboard#16560 (merged): documents `/api/system/info` (`getSystemVersionInfo`), which the server version check uses;
- thingsboard/thingsboard#16561 (merged): changes that are breaking for generated clients: integer `int`/`long` parameters (`pageSize`/`page` in 28 operations and `limit` of `getTimeseriesHistory`), `assignAlarm`/`unassignAlarm` (`AlarmInfo`), `ThingsboardErrorCode` (integer values) and `AliasEntityId` (`entityType` is a string holding an `EntityType` or `AliasEntityType` name, `id` optional);
- thingsboard/thingsboard#16613 (merged into lts-4.4): 21 response fields the server can send as null are no longer required (`SmsTwoFaAccountConfig.phoneNumber`, `BackupCodeTwoFaAccountConfig.codes`, `Edge.edgeLicenseKey`, `RuleChainMetaData.connections`, ...);
- thingsboard/thingsboard#16555 (open): device API responses (the device API is filtered out by `tool/fetch-spec.sh` anyway).

A spec fetched from lts-4.4 at 48ac7d87a97 (the merge of #16560) with #16613 differs from the committed one only by the AI API added to lts-4.4 after the spec was composed (`/api/ai/resources`, `getAiModelInfos`, `AiProvider`, ...). Do not re-fetch from a server without #16613: the fields above become required again and their responses fail to deserialize. When #16613 is merged, re-fetch from lts-4.4 and diff.

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
