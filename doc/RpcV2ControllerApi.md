# thingsboard_client.api.RpcV2ControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteRpc**](RpcV2ControllerApi.md#deleterpc) | **DELETE** /api/rpc/persistent/{rpcId} | Delete persistent RPC
[**getPersistedRpc**](RpcV2ControllerApi.md#getpersistedrpc) | **GET** /api/rpc/persistent/{rpcId} | Get persistent RPC request
[**getPersistedRpcByDevice**](RpcV2ControllerApi.md#getpersistedrpcbydevice) | **GET** /api/rpc/persistent/device/{deviceId} | Get persistent RPC requests
[**handleOneWayDeviceRPCRequestV2**](RpcV2ControllerApi.md#handleonewaydevicerpcrequestv2) | **POST** /api/rpc/oneway/{deviceId} | Send one-way RPC request (handleOneWayDeviceRPCRequestV2)
[**handleTwoWayDeviceRPCRequestV2**](RpcV2ControllerApi.md#handletwowaydevicerpcrequestv2) | **POST** /api/rpc/twoway/{deviceId} | Send two-way RPC request (handleTwoWayDeviceRPCRequestV2)


# **deleteRpc**
> deleteRpc(rpcId)

Delete persistent RPC

Deletes the persistent RPC request.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRpcV2ControllerApi();
final String rpcId = rpcId_example; // String | A string value representing the rpc id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteRpc(rpcId);
} on DioException catch (e) {
    print('Exception when calling RpcV2ControllerApi->deleteRpc: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpcId** | **String**| A string value representing the rpc id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPersistedRpc**
> Rpc getPersistedRpc(rpcId)

Get persistent RPC request

Get information about the status of the RPC call.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRpcV2ControllerApi();
final String rpcId = rpcId_example; // String | A string value representing the rpc id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getPersistedRpc(rpcId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RpcV2ControllerApi->getPersistedRpc: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rpcId** | **String**| A string value representing the rpc id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Rpc**](Rpc.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPersistedRpcByDevice**
> String getPersistedRpcByDevice(deviceId, pageSize, page, rpcStatus, textSearch, sortProperty, sortOrder)

Get persistent RPC requests

Allows to query RPC calls for specific device using pagination.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRpcV2ControllerApi();
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String rpcStatus = rpcStatus_example; // String | Status of the RPC
final String textSearch = textSearch_example; // String | Not implemented. Leave empty.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getPersistedRpcByDevice(deviceId, pageSize, page, rpcStatus, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RpcV2ControllerApi->getPersistedRpcByDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**| A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **rpcStatus** | **String**| Status of the RPC | [optional] 
 **textSearch** | **String**| Not implemented. Leave empty. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handleOneWayDeviceRPCRequestV2**
> String handleOneWayDeviceRPCRequestV2(deviceId, body)

Send one-way RPC request (handleOneWayDeviceRPCRequestV2)

Sends the one-way remote-procedure call (RPC) request to device. Sends the one-way remote-procedure call (RPC) request to device. The RPC call is A JSON that contains the method name ('method'), parameters ('params') and multiple optional fields. See example below. We will review the properties of the RPC call one-by-one below.   ```json {   \"method\": \"setGpio\",   \"params\": {     \"pin\": 7,     \"value\": 1   },   \"persistent\": false,   \"timeout\": 5000 } ```  ### Server-side RPC structure  The body of server-side RPC request consists of multiple fields:  * **method** - mandatory, name of the method to distinct the RPC calls.   For example, \"getCurrentTime\" or \"getWeatherForecast\". The value of the parameter is a string. * **params** - mandatory, parameters used for processing of the request. The value is a JSON. Leave empty JSON \"{}\" if no parameters needed. * **timeout** - optional, value of the processing timeout in milliseconds. The default value is 10000 (10 seconds). The minimum value is 5000 (5 seconds). * **expirationTime** - optional, value of the epoch time (in milliseconds, UTC timezone). Overrides **timeout** if present. * **persistent** - optional, indicates persistent RPC. The default value is \"false\". * **retries** - optional, defines how many times persistent RPC will be re-sent in case of failures on the network and/or device side. * **additionalInfo** - optional, defines metadata for the persistent RPC that will be added to the persistent RPC events.  ### RPC Result In case of persistent RPC, the result of this call is 'rpcId' UUID. In case of lightweight RPC, the result of this call is either 200 OK if the message was sent to device, or 504 Gateway Timeout if device is offline.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRpcV2ControllerApi();
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String body = body_example; // String | A JSON object representing the RPC request.

try {
    final response = api.handleOneWayDeviceRPCRequestV2(deviceId, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RpcV2ControllerApi->handleOneWayDeviceRPCRequestV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**| A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **body** | **String**| A JSON object representing the RPC request. | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handleTwoWayDeviceRPCRequestV2**
> String handleTwoWayDeviceRPCRequestV2(deviceId, body)

Send two-way RPC request (handleTwoWayDeviceRPCRequestV2)

Sends the two-way remote-procedure call (RPC) request to device. Sends the one-way remote-procedure call (RPC) request to device. The RPC call is A JSON that contains the method name ('method'), parameters ('params') and multiple optional fields. See example below. We will review the properties of the RPC call one-by-one below.   ```json {   \"method\": \"setGpio\",   \"params\": {     \"pin\": 7,     \"value\": 1   },   \"persistent\": false,   \"timeout\": 5000 } ```  ### Server-side RPC structure  The body of server-side RPC request consists of multiple fields:  * **method** - mandatory, name of the method to distinct the RPC calls.   For example, \"getCurrentTime\" or \"getWeatherForecast\". The value of the parameter is a string. * **params** - mandatory, parameters used for processing of the request. The value is a JSON. Leave empty JSON \"{}\" if no parameters needed. * **timeout** - optional, value of the processing timeout in milliseconds. The default value is 10000 (10 seconds). The minimum value is 5000 (5 seconds). * **expirationTime** - optional, value of the epoch time (in milliseconds, UTC timezone). Overrides **timeout** if present. * **persistent** - optional, indicates persistent RPC. The default value is \"false\". * **retries** - optional, defines how many times persistent RPC will be re-sent in case of failures on the network and/or device side. * **additionalInfo** - optional, defines metadata for the persistent RPC that will be added to the persistent RPC events.  ### RPC Result In case of persistent RPC, the result of this call is 'rpcId' UUID. In case of lightweight RPC, the result of this call is the response from device, or 504 Gateway Timeout if device is offline.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRpcV2ControllerApi();
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String body = body_example; // String | A JSON object representing the RPC request.

try {
    final response = api.handleTwoWayDeviceRPCRequestV2(deviceId, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RpcV2ControllerApi->handleTwoWayDeviceRPCRequestV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**| A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **body** | **String**| A JSON object representing the RPC request. | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

