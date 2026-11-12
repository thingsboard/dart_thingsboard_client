# thingsboard_client.api.DeviceProfileControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDeviceProfile**](DeviceProfileControllerApi.md#deletedeviceprofile) | **DELETE** /api/deviceProfile/{deviceProfileId} | Delete device profile (deleteDeviceProfile)
[**getAttributesKeys**](DeviceProfileControllerApi.md#getattributeskeys) | **GET** /api/deviceProfile/devices/keys/attributes | Get attribute keys (getAttributesKeys)
[**getDefaultDeviceProfileInfo**](DeviceProfileControllerApi.md#getdefaultdeviceprofileinfo) | **GET** /api/deviceProfileInfo/default | Get Default Device Profile (getDefaultDeviceProfileInfo)
[**getDeviceProfileById**](DeviceProfileControllerApi.md#getdeviceprofilebyid) | **GET** /api/deviceProfile/{deviceProfileId} | Get Device Profile (getDeviceProfileById)
[**getDeviceProfileInfoById**](DeviceProfileControllerApi.md#getdeviceprofileinfobyid) | **GET** /api/deviceProfileInfo/{deviceProfileId} | Get Device Profile Info (getDeviceProfileInfoById)
[**getDeviceProfileInfos**](DeviceProfileControllerApi.md#getdeviceprofileinfos) | **GET** /api/deviceProfileInfos | Get Device Profiles for transport type (getDeviceProfileInfos)
[**getDeviceProfileInfosByIds**](DeviceProfileControllerApi.md#getdeviceprofileinfosbyids) | **GET** /api/deviceProfileInfos/list | Get Device Profile Infos By Ids (getDeviceProfileInfosByIds)
[**getDeviceProfileNames**](DeviceProfileControllerApi.md#getdeviceprofilenames) | **GET** /api/deviceProfile/names | Get Device Profile names (getDeviceProfileNames)
[**getDeviceProfileTimeseriesKeys**](DeviceProfileControllerApi.md#getdeviceprofiletimeserieskeys) | **GET** /api/deviceProfile/devices/keys/timeseries | Get time series keys (getDeviceProfileTimeseriesKeys)
[**getDeviceProfiles**](DeviceProfileControllerApi.md#getdeviceprofiles) | **GET** /api/deviceProfiles | Get Device Profiles (getDeviceProfiles)
[**saveDeviceProfile**](DeviceProfileControllerApi.md#savedeviceprofile) | **POST** /api/deviceProfile | Create Or Update Device Profile (saveDeviceProfile)
[**setDefaultDeviceProfile**](DeviceProfileControllerApi.md#setdefaultdeviceprofile) | **POST** /api/deviceProfile/{deviceProfileId}/default | Make Device Profile Default (setDefaultDeviceProfile)


# **deleteDeviceProfile**
> deleteDeviceProfile(deviceProfileId)

Delete device profile (deleteDeviceProfile)

Deletes the device profile. Referencing non-existing device profile Id will cause an error. Can't delete the device profile if it is referenced by existing devices.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceProfileControllerApi();
final String deviceProfileId = deviceProfileId_example; // String | A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteDeviceProfile(deviceProfileId);
} on DioException catch (e) {
    print('Exception when calling DeviceProfileControllerApi->deleteDeviceProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceProfileId** | **String**| A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttributesKeys**
> BuiltList<String> getAttributesKeys(deviceProfileId)

Get attribute keys (getAttributesKeys)

Get a set of unique attribute keys used by devices that belong to specified profile. If profile is not set returns a list of unique keys among all profiles. The call is used for auto-complete in the UI forms. The implementation limits the number of devices that participate in search to 100 as a trade of between accurate results and time-consuming queries.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceProfileControllerApi();
final String deviceProfileId = deviceProfileId_example; // String | A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getAttributesKeys(deviceProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceProfileControllerApi->getAttributesKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceProfileId** | **String**| A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 

### Return type

**BuiltList&lt;String&gt;**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDefaultDeviceProfileInfo**
> DeviceProfileInfo getDefaultDeviceProfileInfo()

Get Default Device Profile (getDefaultDeviceProfileInfo)

Fetch the Default Device Profile Info object. Device Profile Info is a lightweight object that includes main information about Device Profile excluding the heavyweight configuration object.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceProfileControllerApi();

try {
    final response = api.getDefaultDeviceProfileInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceProfileControllerApi->getDefaultDeviceProfileInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeviceProfileInfo**](DeviceProfileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceProfileById**
> DeviceProfile getDeviceProfileById(deviceProfileId, inlineImages)

Get Device Profile (getDeviceProfileById)

Fetch the Device Profile object based on the provided Device Profile Id. The server checks that the device profile is owned by the same tenant.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceProfileControllerApi();
final String deviceProfileId = deviceProfileId_example; // String | A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final bool inlineImages = true; // bool | Inline images as a data URL (Base64)

try {
    final response = api.getDeviceProfileById(deviceProfileId, inlineImages);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceProfileControllerApi->getDeviceProfileById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceProfileId** | **String**| A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **inlineImages** | **bool**| Inline images as a data URL (Base64) | [optional] 

### Return type

[**DeviceProfile**](DeviceProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceProfileInfoById**
> DeviceProfileInfo getDeviceProfileInfoById(deviceProfileId)

Get Device Profile Info (getDeviceProfileInfoById)

Fetch the Device Profile Info object based on the provided Device Profile Id. Device Profile Info is a lightweight object that includes main information about Device Profile excluding the heavyweight configuration object.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceProfileControllerApi();
final String deviceProfileId = deviceProfileId_example; // String | A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getDeviceProfileInfoById(deviceProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceProfileControllerApi->getDeviceProfileInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceProfileId** | **String**| A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**DeviceProfileInfo**](DeviceProfileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceProfileInfos**
> PageDataDeviceProfileInfo getDeviceProfileInfos(pageSize, page, textSearch, sortProperty, sortOrder, transportType)

Get Device Profiles for transport type (getDeviceProfileInfos)

Returns a page of devices profile info objects owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details. Device Profile Info is a lightweight object that includes main information about Device Profile excluding the heavyweight configuration object.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceProfileControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the device profile name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final String transportType = transportType_example; // String | Type of the transport

try {
    final response = api.getDeviceProfileInfos(pageSize, page, textSearch, sortProperty, sortOrder, transportType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceProfileControllerApi->getDeviceProfileInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the device profile name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **transportType** | **String**| Type of the transport | [optional] 

### Return type

[**PageDataDeviceProfileInfo**](PageDataDeviceProfileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceProfileInfosByIds**
> BuiltList<DeviceProfileInfo> getDeviceProfileInfosByIds(deviceProfileIds)

Get Device Profile Infos By Ids (getDeviceProfileInfosByIds)

Requested device profiles must be owned by tenant which is performing the request.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceProfileControllerApi();
final BuiltList<String> deviceProfileIds = ; // BuiltList<String> | A list of device profile ids, separated by comma ','

try {
    final response = api.getDeviceProfileInfosByIds(deviceProfileIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceProfileControllerApi->getDeviceProfileInfosByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceProfileIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of device profile ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;DeviceProfileInfo&gt;**](DeviceProfileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceProfileNames**
> BuiltList<EntityInfo> getDeviceProfileNames(activeOnly)

Get Device Profile names (getDeviceProfileNames)

Returns a set of unique device profile names owned by the tenant.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceProfileControllerApi();
final bool activeOnly = true; // bool | Flag indicating whether to retrieve exclusively the names of device profiles that are referenced by tenant's devices.

try {
    final response = api.getDeviceProfileNames(activeOnly);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceProfileControllerApi->getDeviceProfileNames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activeOnly** | **bool**| Flag indicating whether to retrieve exclusively the names of device profiles that are referenced by tenant's devices. | [optional] [default to false]

### Return type

[**BuiltList&lt;EntityInfo&gt;**](EntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceProfileTimeseriesKeys**
> BuiltList<String> getDeviceProfileTimeseriesKeys(deviceProfileId)

Get time series keys (getDeviceProfileTimeseriesKeys)

Get a set of unique time series keys used by devices that belong to specified profile. If profile is not set returns a list of unique keys among all profiles. The call is used for auto-complete in the UI forms. The implementation limits the number of devices that participate in search to 100 as a trade of between accurate results and time-consuming queries.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceProfileControllerApi();
final String deviceProfileId = deviceProfileId_example; // String | A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getDeviceProfileTimeseriesKeys(deviceProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceProfileControllerApi->getDeviceProfileTimeseriesKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceProfileId** | **String**| A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 

### Return type

**BuiltList&lt;String&gt;**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceProfiles**
> PageDataDeviceProfile getDeviceProfiles(pageSize, page, textSearch, sortProperty, sortOrder)

Get Device Profiles (getDeviceProfiles)

Returns a page of devices profile objects owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceProfileControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the device profile name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getDeviceProfiles(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceProfileControllerApi->getDeviceProfiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the device profile name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataDeviceProfile**](PageDataDeviceProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveDeviceProfile**
> DeviceProfile saveDeviceProfile(deviceProfile)

Create Or Update Device Profile (saveDeviceProfile)

Create or update the Device Profile. When creating device profile, platform generates device profile id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created device profile id will be present in the response. Specify existing device profile id to update the device profile. Referencing non-existing device profile Id will cause 'Not Found' error.   Device profile name is unique in the scope of tenant. Only one 'default' device profile may exist in scope of tenant.  # Device profile data definition  Device profile data object contains device provision strategy and transport type configuration for device connectivity. Let's review some examples. First one is the default device profile data configuration and second one - the custom one.   ```json {    \"configuration\":{       \"type\":\"DEFAULT\"    },    \"provisionConfiguration\":{       \"type\":\"DISABLED\",       \"provisionDeviceSecret\":null    },    \"transportConfiguration\":{       \"type\":\"DEFAULT\"    } } ```  ```json {    \"configuration\":{       \"type\":\"DEFAULT\"    },    \"provisionConfiguration\":{       \"type\":\"ALLOW_CREATE_NEW_DEVICES\",       \"provisionDeviceSecret\":\"vaxb9hzqdbz3oqukvomg\"    },    \"transportConfiguration\":{       \"type\":\"MQTT\",       \"deviceTelemetryTopic\":\"v1/devices/me/telemetry\",       \"deviceAttributesTopic\":\"v1/devices/me/attributes\",       \"transportPayloadTypeConfiguration\":{          \"transportPayloadType\":\"PROTOBUF\",          \"deviceTelemetryProtoSchema\":\"syntax =\\\"proto3\\\";\\npackage telemetry;\\n\\nmessage SensorDataReading {\\n\\n  optional double temperature = 1;\\n  optional double humidity = 2;\\n  InnerObject innerObject = 3;\\n\\n  message InnerObject {\\n    optional string key1 = 1;\\n    optional bool key2 = 2;\\n    optional double key3 = 3;\\n    optional int32 key4 = 4;\\n    optional string key5 = 5;\\n  }\\n}\",          \"deviceAttributesProtoSchema\":\"syntax =\\\"proto3\\\";\\npackage attributes;\\n\\nmessage SensorConfiguration {\\n  optional string firmwareVersion = 1;\\n  optional string serialNumber = 2;\\n}\",          \"deviceRpcRequestProtoSchema\":\"syntax =\\\"proto3\\\";\\npackage rpc;\\n\\nmessage RpcRequestMsg {\\n  optional string method = 1;\\n  optional int32 requestId = 2;\\n  optional string params = 3;\\n}\",          \"deviceRpcResponseProtoSchema\":\"syntax =\\\"proto3\\\";\\npackage rpc;\\n\\nmessage RpcResponseMsg {\\n  optional string payload = 1;\\n}\"       }    } } ```  Let's review some specific objects examples related to the device profile configuration:# Provision Configuration  There are 3 types of device provision configuration for the device profile:   * 'DISABLED';  * 'ALLOW_CREATE_NEW_DEVICES';  * 'CHECK_PRE_PROVISIONED_DEVICES'.  Please refer to the [docs](https://thingsboard.io/docs/user-guide/device-provisioning/) for more details.  # Transport Configuration  5 transport configuration types are available:  * 'DEFAULT';  * 'MQTT';  * 'LWM2M';  * 'COAP';  * 'SNMP'.  Default type supports basic MQTT, HTTP, CoAP and LwM2M transports. Please refer to the [docs](https://thingsboard.io/docs/user-guide/device-profiles/#transport-configuration) for more details about other types.  See another example of COAP transport configuration below:  ```json {    \"type\":\"COAP\",    \"clientSettings\":{       \"edrxCycle\":null,       \"powerMode\":\"DRX\",       \"psmActivityTimer\":null,       \"pagingTransmissionWindow\":null    },    \"coapDeviceTypeConfiguration\":{       \"coapDeviceType\":\"DEFAULT\",       \"transportPayloadTypeConfiguration\":{          \"transportPayloadType\":\"JSON\"       }    } } ```Remove 'id', 'tenantId' from the request body example (below) to create new Device Profile entity.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceProfileControllerApi();
final DeviceProfile deviceProfile = ; // DeviceProfile | 

try {
    final response = api.saveDeviceProfile(deviceProfile);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceProfileControllerApi->saveDeviceProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceProfile** | [**DeviceProfile**](DeviceProfile.md)|  | 

### Return type

[**DeviceProfile**](DeviceProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDefaultDeviceProfile**
> DeviceProfile setDefaultDeviceProfile(deviceProfileId)

Make Device Profile Default (setDefaultDeviceProfile)

Marks device profile as default within a tenant scope.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceProfileControllerApi();
final String deviceProfileId = deviceProfileId_example; // String | A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.setDefaultDeviceProfile(deviceProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceProfileControllerApi->setDefaultDeviceProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceProfileId** | **String**| A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**DeviceProfile**](DeviceProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

