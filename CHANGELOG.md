## 5.0.0

ThingsBoard CE and PE are now one product, and `thingsboard_client` is its single Dart client. It replaces `thingsboard_pe_client`, which is discontinued: its last version, 5.0.0, only re-exports this package.

- **Breaking:** the client is generated from the ThingsBoard OpenAPI spec (openapi-generator 7.26.0, dart-dio, built_value) instead of being written by hand. The 4.x services (`getUserService()`, `getDeviceService()`, ...) are replaced by generated API classes (`getUserControllerApi()`, `getDeviceControllerApi()`, ...) with built_value models: 92 API classes and 1068 model types.
- **Breaking:** requires Dart SDK >=3.10.0 (Flutter 3.38 or later) and ThingsBoard 4.4.0 or later.
- Each API operation registers only the serializers it needs, so operations an application does not call are tree-shaken together with their models.
- The handwritten runtime facade (`ThingsboardClient`) keeps JWT login with automatic refresh, MFA callbacks, API key auth, `TbStorage`, WebSocket telemetry subscriptions and `ThingsboardError`.
- The main library exports the generated `LoginRequest`, `RefreshTokenRequest` and `LoginResponse`, the types `ThingsboardClient.login()` takes and returns, so logging in needs no import of `package:thingsboard_client/src/`.
- **Breaking:** `LoginResponse` is the generated built_value model: `scope` is the generated `Authority?` and `refreshToken` is nullable (absent for two-factor tokens); the wire format is unchanged. The spec the client is generated from needs thingsboard/thingsboard#16510, which documents the real login response (`JwtPair`); the wire format works with ThingsBoard 4.4.0 servers.
- **Breaking:** `LoginRequest` and `RefreshTokenRequest` are the generated built_value models: `LoginRequest(userName: u, password: p)` → `LoginRequest((b) => b..username = u..password = p)` (field `userName` → `username`), `RefreshTokenRequest(token)` → `RefreshTokenRequest((b) => b..refreshToken = token)`. The JSON sent to `/api/auth/login` and `/api/auth/token` is unchanged.
- **Breaking:** `Authority` is a single type, the generated `Authority` of the REST models. `AuthUser.authority` and `LoginResponse.scope` use it too, so `tbClient.getAuthUser()!.authority == Authority.TENANT_ADMIN` holds for a tenant administrator; with two `Authority` types it compiled but was always `false`. `AuthUser.authority` is `null` for an anonymous user (it was `Authority.ANONYMOUS`), and `authorityFromString()` returns `null` for an unknown name instead of throwing. `Authority` is a built_value enum class: a `switch` over it needs a `default` case.
- **Breaking:** the telemetry WebSocket API (`TelemetrySubscriber`, the WebSocket commands, entity data and alarm queries, updates) is exported by the main library and works on the generated built_value models, which replace ~90 handwritten duplicates. Migrating from the 4.4.x facade of `thingsboard_pe_client`, no prefix and no `package:thingsboard_client/src/` imports are needed:
  - **Models** (old, handwritten → new, generated):
    - Entity ids: `DeviceId(uuid)` → `DeviceId((b) => b..id = uuid)` (same for `AssetId`, `TenantId`, ...); `AliasEntityId` can be sent in queries (`entityType: 'CURRENT_USER'`, ...).
    - Queries, filters, keys, page links: `EntityDataQuery(entityFilter: f, pageLink: p)` → `EntityDataQuery((b) => b..entityFilter = f..pageLink = p.toBuilder())`; `AlarmDataQuery`, `EntityCountQuery`, `EntityDataPageLink`, `AlarmDataPageLink`, `EntityKey`, `KeyFilter`, the filter predicates and the entity filters (`DeviceTypeFilter`, `EntityListFilter`, ...) likewise.
    - Discriminators (`type`, `entityType`, ...) are set automatically by most generated subtypes, so they are not passed any more. This also holds for REST models.
    - `EntityData`, `AlarmData`, `TsValue`, `EntityDataSortOrder`, `Aggregation`, `AttributeScope` and `EntityType` are the generated types of the same names.
    - `AttributeData.value` is a `JsonObject`. On WebSocket attribute updates it holds the string the server sends (a `StringJsonObject`), not parsed JSON as in REST-loaded `AttributeData` (`NumJsonObject`, `MapJsonObject`, ...).
    - `TelemetrySubscriber.attributeDataStream` emits a new list per update (it no longer mutates one list), and each call of the getter keeps its own state.
  - **Updates are immutable:** `EntityDataUpdate` and `AlarmDataUpdate` hold a `PageDataEntityData` / `PageDataAlarmData` in `data` and a `BuiltList` in `update`; `withTsOffset(int)` returns a shifted copy instead of mutating. `prepareData` of `EntityDataUpdate` / `AlarmDataUpdate` and `DataUpdate<T>` are removed.
  - **Removed handwritten types, use the generated REST models and APIs:** the `KvEntry` family (`BasicKvEntry`, `StringDataEntry`, ...), `RestJsonConverter`, the facade `AlarmQuery`, `AlarmQueryV2`, `AlarmCommentsQuery`, `BaseData`, `HasName`, `HasTenantId`, `PushNotificationQuery`. The handwritten `DataType` and `AlarmInfo` are removed too; the names now refer to the generated REST models `DataType` and `AlarmInfo`, with a different API.
  - **Notifications:** `NotificationsUpdate.update` is the generated `Notification` and `NotificationsUpdate.notifications` a `List<Notification>` (newest first; `TelemetrySubscriber.lastUpdatedNotification` still inserts each new notification and trims the list to the `limit` of the subscription). `Notification.info` decodes to the generated subtype the server class names (`AlarmNotificationInfo` with `alarmSeverity`, `alarmStatus`, `alarmType`, ...; `RuleEngineComponentLifecycleEventNotificationInfo` with `ruleChainName`, `eventType`, ...; 24 subtypes), declared in the spec the client is generated from by thingsboard/thingsboard#16557; the JSON on the wire is unchanged, so this works with ThingsBoard 4.4.0 servers. An info type the client does not know decodes to the base `NotificationInfo` (its `type`, `stateEntityId` and `dashboardId`), and the notification is kept. `PushNotification`, `PushNotificationInfo`, `PushNotificationType` and `PushNotificationStatus` and their helpers (`notificationTypeFromString`, `notificationStatusFromString`, `toShortString`) are removed: use `Notification`, the `*NotificationInfo` subtypes, `NotificationType` and `NotificationStatus`, whose unknown values decode to `unknownDefaultOpenApi` (was `UNKNOWN`). `additionalConfig` is a `JsonObject` (`additionalConfig?.value` for the map), and `id`, `requestId` and `recipientId` are optional.
  - **Behaviour:** unset query fields the server requires are filled in (page 0, `dynamic` false, empty `keyFilters`, `latestValues` and `entityFields`); `TelemetrySubscriber.createEntityAttributesSubscription` throws `ArgumentError` for an unknown attribute scope; a subscription error update without data no longer crashes the parser.
