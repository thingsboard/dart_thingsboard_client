# Migrating to thingsboard_client 5.0

`thingsboard_client` 5.0 is generated from the ThingsBoard OpenAPI spec (dart-dio, built_value), with a handwritten facade, `ThingsboardClient`, for login, token refresh, storage and the telemetry WebSocket. It needs ThingsBoard 4.4.0 or later. It also replaces `thingsboard_pe_client`, since ThingsBoard CE and PE are now one product.

- [Migrating from `thingsboard_client` 4.x (4.2.1)](#migrating-from-thingsboard_client-4x-421)
- [Migrating from `thingsboard_pe_client` 4.4.x](#migrating-from-thingsboard_pe_client-44x)
- [Changes for both: login, `Authority`, errors, paging](#changes-for-both-login-authority-errors-paging)
- [Changes for both: telemetry WebSocket](#changes-for-both-telemetry-websocket)
- [Appendix: 4.2.1 service method → 5.0 operation](#appendix-421-service-method--50-operation)

The snippets import `package:thingsboard_client/thingsboard_client.dart`. `DioException` and `MultipartFile` come from `package:dio/dio.dart`, and `BuiltList` from `package:built_collection/built_collection.dart`. The main library does not re-export these packages.

## Migrating from `thingsboard_client` 4.x (4.2.1)

### Dependencies

- Dart SDK 3.10 or later (Flutter 3.38 or later).
- `web_socket_channel` ^3.0.3 (was ^2.4.0) and `dio` ^5.7.0 (was ^5.3.4).
- New: `built_value`, `built_collection`, `one_of` and `one_of_serializer`. Add `built_value` and `built_collection` to your own `pubspec.yaml` if you import them, for example for `BuiltList` or `JsonObject`.

### Services are now API classes

The 30 `get*Service()` accessors are removed. There are now 92 generated API classes, one per server controller, each with an accessor such as `getDeviceControllerApi()`. Many operations are renamed: `getDevice` → `getDeviceById`, `findByQuery` → `findDevicesByQuery`, `saveDeviceCredentials` → `updateDeviceCredentials`, and so on. The [appendix](#appendix-421-service-method--50-operation) lists all 335 service methods. `getTelemetryService()` is unchanged.

Arguments are named, and every call returns a dio `Response<T>`. Read the result from `.data`, which is nullable.

```dart
// 4.2.1
final Device? device = await tbClient.getDeviceService().getDevice(id);

// 5.0
final res = await tbClient.getDeviceControllerApi().getDeviceById(deviceId: id);
final Device? device = res.data;
```

### Paging

No operation takes a `PageLink` or returns a `PageData<T>`. Pass `pageSize:`, `page:`, `textSearch:`, `sortProperty:` and `sortOrder:` (a `String`, `'ASC'` or `'DESC'`); time-bounded lists also take `startTime:` and `endTime:`. Results are generated types such as `PageDataDevice`, whose `data` is a `BuiltList<Device>?`. `PageLink`, `TimePageLink`, `SortOrder` and `PageData` are still exported, so you can keep a `PageLink` in app code and pass its fields.

```dart
// 4.2.1
var link = PageLink(20, 0, 'sensor', SortOrder('name', Direction.ASC));
final PageData<Device> page =
    await tbClient.getDeviceService().getTenantDevices(link);

// 5.0
var link = PageLink(20, 0, 'sensor', SortOrder('name', Direction.ASC));
final res = await tbClient.getDeviceControllerApi().getTenantDevices(
  pageSize: link.pageSize,
  page: link.page,
  textSearch: link.textSearch,
  sortProperty: link.sortOrder?.property,
  sortOrder: link.sortOrder?.direction.name,
);
final PageDataDevice page = res.data!;
if (page.hasNext == true) link = link.nextPageLink();
```

### Models are built_value

Models are immutable. Build them with a builder and change them with `rebuild`. Almost every field is nullable. Free-form JSON (`additionalInfo`, `configuration`, ...) is a `JsonObject`, so use `.value` for the Dart object. Lists and maps are `BuiltList` and `BuiltMap`. `fromJson`/`toJson`, the 43 `parse*PageData`/`parse*List` functions, the `*ToString` extensions and the `*FromString` functions are removed. Enums are built_value `EnumClass` types: use `.name` instead of `toShortString()` and `valueOf` instead of `xxxFromString`. Unknown wire values decode to `unknownDefaultOpenApi`, and a `switch` needs a `default` case.

```dart
// 4.2.1
final device = Device('Sensor 1', 'default');
device.label = 'Lab';

// 5.0
final device = Device((b) => b
  ..name = 'Sensor 1'
  ..type = 'default');
final renamed = device.rebuild((b) => b..label = 'Lab');
final Object? info = device.additionalInfo?.value;
switch (alarm.severity) {
  case AlarmSeverity.CRITICAL:
    return 'critical';
  default:
    return alarm.severity.name;
}
```

Removed or renamed types:

| 4.2.1 | 5.0 |
|---|---|
| `EntitySubType`, `AlarmType` (from `getAlarmTypes`) | `EntitySubtype`; `getAlarmTypes` returns `PageDataEntitySubtype` |
| `Oauth2ClientId` | `OAuth2ClientId` |
| `Event`, `EventBody` and its subclasses | `EventInfo` |
| `MobileBasicInfo` | `UserMobileInfo` |
| `ClaimResult`, `ClaimResponse` | `claimDevice` returns `Response<String>` |
| `AlarmCommentJsonNode` | `AlarmComment.comment` is a `JsonObject?` |
| `DynamicValue`, `FilterPredicateValue` | `DynamicValueBoolean`/`Double`/`String`, `FilterPredicateValueBoolean`/`Double`/`String` |
| `ApiKeyQuery`, `MobileInfoQuery`, `UsersAssignQuery`, `EntitySearchQuery`, `AlarmQuery`, `AlarmQueryV2`, `AlarmCommentsQuery`, `PushNotificationQuery` | removed: pass the fields as named parameters |
| `KvEntry` family (`AttributeKvEntry`, `TsKvEntry`, ...) | `AttributeData`, `TsData` and the generated telemetry responses |
| `BaseData`, `HasName`, `HasTenantId`, `AdditionalInfoBased` and the other mixins | removed |
| `PlatformVersion`, `PlatformVersionMatcher` | removed; see `getPlatformVersion` below |
| `EntityId.fromTypeAndUuid`, `EntityId.fromJson` | removed: build the id class, for example `DeviceId((b) => b..id = uuid)` |

### Errors

Generated API calls throw dio's `DioException`, not `ThingsboardError`, so `on ThingsboardError` no longer catches them. `e.thingsboardError` (extension `ThingsboardDioException`) returns the `ThingsboardError`; a successful response that fails to deserialize becomes a `general` error whose message names the cause. The facade methods (`login`, `logout`, `init`, `changePassword`, `checkTwoFaVerificationCode`, `getLoginDataBySecretKey`, `get`/`post`/`put`/`delete`) still throw `ThingsboardError`. `refreshJwtToken` throws `DioException`, as in 4.2.1; use `e.thingsboardError`.

```dart
// 4.2.1
try {
  await tbClient.getDeviceService().deleteDevice(id);
} on ThingsboardError catch (e) {
  print(e.message);
}

// 5.0
try {
  await tbClient.getDeviceControllerApi().deleteDevice(deviceId: id);
} on DioException catch (e) {
  final error = e.thingsboardError;
  if (error.errorCode == ThingsBoardErrorCode.permissionDenied) {
    print(error.message);
  }
}
```

### Not found and failed saves

In 4.2.1, 98 getters (`getDevice`, `getAsset`, `getUser`, ...) returned `null` on HTTP 404. Their `nullIfNotFound` used `RequestConfig(ignoreErrors: true)`, so no error of any kind reached `onError`. In 5.0 they throw. Wrap the call in `nullIfNotFound(() => ...)` to get `null` back. Every error, including the 404, reaches `onError` unless the call passes `extra: InterceptorConfig(ignoreErrors: true).toExtra()`. The 4.x `nullIfNotFound` took a `RequestConfig` callback; the new one takes a plain function.

```dart
// 4.2.1
final Device? device = await tbClient.getDeviceService().getDevice(id);

// 5.0
final device = (await nullIfNotFound(
  () => tbClient.getDeviceControllerApi().getDeviceById(
    deviceId: id,
    extra: InterceptorConfig(ignoreErrors: true).toExtra(),
  ),
))?.data;
```

The 8 attribute and telemetry methods that returned `false` on any error (`saveDeviceAttributes`, `saveEntityAttributesV1`/`V2`, `saveEntityTelemetry`, `saveEntityTelemetryWithTTL`, `deleteEntityTimeseries`, `deleteDeviceAttributes`, `deleteEntityAttributes`) now throw. `isSuccessful` is removed. It used `RequestConfig(ignoreErrors: true)`, so those calls never reached `onError`; in 5.0 every error does, unless the call passes `extra: InterceptorConfig(ignoreErrors: true).toExtra()`.

### Request options

Generated operations take no `RequestConfig`. Pass the interceptor flags as `extra:` instead. `followRedirect` has no per-call equivalent. `login` and `logout` still take a `RequestConfig`, and `defaultHttpOptions(...)` builds the `Options` for the facade `get`/`post`/`put`/`delete`.

```dart
// 4.2.1
await tbClient.getDeviceService().getTenantDevices(pageLink,
    requestConfig: RequestConfig(ignoreLoading: true, ignoreErrors: true));

// 5.0
await tbClient.getDeviceControllerApi().getTenantDevices(
  pageSize: 10,
  page: 0,
  extra: InterceptorConfig(ignoreLoading: true, ignoreErrors: true).toExtra(),
);
```

### Entity ids, enums and bodies in parameters

Most operations take an `EntityId` as two strings (`entityType:`, `entityId:`) and most enum parameters (attribute scopes, sort order, ...) as strings; a few take the generated enum (for example `EntityType` in `EntitiesVersionControlControllerApi`, `TwoFaProviderType` in the two-factor APIs). Attribute, telemetry and RPC bodies are a `String`, so `jsonEncode` them yourself.

```dart
// 4.2.1
final attrs = await tbClient.getAttributeService().getAttributesByScope(
    entityId, AttributeScope.SERVER_SCOPE.toShortString(), ['firmware']);
await tbClient.getAttributeService().saveEntityAttributesV2(
    entityId, 'SERVER_SCOPE', {'threshold': 42});

// 5.0
final attrs = await tbClient.getTelemetryControllerApi().getAttributesByScope(
  entityType: entityId.entityType.name,
  entityId: entityId.id,
  scope: 'SERVER_SCOPE',
  keys: 'firmware',
);
await tbClient.getTelemetryControllerApi().saveEntityAttributesV2(
  entityType: 'DEVICE',
  entityId: id,
  scope: 'SERVER_SCOPE',
  body: jsonEncode({'threshold': 42}),
);
```

### `ThingsboardClient` changes

| 4.2.1 | 5.0 |
|---|---|
| constructor parameter `dioOptions` | removed. Change `tbClient.dio.options` after construction, for example `tbClient.dio.options.receiveTimeout = ...`. The default `connectTimeout` is 20 s |
| `reInit(endpoint)` | removed: create a new `ThingsboardClient` |
| `sendResetPasswordLink(email)` | `getAuthControllerApi().requestResetPasswordByEmail(resetPasswordEmailRequest: ResetPasswordEmailRequest((b) => b..email = email))` |
| `getAuthUserFromJwt(token)` | removed: `tbClient.getAuthUser()` for the current session, or `AuthUser.fromJson(JwtDecoder.decode(token))` (package `jwt_decoder`) |
| `getPlatformVersion()` → `PlatformVersion?` | removed. `/api/system/info` is not in the spec: `(await tbClient.get<Map<String, dynamic>>('/api/system/info')).data?['version']`. A system administrator can also call `getAdminControllerApi().checkUpdates()` and read `UpdateMessage.currentVersion`. `parseVersion` and `isVersionSufficient` compare versions |
| `changePassword(current, new)` | kept: stores the new tokens, takes no `RequestConfig` |
| `checkTwoFaVerificationCode(providerType, code)` | kept: stores the session and calls `onUserLoaded`. `providerType` is the generated `TwoFaProviderType` (`TwoFaProviderType.TOTP`), and there is no `RequestConfig` |
| `getLoginDataBySecretKey(host:, key:, logging:)` | kept: returns the tokens and does not change the session. Pass them to `setUserFromJwtToken(token, refreshToken, true)` |
| `LoginRequest(username, password)`, `RefreshTokenRequest(token)`, `LoginResponse`, `Authority` | generated built_value types, see [Changes for both](#changes-for-both-login-authority-errors-paging) |

Behaviour:

- The server version is checked only in `init()`, against `/api/admin/updates`, and only a system administrator can read it. The check is best-effort. 4.2.1 checked `/api/system/info` on login, two-factor verification and `init()` (a session loaded with notify), not on every refresh, and rejected PE servers. 5.0 accepts both.
- If `init()` cannot reach the server, it keeps the stored session: `isAuthenticated()` is `true` even though the access token has expired. A token refresh clears the session only on HTTP 401, and concurrent requests share one refresh call.
- `computeFunc` now only offloads WebSocket parsing. REST responses are deserialized on the calling isolate.

### Behaviour changes in the REST API

- `getLatestTimeseries` and `getTimeseriesHistory` default to `useStrictDataTypes: false`, so values come back as strings. 4.2.1 defaulted to `true`.
- Two-way RPC returns the raw response: `getRpcV1ControllerApi().handleTwoWayDeviceRPCRequestV1(deviceId:, body:)` → `Response<String>`. 4.2.1 returned decoded JSON, so call `jsonDecode(res.data!)` yourself.
- The persisted RPC operations moved to `RpcV2ControllerApi` (`/api/rpc/persistent/...`).
- Relations are read by path (`findEntityRelationsByFrom(fromType:, fromId:)`), and `saveRelation`/`deleteRelation` use `/api/v2/relation`.
- `/api/tenant/*Infos` is not in the spec. Use `getAllDeviceInfos`, `getAllAssetInfos`, `getAllEdgeInfos` and `getAllEntityViewInfos`, which take `pageSize:`, `page:` and an optional `includeCustomers:`. `getAllDeviceInfos` has no `type` filter; it takes `deviceProfileId:` and `active:` instead.

```dart
// 4.2.1
final dynamic result = await tbClient
    .getDeviceService()
    .handleTwoWayDeviceRPCRequest(id, {'method': 'getState', 'params': {}});

// 5.0
final res = await tbClient.getRpcV1ControllerApi().handleTwoWayDeviceRPCRequestV1(
  deviceId: id,
  body: jsonEncode({'method': 'getState', 'params': {}}),
);
final Object? result = jsonDecode(res.data!);
```

### Customer, public and edge assignment

The client follows the merged CE/PE spec, which has no per-entity customer, public or edge assignment. The 31 4.2.1 methods `assign*ToCustomer`, `unassign*FromCustomer`, `assign*ToPublicCustomer`, `makeDashboardPublic`/`Private`, `update`/`add`/`removeDashboardCustomers`, `assign*ToEdge`, `unassign*FromEdge` and `getEdge*s` (for assets, devices, entity views, edges and dashboards) are removed. Use one of these instead:

- Ownership: `getOwnerControllerApi().changeOwnerToCustomer(ownerId:, entityType:, entityId:)` and `changeOwnerToTenant(...)`.
- Sharing and public access: entity groups, through `getEntityGroupControllerApi()`. `addEntitiesToEntityGroup` adds members, `makeEntityGroupPublic` and `makeEntityGroupPrivate` change public access, and `assignEntityGroupToEdge`, `unassignEntityGroupFromEdge` and `getEdgeEntityGroups` handle edges.

```dart
// 4.2.1
await tbClient.getDeviceService().assignDeviceToCustomer(customerId, deviceId);

// 5.0: changes the owner; there is no "assigned customer" any more
await tbClient.getOwnerControllerApi().changeOwnerToCustomer(
  ownerId: customerId,
  entityType: 'DEVICE',
  entityId: deviceId,
);
```

### Features of 4.0–4.2.1

- `ImageService.uploadImageBytes(bytes, title:)` → `getImageControllerApi().uploadImage(file: MultipartFile.fromBytes(bytes, filename: 'logo.png'), title: 'Logo')`.
- `AlarmType` (4.2.1 fix) → `EntitySubtype`. `AlarmCommentJsonNode` (4.2.0 fix) → `AlarmComment.comment` as a `JsonObject?`.
- `ApiKeyService` (4.1.0) → `ApiKeyControllerApi`: `getUserApiKeys(userId:, pageSize:, page:)`, `saveApiKey`, `updateApiKeyDescription`, `enableApiKey`. API key authentication (`ThingsboardClient(url, apiKey: key)`) and `onMfaForce` are kept.
- `TbStorage` (4.0.0) is unchanged.
- `OAuth2Service.getCurrentOAuth2Info`/`saveOAuth2Info` are removed: `/api/oauth2/config` does not exist on ThingsBoard 4.x. Use `OAuth2ControllerApi`.

### Telemetry WebSocket

Everything in [Changes for both: telemetry WebSocket](#changes-for-both-telemetry-websocket) applies. In addition:

- `TimeseriesSubscriptionCmd.agg` is an `Aggregation?`.
- `attributeScopeFromString`, `aggregationFromString`, `dataTypeFromString` and their `*ToString` extensions are removed. Use `AttributeScope.valueOf`, `.name`, and so on.

## Migrating from `thingsboard_pe_client` 4.4.x

Rename the dependency and the imports:

```yaml
dependencies:
  thingsboard_client: ^5.0.0   # was thingsboard_pe_client: ^4.4.0
```

```sh
grep -rl 'package:thingsboard_pe_client/' lib test | xargs sed -i 's#package:thingsboard_pe_client/#package:thingsboard_client/#g'
```

On macOS use `sed -i ''` instead of `sed -i`.

The last `thingsboard_pe_client` release, 5.0.0, is a transition release with no implementation of its own. Its `thingsboard_pe_client.dart` and `thingsboard_client.dart` libraries are marked `@Deprecated` and only re-export `package:thingsboard_client/thingsboard_client.dart`. Deep imports (`package:thingsboard_pe_client/src/...`) no longer work.

Apart from the differences below, the API classes and the `ThingsboardClient` facade are the same as in 4.4.x. The raw generated client class `ThingsboardPeClient` is now `ThingsboardClient`, which the main library hides. Also read [Changes for both](#changes-for-both-login-authority-errors-paging) and the [telemetry WebSocket](#changes-for-both-telemetry-websocket) changes.

### Renamed enum constants

Enum constants whose value contains digits are named after the value (openapi-generator 7.26.0), and the `ThingsboardErrorCode` constants after their number. Wire values are unchanged, except for `TelemetryObserveStrategy` and `ThingsboardErrorCode` (see Spec fixes). 68 constants in 19 enums are renamed:

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
- `TelemetryObserveStrategy`: `sINGLELeftParenthesis0RightParenthesisColonOneResourceEqualsOneSingleObserveRequest` → `SINGLE`, `cOMPOSITEALLLeftParenthesis1RightParenthesisColonAllResourcesInOneCompositeObserveRequest` → `COMPOSITE_ALL`, `cOMPOSITEBYOBJECTLeftParenthesis2RightParenthesisColonGroupedCompositeObserveRequestsByObject` → `COMPOSITE_BY_OBJECT`. In 4.4.x these constants also had the wrong wire values (`'SINGLE (0): One resource equals one single observe request'`, ...). 5.0 sends and reads `SINGLE`, `COMPOSITE_ALL` and `COMPOSITE_BY_OBJECT`.
- `ThingsboardErrorCode`: `n2` → `number2`, `n10` → `number10`, `n11` → `number11`, `n15` → `number15`, `n20` → `number20`, `n30` → `number30`, `n31` → `number31`, `n32` → `number32`, `n33` → `number33`, `n34` → `number34`, `n35` → `number35`, `n40` → `number40`, `n41` → `number41`, `n45` → `number45`, `n46` → `number46`

### Removed and added API classes

- `DeviceApiControllerApi` and `ThingsboardClient.getDeviceApiControllerApi()` are removed. The device HTTP API (`/api/v1/{deviceToken}/...`) is not in the REST spec, and the 4.4.x operations failed to decode responses. Devices should use the MQTT, CoAP or HTTP transport directly.
- `SolutionControllerApi` (solution templates) is removed, together with its models `TenantSolutionTemplateInfo`, `TenantSolutionTemplateDetails`, `TenantSolutionTemplateInstructions`, `SolutionInstallResponse` and `SolutionTemplateLevel`, and the unused `ComplexOperation` model. The released ThingsBoard 4.4.0 has no `/api/solutions/templates/...`.
- Added, from the released ThingsBoard 4.4.0: `AgentControllerApi`, `AgentProfileControllerApi`, `AgentApplicationControllerApi`, `AgentAppProfileControllerApi`, `AgentAppTemplateControllerApi`, `AgentBulkActionControllerApi`, `AiChatControllerApi`, `AiDeviceDashboardControllerApi`, `AiSolutionControllerApi`, `AiToolControllerApi` and `SystemSetupControllerApi`.

### Spec fixes

From thingsboard/thingsboard#16510 (and #16557 for typed `Notification.info`), which the 5.0 spec needs; the wire format is unchanged, so ThingsBoard 4.4.0 servers work.

- The generated `ThingsboardErrorCode` values are numbers, as the server sends them; before, every `errorCode` decoded as `unknownDefaultOpenApi`. Code 47 (`number47`) is new.
- `AliasEntityId.entityType` is a `String` holding an `EntityType` or `AliasEntityType` name, and `id` is optional.
- `RefreshTokenRequest.refreshToken` is a `String` instead of a `JsonObject`.
- `ColumnSettings` no longer redeclares `type`; it is inherited from `DataKeySettings` and defaults to `COLUMN`.
- `Lwm2mControllerApi.saveLwm2mDeviceWithCredentials` takes a `BuiltMap<String, JsonObject?>` request body.

## Changes for both: login, `Authority`, errors, paging

- `LoginRequest`, `RefreshTokenRequest` and `LoginResponse` are the generated built_value models, exported by the main library. The JSON sent to `/api/auth/login` and `/api/auth/token` is unchanged.

  ```dart
  // 4.2.1: LoginRequest(u, p); 4.4.x: LoginRequest(userName: u, password: p)
  await tbClient.login(LoginRequest((b) => b
    ..username = u
    ..password = p));
  final refresh = RefreshTokenRequest((b) => b..refreshToken = token);
  ```

- `LoginResponse.scope` is the generated `Authority?`, and `refreshToken` is nullable (it is absent for two-factor tokens).
- `Authority` is a single type, the generated `Authority`, which `AuthUser.authority` and `LoginResponse.scope` also use. `tbClient.getAuthUser()!.authority == Authority.TENANT_ADMIN` works. `AuthUser.authority` is `null` for an anonymous user (it was `Authority.ANONYMOUS`), and `authorityFromString()` returns `null` for an unknown name instead of throwing. A `switch` over `Authority` needs a `default` case.
- `ThingsboardError.errorCode` is the facade `ThingsBoardErrorCode` (not the generated `ThingsboardErrorCode`). Its values now match the server: `subscriptionViolation` is 40 (it was 35, so it was never returned), and `entitiesLimitExceeded` (41) and `setupIncomplete` (47) are new. `tenantTrialExpired` (12) is removed.
- Generated calls throw `DioException`; see [Errors](#errors) and [Not found and failed saves](#not-found-and-failed-saves). For 4.4.x users, `nullIfNotFound` has a new signature and `isSuccessful` is removed (catch the `DioException` and inspect `e.thingsboardError.errorCode`).
- `SortOrder` takes the generated `Direction` (`SortOrder('name', Direction.ASC)`). The handwritten `Direction` and `Direction.toShortString()` are removed (use `Direction.name`); `PageLink.toQueryParameters()` output is unchanged.
- Removed: `AuthUser.fromToken`, the top-level `isJwtTokenValid(String?)` (use `tbClient.isJwtTokenValid()`) and `KeyInterceptConfig`, which is no longer exported.

## Changes for both: telemetry WebSocket

`TelemetrySubscriber`, the WebSocket commands, the entity data and alarm queries and the updates are exported by the main library and use the generated built_value models, which replace about 90 handwritten duplicates.

- Entity ids are built: `DeviceId(uuid)` → `DeviceId((b) => b..id = uuid)`, and likewise for `AssetId`, `TenantId`, ... `AliasEntityId` can be sent in queries (`entityType: 'CURRENT_USER'`).
- Queries, filters, keys and page links are built too: `EntityDataQuery`, `AlarmDataQuery`, `EntityCountQuery`, `EntityDataPageLink`, `AlarmDataPageLink`, `EntityKey`, `KeyFilter`, the filter predicates and the entity filters (`DeviceTypeFilter`, `EntityListFilter`, ...). Most generated subtypes set their discriminators (`type`, `entityType`, ...) themselves, so do not pass them. This also holds for REST models.
- The facade fills in unset query fields that the server requires: page 0, `dynamic` false, and empty `keyFilters`, `latestValues` and `entityFields`.
- `EntityData`, `AlarmData`, `TsValue`, `EntityDataSortOrder`, `Aggregation`, `AttributeScope` and `EntityType` are the generated types of the same names.

```dart
// 4.2.1 / 4.4.x
final query = EntityDataQuery(
    entityFilter: DeviceTypeFilter(deviceTypes: ['thermostat'], deviceNameFilter: ''),
    pageLink: EntityDataPageLink(pageSize: 10));

// 5.0
final query = EntityDataQuery((b) => b
  ..entityFilter = DeviceTypeFilter((f) => f
    ..deviceTypes.add('thermostat')
    ..deviceNameFilter = '')
  ..pageLink = EntityDataPageLink((p) => p..pageSize = 10).toBuilder());
final subscriber = TelemetrySubscriber(tbClient.getTelemetryService(), [
  EntityDataCmd(query: query, latestCmd: LatestValueCmd(keys: [
    EntityKey((k) => k
      ..type = EntityKeyType.TIME_SERIES
      ..key = 'temperature'),
  ])),
]);
subscriber.entityDataStream.listen((update) => print(update.data?.data));
subscriber.subscribe();
```

- `AttributeData.value` is a `JsonObject`. On WebSocket attribute updates it holds the string the server sends (a `StringJsonObject`). REST-loaded `AttributeData` holds parsed JSON (`NumJsonObject`, `MapJsonObject`, ...).
- `TelemetrySubscriber.attributeDataStream` emits a new list for each update instead of changing one list, and each call of the getter keeps its own state.
- Updates are immutable. `EntityDataUpdate` and `AlarmDataUpdate` hold a `PageDataEntityData` / `PageDataAlarmData` in `data` and a `BuiltList` in `update`. `withTsOffset(int)` returns a shifted copy instead of changing the update. `prepareData` and `DataUpdate<T>` are removed.
- Notifications: `NotificationsUpdate.update` is the generated `Notification`, and `NotificationsUpdate.notifications` is a `List<Notification>`. `Notification.info` decodes to the subtype the server names (`AlarmNotificationInfo`, `RuleEngineComponentLifecycleEventNotificationInfo`, ... 24 subtypes); an unknown type decodes to the base `NotificationInfo`. `PushNotification`, `PushNotificationInfo`, `PushNotificationType`, `PushNotificationStatus` and their helpers are removed: use `Notification`, the `*NotificationInfo` subtypes, `NotificationType` and `NotificationStatus` (unknown values decode to `unknownDefaultOpenApi`, which was `UNKNOWN`). `additionalConfig` is a `JsonObject`, and `id`, `requestId` and `recipientId` are optional.
- The handwritten `DataType` and `AlarmInfo` are removed. Those names now refer to the generated REST models, which have a different API. The `KvEntry` family, `RestJsonConverter` and the facade `AlarmQuery`, `AlarmQueryV2`, `AlarmCommentsQuery`, `BaseData`, `HasName`, `HasTenantId` and `PushNotificationQuery` are removed.
- Each update is parsed by the command it belongs to (`WebsocketCmd.updateParser`). A custom `WebsocketCmd` subclass must override `updateParser`, or its updates are ignored; `parseWebsocketDataMessage` still parses any update.
- `TelemetrySubscriber.createEntityAttributesSubscription` throws `ArgumentError` for an unknown attribute scope.

## Appendix: 4.2.1 service method → 5.0 operation

All 335 public methods of the 4.2.1 services, matched by HTTP method and path to the generated operations. The third column lists the required named parameters, plus optional ones where they matter; other optional filters (`textSearch`, `sortProperty`, `sortOrder`, `type`, ...) also exist. "No equivalent" and "Removed" mark methods with no 1:1 replacement.

| 4.2.1 service method | HTTP (4.2.1) | 5.0 API class and operation (required named params) |
|---|---|---|
| `AdminService.getAdminSettings(String key)` → `Future<AdminSettings?>` | GET `/api/admin/settings/{}` | `AdminControllerApi.getAdminSettings(key:)` → `Response<AdminSettings>` |
| `AdminService.saveAdminSettings(AdminSettings adminSettings)` → `Future<AdminSettings>` | POST `/api/admin/settings` | `AdminControllerApi.saveAdminSettings(adminSettings:)` → `Response<AdminSettings>` |
| `AdminService.sendTestMail(AdminSettings adminSettings)` → `Future<void>` | POST `/api/admin/settings/testMail` | `AdminControllerApi.sendTestMail(adminSettings:)` → `Response<void>` |
| `AdminService.sendTestSms(TestSmsRequest testSmsRequest)` → `Future<void>` | POST `/api/admin/settings/testSms` | `AdminControllerApi.sendTestSms(testSmsRequest:)` → `Response<void>` |
| `AdminService.getSecuritySettings()` → `Future<SecuritySettings?>` | GET `/api/admin/securitySettings` | `AdminControllerApi.getSecuritySettings()` → `Response<SecuritySettings>` |
| `AdminService.saveSecuritySettings(SecuritySettings securitySettings)` → `Future<SecuritySettings>` | POST `/api/admin/securitySettings` | `AdminControllerApi.saveSecuritySettings(securitySettings:)` → `Response<SecuritySettings>` |
| `AdminService.checkUpdates()` → `Future<UpdateMessage?>` | GET `/api/admin/updates` | `AdminControllerApi.checkUpdates()` → `Response<UpdateMessage>` |
| `AdminService.getRepositorySettings()` → `Future<RepositorySettings?>` | GET `/api/admin/repositorySettings` | `AdminControllerApi.getRepositorySettings()` → `Response<RepositorySettings>` |
| `AdminService.repositorySettingsExists()` → `Future<bool>` | GET `/api/admin/repositorySettings/exists` | `AdminControllerApi.repositorySettingsExists()` → `Response<bool>` |
| `AdminService.saveRepositorySettings(RepositorySettings repositorySettings)` → `Future<RepositorySettings>` | POST `/api/admin/repositorySettings` | `AdminControllerApi.saveRepositorySettings(repositorySettings:)` → `Response<RepositorySettings>` |
| `AdminService.deleteRepositorySettings()` → `Future<void>` | DELETE `/api/admin/repositorySettings` | `AdminControllerApi.deleteRepositorySettings()` → `Response<void>` |
| `AdminService.checkRepositoryAccess(RepositorySettings repositorySettings)` → `Future<void>` | POST `/api/admin/repositorySettings/checkAccess` | `AdminControllerApi.checkRepositoryAccess(repositorySettings:)` → `Response<void>` |
| `AdminService.getAutoCommitSettings()` → `Future<AutoCommitSettings?>` | GET `/api/admin/autoCommitSettings` | `AdminControllerApi.getAutoCommitSettings()` → `Response<BuiltMap<String, AutoVersionCreateConfig>>` |
| `AdminService.autoCommitSettingsExists()` → `Future<bool>` | GET `/api/admin/autoCommitSettings/exists` | `AdminControllerApi.autoCommitSettingsExists()` → `Response<bool>` |
| `AdminService.saveAutoCommitSettings(AutoCommitSettings autoCommitSettings)` → `Future<AutoCommitSettings>` | POST `/api/admin/autoCommitSettings` | `AdminControllerApi.saveAutoCommitSettings(requestBody:)` → `Response<BuiltMap<String, AutoVersionCreateConfig>>` |
| `AdminService.deleteAutoCommitSettings()` → `Future<void>` | DELETE `/api/admin/autoCommitSettings` | `AdminControllerApi.deleteAutoCommitSettings()` → `Response<void>` |
| `AlarmService.getAlarm(String alarmId)` → `Future<Alarm?>` | GET `/api/alarm/{}` | `AlarmControllerApi.getAlarmById(alarmId:)` → `Response<Alarm>` |
| `AlarmService.getAlarmInfo(String alarmId)` → `Future<AlarmInfo?>` | GET `/api/alarm/info/{}` | `AlarmControllerApi.getAlarmInfoById(alarmId:)` → `Response<AlarmInfo>` |
| `AlarmService.saveAlarm(Alarm alarm)` → `Future<Alarm>` | POST `/api/alarm` | `AlarmControllerApi.saveAlarm(alarm:)` → `Response<Alarm>` |
| `AlarmService.ackAlarm(String alarmId)` → `Future<AlarmInfo>` | POST `/api/alarm/{}/ack` | `AlarmControllerApi.ackAlarm(alarmId:)` → `Response<AlarmInfo>` |
| `AlarmService.clearAlarm(String alarmId)` → `Future<AlarmInfo>` | POST `/api/alarm/{}/clear` | `AlarmControllerApi.clearAlarm(alarmId:)` → `Response<AlarmInfo>` |
| `AlarmService.deleteAlarm(String alarmId)` → `Future<void>` | DELETE `/api/alarm/{}` | `AlarmControllerApi.deleteAlarm(alarmId:)` → `Response<bool>` |
| `AlarmService.assignAlarm(String alarmId, String assigneeId)` → `Future<AlarmInfo>` | POST `/api/alarm/{}/assign/{}` | `AlarmControllerApi.assignAlarm(alarmId:, assigneeId:)` → `Response<Alarm>` |
| `AlarmService.unassignAlarm(String alarmId)` → `Future<AlarmInfo>` | DELETE `/api/alarm/{}/assign` | `AlarmControllerApi.unassignAlarm(alarmId:)` → `Response<Alarm>` |
| `AlarmService.getAlarms(AlarmQuery query)` → `Future<PageData<AlarmInfo>>` | GET `/api/alarm/{}/{}` | `AlarmControllerApi.getAlarmsByEntity(entityType:, entityId:, pageSize:, page:)` → `Response<PageDataAlarmInfo>` |
| `AlarmService.getAllAlarms(AlarmQuery query)` → `Future<PageData<AlarmInfo>>` | GET `/api/alarms` | `AlarmControllerApi.getAllAlarms(pageSize:, page:)` → `Response<PageDataAlarmInfo>` |
| `AlarmService.getAlarmsV2(AlarmQueryV2 query)` → `Future<PageData<AlarmInfo>>` | GET `/api/v2/alarm/{}/{}` | `AlarmControllerApi.getAlarmsV2(entityType:, entityId:, pageSize:, page:)` → `Response<PageDataAlarmInfo>` |
| `AlarmService.getAllAlarmsV2(AlarmQueryV2 query)` → `Future<PageData<AlarmInfo>>` | GET `/api/v2/alarms` | `AlarmControllerApi.getAllAlarmsV2(pageSize:, page:)` → `Response<PageDataAlarmInfo>` |
| `AlarmService.getHighestAlarmSeverity(EntityId entityId, {AlarmSearchStatus? alarmSearchStatus, AlarmStatus? alarmStatus})` → `Future<AlarmSeverity?>` | GET `/api/alarm/highestSeverity/{}/{}` | `AlarmControllerApi.getHighestAlarmSeverity(entityType:, entityId:)` → `Response<AlarmSeverity>` |
| `AlarmService.getAlarmTypes(PageLink pageLink)` → `Future<PageData<AlarmType>>` | GET `/api/alarm/types` | `AlarmControllerApi.getAlarmTypes(pageSize:, page:)` → `Response<PageDataEntitySubtype>` |
| `AlarmService.getAlarmComments(AlarmCommentsQuery query)` → `Future<PageData<AlarmCommentInfo>>` | GET `/api/alarm/{}/comment` | `AlarmCommentControllerApi.getAlarmComments(alarmId:, pageSize:, page:)` → `Response<PageDataAlarmCommentInfo>` |
| `AlarmService.postAlarmComment(AlarmComment comment, { AlarmId? alarmId})` → `Future<AlarmCommentInfo>` | POST `/api/alarm/{}/comment` | `AlarmCommentControllerApi.saveAlarmComment(alarmId:, alarmComment:)` → `Response<AlarmComment>` |
| `AlarmService.deleteAlarmComment(String id, { required AlarmId alarmId})` → `Future<void>` | DELETE `/api/alarm/{}/comment/{}` | `AlarmCommentControllerApi.deleteAlarmComment(alarmId:, commentId:)` → `Response<void>` |
| `ApiKeyService.getApiKeys(ApiKeyQuery query)` → `Future<PageData<ApiKey>>` | GET `/api/apiKeys/{}` | `ApiKeyControllerApi.getUserApiKeys(userId:, pageSize:, page:)` → `Response<PageDataApiKeyInfo>` |
| `ApiKeyService.updateKeyDescription(String keyId, String description)` → `Future<ApiKey>` | PUT `/api/apiKey/{}/description` | `ApiKeyControllerApi.updateApiKeyDescription(id:)` → `Response<ApiKeyInfo>` |
| `ApiKeyService.updateKeyStatus(String keyId, bool enabled)` → `Future<ApiKey>` | PUT `/api/apiKey/{}/enabled/{}` | `ApiKeyControllerApi.enableApiKey(id:, enabledValue:)` → `Response<ApiKeyInfo>` |
| `ApiKeyService.deleteApiKey(String keyId)` → `Future<void>` | DELETE `/api/apiKey/{}` | `ApiKeyControllerApi.deleteApiKey(id:)` → `Response<void>` |
| `ApiKeyService.postApiKey(ApiKey key)` → `Future<ApiKey>` | POST `/api/apiKey` | `ApiKeyControllerApi.saveApiKey(apiKeyInfo:)` → `Response<ApiKey>` |
| `AssetProfileService.getAssetProfiles(PageLink pageLink)` → `Future<PageData<AssetProfile>>` | GET `/api/assetProfiles` | `AssetProfileControllerApi.getAssetProfiles(pageSize:, page:)` → `Response<PageDataAssetProfile>` |
| `AssetProfileService.getAssetProfile(String assetProfileId)` → `Future<AssetProfile?>` | GET `/api/assetProfile/{}` | `AssetProfileControllerApi.getAssetProfileById(assetProfileId:)` → `Response<AssetProfile>` |
| `AssetProfileService.saveAssetProfile(AssetProfile assetProfile)` → `Future<AssetProfile>` | POST `/api/assetProfile` | `AssetProfileControllerApi.saveAssetProfile(assetProfile:)` → `Response<AssetProfile>` |
| `AssetProfileService.deleteAssetProfile(String assetProfileId)` → `Future<void>` | DELETE `/api/assetProfile/{}` | `AssetProfileControllerApi.deleteAssetProfile(assetProfileId:)` → `Response<void>` |
| `AssetProfileService.setDefaultAssetProfile(String assetProfileId)` → `Future<AssetProfile>` | POST `/api/assetProfile/{}/default` | `AssetProfileControllerApi.setDefaultAssetProfile(assetProfileId:)` → `Response<AssetProfile>` |
| `AssetProfileService.getDefaultAssetProfileInfo()` → `Future<AssetProfileInfo>` | GET `/api/assetProfileInfo/default` | `AssetProfileControllerApi.getDefaultAssetProfileInfo()` → `Response<AssetProfileInfo>` |
| `AssetProfileService.getAssetProfileInfo(String assetProfileId)` → `Future<AssetProfileInfo?>` | GET `/api/assetProfileInfo/{}` | `AssetProfileControllerApi.getAssetProfileInfoById(assetProfileId:)` → `Response<AssetProfileInfo>` |
| `AssetProfileService.getAssetProfileInfos(PageLink pageLink)` → `Future<PageData<AssetProfileInfo>>` | GET `/api/assetProfileInfos` | `AssetProfileControllerApi.getAssetProfileInfos(pageSize:, page:)` → `Response<PageDataAssetProfileInfo>` |
| `AssetService.getAsset(String assetId)` → `Future<Asset?>` | GET `/api/asset/{}` | `AssetControllerApi.getAssetById(assetId:)` → `Response<Asset>` |
| `AssetService.getAssetInfo(String assetId)` → `Future<AssetInfo?>` | GET `/api/asset/info/{}` | `AssetControllerApi.getAssetInfoById(assetId:)` → `Response<AssetInfo>` |
| `AssetService.saveAsset(Asset asset)` → `Future<Asset>` | POST `/api/asset` | `AssetControllerApi.saveAsset(asset:)` → `Response<Asset>` |
| `AssetService.deleteAsset(String assetId)` → `Future<void>` | DELETE `/api/asset/{}` | `AssetControllerApi.deleteAsset(assetId:)` → `Response<void>` |
| `AssetService.assignAssetToCustomer(String customerId, String assetId)` → `Future<Asset?>` | POST `/api/customer/{}/asset/{}` | No CE endpoint. `OwnerControllerApi.changeOwnerToCustomer(ownerId:, entityType: 'ASSET', entityId:)` or entity groups |
| `AssetService.unassignAssetFromCustomer(String assetId)` → `Future<Asset?>` | DELETE `/api/customer/asset/{}` | `OwnerControllerApi.changeOwnerToTenant(...)` |
| `AssetService.assignAssetToPublicCustomer(String assetId)` → `Future<Asset?>` | POST `/api/customer/public/asset/{}` | No equivalent; make an entity group public (`EntityGroupControllerApi.makeEntityGroupPublic`) |
| `AssetService.getTenantAssets(PageLink pageLink, {String type = ''})` → `Future<PageData<Asset>>` | GET `/api/tenant/assets` | `AssetControllerApi.getTenantAssets(pageSize:, page:)` → `Response<PageDataAsset>` |
| `AssetService.getTenantAssetInfos(PageLink pageLink, {String type = ''})` → `Future<PageData<AssetInfo>>` | GET `/api/tenant/assetInfos` | `AssetControllerApi.getAllAssetInfos(pageSize:, page:, includeCustomers:)` (`/api/assetInfos/all`) |
| `AssetService.getTenantAsset(String assetName)` → `Future<Asset?>` | GET `/api/tenant/assets` | `AssetControllerApi.getTenantAssetByName(assetName:)` → `Response<Asset>` (4.2.1 used `/api/tenant/assets?assetName=`) |
| `AssetService.getCustomerAssets(String customerId, PageLink pageLink, {String type = ''})` → `Future<PageData<Asset>>` | GET `/api/customer/{}/assets` | `AssetControllerApi.getCustomerAssets(customerId:, pageSize:, page:)` → `Response<PageDataAsset>` |
| `AssetService.getCustomerAssetInfos(String customerId, PageLink pageLink, {String type = ''})` → `Future<PageData<AssetInfo>>` | GET `/api/customer/{}/assetInfos` | `AssetControllerApi.getCustomerAssetInfos(customerId:, pageSize:, page:)` → `Response<PageDataAssetInfo>` |
| `AssetService.getAssetsByIds(List<String> assetIds)` → `Future<List<Asset>>` | GET `/api/assets` | `AssetControllerApi.getAssetsByIds(assetIds:)` → `Response<BuiltList<Asset>>` |
| `AssetService.findByQuery(AssetSearchQuery query)` → `Future<List<Asset>>` | POST `/api/assets` | `AssetControllerApi.findAssetsByQuery(assetSearchQuery:)` → `Response<BuiltList<Asset>>` |
| `AssetService.getAssetTypes()` → `Future<List<EntitySubtype>>` | GET `/api/asset/types` | `AssetControllerApi.getAssetTypes()` → `Response<BuiltList<EntitySubtype>>` |
| `AssetService.assignAssetToEdge(String edgeId, String assetId)` → `Future<Asset?>` | POST `/api/edge/{}/asset/{}` | No per-entity edge assignment; `EntityGroupControllerApi.assignEntityGroupToEdge(...)` |
| `AssetService.unassignAssetFromEdge(String edgeId, String assetId)` → `Future<Asset?>` | DELETE `/api/edge/{}/asset/{}` | `EntityGroupControllerApi.unassignEntityGroupFromEdge(...)` |
| `AssetService.getEdgeAssets(String edgeId, PageLink pageLink, {String type = ''})` → `Future<PageData<Asset>>` | GET `/api/edge/{}/assets` | No equivalent; `EntityGroupControllerApi.getEdgeEntityGroups(...)` + group members |
| `AttributeService.getAttributeKeys(EntityId entityId)` → `Future<List<String>>` | GET `/api/plugins/telemetry/{}/{}/keys/attributes` | `TelemetryControllerApi.getAttributeKeys(entityType:, entityId:)` → `Response<BuiltList<String>>` |
| `AttributeService.getAttributeKeysByScope(EntityId entityId, String scope)` → `Future<List<String>>` | GET `/api/plugins/telemetry/{}/{}/keys/attributes/{}` | `TelemetryControllerApi.getAttributeKeysByScope(entityType:, entityId:, scope:)` → `Response<BuiltList<String>>` |
| `AttributeService.getAttributeKvEntries(EntityId entityId, List<String> keys)` → `Future<List<AttributeKvEntry>>` | GET `/api/plugins/telemetry/{}/{}/values/attributes` | `TelemetryControllerApi.getAttributes(entityType:, entityId:)` → `Response<BuiltList<AttributeData>>` |
| `AttributeService.getAttributesByScope(EntityId entityId, String scope, List<String> keys)` → `Future<List<AttributeKvEntry>>` | GET `/api/plugins/telemetry/{}/{}/values/attributes/{}` | `TelemetryControllerApi.getAttributesByScope(entityType:, entityId:, scope:)` → `Response<BuiltList<AttributeData>>` |
| `AttributeService.getTimeseriesKeys(EntityId entityId)` → `Future<List<String>>` | GET `/api/plugins/telemetry/{}/{}/keys/timeseries` | `TelemetryControllerApi.getTimeseriesKeys(entityType:, entityId:)` → `Response<BuiltList<String>>` |
| `AttributeService.getLatestTimeseries(EntityId entityId, List<String> keys, {bool useStrictDataTypes = true})` → `Future<List<TsKvEntry>>` | GET `/api/plugins/telemetry/{}/{}/values/timeseries` | `TelemetryControllerApi.getLatestTimeseries(entityType:, entityId:, keys:)` → `Response<BuiltMap<String, BuiltList<TsData>>>`; `useStrictDataTypes` defaults to `false` (was `true`) |
| `AttributeService.getTimeseries(EntityId entityId, List<String> keys, {int? interval, Aggregation? agg, Direction? sortOrder, int? startTime, int? endTime, int? limit, bool useStrictDataTypes = true})` → `Future<List<TsKvEntry>>` | GET `/api/plugins/telemetry/{}/{}/values/timeseries` | `TelemetryControllerApi.getTimeseriesHistory(entityType:, entityId:, startTs:, endTs:, keys:, ...)` → `Response<BuiltMap<String, BuiltList<TsData>>>`; note `useStrictDataTypes` defaults to `false` (was `true`) |
| `AttributeService.saveDeviceAttributes(String deviceId, String scope, dynamic request)` → `Future<bool>` | POST `/api/plugins/telemetry/{}/{}` | `TelemetryControllerApi.saveDeviceAttributes(deviceId:, scope:, body:)` → `Response<String>` |
| `AttributeService.saveEntityAttributesV1(EntityId entityId, String scope, dynamic request)` → `Future<bool>` | POST `/api/plugins/telemetry/{}/{}/{}` | `TelemetryControllerApi.saveEntityAttributesV1(entityType:, entityId:, scope:, body:)` → `Response<String>` |
| `AttributeService.saveEntityAttributesV2(EntityId entityId, String scope, dynamic request)` → `Future<bool>` | POST `/api/plugins/telemetry/{}/{}/attributes/{}` | `TelemetryControllerApi.saveEntityAttributesV2(entityType:, entityId:, scope:, body:)` → `Response<String>` |
| `AttributeService.saveEntityTelemetry(EntityId entityId, String scope, dynamic request)` → `Future<bool>` | POST `/api/plugins/telemetry/{}/{}/timeseries/{}` | `TelemetryControllerApi.saveEntityTelemetry(entityType:, entityId:, scope:, body:)` → `Response<String>` |
| `AttributeService.saveEntityTelemetryWithTTL(EntityId entityId, String scope, int ttl, dynamic request)` → `Future<bool>` | POST `/api/plugins/telemetry/{}/{}/timeseries/{}/{}` | `TelemetryControllerApi.saveEntityTelemetryWithTTL(entityType:, entityId:, scope:, ttl:, body:)` → `Response<String>` |
| `AttributeService.deleteEntityTimeseries(EntityId entityId, List<String> keys, {required bool deleteAllDataForKeys, required int startTs, required int endTs, required bool rewriteLatestIfDeleted})` → `Future<bool>` | DELETE `/api/plugins/telemetry/{}/{}/timeseries/delete` | `TelemetryControllerApi.deleteEntityTimeseries(entityType:, entityId:)` → `Response<String>` |
| `AttributeService.deleteDeviceAttributes(String deviceId, String scope, List<String> keys)` → `Future<bool>` | DELETE `/api/plugins/telemetry/{}/{}` | `TelemetryControllerApi.deleteDeviceAttributes(deviceId:, scope:)` → `Response<String>` |
| `AttributeService.deleteEntityAttributes(EntityId entityId, String scope, List<String> keys)` → `Future<bool>` | DELETE `/api/plugins/telemetry/{}/{}/{}` | `TelemetryControllerApi.deleteEntityAttributes(entityType:, entityId:, scope:)` → `Response<String>` |
| `AuditLogService.getAuditLogs(TimePageLink pageLink)` → `Future<PageData<AuditLog>>` | GET `/api/audit/logs` | `AuditLogControllerApi.getAuditLogs(pageSize:, page:)` → `Response<PageDataAuditLog>` |
| `AuditLogService.getAuditLogsByCustomerId(String customerId, TimePageLink pageLink)` → `Future<PageData<AuditLog>>` | GET `/api/audit/logs/customer/{}` | `AuditLogControllerApi.getAuditLogsByCustomerId(customerId:, pageSize:, page:)` → `Response<PageDataAuditLog>` |
| `AuditLogService.getAuditLogsByUserId(String userId, TimePageLink pageLink)` → `Future<PageData<AuditLog>>` | GET `/api/audit/logs/user/{}` | `AuditLogControllerApi.getAuditLogsByUserId(userId:, pageSize:, page:)` → `Response<PageDataAuditLog>` |
| `AuditLogService.getAuditLogsByEntityId(EntityId entityId, TimePageLink pageLink)` → `Future<PageData<AuditLog>>` | GET `/api/audit/logs/entity/{}/{}` | `AuditLogControllerApi.getAuditLogsByEntityId(entityType:, entityId:, pageSize:, page:)` → `Response<PageDataAuditLog>` |
| `ComponentDescriptorService.getComponentDescriptorByClazz(String componentDescriptorClazz)` → `Future<ComponentDescriptor?>` | GET `/api/component/{}` | `ComponentDescriptorControllerApi.getComponentDescriptorByClazz(componentDescriptorClazz:)` → `Response<ComponentDescriptor>` |
| `ComponentDescriptorService.getComponentDescriptorsByType(ComponentType componentType, {RuleChainType ruleChainType = RuleChainType.CORE})` → `Future<List<ComponentDescriptor>>` | GET `/api/components/{}` | `ComponentDescriptorControllerApi.getComponentDescriptorsByType(componentType:)` → `Response<BuiltList<ComponentDescriptor>>` |
| `ComponentDescriptorService.getComponentDescriptorsByTypes(List<ComponentType> componentTypes, {RuleChainType ruleChainType = RuleChainType.CORE})` → `Future<List<ComponentDescriptor>>` | GET `/api/components` | `ComponentDescriptorControllerApi.getComponentDescriptorsByTypes(componentTypes:)` → `Response<BuiltList<ComponentDescriptor>>` |
| `CustomerService.getCustomers(PageLink pageLink)` → `Future<PageData<Customer>>` | GET `/api/customers` | `CustomerControllerApi.getCustomers(pageSize:, page:)` → `Response<PageDataCustomer>` |
| `CustomerService.getCustomer(String customerId)` → `Future<Customer?>` | GET `/api/customer/{}` | `CustomerControllerApi.getCustomerById(customerId:)` → `Response<Customer>` |
| `CustomerService.getShortCustomerInfo(String customerId)` → `Future<ShortCustomerInfo?>` | GET `/api/customer/{}/shortInfo` | `CustomerControllerApi.getShortCustomerInfoById(customerId:)` → `Response<JsonObject>` |
| `CustomerService.getCustomerTitle(String customerId)` → `Future<String?>` | GET `/api/customer/{}/title` | `CustomerControllerApi.getCustomerTitleById(customerId:)` |
| `CustomerService.getTenantCustomer(String customerTitle)` → `Future<Customer?>` | GET `/api/tenant/customers` | `CustomerControllerApi.getTenantCustomer(customerTitle:)` → `Response<Customer>` |
| `CustomerService.saveCustomer(Customer customer)` → `Future<Customer>` | POST `/api/customer` | `CustomerControllerApi.saveCustomer(customer:)` → `Response<Customer>` |
| `CustomerService.deleteCustomer(String customerId)` → `Future<void>` | DELETE `/api/customer/{}` | `CustomerControllerApi.deleteCustomer(customerId:)` → `Response<void>` |
| `DashboardService.getServerTime()` → `Future<int>` | GET `/api/dashboard/serverTime` | `DashboardControllerApi.getServerTime()` → `Response<int>` |
| `DashboardService.getMaxDatapointsLimit()` → `Future<int>` | GET `/api/dashboard/maxDatapointsLimit` | `DashboardControllerApi.getMaxDatapointsLimit()` → `Response<int>` |
| `DashboardService.getTenantDashboards(PageLink pageLink, {bool? mobile})` → `Future<PageData<DashboardInfo>>` | GET `/api/tenant/dashboards` | `DashboardControllerApi.getTenantDashboards(pageSize:, page:)` → `Response<PageDataDashboardInfo>` |
| `DashboardService.getTenantDashboardsByTenantId(String tenantId, PageLink pageLink)` → `Future<PageData<DashboardInfo>>` | GET `/api/tenant/{}/dashboards` | `DashboardControllerApi.getTenantDashboardsByTenantId(tenantId:, pageSize:, page:)` → `Response<PageDataDashboardInfo>` |
| `DashboardService.getCustomerDashboards(String customerId, PageLink pageLink, {bool? mobile})` → `Future<PageData<DashboardInfo>>` | GET `/api/customer/{}/dashboards` | `DashboardControllerApi.getCustomerDashboards(customerId:, pageSize:, page:)` → `Response<PageDataDashboardInfo>` |
| `DashboardService.getDashboard(String dashboardId)` → `Future<Dashboard?>` | GET `/api/dashboard/{}` | `DashboardControllerApi.getDashboardById(dashboardId:)` → `Response<Dashboard>` |
| `DashboardService.getDashboardInfo(String dashboardId)` → `Future<DashboardInfo?>` | GET `/api/dashboard/info/{}` | `DashboardControllerApi.getDashboardInfoById(dashboardId:)` → `Response<DashboardInfo>` |
| `DashboardService.saveDashboard(Dashboard dashboard)` → `Future<Dashboard>` | POST `/api/dashboard` | `DashboardControllerApi.saveDashboard(dashboard:)` → `Response<Dashboard>` |
| `DashboardService.deleteDashboard(String dashboardId)` → `Future<void>` | DELETE `/api/dashboard/{}` | `DashboardControllerApi.deleteDashboard(dashboardId:)` → `Response<void>` |
| `DashboardService.assignDashboardToCustomer(String customerId, String dashboardId)` → `Future<Dashboard?>` | POST `/api/customer/{}/dashboard/{}` | No CE endpoint; dashboards are shared via entity groups / `OwnerControllerApi` |
| `DashboardService.unassignDashboardFromCustomer(String customerId, String dashboardId)` → `Future<Dashboard?>` | DELETE `/api/customer/{}/dashboard/{}` | No CE endpoint; entity groups / `OwnerControllerApi` |
| `DashboardService.makeDashboardPublic(String dashboardId)` → `Future<Dashboard?>` | POST `/api/customer/public/dashboard/{}` | `EntityGroupControllerApi.makeEntityGroupPublic` (group level) |
| `DashboardService.makeDashboardPrivate(String dashboardId)` → `Future<Dashboard?>` | DELETE `/api/customer/public/dashboard/{}` | `EntityGroupControllerApi.makeEntityGroupPrivate` (group level) |
| `DashboardService.updateDashboardCustomers(String dashboardId, Set<String> customerIds)` → `Future<Dashboard?>` | POST `/api/dashboard/{}/customers` | No equivalent |
| `DashboardService.addDashboardCustomers(String dashboardId, Set<String> customerIds)` → `Future<Dashboard?>` | POST `/api/dashboard/{}/customers/add` | No equivalent |
| `DashboardService.removeDashboardCustomers(String dashboardId, Set<String> customerIds)` → `Future<Dashboard?>` | POST `/api/dashboard/{}/customers/remove` | No equivalent |
| `DashboardService.getHomeDashboard()` → `Future<HomeDashboard?>` | GET `/api/dashboard/home` | `DashboardControllerApi.getHomeDashboard()` → `Response<HomeDashboard>` |
| `DashboardService.getHomeDashboardInfo()` → `Future<HomeDashboardInfo?>` | GET `/api/dashboard/home/info` | `DashboardControllerApi.getHomeDashboardInfo()` → `Response<HomeDashboardInfo>` |
| `DashboardService.getTenantHomeDashboardInfo()` → `Future<HomeDashboardInfo>` | GET `/api/tenant/dashboard/home/info` | `DashboardControllerApi.getTenantHomeDashboardInfo()` → `Response<HomeDashboardInfo>` |
| `DashboardService.setTenantHomeDashboardInfo(HomeDashboardInfo homeDashboardInfo)` → `Future<void>` | POST `/api/tenant/dashboard/home/info` | `DashboardControllerApi.setTenantHomeDashboardInfo(homeDashboardInfo:)` → `Response<void>` |
| `DashboardService.assignDashboadToEdge(String edgeId, String dashboardId)` → `Future<Dashboard?>` | POST `/api/edge/{}/dashboard/{}` | `EntityGroupControllerApi.assignEntityGroupToEdge` (group level) |
| `DashboardService.unassignDashboardFromEdge(String edgeId, String dashboardId)` → `Future<Dashboard?>` | DELETE `/api/edge/{}/dashboard/{}` | `EntityGroupControllerApi.unassignEntityGroupFromEdge` (group level) |
| `DashboardService.getEdgeDashboards(String edgeId, PageLink pageLink)` → `Future<PageData<DashboardInfo>>` | GET `/api/edge/{}/dashboards` | No equivalent; edge entity groups |
| `DeviceProfileService.getDeviceProfiles(PageLink pageLink)` → `Future<PageData<DeviceProfile>>` | GET `/api/deviceProfiles` | `DeviceProfileControllerApi.getDeviceProfiles(pageSize:, page:)` → `Response<PageDataDeviceProfile>` |
| `DeviceProfileService.getDeviceProfile(String deviceProfileId)` → `Future<DeviceProfile?>` | GET `/api/deviceProfile/{}` | `DeviceProfileControllerApi.getDeviceProfileById(deviceProfileId:)` → `Response<DeviceProfile>` |
| `DeviceProfileService.saveDeviceProfile(DeviceProfile deviceProfile)` → `Future<DeviceProfile>` | POST `/api/deviceProfile` | `DeviceProfileControllerApi.saveDeviceProfile(deviceProfile:)` → `Response<DeviceProfile>` |
| `DeviceProfileService.deleteDeviceProfile(String deviceProfileId)` → `Future<void>` | DELETE `/api/deviceProfile/{}` | `DeviceProfileControllerApi.deleteDeviceProfile(deviceProfileId:)` → `Response<void>` |
| `DeviceProfileService.setDefaultDeviceProfile(String deviceProfileId)` → `Future<DeviceProfile>` | POST `/api/deviceProfile/{}/default` | `DeviceProfileControllerApi.setDefaultDeviceProfile(deviceProfileId:)` → `Response<DeviceProfile>` |
| `DeviceProfileService.getDefaultDeviceProfileInfo()` → `Future<DeviceProfileInfo>` | GET `/api/deviceProfileInfo/default` | `DeviceProfileControllerApi.getDefaultDeviceProfileInfo()` → `Response<DeviceProfileInfo>` |
| `DeviceProfileService.getDeviceProfileInfo(String deviceProfileId)` → `Future<DeviceProfileInfo?>` | GET `/api/deviceProfileInfo/{}` | `DeviceProfileControllerApi.getDeviceProfileInfoById(deviceProfileId:)` → `Response<DeviceProfileInfo>` |
| `DeviceProfileService.getDeviceProfileInfos(PageLink pageLink, {DeviceTransportType? transportType})` → `Future<PageData<DeviceProfileInfo>>` | GET `/api/deviceProfileInfos` | `DeviceProfileControllerApi.getDeviceProfileInfos(pageSize:, page:)` → `Response<PageDataDeviceProfileInfo>` |
| `DeviceProfileService.getDeviceProfileDevicesAttributesKeys({String? deviceProfileId})` → `Future<List<String>>` | GET `/api/deviceProfile/devices/keys/attributes` | `DeviceProfileControllerApi.getAttributesKeys()` → `Response<BuiltList<String>>` |
| `DeviceProfileService.getDeviceProfileDevicesTimeseriesKeys({String? deviceProfileId})` → `Future<List<String>>` | GET `/api/deviceProfile/devices/keys/timeseries` | `DeviceProfileControllerApi.getDeviceProfileTimeseriesKeys()` → `Response<BuiltList<String>>` |
| `DeviceService.getDevice(String deviceId)` → `Future<Device?>` | GET `/api/device/{}` | `DeviceControllerApi.getDeviceById(deviceId:)` → `Response<Device>` |
| `DeviceService.getDeviceInfo(String deviceId)` → `Future<DeviceInfo?>` | GET `/api/device/info/{}` | `DeviceControllerApi.getDeviceInfoById(deviceId:)` → `Response<DeviceInfo>` |
| `DeviceService.saveDevice(Device device, {String? accessToken})` → `Future<Device>` | POST `/api/device` | `DeviceControllerApi.saveDevice(device:)` → `Response<Device>` |
| `DeviceService.deleteDevice(String deviceId)` → `Future<void>` | DELETE `/api/device/{}` | `DeviceControllerApi.deleteDevice(deviceId:)` → `Response<void>` |
| `DeviceService.assignDeviceToCustomer(String customerId, String deviceId)` → `Future<Device?>` | POST `/api/customer/{}/device/{}` | No CE endpoint; `OwnerControllerApi.changeOwnerToCustomer(...)` |
| `DeviceService.unassignDeviceFromCustomer(String deviceId)` → `Future<Device?>` | DELETE `/api/customer/device/{}` | `OwnerControllerApi.changeOwnerToTenant(...)` |
| `DeviceService.assignDeviceToPublicCustomer(String deviceId)` → `Future<Device?>` | POST `/api/customer/public/device/{}` | No equivalent; public entity group |
| `DeviceService.getTenantDevices(PageLink pageLink, {String type = ''})` → `Future<PageData<Device>>` | GET `/api/tenant/devices` | `DeviceControllerApi.getTenantDevices(pageSize:, page:)` → `Response<PageDataDevice>` |
| `DeviceService.getTenantDeviceInfos(PageLink pageLink, {String type = '', String deviceProfileId = ''})` → `Future<PageData<DeviceInfo>>` | GET `/api/tenant/deviceInfos` | `DeviceControllerApi.getAllDeviceInfos(pageSize:, page:, includeCustomers:, deviceProfileId:, active:)` (`/api/deviceInfos/all`; no `type` filter) |
| `DeviceService.getTenantDevice(String deviceName)` → `Future<Device?>` | GET `/api/tenant/devices` | `DeviceControllerApi.getTenantDeviceByName(deviceName:)` → `Response<Device>` (`/api/tenant/device`) |
| `DeviceService.getCustomerDevices(String customerId, PageLink pageLink, {String type = ''})` → `Future<PageData<Device>>` | GET `/api/customer/{}/devices` | `DeviceControllerApi.getCustomerDevices(customerId:, pageSize:, page:)` → `Response<PageDataDevice>` |
| `DeviceService.getCustomerDeviceInfos(String customerId, PageLink pageLink, {String type = '', String deviceProfileId = ''})` → `Future<PageData<DeviceInfo>>` | GET `/api/customer/{}/deviceInfos` | `DeviceControllerApi.getCustomerDeviceInfos(customerId:, pageSize:, page:)` → `Response<PageDataDeviceInfo>` |
| `DeviceService.getDevicesByIds(List<String> deviceIds)` → `Future<List<Device>>` | GET `/api/devices` | `DeviceControllerApi.getDevicesByIds(deviceIds:)` → `Response<BuiltList<Device>>` |
| `DeviceService.findByQuery(DeviceSearchQuery query)` → `Future<List<Device>>` | POST `/api/devices` | `DeviceControllerApi.findDevicesByQuery(deviceSearchQuery:)` → `Response<BuiltList<Device>>` |
| `DeviceService.getDeviceTypes()` → `Future<List<EntitySubtype>>` | GET `/api/device/types` | `DeviceControllerApi.getDeviceTypes()` → `Response<BuiltList<EntitySubtype>>` |
| `DeviceService.claimDevice(String deviceName, ClaimRequest claimRequest)` → `Future<ClaimResult>` | POST `/api/customer/device/{}/claim` | `DeviceControllerApi.claimDevice(deviceName:)` → `Response<String>` |
| `DeviceService.reClaimDevice(String deviceName)` → `Future<void>` | DELETE `/api/customer/device/{}/claim` | `DeviceControllerApi.reClaimDevice(deviceName:)` → `Response<String>` |
| `DeviceService.assignDeviceToTenant(String tenantId, String deviceId)` → `Future<Device?>` | POST `/api/tenant/{}/device/{}` | `DeviceControllerApi.assignDeviceToTenant(tenantId:, deviceId:)` → `Response<Device>` |
| `DeviceService.countDevicesByDeviceProfileIdAndEmptyOtaPackage(OtaPackageType otaPackageType, String deviceProfileId)` → `Future<int>` | GET `/api/devices/count/{}` | `DeviceControllerApi.countByDeviceProfileAndEmptyOtaPackage(otaPackageType:, deviceProfileId:)` (path param, not query) |
| `DeviceService.getDeviceCredentialsByDeviceId(String deviceId)` → `Future<DeviceCredentials?>` | GET `/api/device/{}/credentials` | `DeviceControllerApi.getDeviceCredentialsByDeviceId(deviceId:)` → `Response<DeviceCredentials>` |
| `DeviceService.saveDeviceCredentials(DeviceCredentials deviceCredentials)` → `Future<DeviceCredentials>` | POST `/api/device/credentials` | `DeviceControllerApi.updateDeviceCredentials(deviceCredentials:)` → `Response<DeviceCredentials>` |
| `DeviceService.handleOneWayDeviceRPCRequest(String deviceId, dynamic requestBody)` → `Future<void>` | POST `/api/plugins/rpc/oneway/{}` | `RpcV1ControllerApi.handleOneWayDeviceRPCRequestV1(deviceId:, body:)` → `Response<String>` |
| `DeviceService.handleTwoWayDeviceRPCRequest(String deviceId, dynamic requestBody)` → `Future<dynamic>` | POST `/api/plugins/rpc/twoway/{}` | `RpcV1ControllerApi.handleTwoWayDeviceRPCRequestV1(deviceId:, body:)` → `Response<String>` |
| `DeviceService.getPersistedRpc(String rpcId)` → `Future<Rpc?>` | GET `/api/plugins/rpc/persisted/{}` | `RpcV2ControllerApi.getPersistedRpc(rpcId:)` (`/api/rpc/persistent/{rpcId}`) |
| `DeviceService.getPersistedRpcByDevice(String deviceId, RpcStatus rpcStatus, PageLink pageLink)` → `Future<PageData<Rpc>>` | GET `/api/plugins/rpc/persisted/{}` | `RpcV2ControllerApi.getPersistedRpcByDevice(deviceId:, pageSize:, page:, rpcStatus:)` |
| `DeviceService.deletePersistedRpc(String rpcId)` → `Future<void>` | DELETE `/api/plugins/rpc/persisted/{}` | `RpcV2ControllerApi.deleteRpc(rpcId:)` |
| `DeviceService.assignDeviceToEdge(String edgeId, String deviceId)` → `Future<Device?>` | POST `/api/edge/{}/device/{}` | `EntityGroupControllerApi.assignEntityGroupToEdge` (group level) |
| `DeviceService.unassignDeviceFromEdge(String edgeId, String deviceId)` → `Future<Device?>` | DELETE `/api/edge/{}/device/{}` | `EntityGroupControllerApi.unassignEntityGroupFromEdge` (group level) |
| `DeviceService.getEdgeDevices(String edgeId, PageLink pageLink, {String type = ''})` → `Future<PageData<Device>>` | GET `/api/edge/{}/devices` | No equivalent; edge entity groups |
| `EdgeService.isEdgesSupportEnabled()` → `Future<bool>` | GET `/api/edges/enabled` | `EdgeControllerApi.isEdgesSupportEnabled()` → `Response<bool>` |
| `EdgeService.getEdge(String edgeId)` → `Future<Edge?>` | GET `/api/edge/{}` | `EdgeControllerApi.getEdgeById(edgeId:)` → `Response<Edge>` |
| `EdgeService.getEdgeInfo(String edgeId)` → `Future<EdgeInfo?>` | GET `/api/edge/info/{}` | `EdgeControllerApi.getEdgeInfoById(edgeId:)` → `Response<EdgeInfo>` |
| `EdgeService.saveEdge(Edge edge)` → `Future<Edge>` | POST `/api/edge` | `EdgeControllerApi.saveEdge(edge:)` → `Response<Edge>` |
| `EdgeService.deleteEdge(String edgeId)` → `Future<void>` | DELETE `/api/edge/{}` | `EdgeControllerApi.deleteEdge(edgeId:)` → `Response<void>` |
| `EdgeService.getEdges(PageLink pageLink)` → `Future<PageData<Edge>>` | GET `/api/edges` | `EdgeControllerApi.getEdges(pageSize:, page:)` → `Response<PageDataEdge>` |
| `EdgeService.assignEdgeToCustomer(String customerId, String edgeId)` → `Future<Edge?>` | POST `/api/customer/{}/edge/{}` | `OwnerControllerApi.changeOwnerToCustomer(...)` |
| `EdgeService.unassignEdgeFromCustomer(String edgeId)` → `Future<Edge?>` | DELETE `/api/customer/edge/{}` | `OwnerControllerApi.changeOwnerToTenant(...)` |
| `EdgeService.assignAssetToPublicCustomer(String edgeId)` → `Future<Edge?>` | POST `/api/customer/public/edge/{}` | No equivalent; make an entity group public (`EntityGroupControllerApi.makeEntityGroupPublic`) |
| `EdgeService.getTenantEdges(PageLink pageLink, {String type = ''})` → `Future<PageData<Edge>>` | GET `/api/tenant/edges` | `EdgeControllerApi.getTenantEdges(pageSize:, page:)` → `Response<PageDataEdge>` |
| `EdgeService.getTenantEdgeInfos(PageLink pageLink, {String type = ''})` → `Future<PageData<EdgeInfo>>` | GET `/api/tenant/edgeInfos` | `EdgeControllerApi.getAllEdgeInfos(...)` (`/api/edgeInfos/all`) |
| `EdgeService.getTenantEdge(String edgeName)` → `Future<Edge?>` | GET `/api/tenant/edges` | `EdgeControllerApi.getTenantEdgeByName(edgeName:)` → `Response<Edge>` |
| `EdgeService.setRootRuleChain(String edgeId, String ruleChainId)` → `Future<Edge?>` | POST `/api/edge/{}/{}/root` | `EdgeControllerApi.setEdgeRootRuleChain(edgeId:, ruleChainId:)` → `Response<Edge>` |
| `EdgeService.getCustomerEdges(String customerId, PageLink pageLink, {String type = ''})` → `Future<PageData<Edge>>` | GET `/api/customer/{}/edges` | `EdgeControllerApi.getCustomerEdges(customerId:, pageSize:, page:)` → `Response<PageDataEdge>` |
| `EdgeService.getCustomerEdgeInfos(String customerId, PageLink pageLink, {String type = ''})` → `Future<PageData<EdgeInfo>>` | GET `/api/customer/{}/edgeInfos` | `EdgeControllerApi.getCustomerEdgeInfos(customerId:, pageSize:, page:)` → `Response<PageDataEdgeInfo>` |
| `EdgeService.getEdgesByIds(List<String> edgeIds)` → `Future<List<Edge>>` | GET `/api/edges` | `EdgeControllerApi.getEdgeList(edgeIds:)` → `Response<BuiltList<Edge>>` (`/api/edges/list`) |
| `EdgeService.findByQuery(EdgeSearchQuery query)` → `Future<List<Edge>>` | POST `/api/edges` | `EdgeControllerApi.findEdgesByQuery(edgeSearchQuery:)` → `Response<BuiltList<Edge>>` |
| `EdgeService.getEdgeTypes()` → `Future<List<EntitySubtype>>` | GET `/api/edge/types` | `EdgeControllerApi.getEdgeTypes()` → `Response<BuiltList<EntitySubtype>>` |
| `EdgeService.syncEdge(String edgeId)` → `Future<void>` | POST `/api/edge/sync/{}` | `EdgeControllerApi.syncEdge(edgeId:)` → `Response<String>` |
| `EdgeService.findMissingToRelatedRuleChains(String edgeId)` → `Future<String>` | GET `/api/edge/missingToRelatedRuleChains/{}` | `EdgeControllerApi.findMissingToRelatedRuleChains(edgeId:)` → `Response<String>` |
| `EdgeService.getEdgeEvents(String edgeId, TimePageLink pageLink)` → `Future<PageData<EdgeEvent>>` | GET `/api/edge/{}/events` | `EdgeEventControllerApi.getEdgeEvents(edgeId:, pageSize:, page:)` → `Response<PageDataEdgeEvent>` |
| `EntitiesVersionControlService.saveEntitiesVersion(VersionCreateRequest request)` → `Future<String>` | POST `/api/entities/vc/version` | `EntitiesVersionControlControllerApi.saveEntitiesVersion(versionCreateRequest:)` → `Response<String>` |
| `EntitiesVersionControlService.getVersionCreateRequestStatus(String requestId)` → `Future<VersionCreationResult?>` | GET `/api/entities/vc/version/{}/status` | `EntitiesVersionControlControllerApi.getVersionCreateRequestStatus(requestId:)` → `Response<VersionCreationResult>` |
| `EntitiesVersionControlService.listEntityVersions(PageLink pageLink, String branch, EntityId externalEntityId)` → `Future<PageData<EntityVersion>>` | GET `/api/entities/vc/version/{}/{}` | `EntitiesVersionControlControllerApi.listEntityVersions(entityType:, externalEntityUuid:, branch:, pageSize:, page:)` → `Response<PageDataEntityVersion>` |
| `EntitiesVersionControlService.listEntityTypeVersions(PageLink pageLink, String branch, EntityType entityType)` → `Future<PageData<EntityVersion>>` | GET `/api/entities/vc/version/{}` | `EntitiesVersionControlControllerApi.listEntityTypeVersions(entityType:, branch:, pageSize:, page:)` → `Response<PageDataEntityVersion>` |
| `EntitiesVersionControlService.listVersions(PageLink pageLink, String branch)` → `Future<PageData<EntityVersion>>` | GET `/api/entities/vc/version` | `EntitiesVersionControlControllerApi.listVersions(branch:, pageSize:, page:)` → `Response<PageDataEntityVersion>` |
| `EntitiesVersionControlService.getEntityDataInfo(EntityId externalEntityId, String versionId)` → `Future<EntityDataInfo?>` | GET `/api/entities/vc/info/{}/{}/{}` | `EntitiesVersionControlControllerApi.getEntityDataInfo(versionId:, entityType:, externalEntityUuid:)` → `Response<EntityDataInfo>` |
| `EntitiesVersionControlService.compareEntityDataToVersion(EntityId entityId, String versionId)` → `Future<EntityDataDiff?>` | GET `/api/entities/vc/diff/{}/{}` | `EntitiesVersionControlControllerApi.compareEntityDataToVersion(entityType:, internalEntityUuid:, versionId:)` → `Response<EntityDataDiff>` |
| `EntitiesVersionControlService.loadEntitiesVersion(VersionLoadRequest request)` → `Future<String>` | POST `/api/entities/vc/entity` | `EntitiesVersionControlControllerApi.loadEntitiesVersion(versionLoadRequest:)` → `Response<String>` |
| `EntitiesVersionControlService.getVersionLoadRequestStatus(String requestId)` → `Future<VersionLoadResult?>` | GET `/api/entities/vc/entity/{}/status` | `EntitiesVersionControlControllerApi.getVersionLoadRequestStatus(requestId:)` → `Response<VersionLoadResult>` |
| `EntitiesVersionControlService.listBranches()` → `Future<List<BranchInfo>>` | GET `/api/entities/vc/branches` | `EntitiesVersionControlControllerApi.listBranches()` → `Response<BuiltList<BranchInfo>>` |
| `EntityQueryService.countEntitiesByQuery(EntityCountQuery query)` → `Future<int>` | POST `/api/entitiesQuery/count` | `EntityQueryControllerApi.countEntitiesByQuery(entityCountQuery:)` → `Response<int>` |
| `EntityQueryService.findEntityDataByQuery(EntityDataQuery query)` → `Future<PageData<EntityData>>` | POST `/api/entitiesQuery/find` | `EntityQueryControllerApi.findEntityDataByQuery(entityDataQuery:)` → `Response<PageDataEntityData>` |
| `EntityQueryService.findAlarmDataByQuery(AlarmDataQuery query)` → `Future<PageData<AlarmData>>` | POST `/api/alarmsQuery/find` | `EntityQueryControllerApi.findAlarmDataByQuery(alarmDataQuery:)` → `Response<PageDataAlarmData>` |
| `EntityRelationService.saveRelation(EntityRelation relation)` → `Future<void>` | POST `/api/relation` | `EntityRelationControllerApi.saveRelation(entityRelation:)` (`POST /api/v2/relation`) |
| `EntityRelationService.deleteRelation(EntityId fromId, String relationType, RelationTypeGroup relationTypeGroup, EntityId toId)` → `Future<void>` | DELETE `/api/relation` | `EntityRelationControllerApi.deleteRelation(fromId:, fromType:, relationType:, toId:, toType:)` (`DELETE /api/v2/relation`) |
| `EntityRelationService.deleteRelations(EntityId entityId)` → `Future<void>` | DELETE `/api/relations` | `EntityRelationControllerApi.deleteRelations(entityId:, entityType:)` → `Response<void>` |
| `EntityRelationService.getRelation(EntityId fromId, String relationType, RelationTypeGroup relationTypeGroup, EntityId toId)` → `Future<EntityRelation?>` | GET `/api/relation` | `EntityRelationControllerApi.getRelation(fromId:, fromType:, relationType:, toId:, toType:)` → `Response<EntityRelation>` |
| `EntityRelationService.findByFrom(EntityId fromId, {String? relationType, RelationTypeGroup? relationTypeGroup})` → `Future<List<EntityRelation>>` | GET `/api/relations` | `EntityRelationControllerApi.findEntityRelationsByFrom(fromType:, fromId:)` (path params) |
| `EntityRelationService.findInfoByFrom(EntityId fromId, {RelationTypeGroup? relationTypeGroup})` → `Future<List<EntityRelationInfo>>` | GET `/api/relations/info` | `EntityRelationControllerApi.findEntityRelationInfosByFrom(fromType:, fromId:)` |
| `EntityRelationService.findByTo(EntityId toId, {String? relationType, RelationTypeGroup? relationTypeGroup})` → `Future<List<EntityRelation>>` | GET `/api/relations` | `EntityRelationControllerApi.findEntityRelationsByTo(toType:, toId:)` |
| `EntityRelationService.findInfoByTo(EntityId toId, {RelationTypeGroup? relationTypeGroup})` → `Future<List<EntityRelationInfo>>` | GET `/api/relations/info` | `EntityRelationControllerApi.findEntityRelationInfosByTo(toType:, toId:)` |
| `EntityRelationService.findByQuery(EntityRelationsQuery query)` → `Future<List<EntityRelation>>` | POST `/api/relations` | `EntityRelationControllerApi.findEntityRelationsByQuery(entityRelationsQuery:)` → `Response<BuiltList<EntityRelation>>` |
| `EntityRelationService.findInfoByQuery(EntityRelationsQuery query)` → `Future<List<EntityRelationInfo>>` | POST `/api/relations/info` | `EntityRelationControllerApi.findEntityRelationInfosByQuery(entityRelationsQuery:)` → `Response<BuiltList<EntityRelationInfo>>` |
| `EntityViewService.getEntityView(String entityViewId)` → `Future<EntityView?>` | GET `/api/entityView/{}` | `EntityViewControllerApi.getEntityViewById(entityViewId:)` → `Response<EntityView>` |
| `EntityViewService.getEntityViewInfo(String entityViewId)` → `Future<EntityViewInfo?>` | GET `/api/entityView/info/{}` | `EntityViewControllerApi.getEntityViewInfoById(entityViewId:)` → `Response<EntityViewInfo>` |
| `EntityViewService.saveEntityView(EntityView entityView)` → `Future<EntityView>` | POST `/api/entityView` | `EntityViewControllerApi.saveEntityView(entityView:)` → `Response<EntityView>` |
| `EntityViewService.deleteEntityView(String entityViewId)` → `Future<void>` | DELETE `/api/entityView/{}` | `EntityViewControllerApi.deleteEntityView(entityViewId:)` → `Response<void>` |
| `EntityViewService.assignEntityViewToCustomer(String customerId, String entityViewId)` → `Future<EntityView?>` | POST `/api/customer/{}/entityView/{}` | `OwnerControllerApi.changeOwnerToCustomer(...)` |
| `EntityViewService.unassignEntityViewFromCustomer(String entityViewId)` → `Future<EntityView?>` | DELETE `/api/customer/entityView/{}` | `OwnerControllerApi.changeOwnerToTenant(...)` |
| `EntityViewService.assignEntityViewToPublicCustomer(String entityViewId)` → `Future<EntityView?>` | POST `/api/customer/public/entityView/{}` | No equivalent; public entity group |
| `EntityViewService.getTenantEntityViews(PageLink pageLink, {String type = ''})` → `Future<PageData<EntityView>>` | GET `/api/tenant/entityViews` | `EntityViewControllerApi.getTenantEntityViews(pageSize:, page:)` → `Response<PageDataEntityView>` |
| `EntityViewService.getTenantEntityViewInfos(PageLink pageLink, {String type = ''})` → `Future<PageData<EntityViewInfo>>` | GET `/api/tenant/entityViewInfos` | `EntityViewControllerApi.getAllEntityViewInfos(...)` (`/api/entityViewInfos/all`) |
| `EntityViewService.getTenantEntityView(String entityViewName)` → `Future<EntityView?>` | GET `/api/tenant/entityViews` | `EntityViewControllerApi.getTenantEntityViewByName(entityViewName:)` → `Response<EntityView>` |
| `EntityViewService.getCustomerEntityViews(String customerId, PageLink pageLink, {String type = ''})` → `Future<PageData<EntityView>>` | GET `/api/customer/{}/entityViews` | `EntityViewControllerApi.getCustomerEntityViews(customerId:, pageSize:, page:)` → `Response<PageDataEntityView>` |
| `EntityViewService.getCustomerEntityViewInfos(String customerId, PageLink pageLink, {String type = ''})` → `Future<PageData<EntityViewInfo>>` | GET `/api/customer/{}/entityViewInfos` | `EntityViewControllerApi.getCustomerEntityViewInfos(customerId:, pageSize:, page:)` → `Response<PageDataEntityViewInfo>` |
| `EntityViewService.findByQuery(EntityViewSearchQuery query)` → `Future<List<EntityView>>` | POST `/api/entityViews` | `EntityViewControllerApi.findEntityViewsByQuery(entityViewSearchQuery:)` → `Response<BuiltList<EntityView>>` |
| `EntityViewService.getEntityViewTypes()` → `Future<List<EntitySubtype>>` | GET `/api/entityView/types` | `EntityViewControllerApi.getEntityViewTypes()` → `Response<BuiltList<EntitySubtype>>` |
| `EntityViewService.assignEntityViewToEdge(String edgeId, String entityViewId)` → `Future<EntityView?>` | POST `/api/edge/{}/entityView/{}` | `EntityGroupControllerApi.assignEntityGroupToEdge` (group level) |
| `EntityViewService.unassignEntityViewFromEdge(String edgeId, String entityViewId)` → `Future<EntityView?>` | DELETE `/api/edge/{}/entityView/{}` | `EntityGroupControllerApi.unassignEntityGroupFromEdge` (group level) |
| `EntityViewService.getEdgeEntityViews(String edgeId, PageLink pageLink, {String type = ''})` → `Future<PageData<EntityView>>` | GET `/api/edge/{}/entityViews` | No equivalent; edge entity groups |
| `EventService.getEvents(EntityId entityId, String tenantId, TimePageLink pageLink, {String? eventType})` → `Future<PageData<Event>>` | GET `/api/events/{}/{}[/{}]` | With `eventType`: `EventControllerApi.getEventsByType(entityType:, entityId:, eventType:, tenantId:, pageSize:, page:)` → `Response<PageDataEventInfo>`. Without: `EventControllerApi.getEventsByFilter(entityType:, entityId:, tenantId:, pageSize:, page:, eventFilter:)` (POST). `EventService` had no `get*Service()` accessor in 4.2.1 |
| `ImageService.uploadImage(MultipartFile file, {String? title})` → `Future<TbResourceInfo>` | POST `/api/image` | `ImageControllerApi.uploadImage(file:)` → `Response<TbResourceInfo>` |
| `ImageService.uploadImageBytes(Uint8List imageBytes, { required String title, String mimeType = 'image/png'})` → `Future<TbResourceInfo>` | POST `/api/image` | `ImageControllerApi.uploadImage(file: MultipartFile.fromBytes(bytes, filename: ...), title:)` |
| `MobileService.getUserMobileInfo(MobileInfoQuery query)` → `Future<MobileBasicInfo?>` | GET `/api/mobile` | `MobileAppControllerApi.getUserMobileInfo(pkgName:, platform:)` → `Response<UserMobileInfo>` |
| `MobileService.getLoginMobileInfo(MobileInfoQuery query)` → `Future<LoginMobileInfo?>` | GET `/api/noauth/mobile` | `MobileAppControllerApi.getLoginMobileInfo(pkgName:, platform:)` → `Response<LoginMobileInfo>` |
| `NotificationsService.getNotifications(PushNotificationQuery query)` → `Future<PageData<PushNotification>>` | GET `/api/notifications` | `NotificationControllerApi.getNotifications(pageSize:, page:)` → `Response<PageDataNotification>` |
| `NotificationsService.markAllNotificationsAsRead(String deliveryMethod)` → `Future<int>` | PUT `/api/notifications/read` | `NotificationControllerApi.markAllNotificationsAsRead()` → `Response<void>` |
| `NotificationsService.deleteNotification(String id)` → `Future<int>` | DELETE `/api/notification/{}` | `NotificationControllerApi.deleteNotification(id:)` → `Response<void>` |
| `NotificationsService.markNotificationAsRead(String id)` → `Future<int>` | PUT `/api/notification/{}/read` | `NotificationControllerApi.markNotificationAsRead(id:)` → `Response<void>` |
| `NotificationsService.getUnreadNotificationsCount(String deliveryMethod)` → `Future<int>` | GET `/api/notifications/unread/count` | `NotificationControllerApi.getUnreadNotificationsCount()` → `Response<int>` |
| `NotificationsService.getNotificationById(String id, { required String deliveryMethod})` → `Future<PushNotification>` | GET `api/notification/request/{}` | `NotificationControllerApi.getNotificationRequestById(id:)` (4.2.1 path lacked the leading `/`) |
| `OAuth2Service.getOAuth2Clients({String? pkgName, PlatformType? platform})` → `Future<List<OAuth2ClientInfo>>` | POST `/api/noauth/oauth2Clients` | `OAuth2ControllerApi.getOAuth2Clients()` → `Response<BuiltList<OAuth2ClientLoginInfo>>` |
| `OAuth2Service.saveClientRegistrationTemplate(OAuth2ClientRegistrationTemplate clientRegistrationTemplate)` → `Future<OAuth2ClientRegistrationTemplate>` | POST `/api/oauth2/config/template` | `OAuth2ConfigTemplateControllerApi.saveClientRegistrationTemplate(oAuth2ClientRegistrationTemplate:)` → `Response<OAuth2ClientRegistrationTemplate>` |
| `OAuth2Service.deleteClientRegistrationTemplate(String oAuth2ClientRegistrationTemplateId)` → `Future<void>` | DELETE `/api/oauth2/config/template/{}` | `OAuth2ConfigTemplateControllerApi.deleteClientRegistrationTemplate(clientRegistrationTemplateId:)` → `Response<void>` |
| `OAuth2Service.getClientRegistrationTemplates()` → `Future<List<OAuth2ClientRegistrationTemplate>>` | GET `/api/oauth2/config/template` | `OAuth2ConfigTemplateControllerApi.getOAuth2ClientRegistrationTemplates()` → `Response<BuiltList<OAuth2ClientRegistrationTemplate>>` |
| `OAuth2Service.getCurrentOAuth2Info()` → `Future<OAuth2Info>` | GET `/api/oauth2/config` | Removed: `/api/oauth2/config` no longer exists on ThingsBoard 4.x (use `OAuth2ControllerApi` client CRUD) |
| `OAuth2Service.saveOAuth2Info(OAuth2Info oAuth2Info)` → `Future<OAuth2Info>` | POST `/api/oauth2/config` | Removed: as above |
| `OAuth2Service.getLoginProcessingUrl()` → `Future<String>` | GET `/api/oauth2/loginProcessingUrl` | `OAuth2ControllerApi.getLoginProcessingUrl()` → `Response<String>` |
| `OtaPackageService.downloadOtaPackage(String otaPackageId)` → `Future<ResponseBody?>` | GET `/api/otaPackage/{}/download` | `OtaPackageControllerApi.downloadOtaPackage(otaPackageId:)` → `Response<Uint8List>` |
| `OtaPackageService.getOtaPackage(String otaPackageId)` → `Future<OtaPackage?>` | GET `/api/otaPackage/{}` | `OtaPackageControllerApi.getOtaPackageById(otaPackageId:)` → `Response<OtaPackage>` |
| `OtaPackageService.getOtaPackageInfo(String otaPackageId)` → `Future<OtaPackageInfo?>` | GET `/api/otaPackage/info/{}` | `OtaPackageControllerApi.getOtaPackageInfoById(otaPackageId:)` → `Response<OtaPackageInfo>` |
| `OtaPackageService.saveOtaPackageInfo(OtaPackageInfo otaPackageInfo)` → `Future<OtaPackageInfo>` | POST `/api/otaPackage` | `OtaPackageControllerApi.saveOtaPackageInfo(saveOtaPackageInfoRequest:)` → `Response<OtaPackageInfo>` |
| `OtaPackageService.saveOtaPackageData(String otaPackageId, MultipartFile file, {required ChecksumAlgorithm checksumAlgorithm, String? checksum})` → `Future<OtaPackageInfo>` | POST `/api/otaPackage/{}` | `OtaPackageControllerApi.saveOtaPackageData(otaPackageId:, checksumAlgorithm:, file:)` → `Response<OtaPackageInfo>` |
| `OtaPackageService.deleteOtaPackage(String otaPackageId)` → `Future<void>` | DELETE `/api/otaPackage/{}` | `OtaPackageControllerApi.deleteOtaPackage(otaPackageId:)` → `Response<void>` |
| `OtaPackageService.getOtaPackages(PageLink pageLink)` → `Future<PageData<OtaPackageInfo>>` | GET `/api/otaPackages` | `OtaPackageControllerApi.getOtaPackages(pageSize:, page:)` → `Response<PageDataOtaPackageInfo>` |
| `OtaPackageService.getOtaPackagesByDeviceProfileId(String deviceProfileId, OtaPackageType type, PageLink pageLink)` → `Future<PageData<OtaPackageInfo>>` | GET `/api/otaPackages/{}/{}` | `OtaPackageControllerApi.getOtaPackagesByDeviceProfileAndType(deviceProfileId:, type:, pageSize:, page:)` → `Response<PageDataOtaPackageInfo>` |
| `QueueService.getQueue(String queueId)` → `Future<Queue?>` | GET `/api/queues/{}` | `QueueControllerApi.getQueueById(queueId:)` → `Response<Queue>` |
| `QueueService.getQueueByName(String queueName)` → `Future<Queue?>` | GET `/api/queues/name/{}` | `QueueControllerApi.getQueueByName(queueName:)` → `Response<Queue>` |
| `QueueService.saveQueue(Queue queue, ServiceType serviceType)` → `Future<Queue>` | POST `/api/queues` | `QueueControllerApi.saveQueue(serviceType:, queue:)` → `Response<Queue>` |
| `QueueService.deleteQueue(String queueId)` → `Future<void>` | DELETE `/api/queues/{}` | `QueueControllerApi.deleteQueue(queueId:)` → `Response<void>` |
| `QueueService.getTenantQueuesByServiceType(PageLink pageLink, ServiceType serviceType)` → `Future<PageData<Queue>>` | GET `/api/queues` | `QueueControllerApi.getTenantQueuesByServiceType(serviceType:, pageSize:, page:)` → `Response<PageDataQueue>` |
| `ResourceService.downloadResource(String resourceId)` → `Future<ResponseBody?>` | GET `/api/resource/{}/download` | `TbResourceControllerApi.downloadResource(resourceId:)` → `Response<Uint8List>` |
| `ResourceService.getResource(String resourceId)` → `Future<TbResource?>` | GET `/api/resource/{}` | `TbResourceControllerApi.getResourceById(resourceId:)` → `Response<TbResource>` |
| `ResourceService.getResourceInfo(String resourceId)` → `Future<TbResourceInfo?>` | GET `/api/resource/info/{}` | `TbResourceControllerApi.getResourceInfoById(resourceId:)` → `Response<TbResourceInfo>` |
| `ResourceService.saveResource(TbResource resource)` → `Future<TbResource>` | POST `/api/resource` | `TbResourceControllerApi.saveResource(tbResource:)` → `Response<TbResourceInfo>` |
| `ResourceService.deleteResource(String resourceId)` → `Future<void>` | DELETE `/api/resource/{}` | `TbResourceControllerApi.deleteResource(resourceId:)` → `Response<TbResourceDeleteResult>` |
| `ResourceService.getResources(PageLink pageLink)` → `Future<PageData<TbResourceInfo>>` | GET `/api/resource` | `TbResourceControllerApi.getResources(pageSize:, page:)` → `Response<PageDataTbResourceInfo>` |
| `RuleChainService.getRuleChain(String ruleChainId)` → `Future<RuleChain?>` | GET `/api/ruleChain/{}` | `RuleChainControllerApi.getRuleChainById(ruleChainId:)` → `Response<RuleChain>` |
| `RuleChainService.getRuleChainMetaData(String ruleChainId)` → `Future<RuleChainMetaData?>` | GET `/api/ruleChain/{}/metadata` | `RuleChainControllerApi.getRuleChainMetaData(ruleChainId:)` → `Response<RuleChainMetaData>` |
| `RuleChainService.saveRuleChain(RuleChain ruleChain)` → `Future<RuleChain>` | POST `/api/ruleChain` | `RuleChainControllerApi.saveRuleChain(ruleChain:)` → `Response<RuleChain>` |
| `RuleChainService.deleteRuleChain(String ruleChainId)` → `Future<void>` | DELETE `/api/ruleChain/{}` | `RuleChainControllerApi.deleteRuleChain(ruleChainId:)` → `Response<void>` |
| `RuleChainService.createDefaultRuleChain(String ruleChainName)` → `Future<RuleChain>` | POST `/api/ruleChain/device/default` | `RuleChainControllerApi.setDeviceDefaultRuleChain(defaultRuleChainCreateRequest:)` → `Response<RuleChain>` |
| `RuleChainService.setRootRuleChain(String ruleChainId)` → `Future<RuleChain?>` | POST `/api/ruleChain/{}/root` | `RuleChainControllerApi.setRootRuleChain(ruleChainId:)` → `Response<RuleChain>` |
| `RuleChainService.saveRuleChainMetaData(RuleChainMetaData ruleChainMetaData)` → `Future<RuleChainMetaData>` | POST `/api/ruleChain/metadata` | `RuleChainControllerApi.saveRuleChainMetaData(ruleChainMetaData:)` → `Response<RuleChainMetaData>` |
| `RuleChainService.getRuleChains(PageLink pageLink)` → `Future<PageData<RuleChain>>` | GET `/api/ruleChains` | `RuleChainControllerApi.getRuleChains(pageSize:, page:)` → `Response<PageDataRuleChain>` |
| `RuleChainService.getLatestRuleNodeDebugInput(String ruleNodeId)` → `Future<dynamic>` | GET `/api/ruleNode/{}/debugIn` | `RuleChainControllerApi.getLatestRuleNodeDebugInput(ruleNodeId:)` → `Response<JsonObject>` |
| `RuleChainService.testScript(dynamic inputParams)` → `Future<dynamic>` | POST `/api/ruleChain/testScript` | `RuleChainControllerApi.testRuleChainScript()` → `Response<JsonObject>` |
| `RuleChainService.exportRuleChains(int limit)` → `Future<RuleChainData>` | GET `/api/ruleChains/export` | `RuleChainControllerApi.exportRuleChains(limit:)` → `Response<RuleChainData>` |
| `RuleChainService.importRuleChains(RuleChainData ruleChainData, bool overwrite)` → `Future<void>` | POST `/api/ruleChains/import` | `RuleChainControllerApi.importRuleChains(ruleChainData:)` → `Response<BuiltList<RuleChainImportResult>>` |
| `RuleChainService.assignRuleChainToEdge(String edgeId, String ruleChainId)` → `Future<RuleChain?>` | POST `/api/edge/{}/ruleChain/{}` | `RuleChainControllerApi.assignRuleChainToEdge(edgeId:, ruleChainId:)` → `Response<RuleChain>` |
| `RuleChainService.unassignRuleChainFromEdge(String edgeId, String ruleChainId)` → `Future<RuleChain?>` | DELETE `/api/edge/{}/ruleChain/{}` | `RuleChainControllerApi.unassignRuleChainFromEdge(edgeId:, ruleChainId:)` → `Response<RuleChain>` |
| `RuleChainService.getEdgeRuleChains(String edgeId, PageLink pageLink)` → `Future<PageData<RuleChain>>` | GET `/api/edge/{}/ruleChains` | `RuleChainControllerApi.getEdgeRuleChains(edgeId:, pageSize:, page:)` → `Response<PageDataRuleChain>` |
| `RuleChainService.setEdgeTemplateRootRuleChain(String ruleChainId)` → `Future<RuleChain?>` | POST `/api/ruleChain/{}/edgeTemplateRoot` | `RuleChainControllerApi.setEdgeTemplateRootRuleChain(ruleChainId:)` → `Response<RuleChain>` |
| `RuleChainService.setAutoAssignToEdgeRuleChain(String ruleChainId)` → `Future<RuleChain?>` | POST `/api/ruleChain/{}/autoAssignToEdge` | `RuleChainControllerApi.setAutoAssignToEdgeRuleChain(ruleChainId:)` → `Response<RuleChain>` |
| `RuleChainService.unsetAutoAssignToEdgeRuleChain(String ruleChainId)` → `Future<RuleChain?>` | DELETE `/api/ruleChain/{}/autoAssignToEdge` | `RuleChainControllerApi.unsetAutoAssignToEdgeRuleChain(ruleChainId:)` → `Response<RuleChain>` |
| `RuleChainService.getAutoAssignToEdgeRuleChains()` → `Future<List<RuleChain>>` | GET `/api/ruleChain/autoAssignToEdgeRuleChains` | `RuleChainControllerApi.getAutoAssignToEdgeRuleChains()` → `Response<BuiltList<RuleChain>>` |
| `TenantProfileService.getTenantProfile(String tenantProfileId)` → `Future<TenantProfile?>` | GET `/api/tenantProfile/{}` | `TenantProfileControllerApi.getTenantProfileById(tenantProfileId:)` → `Response<TenantProfile>` |
| `TenantProfileService.getTenantProfileInfo(String tenantProfileId)` → `Future<EntityInfo?>` | GET `/api/tenantProfileInfo/{}` | `TenantProfileControllerApi.getTenantProfileInfoById(tenantProfileId:)` → `Response<EntityInfo>` |
| `TenantProfileService.getDefaultTenantProfileInfo()` → `Future<EntityInfo>` | GET `/api/tenantProfileInfo/default` | `TenantProfileControllerApi.getDefaultTenantProfileInfo()` → `Response<EntityInfo>` |
| `TenantProfileService.saveTenantProfile(TenantProfile tenantProfile)` → `Future<TenantProfile>` | POST `/api/tenantProfile` | `TenantProfileControllerApi.saveTenantProfile(tenantProfile:)` → `Response<TenantProfile>` |
| `TenantProfileService.deleteTenantProfile(String tenantProfileId)` → `Future<void>` | DELETE `/api/tenantProfile/{}` | `TenantProfileControllerApi.deleteTenantProfile(tenantProfileId:)` → `Response<void>` |
| `TenantProfileService.setDefaultTenantProfile(String tenantProfileId)` → `Future<TenantProfile>` | POST `/api/tenantProfile/{}/default` | `TenantProfileControllerApi.setDefaultTenantProfile(tenantProfileId:)` → `Response<TenantProfile>` |
| `TenantProfileService.getTenantProfiles(PageLink pageLink)` → `Future<PageData<TenantProfile>>` | GET `/api/tenantProfiles` | `TenantProfileControllerApi.getTenantProfiles(pageSize:, page:)` → `Response<PageDataTenantProfile>` |
| `TenantProfileService.getTenantProfileInfos(PageLink pageLink)` → `Future<PageData<EntityInfo>>` | GET `/api/tenantProfileInfos` | `TenantProfileControllerApi.getTenantProfileInfos(pageSize:, page:)` → `Response<PageDataEntityInfo>` |
| `TenantService.getTenant(String tenantId)` → `Future<Tenant?>` | GET `/api/tenant/{}` | `TenantControllerApi.getTenantById(tenantId:)` → `Response<Tenant>` |
| `TenantService.getTenantInfo(String tenantId)` → `Future<TenantInfo?>` | GET `/api/tenant/info/{}` | `TenantControllerApi.getTenantInfoById(tenantId:)` → `Response<TenantInfo>` |
| `TenantService.saveTenant(Tenant tenant)` → `Future<Tenant>` | POST `/api/tenant` | `TenantControllerApi.saveTenant(tenant:)` → `Response<Tenant>` |
| `TenantService.deleteTenant(String tenantId)` → `Future<void>` | DELETE `/api/tenant/{}` | `TenantControllerApi.deleteTenant(tenantId:)` → `Response<void>` |
| `TenantService.getTenants(PageLink pageLink)` → `Future<PageData<Tenant>>` | GET `/api/tenants` | `TenantControllerApi.getTenants(pageSize:, page:)` → `Response<PageDataTenant>` |
| `TenantService.getTenantInfos(PageLink pageLink)` → `Future<PageData<TenantInfo>>` | GET `/api/tenantInfos` | `TenantControllerApi.getTenantInfos(pageSize:, page:)` → `Response<PageDataTenantInfo>` |
| `TwoFactorAuthService.getPlatformTwoFaSettings()` → `Future<PlatformTwoFaSettings?>` | GET `/api/2fa/settings` | `TwoFactorAuthConfigControllerApi.getPlatformTwoFaSettings()` → `Response<PlatformTwoFaSettings>` |
| `TwoFactorAuthService.savePlatformTwoFaSettings(PlatformTwoFaSettings platformTwoFaSettings)` → `Future<PlatformTwoFaSettings>` | POST `/api/2fa/settings` | `TwoFactorAuthConfigControllerApi.savePlatformTwoFaSettings(platformTwoFaSettings:)` → `Response<PlatformTwoFaSettings>` |
| `TwoFactorAuthService.getAvailableTwoFaProviders()` → `Future<List<TwoFaProviderType>>` | GET `/api/2fa/providers` | `TwoFactorAuthConfigControllerApi.getAvailableTwoFaProviderTypes()` → `Response<BuiltList<TwoFaProviderType>>` |
| `TwoFactorAuthService.getAvailableLoginTwoFaProviders()` → `Future<List<TwoFaProviderInfo>>` | GET `/api/auth/2fa/providers` | `TwoFactorAuthControllerApi.getAvailableTwoFaProviderInfos()` → `Response<BuiltList<TwoFaProviderInfo>>` |
| `TwoFactorAuthService.generateTwoFaAccountConfig(TwoFaProviderType providerType)` → `Future<TwoFaAccountConfig>` | POST `/api/2fa/account/config/generate` | `TwoFactorAuthConfigControllerApi.generateTwoFaAccountConfig(providerType:)` → `Response<TwoFaAccountConfig>` |
| `TwoFactorAuthService.getAccountTwoFaSettings()` → `Future<AccountTwoFaSettings?>` | GET `/api/2fa/account/settings` | `TwoFactorAuthConfigControllerApi.getAccountTwoFaSettings()` → `Response<AccountTwoFaSettings>` |
| `TwoFactorAuthService.updateTwoFaAccountConfig(TwoFaProviderType providerType, bool useByDefault)` → `Future<AccountTwoFaSettings>` | PUT `/api/2fa/account/config` | `TwoFactorAuthConfigControllerApi.updateTwoFaAccountConfig(providerType:, twoFaAccountConfigUpdateRequest:)` → `Response<AccountTwoFaSettings>` |
| `TwoFactorAuthService.submitTwoFaAccountConfig(TwoFaAccountConfig accountConfig)` → `Future<void>` | POST `/api/2fa/account/config/submit` | `TwoFactorAuthConfigControllerApi.submitTwoFaAccountConfig(twoFaAccountConfig:)` → `Response<void>` |
| `TwoFactorAuthService.verifyAndSaveTwoFaAccountConfig(TwoFaAccountConfig accountConfig, {String? verificationCode})` → `Future<AccountTwoFaSettings>` | POST `/api/2fa/account/config` | `TwoFactorAuthConfigControllerApi.verifyAndSaveTwoFaAccountConfig(twoFaAccountConfig:)` → `Response<AccountTwoFaSettings>` |
| `TwoFactorAuthService.deleteTwoFaAccountConfig(TwoFaProviderType providerType)` → `Future<AccountTwoFaSettings>` | DELETE `/api/2fa/account/config` | `TwoFactorAuthConfigControllerApi.deleteTwoFaAccountConfig(providerType:)` → `Response<AccountTwoFaSettings>` |
| `TwoFactorAuthService.requestTwoFaVerificationCode(TwoFaProviderType providerType)` → `Future<void>` | POST `/api/auth/2fa/verification/send` | `TwoFactorAuthControllerApi.requestTwoFaVerificationCode(providerType:)` → `Response<void>` |
| `UserService.getUserById(String userId)` → `Future<User?>` | GET `/api/user/{}` | `UserControllerApi.getUserById(userId:)` → `Response<User>` |
| `UserService.isUserTokenAccessEnabled()` → `Future<bool>` | GET `/api/user/tokenAccessEnabled` | `UserControllerApi.isUserTokenAccessEnabled()` → `Response<bool>` |
| `UserService.getUserToken(String userId)` → `Future<LoginResponse?>` | GET `/api/user/{}/token` | `UserControllerApi.getUserToken(userId:)` → `Response<JwtPair>` |
| `UserService.saveUser(User user, {bool sendActivationMail = false})` → `Future<User>` | POST `/api/user` | `UserControllerApi.saveUser(user:)` → `Response<User>` |
| `UserService.sendActivationEmail(String email)` → `Future<void>` | POST `/api/user/sendActivationMail` | `UserControllerApi.sendActivationEmail(email:)` → `Response<void>` |
| `UserService.getActivationLink(String userId)` → `Future<String>` | GET `/api/user/{}/activationLink` | `UserControllerApi.getActivationLink(userId:)` |
| `UserService.deleteUser(String userId)` → `Future<void>` | DELETE `/api/user/{}` | `UserControllerApi.deleteUser(userId:)` → `Response<void>` |
| `UserService.getUsers(PageLink pageLink)` → `Future<PageData<User>>` | GET `/api/users` | `/api/users` is not in the spec: `UserControllerApi.getAllUserInfos(...)` (`/api/userInfos/all`) or `getUserUsers(...)` (`/api/user/users`) |
| `UserService.getUsersInfo(PageLink pageLink)` → `Future<PageData<UserInfo>>` | GET `/api/users/info` | `UserControllerApi.findUsersByQuery(pageSize:, page:)` → `Response<PageDataUserEmailInfo>` |
| `UserService.getUsersAssign(UsersAssignQuery usersAssignQuery)` → `Future<PageData<UserInfo>>` | GET `/api/users/assign/{}` | `UserControllerApi.getUsersForAssign(alarmId:, pageSize:, page:)` → `Response<PageDataUserEmailInfo>` |
| `UserService.getTenantAdmins(String tenantId, PageLink pageLink)` → `Future<PageData<User>>` | GET `/api/tenant/{}/users` | `UserControllerApi.getTenantAdmins(tenantId:, pageSize:, page:)` → `Response<PageDataUser>` |
| `UserService.getCustomerUsers(String customerId, PageLink pageLink)` → `Future<PageData<User>>` | GET `/api/customer/{}/users` | `UserControllerApi.getCustomerUsers(customerId:, pageSize:, page:)` → `Response<PageDataUser>` |
| `UserService.setUserCredentialsEnabled(String userId, {bool? userCredentialsEnabled})` → `Future<void>` | POST `/api/user/{}/userCredentialsEnabled` | `UserControllerApi.setUserCredentialsEnabled(userId:)` → `Response<void>` |
| `UserService.getUser()` → `Future<User>` | GET `/api/auth/user` | `AuthControllerApi.getUser()` → `Response<User>` |
| `UserService.getUserPasswordPolicy()` → `Future<UserPasswordPolicy?>` | GET `/api/noauth/userPasswordPolicy` | `AuthControllerApi.getUserPasswordPolicy()` → `Response<UserPasswordPolicy>` |
| `UserService.getActivateToken(String userId)` → `Future<String>` | (client-side) | Removed helper (parsed the token out of the activation link); use `getActivationLinkInfo(userId:)` |
| `UserService.checkActivateToken(String userId)` → `Future<String>` | GET `/api/noauth/activate` | `AuthControllerApi.checkActivateToken(activateToken:)` → `Response<JsonObject>` |
| `UserService.activateUser(String userId, String password, {bool sendActivationMail = true})` → `Future<LoginResponse?>` | POST `/api/noauth/activate` | `AuthControllerApi.activateUser(activateUserRequest:)` → `Response<JwtPair>` |
| `UserService.getMobileSession(String mobileToken)` → `Future<MobileSessionInfo?>` | GET `/api/user/mobile/session` | `UserControllerApi.getMobileSession(xMobileToken:)` → `Response<MobileSessionInfo>` |
| `UserService.saveMobileSession(String mobileToken, MobileSessionInfo sessionInfo)` → `Future<void>` | POST `/api/user/mobile/session` | `UserControllerApi.saveMobileSession(xMobileToken:, mobileSessionInfo:)` → `Response<void>` |
| `UserService.removeMobileSession(String mobileToken)` → `Future<void>` | DELETE `/api/user/mobile/session` | `UserControllerApi.removeMobileSession(xMobileToken:)` → `Response<void>` |
| `WidgetService.getWidgetsBundle(String widgetsBundleId)` → `Future<WidgetsBundle?>` | GET `/api/widgetsBundle/{}` | `WidgetsBundleControllerApi.getWidgetsBundleById(widgetsBundleId:)` → `Response<WidgetsBundle>` |
| `WidgetService.saveWidgetsBundle(WidgetsBundle widgetsBundle)` → `Future<WidgetsBundle>` | POST `/api/widgetsBundle` | `WidgetsBundleControllerApi.saveWidgetsBundle(widgetsBundle:)` → `Response<WidgetsBundle>` |
| `WidgetService.updateWidgetsBundleWidgetTypes(String widgetsBundleId, List<String> widgetTypeIds)` → `Future<void>` | POST `/api/widgetsBundle/{}/widgetTypes` | `WidgetsBundleControllerApi.updateWidgetsBundleWidgetTypes(widgetsBundleId:, requestBody:)` → `Response<void>` |
| `WidgetService.updateWidgetsBundleWidgetFqns(String widgetsBundleId, List<String> widgetTypeFqns)` → `Future<void>` | POST `/api/widgetsBundle/{}/widgetTypeFqns` | `WidgetsBundleControllerApi.updateWidgetsBundleWidgetFqns(widgetsBundleId:, requestBody:)` → `Response<void>` |
| `WidgetService.deleteWidgetsBundle(String widgetsBundleId)` → `Future<void>` | DELETE `/api/widgetsBundle/{}` | `WidgetsBundleControllerApi.deleteWidgetsBundle(widgetsBundleId:)` → `Response<void>` |
| `WidgetService.getWidgetsBundles(PageLink pageLink)` → `Future<PageData<WidgetsBundle>>` | GET `/api/widgetsBundles` | `WidgetsBundleControllerApi.getWidgetsBundles(pageSize:, page:)` → `Response<PageDataWidgetsBundle>` |
| `WidgetService.getWidgetsBundlesList()` → `Future<List<WidgetsBundle>>` | GET `/api/widgetsBundles` | `WidgetsBundleControllerApi.getAllWidgetsBundles()` → `Response<BuiltList<WidgetsBundle>>` (`/api/widgetsBundles/all`) |
| `WidgetService.getWidgetTypeById(String widgetTypeId)` → `Future<WidgetTypeDetails?>` | GET `/api/widgetType/{}` | `WidgetTypeControllerApi.getWidgetTypeById(widgetTypeId:)` → `Response<WidgetTypeDetails>` |
| `WidgetService.getWidgetTypeInfoById(String widgetTypeId)` → `Future<WidgetTypeInfo?>` | GET `/api/widgetTypeInfo/{}` | `WidgetTypeControllerApi.getWidgetTypeInfoById(widgetTypeId:)` → `Response<WidgetTypeInfo>` |
| `WidgetService.getWidgetTypes(PageLink pageLink, {bool tenantOnly = false, bool fullSearch = false})` → `Future<PageData<WidgetTypeInfo>>` | GET `/api/widgetTypes` | `WidgetTypeControllerApi.getWidgetTypes(pageSize:, page:)` → `Response<PageDataWidgetTypeInfo>` |
| `WidgetService.saveWidgetType(WidgetTypeDetails widgetTypeDetails)` → `Future<WidgetTypeDetails>` | POST `/api/widgetType` | `WidgetTypeControllerApi.saveWidgetType(widgetTypeDetails:)` → `Response<WidgetTypeDetails>` |
| `WidgetService.deleteWidgetType(String widgetTypeId)` → `Future<void>` | DELETE `/api/widgetType/{}` | `WidgetTypeControllerApi.deleteWidgetType(widgetTypeId:)` → `Response<void>` |
| `WidgetService.getBundleWidgetTypes(String widgetsBundleId)` → `Future<List<WidgetType>>` | GET `/api/widgetTypes` | `WidgetTypeControllerApi.getBundleWidgetTypes(widgetsBundleId:)` → `Response<BuiltList<WidgetType>>` (`/api/widgetsBundle/{id}/widgetTypes`) |
| `WidgetService.getBundleWidgetTypesDetails(String widgetsBundleId)` → `Future<List<WidgetTypeDetails>>` | GET `/api/widgetTypesDetails` | `WidgetTypeControllerApi.getBundleWidgetTypesDetails(widgetsBundleId:)` → `Response<BuiltList<WidgetTypeDetails>>` |
| `WidgetService.getBundleWidgetTypeFqns(String widgetsBundleId)` → `Future<List<String>>` | GET `/api/widgetTypeFqns` | `WidgetTypeControllerApi.getBundleWidgetTypeFqns(widgetsBundleId:)` → `Response<BuiltList<String>>` |
| `WidgetService.getBundleWidgetTypesInfos(String widgetsBundleId)` → `Future<List<WidgetTypeInfo>>` | GET `/api/widgetTypesInfos` | `WidgetTypeControllerApi.getBundleWidgetTypesInfos(widgetsBundleId:, pageSize:, page:)` → `Response<PageDataWidgetTypeInfo>` |
| `WidgetService.getWidgetType(String fullFqn)` → `Future<WidgetType?>` | GET `/api/widgetType` | `WidgetTypeControllerApi.getWidgetType(fqn:)` → `Response<WidgetType>` |
