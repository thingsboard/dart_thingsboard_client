# thingsboard_client.api.SecretControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSecret**](SecretControllerApi.md#deletesecret) | **DELETE** /api/secret/{id} | Delete secret by ID (deleteSecret)
[**getSecretInfoById**](SecretControllerApi.md#getsecretinfobyid) | **GET** /api/secret/{id}/info | Get Secret info by Id (getSecretInfoById)
[**getSecretInfoByName**](SecretControllerApi.md#getsecretinfobyname) | **GET** /api/secret | Get Secret info by name (getSecretInfoByName)
[**getSecretInfos**](SecretControllerApi.md#getsecretinfos) | **GET** /api/secrets | Get Tenant Secret infos (getSecretInfos)
[**getSecretNames**](SecretControllerApi.md#getsecretnames) | **GET** /api/secret/names | Get Tenant Secret names (getSecretNames)
[**saveSecret**](SecretControllerApi.md#savesecret) | **POST** /api/secret | Save or Update Secret (saveSecret)
[**updateSecretDescription**](SecretControllerApi.md#updatesecretdescription) | **PUT** /api/secret/{id}/description | Update Secret Description
[**updateSecretValue**](SecretControllerApi.md#updatesecretvalue) | **PUT** /api/secret/{id}/value | Update Secret value


# **deleteSecret**
> TbSecretDeleteResult deleteSecret(id)

Delete secret by ID (deleteSecret)

Deletes the secret. Referencing non-existing Secret Id will cause an error.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSecretControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.deleteSecret(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SecretControllerApi->deleteSecret: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**TbSecretDeleteResult**](TbSecretDeleteResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSecretInfoById**
> SecretInfo getSecretInfoById(id)

Get Secret info by Id (getSecretInfoById)

  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSecretControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getSecretInfoById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SecretControllerApi->getSecretInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**SecretInfo**](SecretInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSecretInfoByName**
> SecretInfo getSecretInfoByName(name)

Get Secret info by name (getSecretInfoByName)

  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSecretControllerApi();
final String name = name_example; // String | 

try {
    final response = api.getSecretInfoByName(name);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SecretControllerApi->getSecretInfoByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

[**SecretInfo**](SecretInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSecretInfos**
> PageDataSecretInfo getSecretInfos(pageSize, page, textSearch, sortProperty, sortOrder)

Get Tenant Secret infos (getSecretInfos)

Returns a page of secret infos owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSecretControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the secret name and description.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getSecretInfos(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SecretControllerApi->getSecretInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the secret name and description. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataSecretInfo**](PageDataSecretInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSecretNames**
> BuiltList<String> getSecretNames()

Get Tenant Secret names (getSecretNames)

Returns a page of secret names owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSecretControllerApi();

try {
    final response = api.getSecretNames();
    print(response);
} on DioException catch (e) {
    print('Exception when calling SecretControllerApi->getSecretNames: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**BuiltList&lt;String&gt;**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveSecret**
> SecretInfo saveSecret(secret)

Save or Update Secret (saveSecret)

Create or update the Secret. When creating secret, platform generates Secret Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Secret Id will be present in the response. Specify existing Secret Id to update the secret. Secret name is not updatable, only value could be changed. Referencing non-existing Secret Id will cause 'Not Found' error.  Secret name is unique in the scope of tenant.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSecretControllerApi();
final Secret secret = ; // Secret | 

try {
    final response = api.saveSecret(secret);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SecretControllerApi->saveSecret: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret** | [**Secret**](Secret.md)|  | 

### Return type

[**SecretInfo**](SecretInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSecretDescription**
> SecretInfo updateSecretDescription(id, body)

Update Secret Description

Updates the description of the existing Secret by secretId. Only the description can be updated. Referencing a non-existing Secret Id will cause a 'Not Found' error.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSecretControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier of the Secret to update
final String body = body_example; // String | 

try {
    final response = api.updateSecretDescription(id, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SecretControllerApi->updateSecretDescription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the Secret to update | 
 **body** | **String**|  | [optional] 

### Return type

[**SecretInfo**](SecretInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSecretValue**
> SecretInfo updateSecretValue(id, body)

Update Secret value

Updates the value of the existing Secret by secretId. Referencing a non-existing Secret Id will cause a 'Not Found' error.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSecretControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier of the Secret to update
final String body = body_example; // String | 

try {
    final response = api.updateSecretValue(id, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SecretControllerApi->updateSecretValue: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the Secret to update | 
 **body** | **String**|  | 

### Return type

[**SecretInfo**](SecretInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

