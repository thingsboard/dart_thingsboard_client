# thingsboard_client.api.OAuth2ControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteOauth2Client**](OAuth2ControllerApi.md#deleteoauth2client) | **DELETE** /api/oauth2/client/{id} | Delete oauth2 client (deleteOauth2Client)
[**findOAuth2ClientInfos**](OAuth2ControllerApi.md#findoauth2clientinfos) | **GET** /api/oauth2/client/infos | Get OAuth2 Client infos (findOAuth2ClientInfos)
[**findTenantOAuth2ClientInfosByIds**](OAuth2ControllerApi.md#findtenantoauth2clientinfosbyids) | **GET** /api/oauth2/client/list | Get OAuth2 Client infos By Ids (findTenantOAuth2ClientInfosByIds)
[**getLoginProcessingUrl**](OAuth2ControllerApi.md#getloginprocessingurl) | **GET** /api/oauth2/loginProcessingUrl | Get OAuth2 log in processing URL (getLoginProcessingUrl)
[**getOAuth2ClientById**](OAuth2ControllerApi.md#getoauth2clientbyid) | **GET** /api/oauth2/client/{id} | Get OAuth2 Client by id (getOAuth2ClientById)
[**getOAuth2Clients**](OAuth2ControllerApi.md#getoauth2clients) | **POST** /api/noauth/oauth2Clients | Get OAuth2 clients (getOAuth2Clients)
[**saveOAuth2Client**](OAuth2ControllerApi.md#saveoauth2client) | **POST** /api/oauth2/client | Save OAuth2 Client (saveOAuth2Client)


# **deleteOauth2Client**
> deleteOauth2Client(id)

Delete oauth2 client (deleteOauth2Client)

Deletes the oauth2 client. Referencing non-existing oauth2 client Id will cause an error.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOAuth2ControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteOauth2Client(id);
} on DioException catch (e) {
    print('Exception when calling OAuth2ControllerApi->deleteOauth2Client: $e\n');
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

# **findOAuth2ClientInfos**
> PageDataOAuth2ClientInfo findOAuth2ClientInfos(pageSize, page, textSearch, sortProperty, sortOrder)

Get OAuth2 Client infos (findOAuth2ClientInfos)

  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOAuth2ControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filter based on client's title
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.findOAuth2ClientInfos(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OAuth2ControllerApi->findOAuth2ClientInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Case-insensitive 'substring' filter based on client's title | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataOAuth2ClientInfo**](PageDataOAuth2ClientInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findTenantOAuth2ClientInfosByIds**
> BuiltList<OAuth2ClientInfo> findTenantOAuth2ClientInfosByIds(clientIds)

Get OAuth2 Client infos By Ids (findTenantOAuth2ClientInfosByIds)

Fetch OAuth2 Client info objects based on the provided ids.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOAuth2ControllerApi();
final BuiltList<String> clientIds = ; // BuiltList<String> | A list of oauth2 ids, separated by comma ','

try {
    final response = api.findTenantOAuth2ClientInfosByIds(clientIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OAuth2ControllerApi->findTenantOAuth2ClientInfosByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of oauth2 ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;OAuth2ClientInfo&gt;**](OAuth2ClientInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLoginProcessingUrl**
> String getLoginProcessingUrl()

Get OAuth2 log in processing URL (getLoginProcessingUrl)

Returns the URL enclosed in double quotes. After successful authentication with OAuth2 provider, it makes a redirect to this path so that the platform can do further log in processing. This URL may be configured as 'security.oauth2.loginProcessingUrl' property in yml configuration file, or as 'SECURITY_OAUTH2_LOGIN_PROCESSING_URL' env variable. By default it is '/login/oauth2/code/'  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOAuth2ControllerApi();

try {
    final response = api.getLoginProcessingUrl();
    print(response);
} on DioException catch (e) {
    print('Exception when calling OAuth2ControllerApi->getLoginProcessingUrl: $e\n');
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

# **getOAuth2ClientById**
> OAuth2Client getOAuth2ClientById(id)

Get OAuth2 Client by id (getOAuth2ClientById)

  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOAuth2ControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getOAuth2ClientById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OAuth2ControllerApi->getOAuth2ClientById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**OAuth2Client**](OAuth2Client.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuth2Clients**
> BuiltList<OAuth2ClientLoginInfo> getOAuth2Clients(pkgName, platform)

Get OAuth2 clients (getOAuth2Clients)

Get the list of OAuth2 clients to log in with, available for such domain scheme (HTTP or HTTPS) (if x-forwarded-proto request header is present - the scheme is known from it) and domain name and port (port may be known from x-forwarded-port header)

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getOAuth2ControllerApi();
final String pkgName = pkgName_example; // String | Mobile application package name, to find OAuth2 clients where there is configured mobile application with such package name
final String platform = platform_example; // String | Platform type to search OAuth2 clients for which the usage with this platform type is allowed in the settings. If platform type is not one of allowable values - it will just be ignored

try {
    final response = api.getOAuth2Clients(pkgName, platform);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OAuth2ControllerApi->getOAuth2Clients: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgName** | **String**| Mobile application package name, to find OAuth2 clients where there is configured mobile application with such package name | [optional] 
 **platform** | **String**| Platform type to search OAuth2 clients for which the usage with this platform type is allowed in the settings. If platform type is not one of allowable values - it will just be ignored | [optional] 

### Return type

[**BuiltList&lt;OAuth2ClientLoginInfo&gt;**](OAuth2ClientLoginInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveOAuth2Client**
> OAuth2Client saveOAuth2Client(oAuth2Client)

Save OAuth2 Client (saveOAuth2Client)

  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOAuth2ControllerApi();
final OAuth2Client oAuth2Client = ; // OAuth2Client | 

try {
    final response = api.saveOAuth2Client(oAuth2Client);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OAuth2ControllerApi->saveOAuth2Client: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oAuth2Client** | [**OAuth2Client**](OAuth2Client.md)|  | 

### Return type

[**OAuth2Client**](OAuth2Client.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

