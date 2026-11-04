# thingsboard_client.api.TelemetryControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDeviceAttributes**](TelemetryControllerApi.md#deletedeviceattributes) | **DELETE** /api/plugins/telemetry/{deviceId}/{scope} | Delete device attributes (deleteDeviceAttributes)
[**deleteEntityAttributes**](TelemetryControllerApi.md#deleteentityattributes) | **DELETE** /api/plugins/telemetry/{entityType}/{entityId}/{scope} | Delete entity attributes (deleteEntityAttributes)
[**deleteEntityTimeseries**](TelemetryControllerApi.md#deleteentitytimeseries) | **DELETE** /api/plugins/telemetry/{entityType}/{entityId}/timeseries/delete | Delete entity time series data (deleteEntityTimeseries)
[**getAttributeKeys**](TelemetryControllerApi.md#getattributekeys) | **GET** /api/plugins/telemetry/{entityType}/{entityId}/keys/attributes | Get all attribute keys (getAttributeKeys)
[**getAttributeKeysByScope**](TelemetryControllerApi.md#getattributekeysbyscope) | **GET** /api/plugins/telemetry/{entityType}/{entityId}/keys/attributes/{scope} | Get all attribute keys by scope (getAttributeKeysByScope)
[**getAttributes**](TelemetryControllerApi.md#getattributes) | **GET** /api/plugins/telemetry/{entityType}/{entityId}/values/attributes | Get attributes (getAttributes)
[**getAttributesByScope**](TelemetryControllerApi.md#getattributesbyscope) | **GET** /api/plugins/telemetry/{entityType}/{entityId}/values/attributes/{scope} | Get attributes by scope (getAttributesByScope)
[**getLatestTimeseries**](TelemetryControllerApi.md#getlatesttimeseries) | **GET** /api/plugins/telemetry/{entityType}/{entityId}/values/timeseries | Get latest time series value (getLatestTimeseries)
[**getTimeseriesByReadTsKvQueries**](TelemetryControllerApi.md#gettimeseriesbyreadtskvqueries) | **POST** /api/plugins/telemetry/{entityType}/{entityId}/values/timeseries | Get time series data by read queries (getTimeseriesByReadTsKvQueries)
[**getTimeseriesHistory**](TelemetryControllerApi.md#gettimeserieshistory) | **GET** /api/plugins/telemetry/{entityType}/{entityId}/values/timeseries/history | Get time series data (getTimeseriesHistory)
[**getTimeseriesKeys**](TelemetryControllerApi.md#gettimeserieskeys) | **GET** /api/plugins/telemetry/{entityType}/{entityId}/keys/timeseries | Get time series keys (getTimeseriesKeys)
[**saveDeviceAttributes**](TelemetryControllerApi.md#savedeviceattributes) | **POST** /api/plugins/telemetry/{deviceId}/{scope} | Save device attributes (saveDeviceAttributes)
[**saveEntityAttributesV1**](TelemetryControllerApi.md#saveentityattributesv1) | **POST** /api/plugins/telemetry/{entityType}/{entityId}/{scope} | Save entity attributes (saveEntityAttributesV1)
[**saveEntityAttributesV2**](TelemetryControllerApi.md#saveentityattributesv2) | **POST** /api/plugins/telemetry/{entityType}/{entityId}/attributes/{scope} | Save entity attributes (saveEntityAttributesV2)
[**saveEntityTelemetry**](TelemetryControllerApi.md#saveentitytelemetry) | **POST** /api/plugins/telemetry/{entityType}/{entityId}/timeseries/{scope} | Save or update time series data (saveEntityTelemetry)
[**saveEntityTelemetryWithTTL**](TelemetryControllerApi.md#saveentitytelemetrywithttl) | **POST** /api/plugins/telemetry/{entityType}/{entityId}/timeseries/{scope}/{ttl} | Save or update time series data with TTL (saveEntityTelemetryWithTTL)


# **deleteDeviceAttributes**
> String deleteDeviceAttributes(deviceId, scope, keys, key)

Delete device attributes (deleteDeviceAttributes)

Delete device attributes using provided Device Id, scope and a list of keys. Referencing a non-existing Device Id will cause an error  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String scope = scope_example; // String | A string value representing the attributes scope. For example, 'SERVER_SCOPE'.
final String keys = keys_example; // String | A string value representing the comma-separated list of attributes keys. For example, 'active,inactivityAlarmTime'. If attribute keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key
final BuiltList<String> key = ; // BuiltList<String> | Repeatable key query parameter (alternative to comma-separated 'keys')

try {
    final response = api.deleteDeviceAttributes(deviceId, scope, keys, key);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->deleteDeviceAttributes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**| A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **scope** | **String**| A string value representing the attributes scope. For example, 'SERVER_SCOPE'. | 
 **keys** | **String**| A string value representing the comma-separated list of attributes keys. For example, 'active,inactivityAlarmTime'. If attribute keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key | [optional] 
 **key** | [**BuiltList&lt;String&gt;**](String.md)| Repeatable key query parameter (alternative to comma-separated 'keys') | [optional] 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEntityAttributes**
> String deleteEntityAttributes(entityType, entityId, scope, keys, key)

Delete entity attributes (deleteEntityAttributes)

Delete entity attributes using provided Entity Id, scope and a list of keys. This operation is idempotent: keys that do not exist are silently ignored and the response is still 200 OK. Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String scope = scope_example; // String | A string value representing the attributes scope. For example, 'SERVER_SCOPE'.
final String keys = keys_example; // String | A string value representing the comma-separated list of attributes keys. For example, 'active,inactivityAlarmTime'. If attribute keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key
final BuiltList<String> key = ; // BuiltList<String> | Repeatable key query parameter (alternative to comma-separated 'keys')

try {
    final response = api.deleteEntityAttributes(entityType, entityId, scope, keys, key);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->deleteEntityAttributes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **scope** | **String**| A string value representing the attributes scope. For example, 'SERVER_SCOPE'. | 
 **keys** | **String**| A string value representing the comma-separated list of attributes keys. For example, 'active,inactivityAlarmTime'. If attribute keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key | [optional] 
 **key** | [**BuiltList&lt;String&gt;**](String.md)| Repeatable key query parameter (alternative to comma-separated 'keys') | [optional] 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEntityTimeseries**
> String deleteEntityTimeseries(entityType, entityId, keys, deleteAllDataForKeys, startTs, endTs, deleteLatest, rewriteLatestIfDeleted, key)

Delete entity time series data (deleteEntityTimeseries)

Delete time series for selected entity based on entity id, entity type and keys. Use 'deleteAllDataForKeys' to delete all time series data. Use 'startTs' and 'endTs' to specify time-range instead.  Use 'deleteLatest' to delete latest value (stored in separate table for performance) if the value's timestamp matches the time-range.  Use 'rewriteLatestIfDeleted' to rewrite latest value (stored in separate table for performance) if the value's timestamp matches the time-range and 'deleteLatest' param is true. The replacement value will be fetched from the 'time series' table, and its timestamp will be the most recent one before the defined time-range.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String keys = keys_example; // String | A string value representing the comma-separated list of telemetry keys. If keys are not selected, the result will return all latest time series. For example, 'temperature,humidity'. If telemetry keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key
final bool deleteAllDataForKeys = true; // bool | A boolean value to specify if should be deleted all data for selected keys or only data that are in the selected time range.
final int startTs = 789; // int | A long value representing the start timestamp of removal time range in milliseconds.
final int endTs = 789; // int | A long value representing the end timestamp of removal time range in milliseconds.
final bool deleteLatest = true; // bool | If the parameter is set to true, the latest telemetry can be removed, otherwise, in case that parameter is set to false the latest value will not removed.
final bool rewriteLatestIfDeleted = true; // bool | If the parameter is set to true, the latest telemetry will be rewritten in case that current latest value was removed, otherwise, in case that parameter is set to false the new latest value will not set.
final BuiltList<String> key = ; // BuiltList<String> | Repeatable key query parameter (alternative to comma-separated 'keys')

try {
    final response = api.deleteEntityTimeseries(entityType, entityId, keys, deleteAllDataForKeys, startTs, endTs, deleteLatest, rewriteLatestIfDeleted, key);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->deleteEntityTimeseries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **keys** | **String**| A string value representing the comma-separated list of telemetry keys. If keys are not selected, the result will return all latest time series. For example, 'temperature,humidity'. If telemetry keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key | [optional] 
 **deleteAllDataForKeys** | **bool**| A boolean value to specify if should be deleted all data for selected keys or only data that are in the selected time range. | [optional] [default to false]
 **startTs** | **int**| A long value representing the start timestamp of removal time range in milliseconds. | [optional] 
 **endTs** | **int**| A long value representing the end timestamp of removal time range in milliseconds. | [optional] 
 **deleteLatest** | **bool**| If the parameter is set to true, the latest telemetry can be removed, otherwise, in case that parameter is set to false the latest value will not removed. | [optional] [default to true]
 **rewriteLatestIfDeleted** | **bool**| If the parameter is set to true, the latest telemetry will be rewritten in case that current latest value was removed, otherwise, in case that parameter is set to false the new latest value will not set. | [optional] [default to false]
 **key** | [**BuiltList&lt;String&gt;**](String.md)| Repeatable key query parameter (alternative to comma-separated 'keys') | [optional] 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttributeKeys**
> BuiltList<String> getAttributeKeys(entityType, entityId)

Get all attribute keys (getAttributeKeys)

Returns a set of unique attribute key names for the selected entity. The response will include merged key names set for all attribute scopes:   * SERVER_SCOPE - supported for all entity types;  * CLIENT_SCOPE - supported for devices;  * SHARED_SCOPE - supported for devices.   Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getAttributeKeys(entityType, entityId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->getAttributeKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

**BuiltList&lt;String&gt;**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttributeKeysByScope**
> BuiltList<String> getAttributeKeysByScope(entityType, entityId, scope)

Get all attribute keys by scope (getAttributeKeysByScope)

Returns a set of unique attribute key names for the selected entity and attributes scope:    * SERVER_SCOPE - supported for all entity types;  * CLIENT_SCOPE - supported for devices;  * SHARED_SCOPE - supported for devices.   Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String scope = scope_example; // String | A string value representing the attributes scope. For example, 'SERVER_SCOPE'.

try {
    final response = api.getAttributeKeysByScope(entityType, entityId, scope);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->getAttributeKeysByScope: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **scope** | **String**| A string value representing the attributes scope. For example, 'SERVER_SCOPE'. | 

### Return type

**BuiltList&lt;String&gt;**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttributes**
> BuiltList<AttributeData> getAttributes(entityType, entityId, keys, key)

Get attributes (getAttributes)

Returns all attributes that belong to specified entity. Use optional 'keys' parameter to return specific attributes.  Example of the result:   ```json [   {\"key\": \"stringAttributeKey\", \"value\": \"value\", \"lastUpdateTs\": 1609459200000},   {\"key\": \"booleanAttributeKey\", \"value\": false, \"lastUpdateTs\": 1609459200001},   {\"key\": \"doubleAttributeKey\", \"value\": 42.2, \"lastUpdateTs\": 1609459200002},   {\"key\": \"longKeyExample\", \"value\": 73, \"lastUpdateTs\": 1609459200003},   {\"key\": \"jsonKeyExample\",     \"value\": {       \"someNumber\": 42,       \"someArray\": [1,2,3],       \"someNestedObject\": {\"key\": \"value\"}     },     \"lastUpdateTs\": 1609459200004   } ] ```   Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String keys = keys_example; // String | A string value representing the comma-separated list of attributes keys. For example, 'active,inactivityAlarmTime'. If attribute keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key
final BuiltList<String> key = ; // BuiltList<String> | Repeatable key query parameter (alternative to comma-separated 'keys')

try {
    final response = api.getAttributes(entityType, entityId, keys, key);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->getAttributes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **keys** | **String**| A string value representing the comma-separated list of attributes keys. For example, 'active,inactivityAlarmTime'. If attribute keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key | [optional] 
 **key** | [**BuiltList&lt;String&gt;**](String.md)| Repeatable key query parameter (alternative to comma-separated 'keys') | [optional] 

### Return type

[**BuiltList&lt;AttributeData&gt;**](AttributeData.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttributesByScope**
> BuiltList<AttributeData> getAttributesByScope(entityType, entityId, scope, keys, key)

Get attributes by scope (getAttributesByScope)

Returns all attributes of a specified scope that belong to specified entity. List of possible attribute scopes depends on the entity type:    * SERVER_SCOPE - supported for all entity types;  * SHARED_SCOPE - supported for devices;  * CLIENT_SCOPE - supported for devices.   Use optional 'keys' parameter to return specific attributes.  Example of the result:   ```json [   {\"key\": \"stringAttributeKey\", \"value\": \"value\", \"lastUpdateTs\": 1609459200000},   {\"key\": \"booleanAttributeKey\", \"value\": false, \"lastUpdateTs\": 1609459200001},   {\"key\": \"doubleAttributeKey\", \"value\": 42.2, \"lastUpdateTs\": 1609459200002},   {\"key\": \"longKeyExample\", \"value\": 73, \"lastUpdateTs\": 1609459200003},   {\"key\": \"jsonKeyExample\",     \"value\": {       \"someNumber\": 42,       \"someArray\": [1,2,3],       \"someNestedObject\": {\"key\": \"value\"}     },     \"lastUpdateTs\": 1609459200004   } ] ```   Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String scope = scope_example; // String | A string value representing the attributes scope. For example, 'SERVER_SCOPE'.
final String keys = keys_example; // String | A string value representing the comma-separated list of attributes keys. For example, 'active,inactivityAlarmTime'. If attribute keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key
final BuiltList<String> key = ; // BuiltList<String> | Repeatable key query parameter (alternative to comma-separated 'keys')

try {
    final response = api.getAttributesByScope(entityType, entityId, scope, keys, key);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->getAttributesByScope: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **scope** | **String**| A string value representing the attributes scope. For example, 'SERVER_SCOPE'. | 
 **keys** | **String**| A string value representing the comma-separated list of attributes keys. For example, 'active,inactivityAlarmTime'. If attribute keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key | [optional] 
 **key** | [**BuiltList&lt;String&gt;**](String.md)| Repeatable key query parameter (alternative to comma-separated 'keys') | [optional] 

### Return type

[**BuiltList&lt;AttributeData&gt;**](AttributeData.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLatestTimeseries**
> BuiltMap<String, BuiltList<TsData>> getLatestTimeseries(entityType, entityId, keys, useStrictDataTypes, key)

Get latest time series value (getLatestTimeseries)

Returns all time series that belong to specified entity. Use optional 'keys' parameter to return specific time series. The result is a JSON object. The format of the values depends on the 'useStrictDataTypes' parameter. By default, all time series values are converted to strings:   ```json {   \"stringTsKey\": [{ \"value\": \"value\", \"ts\": 1609459200000}],   \"booleanTsKey\": [{ \"value\": \"false\", \"ts\": 1609459200000}],   \"doubleTsKey\": [{ \"value\": \"42.2\", \"ts\": 1609459200000}],   \"longTsKey\": [{ \"value\": \"73\", \"ts\": 1609459200000}],   \"jsonTsKey\": [{ \"value\": \"{\\\"someNumber\\\": 42,\\\"someArray\\\": [1,2,3],\\\"someNestedObject\\\": {\\\"key\\\": \\\"value\\\"}}\", \"ts\": 1609459200000}] }  ```   However, it is possible to request the values without conversion ('useStrictDataTypes'=true):   ```json {   \"stringTsKey\": [{ \"value\": \"value\", \"ts\": 1609459200000}],   \"booleanTsKey\": [{ \"value\": false, \"ts\": 1609459200000}],   \"doubleTsKey\": [{ \"value\": 42.2, \"ts\": 1609459200000}],   \"longTsKey\": [{ \"value\": 73, \"ts\": 1609459200000}],   \"jsonTsKey\": [{      \"value\": {       \"someNumber\": 42,       \"someArray\": [1,2,3],       \"someNestedObject\": {\"key\": \"value\"}     },      \"ts\": 1609459200000}] }  ```   Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String keys = keys_example; // String | A string value representing the comma-separated list of telemetry keys. If keys are not selected, the result will return all latest time series. For example, 'temperature,humidity'. If telemetry keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key
final bool useStrictDataTypes = true; // bool | Enables/disables conversion of telemetry values to strings. Conversion is enabled by default. Set parameter to 'true' in order to disable the conversion.
final BuiltList<String> key = ; // BuiltList<String> | Repeatable key query parameter (alternative to comma-separated 'keys')

try {
    final response = api.getLatestTimeseries(entityType, entityId, keys, useStrictDataTypes, key);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->getLatestTimeseries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **keys** | **String**| A string value representing the comma-separated list of telemetry keys. If keys are not selected, the result will return all latest time series. For example, 'temperature,humidity'. If telemetry keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key | [optional] 
 **useStrictDataTypes** | **bool**| Enables/disables conversion of telemetry values to strings. Conversion is enabled by default. Set parameter to 'true' in order to disable the conversion. | [optional] [default to false]
 **key** | [**BuiltList&lt;String&gt;**](String.md)| Repeatable key query parameter (alternative to comma-separated 'keys') | [optional] 

### Return type

[**BuiltMap&lt;String, BuiltList&lt;TsData&gt;&gt;**](BuiltList.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimeseriesByReadTsKvQueries**
> BuiltList<ReadTsKvQueryResult> getTimeseriesByReadTsKvQueries(entityType, entityId, baseReadTsKvQuery)

Get time series data by read queries (getTimeseriesByReadTsKvQueries)

Returns aggregated time series values according to queries for specified entity. ```json [   {     \"queryId\": 49,     \"data\": [       {         \"ts\": 1751450399999,         \"kv\": {           \"key\": \"temperature\",           \"value\": 26,           \"doubleValue\": 26,           \"valueAsString\": \"26.0\",           \"dataType\": \"DOUBLE\",           \"longValue\": null,           \"booleanValue\": null,           \"jsonValue\": null,           \"strValue\": null         },         \"version\": null       }     ],     \"lastEntryTs\": 1750264592675   },   {     \"queryId\": 50,     \"data\": [],     \"lastEntryTs\": 1751317200000   } ] ```  Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final BuiltList<BaseReadTsKvQuery> baseReadTsKvQuery = ; // BuiltList<BaseReadTsKvQuery> | A JSON array of time series read queries.

try {
    final response = api.getTimeseriesByReadTsKvQueries(entityType, entityId, baseReadTsKvQuery);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->getTimeseriesByReadTsKvQueries: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **baseReadTsKvQuery** | [**BuiltList&lt;BaseReadTsKvQuery&gt;**](BaseReadTsKvQuery.md)| A JSON array of time series read queries. | 

### Return type

[**BuiltList&lt;ReadTsKvQueryResult&gt;**](ReadTsKvQueryResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimeseriesHistory**
> BuiltMap<String, BuiltList<TsData>> getTimeseriesHistory(entityType, entityId, startTs, endTs, keys, intervalType, interval, timeZone, limit, agg, orderBy, useStrictDataTypes, key)

Get time series data (getTimeseriesHistory)

Returns a range of time series values for specified entity. Returns not aggregated data by default. Use aggregation function ('agg') and aggregation interval ('interval') to enable aggregation of the results on the database / server side. The aggregation is generally more efficient then fetching all records.   ```json {   \"temperature\": [     {       \"value\": 36.7,       \"ts\": 1609459200000     },     {       \"value\": 36.6,       \"ts\": 1609459201000     }   ] } ```  Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int startTs = 789; // int | A long value representing the start timestamp of the time range in milliseconds, UTC.
final int endTs = 789; // int | A long value representing the end timestamp of the time range in milliseconds, UTC.
final String keys = keys_example; // String | A string value representing the comma-separated list of telemetry keys.
final String intervalType = intervalType_example; // String | A string value representing the type fo the interval.
final int interval = 789; // int | A long value representing the aggregation interval range in milliseconds.
final String timeZone = timeZone_example; // String | A string value representing the timezone that will be used to calculate exact timestamps for 'WEEK', 'WEEK_ISO', 'MONTH' and 'QUARTER' interval types.
final String limit = limit_example; // String | An integer value that represents a max number of time series data points to fetch. This parameter is used only in the case if 'agg' parameter is set to 'NONE'.
final String agg = agg_example; // String | A string value representing the aggregation function. If the interval is not specified, 'agg' parameter will use 'NONE' value.
final String orderBy = orderBy_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final bool useStrictDataTypes = true; // bool | Enables/disables conversion of telemetry values to strings. Conversion is enabled by default. Set parameter to 'true' in order to disable the conversion.
final BuiltList<String> key = ; // BuiltList<String> | Repeatable key query parameter (alternative to comma-separated 'keys')

try {
    final response = api.getTimeseriesHistory(entityType, entityId, startTs, endTs, keys, intervalType, interval, timeZone, limit, agg, orderBy, useStrictDataTypes, key);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->getTimeseriesHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **startTs** | **int**| A long value representing the start timestamp of the time range in milliseconds, UTC. | 
 **endTs** | **int**| A long value representing the end timestamp of the time range in milliseconds, UTC. | 
 **keys** | **String**| A string value representing the comma-separated list of telemetry keys. | [optional] 
 **intervalType** | **String**| A string value representing the type fo the interval. | [optional] 
 **interval** | **int**| A long value representing the aggregation interval range in milliseconds. | [optional] [default to 0]
 **timeZone** | **String**| A string value representing the timezone that will be used to calculate exact timestamps for 'WEEK', 'WEEK_ISO', 'MONTH' and 'QUARTER' interval types. | [optional] 
 **limit** | **String**| An integer value that represents a max number of time series data points to fetch. This parameter is used only in the case if 'agg' parameter is set to 'NONE'. | [optional] 
 **agg** | **String**| A string value representing the aggregation function. If the interval is not specified, 'agg' parameter will use 'NONE' value. | [optional] 
 **orderBy** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **useStrictDataTypes** | **bool**| Enables/disables conversion of telemetry values to strings. Conversion is enabled by default. Set parameter to 'true' in order to disable the conversion. | [optional] [default to false]
 **key** | [**BuiltList&lt;String&gt;**](String.md)| Repeatable key query parameter (alternative to comma-separated 'keys') | [optional] 

### Return type

[**BuiltMap&lt;String, BuiltList&lt;TsData&gt;&gt;**](BuiltList.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimeseriesKeys**
> BuiltList<String> getTimeseriesKeys(entityType, entityId)

Get time series keys (getTimeseriesKeys)

Returns a set of unique time series key names for the selected entity.   Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getTimeseriesKeys(entityType, entityId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->getTimeseriesKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

**BuiltList&lt;String&gt;**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveDeviceAttributes**
> String saveDeviceAttributes(deviceId, scope, body)

Save device attributes (saveDeviceAttributes)

Creates or updates the device attributes based on device id and specified attribute scope. The request payload is a JSON object with key-value format of attributes to create or update. For example:  ```json {  \"stringKey\":\"value1\",   \"booleanKey\":true,   \"doubleKey\":42.0,   \"longKey\":73,   \"jsonKey\": {     \"someNumber\": 42,     \"someArray\": [1,2,3],     \"someNestedObject\": {\"key\": \"value\"}  } } ```   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String scope = scope_example; // String | A string value representing the attributes scope. For example, 'SERVER_SCOPE'.
final String body = body_example; // String | A string value representing the json object. For example, '{\"key\":\"value\"}'. See API call description for more details.

try {
    final response = api.saveDeviceAttributes(deviceId, scope, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->saveDeviceAttributes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**| A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **scope** | **String**| A string value representing the attributes scope. For example, 'SERVER_SCOPE'. | 
 **body** | **String**| A string value representing the json object. For example, '{\"key\":\"value\"}'. See API call description for more details. | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveEntityAttributesV1**
> String saveEntityAttributesV1(entityType, entityId, scope, body)

Save entity attributes (saveEntityAttributesV1)

Creates or updates the entity attributes based on Entity Id and the specified attribute scope.  List of possible attribute scopes depends on the entity type:    * SERVER_SCOPE - supported for all entity types;  * SHARED_SCOPE - supported for devices.  The request payload is a JSON object with key-value format of attributes to create or update. For example:  ```json {  \"stringKey\":\"value1\",   \"booleanKey\":true,   \"doubleKey\":42.0,   \"longKey\":73,   \"jsonKey\": {     \"someNumber\": 42,     \"someArray\": [1,2,3],     \"someNestedObject\": {\"key\": \"value\"}  } } ``` Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String scope = scope_example; // String | A string value representing the attributes scope. For example, 'SERVER_SCOPE'.
final String body = body_example; // String | A string value representing the json object. For example, '{\"key\":\"value\"}'. See API call description for more details.

try {
    final response = api.saveEntityAttributesV1(entityType, entityId, scope, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->saveEntityAttributesV1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **scope** | **String**| A string value representing the attributes scope. For example, 'SERVER_SCOPE'. | 
 **body** | **String**| A string value representing the json object. For example, '{\"key\":\"value\"}'. See API call description for more details. | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveEntityAttributesV2**
> String saveEntityAttributesV2(entityType, entityId, scope, body)

Save entity attributes (saveEntityAttributesV2)

Creates or updates the entity attributes based on Entity Id and the specified attribute scope.  List of possible attribute scopes depends on the entity type:    * SERVER_SCOPE - supported for all entity types;  * SHARED_SCOPE - supported for devices.  The request payload is a JSON object with key-value format of attributes to create or update. For example:  ```json {  \"stringKey\":\"value1\",   \"booleanKey\":true,   \"doubleKey\":42.0,   \"longKey\":73,   \"jsonKey\": {     \"someNumber\": 42,     \"someArray\": [1,2,3],     \"someNestedObject\": {\"key\": \"value\"}  } } ``` Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String scope = scope_example; // String | A string value representing the attributes scope. For example, 'SERVER_SCOPE'.
final String body = body_example; // String | A string value representing the json object. For example, '{\"key\":\"value\"}'. See API call description for more details.

try {
    final response = api.saveEntityAttributesV2(entityType, entityId, scope, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->saveEntityAttributesV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **scope** | **String**| A string value representing the attributes scope. For example, 'SERVER_SCOPE'. | 
 **body** | **String**| A string value representing the json object. For example, '{\"key\":\"value\"}'. See API call description for more details. | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveEntityTelemetry**
> String saveEntityTelemetry(entityType, entityId, scope, body)

Save or update time series data (saveEntityTelemetry)

Creates or updates the entity time series data based on the Entity Id and request payload.The request payload is a JSON document with three possible formats:  Simple format without timestamp. In such a case, current server time will be used:   ```json {\"temperature\": 26} ```   Single JSON object with timestamp:   ```json {\"ts\":1634712287000,\"values\":{\"temperature\":26, \"humidity\":87}} ```   JSON array with timestamps:   ```json [{\"ts\":1634712287000,\"values\":{\"temperature\":26, \"humidity\":87}}, {\"ts\":1634712588000,\"values\":{\"temperature\":25, \"humidity\":88}}] ```   The scope parameter is not used in the API call implementation but should be specified whatever value because it is used as a path variable. Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String scope = scope_example; // String | Value is deprecated, reserved for backward compatibility and not used in the API call implementation. Specify any scope for compatibility
final String body = body_example; // String | A JSON with the telemetry values. See API call description for more details.

try {
    final response = api.saveEntityTelemetry(entityType, entityId, scope, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->saveEntityTelemetry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **scope** | **String**| Value is deprecated, reserved for backward compatibility and not used in the API call implementation. Specify any scope for compatibility | 
 **body** | **String**| A JSON with the telemetry values. See API call description for more details. | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveEntityTelemetryWithTTL**
> String saveEntityTelemetryWithTTL(entityType, entityId, scope, ttl, body)

Save or update time series data with TTL (saveEntityTelemetryWithTTL)

Creates or updates the entity time series data based on the Entity Id and request payload.The request payload is a JSON document with three possible formats:  Simple format without timestamp. In such a case, current server time will be used:   ```json {\"temperature\": 26} ```   Single JSON object with timestamp:   ```json {\"ts\":1634712287000,\"values\":{\"temperature\":26, \"humidity\":87}} ```   JSON array with timestamps:   ```json [{\"ts\":1634712287000,\"values\":{\"temperature\":26, \"humidity\":87}}, {\"ts\":1634712588000,\"values\":{\"temperature\":25, \"humidity\":88}}] ```   The scope parameter is not used in the API call implementation but should be specified whatever value because it is used as a path variable.   The ttl parameter takes affect only in case of Cassandra DB.Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTelemetryControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String scope = scope_example; // String | Value is deprecated, reserved for backward compatibility and not used in the API call implementation. Specify any scope for compatibility
final int ttl = 789; // int | A long value representing TTL (Time to Live) parameter.
final String body = body_example; // String | A JSON with the telemetry values. See API call description for more details.

try {
    final response = api.saveEntityTelemetryWithTTL(entityType, entityId, scope, ttl, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TelemetryControllerApi->saveEntityTelemetryWithTTL: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **scope** | **String**| Value is deprecated, reserved for backward compatibility and not used in the API call implementation. Specify any scope for compatibility | 
 **ttl** | **int**| A long value representing TTL (Time to Live) parameter. | 
 **body** | **String**| A JSON with the telemetry values. See API call description for more details. | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

