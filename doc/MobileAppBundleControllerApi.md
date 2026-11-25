# thingsboard_client.api.MobileAppBundleControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteMobileAppBundle**](MobileAppBundleControllerApi.md#deletemobileappbundle) | **DELETE** /api/mobile/bundle/{id} | Delete Mobile App Bundle by ID (deleteMobileAppBundle)
[**getMobileAppBundleInfoById**](MobileAppBundleControllerApi.md#getmobileappbundleinfobyid) | **GET** /api/mobile/bundle/info/{id} | Get mobile app bundle info by id (getMobileAppBundleInfoById)
[**getTenantMobileAppBundleInfos**](MobileAppBundleControllerApi.md#gettenantmobileappbundleinfos) | **GET** /api/mobile/bundle/infos | Get mobile app bundle infos (getTenantMobileAppBundleInfos)
[**saveMobileAppBundle**](MobileAppBundleControllerApi.md#savemobileappbundle) | **POST** /api/mobile/bundle | Save Or update Mobile app bundle (saveMobileAppBundle)
[**updateMobileAppBundleOauth2Clients**](MobileAppBundleControllerApi.md#updatemobileappbundleoauth2clients) | **PUT** /api/mobile/bundle/{id}/oauth2Clients | Update oauth2 clients (updateMobileAppBundleOauth2Clients)


# **deleteMobileAppBundle**
> deleteMobileAppBundle(id)

Delete Mobile App Bundle by ID (deleteMobileAppBundle)

Deletes Mobile App Bundle by ID. Referencing non-existing mobile app bundle Id will cause an error.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getMobileAppBundleControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteMobileAppBundle(id);
} on DioException catch (e) {
    print('Exception when calling MobileAppBundleControllerApi->deleteMobileAppBundle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMobileAppBundleInfoById**
> MobileAppBundleInfo getMobileAppBundleInfoById(id)

Get mobile app bundle info by id (getMobileAppBundleInfoById)

  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getMobileAppBundleControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getMobileAppBundleInfoById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MobileAppBundleControllerApi->getMobileAppBundleInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**MobileAppBundleInfo**](MobileAppBundleInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantMobileAppBundleInfos**
> PageDataMobileAppBundleInfo getTenantMobileAppBundleInfos(pageSize, page, textSearch, sortProperty, sortOrder)

Get mobile app bundle infos (getTenantMobileAppBundleInfos)

  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getMobileAppBundleControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filter based on app's name
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantMobileAppBundleInfos(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MobileAppBundleControllerApi->getTenantMobileAppBundleInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Case-insensitive 'substring' filter based on app's name | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataMobileAppBundleInfo**](PageDataMobileAppBundleInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveMobileAppBundle**
> MobileAppBundle saveMobileAppBundle(mobileAppBundle, oauth2ClientIds)

Save Or update Mobile app bundle (saveMobileAppBundle)

Create or update the Mobile app bundle that represents tha pair of ANDROID and IOS app and mobile settings like oauth2 clients, self-registration and layout configuration.When creating mobile app bundle, platform generates Mobile App Bundle Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Mobile App Bundle Id will be present in the response. Referencing non-existing Mobile App Bundle Id will cause 'Not Found' error.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getMobileAppBundleControllerApi();
final MobileAppBundle mobileAppBundle = ; // MobileAppBundle | 
final BuiltList<String> oauth2ClientIds = ; // BuiltList<String> | A list of oauth2 client ids, separated by comma ','

try {
    final response = api.saveMobileAppBundle(mobileAppBundle, oauth2ClientIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MobileAppBundleControllerApi->saveMobileAppBundle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mobileAppBundle** | [**MobileAppBundle**](MobileAppBundle.md)|  | 
 **oauth2ClientIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of oauth2 client ids, separated by comma ',' | [optional] 

### Return type

[**MobileAppBundle**](MobileAppBundle.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMobileAppBundleOauth2Clients**
> updateMobileAppBundleOauth2Clients(id, requestBody)

Update oauth2 clients (updateMobileAppBundleOauth2Clients)

Update oauth2 clients of the specified mobile app bundle.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getMobileAppBundleControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final BuiltList<String> requestBody = ; // BuiltList<String> | 

try {
    api.updateMobileAppBundleOauth2Clients(id, requestBody);
} on DioException catch (e) {
    print('Exception when calling MobileAppBundleControllerApi->updateMobileAppBundleOauth2Clients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **requestBody** | [**BuiltList&lt;String&gt;**](String.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

