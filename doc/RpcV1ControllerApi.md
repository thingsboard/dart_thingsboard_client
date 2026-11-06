# thingsboard_client.api.RpcV1ControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**handleOneWayDeviceRPCRequestV1**](RpcV1ControllerApi.md#handleonewaydevicerpcrequestv1) | **POST** /api/plugins/rpc/oneway/{deviceId} | Send one-way RPC request (handleOneWayDeviceRPCRequestV1)
[**handleTwoWayDeviceRPCRequestV1**](RpcV1ControllerApi.md#handletwowaydevicerpcrequestv1) | **POST** /api/plugins/rpc/twoway/{deviceId} | Send two-way RPC request (handleTwoWayDeviceRPCRequestV1)


# **handleOneWayDeviceRPCRequestV1**
> String handleOneWayDeviceRPCRequestV1(deviceId, body)

Send one-way RPC request (handleOneWayDeviceRPCRequestV1)

Deprecated. See 'Rpc V 2 Controller' instead.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRpcV1ControllerApi();
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String body = body_example; // String | A JSON object representing the RPC request.

try {
    final response = api.handleOneWayDeviceRPCRequestV1(deviceId, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RpcV1ControllerApi->handleOneWayDeviceRPCRequestV1: $e\n');
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

# **handleTwoWayDeviceRPCRequestV1**
> String handleTwoWayDeviceRPCRequestV1(deviceId, body)

Send two-way RPC request (handleTwoWayDeviceRPCRequestV1)

Deprecated. See 'Rpc V 2 Controller' instead.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRpcV1ControllerApi();
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String body = body_example; // String | A JSON object representing the RPC request.

try {
    final response = api.handleTwoWayDeviceRPCRequestV1(deviceId, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RpcV1ControllerApi->handleTwoWayDeviceRPCRequestV1: $e\n');
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

