# thingsboard_client.api.MobileAppControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteMobileApp**](MobileAppControllerApi.md#deletemobileapp) | **DELETE** /api/mobile/app/{id} | Delete Mobile App by ID (deleteMobileApp)
[**getLoginMobileInfo**](MobileAppControllerApi.md#getloginmobileinfo) | **GET** /api/noauth/mobile | Get mobile app login info (getLoginMobileInfo)
[**getMobileAppById**](MobileAppControllerApi.md#getmobileappbyid) | **GET** /api/mobile/app/{id} | Get mobile info by id (getMobileAppById)
[**getTenantMobileApps**](MobileAppControllerApi.md#gettenantmobileapps) | **GET** /api/mobile/app | Get mobile app infos (getTenantMobileApps)
[**getUserMobileInfo**](MobileAppControllerApi.md#getusermobileinfo) | **GET** /api/mobile | Get user mobile app basic info (getUserMobileInfo)
[**saveMobileApp**](MobileAppControllerApi.md#savemobileapp) | **POST** /api/mobile/app | Save Or update Mobile app (saveMobileApp)


# **deleteMobileApp**
> deleteMobileApp(id)

Delete Mobile App by ID (deleteMobileApp)

Deletes Mobile App by ID. Referencing non-existing mobile app Id will cause an error.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getMobileAppControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteMobileApp(id);
} on DioException catch (e) {
    print('Exception when calling MobileAppControllerApi->deleteMobileApp: $e\n');
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

# **getLoginMobileInfo**
> LoginMobileInfo getLoginMobileInfo(pkgName, platform)

Get mobile app login info (getLoginMobileInfo)

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getMobileAppControllerApi();
final String pkgName = pkgName_example; // String | Mobile application package name
final String platform = platform_example; // String | Platform type

try {
    final response = api.getLoginMobileInfo(pkgName, platform);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MobileAppControllerApi->getLoginMobileInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgName** | **String**| Mobile application package name | 
 **platform** | **String**| Platform type | 

### Return type

[**LoginMobileInfo**](LoginMobileInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMobileAppById**
> MobileApp getMobileAppById(id)

Get mobile info by id (getMobileAppById)

  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getMobileAppControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getMobileAppById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MobileAppControllerApi->getMobileAppById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**MobileApp**](MobileApp.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantMobileApps**
> PageDataMobileApp getTenantMobileApps(pageSize, page, platformType, textSearch, sortProperty, sortOrder)

Get mobile app infos (getTenantMobileApps)

  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getMobileAppControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final PlatformType platformType = ; // PlatformType | Platform type: ANDROID or IOS
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filter based on app's name
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantMobileApps(pageSize, page, platformType, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MobileAppControllerApi->getTenantMobileApps: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **platformType** | [**PlatformType**](.md)| Platform type: ANDROID or IOS | [optional] 
 **textSearch** | **String**| Case-insensitive 'substring' filter based on app's name | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataMobileApp**](PageDataMobileApp.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserMobileInfo**
> UserMobileInfo getUserMobileInfo(pkgName, platform)

Get user mobile app basic info (getUserMobileInfo)

  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getMobileAppControllerApi();
final String pkgName = pkgName_example; // String | Mobile application package name
final String platform = platform_example; // String | Platform type

try {
    final response = api.getUserMobileInfo(pkgName, platform);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MobileAppControllerApi->getUserMobileInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgName** | **String**| Mobile application package name | 
 **platform** | **String**| Platform type | 

### Return type

[**UserMobileInfo**](UserMobileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveMobileApp**
> MobileApp saveMobileApp(mobileApp)

Save Or update Mobile app (saveMobileApp)

Create or update the Mobile app. When creating mobile app, platform generates Mobile App Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Mobile App Id will be present in the response. Specify existing Mobile App Id to update the mobile app. Referencing non-existing Mobile App Id will cause 'Not Found' error.  The pair of mobile app package name and platform type is unique for entire platform setup.    Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getMobileAppControllerApi();
final MobileApp mobileApp = ; // MobileApp | 

try {
    final response = api.saveMobileApp(mobileApp);
    print(response);
} on DioException catch (e) {
    print('Exception when calling MobileAppControllerApi->saveMobileApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mobileApp** | [**MobileApp**](MobileApp.md)|  | 

### Return type

[**MobileApp**](MobileApp.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

