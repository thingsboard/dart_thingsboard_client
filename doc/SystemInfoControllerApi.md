# thingsboard_client.api.SystemInfoControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSystemVersionInfo**](SystemInfoControllerApi.md#getsystemversioninfo) | **GET** /api/system/info | Get platform version (getSystemVersionInfo)


# **getSystemVersionInfo**
> SystemVersionInfo getSystemVersionInfo()

Get platform version (getSystemVersionInfo)

Returns the version and edition of the platform build.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSystemInfoControllerApi();

try {
    final response = api.getSystemVersionInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling SystemInfoControllerApi->getSystemVersionInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemVersionInfo**](SystemVersionInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

