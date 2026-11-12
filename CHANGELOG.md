## 5.0.0

ThingsBoard CE and PE are now one product, and `thingsboard_client` is its single Dart client. It replaces `thingsboard_pe_client`, which is discontinued: its last version, 5.0.0, only re-exports this package. See [MIGRATION.md](MIGRATION.md) for upgrading from `thingsboard_client` 4.x or `thingsboard_pe_client` 4.4.x.

- **Breaking:** the client is generated from the ThingsBoard OpenAPI spec (openapi-generator 7.26.0, dart-dio, built_value) instead of being written by hand: 93 API classes and 1072 model types. The 4.x services (`getDeviceService()`, ...) are replaced by API classes (`getDeviceControllerApi()`, ...) with named parameters, `Response<T>` results, paging by `pageSize:`/`page:` and built_value models. See [Migrating from 4.x](MIGRATION.md#migrating-from-thingsboard_client-4x-421) and the [service → API table](MIGRATION.md#appendix-421-service-method--50-operation).
- **Breaking:** requires Dart SDK >=3.10.0 (Flutter 3.38 or later) and ThingsBoard 4.4.0 or later; `web_socket_channel` ^3.0.3 and `dio` ^5.7.0.
- **Breaking:** generated API calls throw `DioException`, not `ThingsboardError`, and getters no longer return `null` on HTTP 404. New helpers: `e.thingsboardError` (extension `ThingsboardDioException`) and `nullIfNotFound(() => call())`. See [Errors](MIGRATION.md#errors).
- **Breaking:** the 4.x CE customer, public and edge assignment methods are not in the merged spec; use `OwnerControllerApi` and `EntityGroupControllerApi`. See [Customer, public and edge assignment](MIGRATION.md#customer-public-and-edge-assignment).
- **Breaking:** `ThingsboardClient` no longer has `dioOptions`, `reInit`, `sendResetPasswordLink`, `getAuthUserFromJwt` and `getPlatformVersion`. The server version is checked whenever a full session is loaded (login, two-factor verification, `init()`), for every authority; an older server throws `UnsupportedServerVersionError` and the session is cleared. `changePassword`, `checkTwoFaVerificationCode` and `getLoginDataBySecretKey` are kept, with the same session behaviour as in 4.x. See [`ThingsboardClient` changes](MIGRATION.md#thingsboardclient-changes).
- **Breaking:** `LoginRequest`, `RefreshTokenRequest` and `LoginResponse` are the generated built_value models, exported by the main library; the wire format is unchanged. `Authority` is a single generated type, and `AuthUser.authority` is `null` for an anonymous user. See [Changes for both](MIGRATION.md#changes-for-both-login-authority-errors-paging).
- **Breaking:** `ThingsboardError.errorCode` values match the server: `subscriptionViolation` is 40, `entitiesLimitExceeded` (41) and `setupIncomplete` (47) are new, `tenantTrialExpired` is removed.
- **Breaking:** `SortOrder` takes the generated `Direction`; the handwritten `Direction` is removed.
- **Breaking:** removed `isSuccessful`, `AuthUser.fromToken`, the top-level `isJwtTokenValid(String?)` and the `KeyInterceptConfig` export.
- **Breaking:** the telemetry WebSocket API is exported by the main library and works on the generated built_value models; updates are immutable, and a custom `WebsocketCmd` must override `updateParser`. See [telemetry WebSocket](MIGRATION.md#changes-for-both-telemetry-websocket).
- **Breaking** for `thingsboard_pe_client` 4.4.x: 68 enum constants in 19 enums are renamed (`EntityType.oAUTH2CLIENT` → `OAUTH2_CLIENT`, ...), `FontWeight` and `FontStyle` are renamed to `TbFontWeight` and `TbFontStyle` (they shadowed the Flutter types), `DeviceApiControllerApi` and `SolutionControllerApi` are removed, and 11 API classes of ThingsBoard 4.4.0 plus `SystemInfoControllerApi` are added. See [Migrating from `thingsboard_pe_client` 4.4.x](MIGRATION.md#migrating-from-thingsboard_pe_client-44x).
- Each API operation registers only the serializers it needs, so operations an application does not call are tree-shaken together with their models. Likewise each WebSocket update is parsed by its command's parser: a program with a login and one telemetry subscription compiles to a 2.35 MB AOT snapshot.
- New: `apiSerializers(register<Model>)`, with a `register<Model>` function for every model, serializes a single model without pulling every model into the build like `standardSerializers` does. See [Models are built_value](MIGRATION.md#models-are-built_value).
- The generated spec needs thingsboard/thingsboard#16510 (login response `JwtPair`, `RefreshTokenRequest`), #16561 (numeric `ThingsboardErrorCode`, `AliasEntityId`), #16557 (typed `Notification.info`), #16560 (`getSystemVersionInfo`) and #16613 (fields the server sends as null). The wire format is unchanged, so ThingsBoard 4.4.0 servers work. See [Spec fixes](MIGRATION.md#spec-fixes).
- Fixed: the `TelemetryObserveStrategy` constants of `thingsboard_pe_client` 4.4.x had wrong wire values (`'SINGLE (0): One resource …'`); 5.0 sends `SINGLE`, `COMPOSITE_ALL` and `COMPOSITE_BY_OBJECT`.
- Fixed: `LocalFileStorage.getItem` returns `defaultValue` for an absent key and `containsKey` waits for the file to load, so a key stored by a previous instance is found.
- Fixed: a client created with `apiKey` opens the telemetry WebSocket and authenticates it with the key (`AuthCmd.apiKey`). Before, the socket never opened and subscriptions received nothing.
- Fixed: `logout()` and other socket closes no longer throw `Invalid argument: 1001, close code must be 1000 or in the range 3000-4999` on dart:io; the client closes with 1000 (normal closure).
- Fixed: a WebSocket subscription error update without data no longer crashes the parser.
- Fixed: `withTsOffset` of alarm updates shifted unset times: an alarm that was not acknowledged or cleared got `ackTs`/`clearTs` equal to the offset instead of 0. Zero times and timestamps are now kept, as in the ThingsBoard web UI.
- Fixed: operations typed as returning a `String` whose server response is a JSON object or other JSON (the rule engine and two-way RPC calls) threw on success; the body is now returned as its JSON text.
- Fixed (breaking for `thingsboard_pe_client` 4.4.x), from thingsboard/thingsboard#16510 and #16561: `claimDevice` returns a typed `ClaimResult`, `getPersistedRpcByDevice` a `PageDataRpc` and `exportIntegrationPackage` the ZIP archive as `Uint8List` (all three were `String`); `assignAlarm` and `unassignAlarm` return `AlarmInfo`, as the server does; `pageSize` and `page` are `int` in the 28 operations that typed them as `String` (entity group, owner, user-scoped list, converter, integration, role and scheduler operations), and so is the `limit` of `getTimeseriesHistory`. See [Spec fixes](MIGRATION.md#spec-fixes).
- Fixed (breaking: the fields are nullable), from thingsboard/thingsboard#16613: responses with a `null` in 21 fields that the spec marked as required threw on deserialization, among them `generateTwoFaAccountConfig` for SMS (`phoneNumber`), `getAccountTwoFaSettings` for a user with backup codes (`codes`), edges read by a customer user (`edgeLicenseKey`), the metadata of a new rule chain and user, customer and dashboard group entities (`ShortEntityView.name`). See [Spec fixes](MIGRATION.md#spec-fixes).
- Fixed: a token refresh that finished after `logout()`, `setUserFromJwtToken()` or a new login stored its tokens over the newer session; its result is now dropped, and a request waiting on it is retried with the current session, or fails when there is none.

## 4.2.1
- Fixed `AlarmType.fromJson` cast error when filtering alarms by type

## 4.2.0
- Added `ImageService` for managing image uploads
- Fixed `AlarmComment.comment` deserialization into `AlarmCommentJsonNode`
- Fixed analyzer warnings (unused imports, deprecation messages, identifier naming)

## 4.1.0
- Thingsboard 4.3.0+ support
- Api key management
- Api key auth support
- 2Fa force support
## 4.0.0
- Changes in TbStorage interface

## 3.0.1

- Adapted to backend changes for version information representation.

## 3.0.0

- Introduced a new API for dynamically configuring via mobile center.
- The minimum supported TB version is 3.9.0 and higher.

## 2.0.0

- Enhanced TbStorage interface for improved usability.
- Introduced a new API for alarm activity management, including support for comments and additional functionalities.

## 1.3.1

- Increased the minimum supported ThingsBoard version to 3.8.0.

## 1.3.0

- **New APIs:**
    - `/api/alarm/types` - Fetches available alarm types.
    - `/api/users/info` - Retrieves user information.

- **Enhancements:**
    - Added the ability to log request and response details for improved debugging.

- **Bug Fixes:**
    - Various minor bug fixes to improve stability and performance.

## 1.2.0

- Introduced the ability to configure access to custom applications using a login with a QR code feature. 
- Update API and models according to ThingsBoard platform version 3.7.0
- Fixed the issue with resolving supported platform versions. 
- Implemented other minor fixes.

## 1.1.1

- Introduced a NotificationService, which allows you to receive notification data.

## 1.1.0

- Updated the API and models to align with the latest ThingsBoard platform, version 3.6.3
- Introduced support for push notifications

## 1.0.8

- Update API and models according to ThingsBoard platform version 3.6.2
- Fixed issue [#13](https://github.com/thingsboard/dart_thingsboard_client/issues/13): Problem occurred when using web socket and loosing internet
- Fixed issue [#19](https://github.com/thingsboard/dart_thingsboard_client/issues/19): incorrect AlarmDataCmd
- Fixed issue [#21](https://github.com/thingsboard/dart_thingsboard_client/issues/21): incorrect updated notification in subscription

## 1.0.7

- Update API and models according to ThingsBoard platform version 3.6.0
- Fixed issue [#17](https://github.com/thingsboard/dart_thingsboard_client/issues/17): get json attributes when value is array

## 1.0.6

- Fixed incorrect deserializing alarm models

## 1.0.5

- Update API and models according to ThingsBoard platform version 3.5.0

## 1.0.4

- Update API and models according to ThingsBoard platform version 3.4.2

## 1.0.3

- Update API and models according to ThingsBoard platform version 3.4.0
- Added MFA support
- Fix dart analysis issues 

## 1.0.2

- Add support for web platform

## 1.0.1

- Improve description
- Improve pubspec: add github links
- Use formatting according to dartfmt

## 1.0.0

- Initial version, created by Igor Kulikov
