# thingsboard_client.api.UiSettingsControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHelpBaseUrl**](UiSettingsControllerApi.md#gethelpbaseurl) | **GET** /api/uiSettings/helpBaseUrl | Get UI help base url (getHelpBaseUrl)


# **getHelpBaseUrl**
> String getHelpBaseUrl()

Get UI help base url (getHelpBaseUrl)

Get UI help base url used to fetch help assets. The actual value of the base url is configurable in the system configuration file.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getUiSettingsControllerApi();

try {
    final response = api.getHelpBaseUrl();
    print(response);
} on DioException catch (e) {
    print('Exception when calling UiSettingsControllerApi->getHelpBaseUrl: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

