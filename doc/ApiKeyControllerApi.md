# thingsboard_client.api.ApiKeyControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteApiKey**](ApiKeyControllerApi.md#deleteapikey) | **DELETE** /api/apiKey/{id} | Delete API key by ID (deleteApiKey)
[**enableApiKey**](ApiKeyControllerApi.md#enableapikey) | **PUT** /api/apiKey/{id}/enabled/{enabledValue} | Enable or disable API key (enableApiKey)
[**getUserApiKeys**](ApiKeyControllerApi.md#getuserapikeys) | **GET** /api/apiKeys/{userId} | Get User Api Keys (getUserApiKeys)
[**saveApiKey**](ApiKeyControllerApi.md#saveapikey) | **POST** /api/apiKey | Save API key for user (saveApiKey)
[**updateApiKeyDescription**](ApiKeyControllerApi.md#updateapikeydescription) | **PUT** /api/apiKey/{id}/description | Update API key Description


# **deleteApiKey**
> deleteApiKey(id)

Delete API key by ID (deleteApiKey)

Deletes the API key. Referencing non-existing ApiKey Id will cause an error.  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getApiKeyControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteApiKey(id);
} on DioException catch (e) {
    print('Exception when calling ApiKeyControllerApi->deleteApiKey: $e\n');
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

# **enableApiKey**
> ApiKeyInfo enableApiKey(id, enabledValue)

Enable or disable API key (enableApiKey)

Updates api key with enabled = true/false.   Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getApiKeyControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier of the API key to enable/disable
final bool enabledValue = true; // bool | Enabled or disabled api key

try {
    final response = api.enableApiKey(id, enabledValue);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiKeyControllerApi->enableApiKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the API key to enable/disable | 
 **enabledValue** | **bool**| Enabled or disabled api key | 

### Return type

[**ApiKeyInfo**](ApiKeyInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserApiKeys**
> PageDataApiKeyInfo getUserApiKeys(userId, pageSize, page, textSearch, sortProperty, sortOrder)

Get User Api Keys (getUserApiKeys)

Returns a page of api keys owned by user. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getApiKeyControllerApi();
final String userId = userId_example; // String | A string value representing the user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the description.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getUserApiKeys(userId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiKeyControllerApi->getUserApiKeys: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| A string value representing the user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the description. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataApiKeyInfo**](PageDataApiKeyInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveApiKey**
> ApiKey saveApiKey(apiKeyInfo)

Save API key for user (saveApiKey)

Creates an API key for the given user and returns the token ONCE as 'ApiKey {value}'.  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getApiKeyControllerApi();
final ApiKeyInfo apiKeyInfo = ; // ApiKeyInfo | 

try {
    final response = api.saveApiKey(apiKeyInfo);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiKeyControllerApi->saveApiKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiKeyInfo** | [**ApiKeyInfo**](ApiKeyInfo.md)|  | 

### Return type

[**ApiKey**](ApiKey.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateApiKeyDescription**
> ApiKeyInfo updateApiKeyDescription(id, body)

Update API key Description

Updates the description of the existing API key by apiKeyId. Only the description can be updated. Referencing a non-existing ApiKey Id will cause a 'Not Found' error.  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getApiKeyControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the api key id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String body = body_example; // String | 

try {
    final response = api.updateApiKeyDescription(id, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ApiKeyControllerApi->updateApiKeyDescription: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| A string value representing the api key id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **body** | **String**|  | [optional] 

### Return type

[**ApiKeyInfo**](ApiKeyInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