- **Breaking:** `ThingsboardError.errorCode` is the facade `ThingsBoardErrorCode` (not the generated `ThingsboardErrorCode` of the REST models). Its values now match the server: `subscriptionViolation` is 40 (it was 35, so it was never returned), and `entitiesLimitExceeded` (41) and `setupIncomplete` (47) are new; before, codes 40, 41 and 47 decoded as `general`. `tenantTrialExpired` (12) is removed, the server never sends it.
- **Breaking:** `SortOrder` takes the generated `Direction` that the main library exports (`SortOrder('name', Direction.ASC)`), so it can be built without `src/` imports. The handwritten `Direction` enum and `Direction.toShortString()` are removed (use `Direction.name`); `PageLink.toQueryParameters()` output is unchanged.
- Generated API calls throw `DioException`, not `ThingsboardError`. `e.thingsboardError` (extension `ThingsboardDioException`) returns the `ThingsboardError` of a `DioException`, and `nullIfNotFound(() => call())` returns `null` instead of throwing on HTTP 404, like the 4.x getters did: `final device = (await nullIfNotFound(() => tbClient.getDeviceControllerApi().getDeviceById(deviceId: id)))?.data;`. Its signature differs from the 4.x `nullIfNotFound`, and the 404 still reaches `onError` unless the call passes `extra: InterceptorConfig(ignoreErrors: true).toExtra()`.
- `ThingsboardClient.changePassword(currentPassword, newPassword)`, `checkTwoFaVerificationCode(providerType, verificationCode)` and `getLoginDataBySecretKey(host:, key:)` are back from 4.x, with the same session behaviour: the first two store the tokens the server returns (`checkTwoFaVerificationCode` also calls `onUserLoaded`), `getLoginDataBySecretKey` only returns them. They take no `RequestConfig`, throw `ThingsboardError`, and `providerType` is the generated `TwoFaProviderType`.
- `LocalFileStorage.getItem` returns `defaultValue` for an absent key and `containsKey` waits for the file to load, so a key stored by a previous instance is found.
- **Breaking:** removed API that nothing used: `isSuccessful` (catch the `DioException` instead and inspect `e.thingsboardError.errorCode`), `AuthUser.fromToken`, the top-level `isJwtTokenValid(String?)` (use `ThingsboardClient.isJwtTokenValid()`), and `KeyInterceptConfig` (no longer exported; an interceptor implementation detail).
- Telemetry WebSocket: each update is parsed by the parser of the command it belongs to (`WebsocketCmd.updateParser`), so an application compiles in only the update types of the commands it creates. An attribute or timeseries subscription alone no longer pulls in entity data, alarm data and notification decoding (an AOT snapshot of a program with a login and one telemetry subscription is 2.35 MB). A custom `WebsocketCmd` subclass must override `updateParser`, otherwise its updates are ignored. `parseWebsocketDataMessage` still parses any update.
- Telemetry WebSocket with API key authentication: a client created with `apiKey` now opens the telemetry WebSocket and authenticates it with the key (`AuthCmd.apiKey`). Before, it only knew JWT, so the socket never opened and subscriptions received nothing.
- Telemetry WebSocket: `logout()` and other socket closes no longer throw `Invalid argument: 1001, close code must be 1000 or in the range 3000-4999` on dart:io; the client closes with 1000 (normal closure).
- Migrating from `thingsboard_pe_client` 4.4.x: rename the dependency and replace `package:thingsboard_pe_client/` with `package:thingsboard_client/` in imports. Apart from the differences below, the API classes and the `ThingsboardClient` facade are the same as in 4.4.x. The raw generated client class `ThingsboardPeClient` is now `ThingsboardClient` (hidden from the main library, as before). Breaking for 4.4.x code:
  - **Enum constants** whose value contains digits are named after the value (openapi-generator 7.26.0), and the `ThingsboardErrorCode` constants after their number. Wire values are unchanged. 65 constants in 18 enums:
    - `AuthenticationProtocol`: `sHA1` → `SHA_1`, `sHA224` → `SHA_224`, `sHA256` → `SHA_256`, `sHA384` → `SHA_384`, `sHA512` → `SHA_512`, `mD5` → `MD5`
    - `BulkImportColumnType`: `x509` → `X509`, `lWM2MCLIENTENDPOINT` → `LWM2M_CLIENT_ENDPOINT`, `lWM2MCLIENTSECURITYCONFIGMODE` → `LWM2M_CLIENT_SECURITY_CONFIG_MODE`, `lWM2MCLIENTIDENTITY` → `LWM2M_CLIENT_IDENTITY`, `lWM2MCLIENTKEY` → `LWM2M_CLIENT_KEY`, `lWM2MCLIENTCERT` → `LWM2M_CLIENT_CERT`, `lWM2MBOOTSTRAPSERVERSECURITYMODE` → `LWM2M_BOOTSTRAP_SERVER_SECURITY_MODE`, `lWM2MBOOTSTRAPSERVERPUBLICKEYORID` → `LWM2M_BOOTSTRAP_SERVER_PUBLIC_KEY_OR_ID`, `lWM2MBOOTSTRAPSERVERSECRETKEY` → `LWM2M_BOOTSTRAP_SERVER_SECRET_KEY`, `lWM2MSERVERSECURITYMODE` → `LWM2M_SERVER_SECURITY_MODE`, `lWM2MSERVERCLIENTPUBLICKEYORID` → `LWM2M_SERVER_CLIENT_PUBLIC_KEY_OR_ID`, `lWM2MSERVERCLIENTSECRETKEY` → `LWM2M_SERVER_CLIENT_SECRET_KEY`
    - `ChecksumAlgorithm`: `mD5` → `MD5`, `sHA256` → `SHA256`, `sHA384` → `SHA384`, `sHA512` → `SHA512`, `cRC32` → `CRC32`, `mURMUR332` → `MURMUR3_32`, `mURMUR3128` → `MURMUR3_128`
    - `DeviceCredentialsType`: `x509CERTIFICATE` → `X509_CERTIFICATE`, `lWM2MCREDENTIALS` → `LWM2M_CREDENTIALS`
    - `DeviceProfileProvisionType`: `x509CERTIFICATECHAIN` → `X509_CERTIFICATE_CHAIN`
    - `DeviceTransportType`: `lWM2M` → `LWM2M`
    - `EdgeEventType`: `oAUTH2CLIENT` → `OAUTH2_CLIENT`
    - `EntityGroupInfoTypeEnum`: `oAUTH2CLIENT` → `OAUTH2_CLIENT`
    - `EntityGroupTypeEnum`: `oAUTH2CLIENT` → `OAUTH2_CLIENT`
    - `EntityType`: `oAUTH2CLIENT` → `OAUTH2_CLIENT`
    - `ObjectType`: `oAUTH2CLIENT` → `OAUTH2_CLIENT`, `oAUTH2DOMAIN` → `OAUTH2_DOMAIN`, `oAUTH2MOBILE` → `OAUTH2_MOBILE`
    - `PageSize`: `a4` → `A4`, `a5` → `A5`, `a3` → `A3`
    - `PrivacyProtocol`: `aES128` → `AES_128`, `aES192` → `AES_192`, `aES256` → `AES_256`
    - `Resource`: `oAUTH2CLIENT` → `OAUTH2_CLIENT`, `oAUTH2CONFIGURATIONTEMPLATE` → `OAUTH2_CONFIGURATION_TEMPLATE`
    - `ResourceType`: `lWM2MMODEL` → `LWM2M_MODEL`, `pKCS12` → `PKCS_12`
    - `SignUpFieldId`: `aDDRESS2` → `ADDRESS2`
    - `SnmpProtocolVersion`: `v1` → `V1`, `v2C` → `V2C`, `v3` → `V3`
    - `ThingsboardErrorCode`: `n2` → `number2`, `n10` → `number10`, `n11` → `number11`, `n15` → `number15`, `n20` → `number20`, `n30` → `number30`, `n31` → `number31`, `n32` → `number32`, `n33` → `number33`, `n34` → `number34`, `n35` → `number35`, `n40` → `number40`, `n41` → `number41`, `n45` → `number45`, `n46` → `number46`
  - `DeviceApiControllerApi` and `ThingsboardClient.getDeviceApiControllerApi()` of `thingsboard_pe_client` 4.4.x are not part of `thingsboard_client`. The device HTTP API (`/api/v1/{deviceToken}/...`) is the device side of the platform and is not in the spec the ThingsBoard REST clients are generated from; the 4.4.x file was a leftover of an older spec, and its read operations failed to decode the JSON responses. Devices should use the MQTT, CoAP or HTTP transport directly.
  - `SolutionControllerApi` (solution templates) of `thingsboard_pe_client` 4.4.x is not part of `thingsboard_client`, nor are its models `TenantSolutionTemplateInfo`, `TenantSolutionTemplateDetails`, `TenantSolutionTemplateInstructions`, `SolutionInstallResponse` and `SolutionTemplateLevel` and the unused `ComplexOperation` model. They came from a 4.4.0 pre-release snapshot of the spec; the released ThingsBoard 4.4.0 has no `/api/solutions/templates/...`.
  - The same snapshot lacked API classes of the released ThingsBoard 4.4.0, which `thingsboard_client` has: `AgentControllerApi`, `AgentProfileControllerApi`, `AgentApplicationControllerApi`, `AgentAppProfileControllerApi`, `AgentAppTemplateControllerApi`, `AgentBulkActionControllerApi`, `AiChatControllerApi`, `AiDeviceDashboardControllerApi`, `AiSolutionControllerApi`, `AiToolControllerApi`, `SystemSetupControllerApi`.
  - Spec fixes of thingsboard/thingsboard#16510:
    - `ThingsboardErrorCode` values are numbers, as the server sends them; before, every `errorCode` decoded as `unknownDefaultOpenApi`. Code 47 (`number47`) is new.
    - `AliasEntityId.entityType` is a `String` holding an `EntityType` or `AliasEntityType` name, and `id` is optional. Alias filters such as `CURRENT_USER` could not be sent or read before.
    - `RefreshTokenRequest.refreshToken` is a `String` instead of `JsonObject`.
    - `ColumnSettings` implements `DataKeySettings`; its own `type` field is removed.
    - `Lwm2mControllerApi.saveLwm2mDeviceWithCredentials` takes a `BuiltMap<String, JsonObject?>` request body.

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
