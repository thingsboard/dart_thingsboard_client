# thingsboard_client.api.DeviceConnectivityControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadGatewayDockerCompose**](DeviceConnectivityControllerApi.md#downloadgatewaydockercompose) | **GET** /api/device-connectivity/gateway-launch/{deviceId}/docker-compose/download | Download generated docker-compose.yml file for gateway (downloadGatewayDockerCompose)
[**downloadServerCertificate**](DeviceConnectivityControllerApi.md#downloadservercertificate) | **GET** /api/device-connectivity/{protocol}/certificate/download | Download server certificate using file path defined in device.connectivity properties (downloadServerCertificate)
[**getDevicePublishTelemetryCommands**](DeviceConnectivityControllerApi.md#getdevicepublishtelemetrycommands) | **GET** /api/device-connectivity/{deviceId} | Get commands to publish device telemetry (getDevicePublishTelemetryCommands)


# **downloadGatewayDockerCompose**
> Uint8List downloadGatewayDockerCompose(deviceId)

Download generated docker-compose.yml file for gateway (downloadGatewayDockerCompose)

Download generated docker-compose.yml for gateway.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceConnectivityControllerApi();
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.downloadGatewayDockerCompose(deviceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceConnectivityControllerApi->downloadGatewayDockerCompose: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**| A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadServerCertificate**
> Uint8List downloadServerCertificate(protocol)

Download server certificate using file path defined in device.connectivity properties (downloadServerCertificate)

Download server certificate.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceConnectivityControllerApi();
final String protocol = protocol_example; // String | A string value representing the device connectivity protocol. Possible values: 'mqtt', 'mqtts', 'http', 'https', 'coap', 'coaps'

try {
    final response = api.downloadServerCertificate(protocol);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceConnectivityControllerApi->downloadServerCertificate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **protocol** | **String**| A string value representing the device connectivity protocol. Possible values: 'mqtt', 'mqtts', 'http', 'https', 'coap', 'coaps' | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevicePublishTelemetryCommands**
> JsonObject getDevicePublishTelemetryCommands(deviceId)

Get commands to publish device telemetry (getDevicePublishTelemetryCommands)

Fetch the list of commands to publish device telemetry based on device profile If the user has the authority of 'Tenant Administrator', the server checks that the device is owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the device is assigned to the same customer.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceConnectivityControllerApi();
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getDevicePublishTelemetryCommands(deviceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceConnectivityControllerApi->getDevicePublishTelemetryCommands: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**| A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

