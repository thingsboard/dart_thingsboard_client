# thingsboard_client.api.CustomTranslationControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteCustomTranslation**](CustomTranslationControllerApi.md#deletecustomtranslation) | **DELETE** /api/translation/custom/{localeCode} | Delete Custom Translation for specified locale (deleteCustomTranslation)
[**deleteCustomTranslationKey**](CustomTranslationControllerApi.md#deletecustomtranslationkey) | **DELETE** /api/translation/custom/{localeCode}/{keyPath} | Delete specified key of Custom Translation (deleteCustomTranslationKey) 
[**getCustomTranslation**](CustomTranslationControllerApi.md#getcustomtranslation) | **GET** /api/translation/custom/{localeCode} | Get Custom Translation configuration (getCustomTranslation)
[**getMergedCustomTranslation**](CustomTranslationControllerApi.md#getmergedcustomtranslation) | **GET** /api/translation/custom/merged/{localeCode} | Get end-user Custom Translation configuration (getMergedCustomTranslation)
[**patchCustomTranslation**](CustomTranslationControllerApi.md#patchcustomtranslation) | **PATCH** /api/translation/custom/{localeCode} | Update Custom Translation for specified translation keys only (patchCustomTranslation)
[**saveCustomTranslation**](CustomTranslationControllerApi.md#savecustomtranslation) | **POST** /api/translation/custom/{localeCode} | Create Or Update Custom Translation (saveCustomTranslation)
[**uploadCustomTranslation**](CustomTranslationControllerApi.md#uploadcustomtranslation) | **POST** /api/translation/custom/{localeCode}/upload | Upload Custom Translation (uploadCustomTranslation)


# **deleteCustomTranslation**
> deleteCustomTranslation(localeCode)

Delete Custom Translation for specified locale (deleteCustomTranslation)

Delete entire custom translation settings for end-user  Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomTranslationControllerApi();
final String localeCode = localeCode_example; // String | Locale code (e.g. 'en_US').

try {
    api.deleteCustomTranslation(localeCode);
} on DioException catch (e) {
    print('Exception when calling CustomTranslationControllerApi->deleteCustomTranslation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **localeCode** | **String**| Locale code (e.g. 'en_US'). | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomTranslationKey**
> deleteCustomTranslationKey(localeCode, keyPath)

Delete specified key of Custom Translation (deleteCustomTranslationKey) 

The API call is designed to delete specified key of the custom translation and return as a result parent translation.(e.g. if tenant translation for key is 'value1' and customer translation is 'value2' then by deletinf key onn customer level you will get 'value1' in response)   Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomTranslationControllerApi();
final String localeCode = localeCode_example; // String | Locale code (e.g. 'en_US').
final String keyPath = keyPath_example; // String | A string value representing key of the custom translation (e.g. 'notification.active').

try {
    api.deleteCustomTranslationKey(localeCode, keyPath);
} on DioException catch (e) {
    print('Exception when calling CustomTranslationControllerApi->deleteCustomTranslationKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **localeCode** | **String**| Locale code (e.g. 'en_US'). | 
 **keyPath** | **String**| A string value representing key of the custom translation (e.g. 'notification.active'). | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomTranslation**
> JsonObject getCustomTranslation(localeCode)

Get Custom Translation configuration (getCustomTranslation)

Fetch the Custom Translation for specified locale that corresponds to the authority of the user. The API call is designed to load the custom translation items for edition. So, the result is NOT merged with the parent level configuration. Let's assume there is a custom translation configured on a system level. And there is no custom translation items configured on a tenant level. In such a case, the API call will return empty object for the tenant administrator.    Response example:   ```json {\"home\":\"MyHome\"} ```  Security check is performed to verify that the user has 'READ' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomTranslationControllerApi();
final String localeCode = localeCode_example; // String | Locale code (e.g. 'en_US').

try {
    final response = api.getCustomTranslation(localeCode);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CustomTranslationControllerApi->getCustomTranslation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **localeCode** | **String**| Locale code (e.g. 'en_US'). | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMergedCustomTranslation**
> JsonObject getMergedCustomTranslation(localeCode)

Get end-user Custom Translation configuration (getMergedCustomTranslation)

Fetch end-user Custom Translation for specified locale. The custom translation is configured in the white labeling parameters. If custom translation translation is defined on the tenant level, it overrides the custom translation of the system level. Similar, if the custom translation is defined on the customer level, it overrides the translation configuration of the tenant level.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomTranslationControllerApi();
final String localeCode = localeCode_example; // String | Locale code (e.g. 'en_US').

try {
    final response = api.getMergedCustomTranslation(localeCode);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CustomTranslationControllerApi->getMergedCustomTranslation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **localeCode** | **String**| Locale code (e.g. 'en_US'). | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchCustomTranslation**
> patchCustomTranslation(localeCode, body)

Update Custom Translation for specified translation keys only (patchCustomTranslation)

The API call is designed to update the custom translation for specified key only.    Request example:   ```json {\"notification.active\":\"active\"} ```  Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomTranslationControllerApi();
final String localeCode = localeCode_example; // String | Locale code (e.g. 'en_US').
final JsonObject body = ; // JsonObject | 

try {
    api.patchCustomTranslation(localeCode, body);
} on DioException catch (e) {
    print('Exception when calling CustomTranslationControllerApi->patchCustomTranslation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **localeCode** | **String**| Locale code (e.g. 'en_US'). | 
 **body** | **JsonObject**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveCustomTranslation**
> saveCustomTranslation(localeCode, body)

Create Or Update Custom Translation (saveCustomTranslation)

Creates or Updates the Custom Translation for specified locale.   Request example:   ```json {\"home\":\"MyHome\"} ```  Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomTranslationControllerApi();
final String localeCode = localeCode_example; // String | Locale code (e.g. 'en_US').
final JsonObject body = ; // JsonObject | 

try {
    api.saveCustomTranslation(localeCode, body);
} on DioException catch (e) {
    print('Exception when calling CustomTranslationControllerApi->saveCustomTranslation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **localeCode** | **String**| Locale code (e.g. 'en_US'). | 
 **body** | **JsonObject**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadCustomTranslation**
> uploadCustomTranslation(localeCode, file)

Upload Custom Translation (uploadCustomTranslation)

Upload the Custom Translation for specified locale.   Request example:   ```json {\"home\":\"MyHome\"} ```  Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomTranslationControllerApi();
final String localeCode = localeCode_example; // String | Locale code (e.g. 'en_US').
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 

try {
    api.uploadCustomTranslation(localeCode, file);
} on DioException catch (e) {
    print('Exception when calling CustomTranslationControllerApi->uploadCustomTranslation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **localeCode** | **String**| Locale code (e.g. 'en_US'). | 
 **file** | **MultipartFile**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

