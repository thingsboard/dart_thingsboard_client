# thingsboard_client.api.TranslationControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadFullTranslation**](TranslationControllerApi.md#downloadfulltranslation) | **GET** /api/translation/full/{localeCode}/download | Download end-user all-to-one translation (downloadFullTranslation)
[**getAvailableJavaLocales**](TranslationControllerApi.md#getavailablejavalocales) | **GET** /api/translation/availableJavaLocales | Get list of available java locales (getAvailableJavaLocales)
[**getAvailableLocales**](TranslationControllerApi.md#getavailablelocales) | **GET** /api/translation/availableLocales | Get list of available locales (getAvailableLocales)
[**getFullTranslation**](TranslationControllerApi.md#getfulltranslation) | **GET** /api/translation/full/{localeCode} | Get end-user all-to-one translation (getFullTranslation)
[**getLoginPageTranslation**](TranslationControllerApi.md#getloginpagetranslation) | **GET** /api/noauth/translation/login/{localeCode} | Get system translation for login page
[**getTranslationForBasicEdit**](TranslationControllerApi.md#gettranslationforbasicedit) | **GET** /api/translation/edit/basic/{localeCode} | Get end-user multi-translation for basic edit (getTranslationForBasicEdit)
[**getTranslationInfos**](TranslationControllerApi.md#gettranslationinfos) | **GET** /api/translation/info | Get Translation info (getTranslationInfos)


# **downloadFullTranslation**
> Uint8List downloadFullTranslation(localeCode)

Download end-user all-to-one translation (downloadFullTranslation)

Fetch the end-user translation for the specified locale. The result is a json file with merged user custom translation, system language translation and default locale translation.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTranslationControllerApi();
final String localeCode = localeCode_example; // String | Locale code (e.g. 'en_US').

try {
    final response = api.downloadFullTranslation(localeCode);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TranslationControllerApi->downloadFullTranslation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **localeCode** | **String**| Locale code (e.g. 'en_US'). | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableJavaLocales**
> JsonObject getAvailableJavaLocales()

Get list of available java locales (getAvailableJavaLocales)

The result is map where key is locale code and value is locale language and country

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTranslationControllerApi();

try {
    final response = api.getAvailableJavaLocales();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TranslationControllerApi->getAvailableJavaLocales: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableLocales**
> JsonObject getAvailableLocales()

Get list of available locales (getAvailableLocales)

Fetch the list of customized locales from all levels  Security check is performed to verify that the user has 'READ' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTranslationControllerApi();

try {
    final response = api.getAvailableLocales();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TranslationControllerApi->getAvailableLocales: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFullTranslation**
> JsonObject getFullTranslation(localeCode, ifNoneMatch, acceptEncoding)

Get end-user all-to-one translation (getFullTranslation)

Fetch the end-user translation for specified locale. The result is the merge of user custom translation, system language translation and default locale translation.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTranslationControllerApi();
final String localeCode = localeCode_example; // String | Locale code (e.g. 'en_US').
final String ifNoneMatch = ifNoneMatch_example; // String | 
final String acceptEncoding = acceptEncoding_example; // String | 

try {
    final response = api.getFullTranslation(localeCode, ifNoneMatch, acceptEncoding);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TranslationControllerApi->getFullTranslation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **localeCode** | **String**| Locale code (e.g. 'en_US'). | 
 **ifNoneMatch** | **String**|  | [optional] 
 **acceptEncoding** | **String**|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLoginPageTranslation**
> JsonObject getLoginPageTranslation(localeCode, ifNoneMatch, acceptEncoding)

Get system translation for login page

Fetch the end-user translation for specified locale.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getTranslationControllerApi();
final String localeCode = localeCode_example; // String | Locale code (e.g. 'en_US').
final String ifNoneMatch = ifNoneMatch_example; // String | 
final String acceptEncoding = acceptEncoding_example; // String | 

try {
    final response = api.getLoginPageTranslation(localeCode, ifNoneMatch, acceptEncoding);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TranslationControllerApi->getLoginPageTranslation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **localeCode** | **String**| Locale code (e.g. 'en_US'). | 
 **ifNoneMatch** | **String**|  | [optional] 
 **acceptEncoding** | **String**|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTranslationForBasicEdit**
> JsonObject getTranslationForBasicEdit(localeCode)

Get end-user multi-translation for basic edit (getTranslationForBasicEdit)

Fetch the translation info map where value is info object containing key translation, origin translation, translation of parent level, translation status.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTranslationControllerApi();
final String localeCode = localeCode_example; // String | 

try {
    final response = api.getTranslationForBasicEdit(localeCode);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TranslationControllerApi->getTranslationForBasicEdit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **localeCode** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTranslationInfos**
> BuiltList<TranslationInfo> getTranslationInfos()

Get Translation info (getTranslationInfos)

Fetch the list of customized locales and corresponding details such as language display name, country display name and translation progress percentage.   Response example:   ```json [   {     \"localeCode\": \"uk_UA\",     \"language\": \"Ukrainian (українська)\",     \"country\": \"Україна\",     \"progress\": 32   },   {     \"localeCode\": \"es_ES\",     \"language\": \"Spanish (español)\",     \"country\": \"España\",     \"progress\": 79   }] ```  Security check is performed to verify that the user has 'READ' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTranslationControllerApi();

try {
    final response = api.getTranslationInfos();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TranslationControllerApi->getTranslationInfos: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;TranslationInfo&gt;**](TranslationInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

