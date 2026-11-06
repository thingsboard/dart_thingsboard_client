# thingsboard_client.api.AiDeviceDashboardControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateDashboard**](AiDeviceDashboardControllerApi.md#generatedashboard) | **POST** /api/ai/devices/{deviceId}/dashboard | generateDashboard


# **generateDashboard**
> JsonObject generateDashboard(deviceId, xAuthorization, body)

generateDashboard

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiDeviceDashboardControllerApi();
final String deviceId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String xAuthorization = xAuthorization_example; // String | 
final JsonObject body = ; // JsonObject | 

try {
    final response = api.generateDashboard(deviceId, xAuthorization, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiDeviceDashboardControllerApi->generateDashboard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**|  | 
 **xAuthorization** | **String**|  | 
 **body** | **JsonObject**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

