# thingsboard_client.api.TbResourceControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteResource**](TbResourceControllerApi.md#deleteresource) | **DELETE** /api/resource/{resourceId} | Delete Resource (deleteResource)
[**downloadJksResourceIfChanged**](TbResourceControllerApi.md#downloadjksresourceifchanged) | **GET** /api/resource/jks/{resourceId}/download | Download JKS Resource (downloadJksResourceIfChanged)
[**downloadJsResourceIfChanged**](TbResourceControllerApi.md#downloadjsresourceifchanged) | **GET** /api/resource/js/{resourceId}/download | Download JS Resource (downloadJsResourceIfChanged)
[**downloadLwm2mResourceIfChanged**](TbResourceControllerApi.md#downloadlwm2mresourceifchanged) | **GET** /api/resource/lwm2m/{resourceId}/download | Download LWM2M Resource (downloadLwm2mResourceIfChanged)
[**downloadPkcs12ResourceIfChanged**](TbResourceControllerApi.md#downloadpkcs12resourceifchanged) | **GET** /api/resource/pkcs12/{resourceId}/download | Download PKCS_12 Resource (downloadPkcs12ResourceIfChanged)
[**downloadResource**](TbResourceControllerApi.md#downloadresource) | **GET** /api/resource/{resourceId}/download | Download Resource (downloadResource)
[**downloadResourceIfChanged**](TbResourceControllerApi.md#downloadresourceifchanged) | **GET** /api/resource/{resourceType}/{scope}/{key} | Download resource (downloadResourceIfChanged)
[**getLwm2mListObjects**](TbResourceControllerApi.md#getlwm2mlistobjects) | **GET** /api/resource/lwm2m | Get LwM2M Objects (getLwm2mListObjects)
[**getLwm2mListObjectsPage**](TbResourceControllerApi.md#getlwm2mlistobjectspage) | **GET** /api/resource/lwm2m/page | Get LwM2M Objects (getLwm2mListObjectsPage)
[**getResourceById**](TbResourceControllerApi.md#getresourcebyid) | **GET** /api/resource/{resourceId} | Get Resource (getResourceById)
[**getResourceInfo**](TbResourceControllerApi.md#getresourceinfo) | **GET** /api/resource/{resourceType}/{scope}/{key}/info | Get resource info (getResourceInfo)
[**getResourceInfoById**](TbResourceControllerApi.md#getresourceinfobyid) | **GET** /api/resource/info/{resourceId} | Get Resource Info (getResourceInfoById)
[**getResources**](TbResourceControllerApi.md#getresources) | **GET** /api/resource | Get Resource Infos (getResources)
[**getSystemOrTenantResourcesByIds**](TbResourceControllerApi.md#getsystemortenantresourcesbyids) | **GET** /api/resource/list | Get Resource Infos by ids (getSystemOrTenantResourcesByIds)
[**getTenantResources**](TbResourceControllerApi.md#gettenantresources) | **GET** /api/resource/tenant | Get All Resource Infos (getTenantResources)
[**saveResource**](TbResourceControllerApi.md#saveresource) | **POST** /api/resource | Create Or Update Resource (saveResource)
[**updateResourceData**](TbResourceControllerApi.md#updateresourcedata) | **PUT** /api/resource/{id}/data | updateResourceData
[**updateResourceInfo**](TbResourceControllerApi.md#updateresourceinfo) | **PUT** /api/resource/{id}/info | updateResourceInfo
[**uploadResource**](TbResourceControllerApi.md#uploadresource) | **POST** /api/resource/upload | Upload Resource via Multipart File (uploadResource)


# **deleteResource**
> TbResourceDeleteResult deleteResource(resourceId, force)

Delete Resource (deleteResource)

Deletes the Resource. Referencing non-existing Resource Id will cause an error.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String resourceId = resourceId_example; // String | A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final bool force = true; // bool | 

try {
    final response = api.deleteResource(resourceId, force);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->deleteResource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceId** | **String**| A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **force** | **bool**|  | [optional] 

### Return type

[**TbResourceDeleteResult**](TbResourceDeleteResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadJksResourceIfChanged**
> Uint8List downloadJksResourceIfChanged(resourceId, ifNoneMatch)

Download JKS Resource (downloadJksResourceIfChanged)

Download Resource based on the provided Resource Id or return 304 status code if resource was not changed.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String resourceId = resourceId_example; // String | A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String ifNoneMatch = ifNoneMatch_example; // String | 

try {
    final response = api.downloadJksResourceIfChanged(resourceId, ifNoneMatch);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->downloadJksResourceIfChanged: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceId** | **String**| A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **ifNoneMatch** | **String**|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/x-java-keystore, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadJsResourceIfChanged**
> Uint8List downloadJsResourceIfChanged(resourceId, ifNoneMatch)

Download JS Resource (downloadJsResourceIfChanged)

Download Resource based on the provided Resource Id or return 304 status code if resource was not changed.  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String resourceId = resourceId_example; // String | A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String ifNoneMatch = ifNoneMatch_example; // String | 

try {
    final response = api.downloadJsResourceIfChanged(resourceId, ifNoneMatch);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->downloadJsResourceIfChanged: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceId** | **String**| A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **ifNoneMatch** | **String**|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/javascript, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadLwm2mResourceIfChanged**
> Uint8List downloadLwm2mResourceIfChanged(resourceId, ifNoneMatch)

Download LWM2M Resource (downloadLwm2mResourceIfChanged)

Download Resource based on the provided Resource Id or return 304 status code if resource was not changed.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String resourceId = resourceId_example; // String | A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String ifNoneMatch = ifNoneMatch_example; // String | 

try {
    final response = api.downloadLwm2mResourceIfChanged(resourceId, ifNoneMatch);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->downloadLwm2mResourceIfChanged: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceId** | **String**| A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **ifNoneMatch** | **String**|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadPkcs12ResourceIfChanged**
> Uint8List downloadPkcs12ResourceIfChanged(resourceId, ifNoneMatch)

Download PKCS_12 Resource (downloadPkcs12ResourceIfChanged)

Download Resource based on the provided Resource Id or return 304 status code if resource was not changed.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String resourceId = resourceId_example; // String | A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String ifNoneMatch = ifNoneMatch_example; // String | 

try {
    final response = api.downloadPkcs12ResourceIfChanged(resourceId, ifNoneMatch);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->downloadPkcs12ResourceIfChanged: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceId** | **String**| A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **ifNoneMatch** | **String**|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/x-pkcs12, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadResource**
> Uint8List downloadResource(resourceId)

Download Resource (downloadResource)

Download Resource based on the provided Resource Id.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String resourceId = resourceId_example; // String | A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.downloadResource(resourceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->downloadResource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceId** | **String**| A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadResourceIfChanged**
> Uint8List downloadResourceIfChanged(resourceType, scope, key, ifNoneMatch)

Download resource (downloadResourceIfChanged)

Download resource with a given type and key for the given scope  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String resourceType = resourceType_example; // String | Type of the resource
final String scope = scope_example; // String | Scope of the resource
final String key = key_example; // String | Key of the resource, e.g. 'extension.js'
final String ifNoneMatch = ifNoneMatch_example; // String | 

try {
    final response = api.downloadResourceIfChanged(resourceType, scope, key, ifNoneMatch);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->downloadResourceIfChanged: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceType** | **String**| Type of the resource | 
 **scope** | **String**| Scope of the resource | 
 **key** | **String**| Key of the resource, e.g. 'extension.js' | 
 **ifNoneMatch** | **String**|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLwm2mListObjects**
> BuiltList<LwM2mObject> getLwm2mListObjects(sortOrder, sortProperty, objectIds)

Get LwM2M Objects (getLwm2mListObjects)

Returns a page of LwM2M objects parsed from Resources with type 'LWM2M_MODEL' owned by tenant or sysadmin. You can specify parameters to filter the results. LwM2M Object is a object that includes information about the LwM2M model which can be used in transport configuration for the LwM2M device profile.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final BuiltList<String> objectIds = ; // BuiltList<String> | LwM2M Object ids.

try {
    final response = api.getLwm2mListObjects(sortOrder, sortProperty, objectIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->getLwm2mListObjects: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | 
 **sortProperty** | **String**| Property of entity to sort by | 
 **objectIds** | [**BuiltList&lt;String&gt;**](String.md)| LwM2M Object ids. | 

### Return type

[**BuiltList&lt;LwM2mObject&gt;**](LwM2mObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLwm2mListObjectsPage**
> BuiltList<LwM2mObject> getLwm2mListObjectsPage(pageSize, page, textSearch, sortProperty, sortOrder)

Get LwM2M Objects (getLwm2mListObjectsPage)

Returns a page of LwM2M objects parsed from Resources with type 'LWM2M_MODEL' owned by tenant or sysadmin. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details. LwM2M Object is a object that includes information about the LwM2M model which can be used in transport configuration for the LwM2M device profile.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the resource title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getLwm2mListObjectsPage(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->getLwm2mListObjectsPage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the resource title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**BuiltList&lt;LwM2mObject&gt;**](LwM2mObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResourceById**
> TbResource getResourceById(resourceId)

Get Resource (getResourceById)

Fetch the Resource object based on the provided Resource Id. Resource is a heavyweight object that includes main information about the Resource and also data.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String resourceId = resourceId_example; // String | A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getResourceById(resourceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->getResourceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceId** | **String**| A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**TbResource**](TbResource.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResourceInfo**
> TbResourceInfo getResourceInfo(resourceType, scope, key)

Get resource info (getResourceInfo)

Get info for the resource with the given type, scope and key. Resource Info is a lightweight object that includes main information about the Resource excluding the heavyweight data.   Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String resourceType = resourceType_example; // String | Type of the resource
final String scope = scope_example; // String | Scope of the resource
final String key = key_example; // String | Key of the resource, e.g. 'extension.js'

try {
    final response = api.getResourceInfo(resourceType, scope, key);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->getResourceInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceType** | **String**| Type of the resource | 
 **scope** | **String**| Scope of the resource | 
 **key** | **String**| Key of the resource, e.g. 'extension.js' | 

### Return type

[**TbResourceInfo**](TbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResourceInfoById**
> TbResourceInfo getResourceInfoById(resourceId)

Get Resource Info (getResourceInfoById)

Fetch the Resource Info object based on the provided Resource Id. Resource Info is a lightweight object that includes main information about the Resource excluding the heavyweight data.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String resourceId = resourceId_example; // String | A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getResourceInfoById(resourceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->getResourceInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceId** | **String**| A string value representing the resource id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**TbResourceInfo**](TbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getResources**
> PageDataTbResourceInfo getResources(pageSize, page, resourceType, resourceSubType, textSearch, sortProperty, sortOrder)

Get Resource Infos (getResources)

Returns a page of Resource Info objects owned by tenant or sysadmin. Customer users may request only 'JS_MODULE' resources, so the 'resourceType' parameter is mandatory for them. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details. Resource Info is a lightweight object that includes main information about the Resource excluding the heavyweight data.   Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final BuiltSet<ResourceType> resourceType = ; // BuiltSet<ResourceType> | A list of resource types, separated by comma ','.
final String resourceSubType = resourceSubType_example; // String | A string value representing the resource sub-type.
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the resource title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getResources(pageSize, page, resourceType, resourceSubType, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->getResources: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **resourceType** | [**BuiltSet&lt;ResourceType&gt;**](ResourceType.md)| A list of resource types, separated by comma ','. | [optional] 
 **resourceSubType** | **String**| A string value representing the resource sub-type. | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the resource title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataTbResourceInfo**](PageDataTbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSystemOrTenantResourcesByIds**
> BuiltList<TbResourceInfo> getSystemOrTenantResourcesByIds(resourceIds)

Get Resource Infos by ids (getSystemOrTenantResourcesByIds)

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final BuiltList<String> resourceIds = ; // BuiltList<String> | A list of resource ids, separated by comma ','

try {
    final response = api.getSystemOrTenantResourcesByIds(resourceIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->getSystemOrTenantResourcesByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of resource ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;TbResourceInfo&gt;**](TbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantResources**
> PageDataTbResourceInfo getTenantResources(pageSize, page, textSearch, sortProperty, sortOrder)

Get All Resource Infos (getTenantResources)

Returns a page of Resource Info objects owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details. Resource Info is a lightweight object that includes main information about the Resource excluding the heavyweight data.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the resource title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantResources(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->getTenantResources: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the resource title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataTbResourceInfo**](PageDataTbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveResource**
> TbResourceInfo saveResource(tbResource)

Create Or Update Resource (saveResource)

Create or update the Resource. When creating the Resource, platform generates Resource id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Resource id will be present in the response. Specify existing Resource id to update the Resource. Referencing non-existing Resource Id will cause 'Not Found' error.   Resource combination of the title with the key is unique in the scope of tenant. Remove 'id', 'tenantId' from the request body example (below) to create new Resource entity.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final TbResource tbResource = ; // TbResource | 

try {
    final response = api.saveResource(tbResource);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->saveResource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tbResource** | [**TbResource**](TbResource.md)|  | 

### Return type

[**TbResourceInfo**](TbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateResourceData**
> TbResourceInfo updateResourceData(id, file)

updateResourceData

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier of the Resource to update
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | Resource file.

try {
    final response = api.updateResourceData(id, file);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->updateResourceData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the Resource to update | 
 **file** | **MultipartFile**| Resource file. | 

### Return type

[**TbResourceInfo**](TbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateResourceInfo**
> TbResourceInfo updateResourceInfo(id, tbResourceInfo)

updateResourceInfo

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Unique identifier of the Resource to update
final TbResourceInfo tbResourceInfo = ; // TbResourceInfo | 

try {
    final response = api.updateResourceInfo(id, tbResourceInfo);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->updateResourceInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the Resource to update | 
 **tbResourceInfo** | [**TbResourceInfo**](TbResourceInfo.md)|  | 

### Return type

[**TbResourceInfo**](TbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadResource**
> TbResourceInfo uploadResource(resourceType, file, title, descriptor, resourceSubType)

Upload Resource via Multipart File (uploadResource)

Create the Resource using multipart file upload.   Resource combination of the title with the key is unique in the scope of tenant.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTbResourceControllerApi();
final String resourceType = resourceType_example; // String | Resource type.
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | Resource file.
final String title = title_example; // String | Resource title.
final String descriptor = descriptor_example; // String | Resource descriptor (JSON).
final String resourceSubType = resourceSubType_example; // String | Resource sub type.

try {
    final response = api.uploadResource(resourceType, file, title, descriptor, resourceSubType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TbResourceControllerApi->uploadResource: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceType** | **String**| Resource type. | 
 **file** | **MultipartFile**| Resource file. | 
 **title** | **String**| Resource title. | [optional] 
 **descriptor** | **String**| Resource descriptor (JSON). | [optional] 
 **resourceSubType** | **String**| Resource sub type. | [optional] 

### Return type

[**TbResourceInfo**](TbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

