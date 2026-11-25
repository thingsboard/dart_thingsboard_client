# thingsboard_client.api.BlobEntityControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteBlobEntity**](BlobEntityControllerApi.md#deleteblobentity) | **DELETE** /api/blobEntity/{blobEntityId} | Delete Blob Entity (deleteBlobEntity)
[**downloadBlobEntity**](BlobEntityControllerApi.md#downloadblobentity) | **GET** /api/blobEntity/{blobEntityId}/download | Download Blob Entity By Id (downloadBlobEntity)
[**getBlobEntities**](BlobEntityControllerApi.md#getblobentities) | **GET** /api/blobEntities | Get Blob Entities (getBlobEntities)
[**getBlobEntitiesByIds**](BlobEntityControllerApi.md#getblobentitiesbyids) | **GET** /api/blobEntities/list | Get Blob Entities By Ids (getBlobEntitiesByIds)
[**getBlobEntityInfoById**](BlobEntityControllerApi.md#getblobentityinfobyid) | **GET** /api/blobEntity/info/{blobEntityId} | Get Blob Entity With Customer Info (getBlobEntityInfoById)


# **deleteBlobEntity**
> deleteBlobEntity(blobEntityId)

Delete Blob Entity (deleteBlobEntity)

Delete Blob entity based on the provided Blob entity Id. Referencing non-existing Blob entity Id will cause an error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.   Security check is performed to verify that the user has 'DELETE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getBlobEntityControllerApi();
final String blobEntityId = blobEntityId_example; // String | A string value representing the blob entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteBlobEntity(blobEntityId);
} on DioException catch (e) {
    print('Exception when calling BlobEntityControllerApi->deleteBlobEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blobEntityId** | **String**| A string value representing the blob entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadBlobEntity**
> Uint8List downloadBlobEntity(blobEntityId)

Download Blob Entity By Id (downloadBlobEntity)

Download report file based on the provided Blob entity Id. Referencing non-existing Blob entity Id will cause an error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getBlobEntityControllerApi();
final String blobEntityId = blobEntityId_example; // String | A string value representing the blob entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.downloadBlobEntity(blobEntityId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BlobEntityControllerApi->downloadBlobEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blobEntityId** | **String**| A string value representing the blob entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlobEntities**
> PageDataBlobEntityWithCustomerInfo getBlobEntities(pageSize, page, type, textSearch, sortProperty, sortOrder, startTime, endTime)

Get Blob Entities (getBlobEntities)

Returns a page of BlobEntityWithCustomerInfo object that are available for the current user. The platform uses Blob(binary large object) entities in the reporting feature, in order to store Dashboard states snapshots of different content types in base64 format. BlobEntityWithCustomerInfo represents an object that contains base info about the blob entity(name, type, contentType, etc.) and info about the customer(customerTitle, customerIsPublic) of the user that scheduled generation of the dashboard report. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getBlobEntityControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String type = type_example; // String | A string value representing the blob entity type. For example, 'report'
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the blob entity name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final int startTime = 789; // int | The start timestamp in milliseconds of the search time range over the BlobEntityWithCustomerInfo class field: 'createdTime'.
final int endTime = 789; // int | The end timestamp in milliseconds of the search time range over the BlobEntityWithCustomerInfo class field: 'createdTime'.

try {
    final response = api.getBlobEntities(pageSize, page, type, textSearch, sortProperty, sortOrder, startTime, endTime);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BlobEntityControllerApi->getBlobEntities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **type** | **String**| A string value representing the blob entity type. For example, 'report' | [optional] 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the blob entity name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **startTime** | **int**| The start timestamp in milliseconds of the search time range over the BlobEntityWithCustomerInfo class field: 'createdTime'. | [optional] 
 **endTime** | **int**| The end timestamp in milliseconds of the search time range over the BlobEntityWithCustomerInfo class field: 'createdTime'. | [optional] 

### Return type

[**PageDataBlobEntityWithCustomerInfo**](PageDataBlobEntityWithCustomerInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlobEntitiesByIds**
> BuiltList<BlobEntityInfo> getBlobEntitiesByIds(blobEntityIds)

Get Blob Entities By Ids (getBlobEntitiesByIds)

Requested blob entities must be owned by tenant or assigned to customer which user is performing the request. The platform uses Blob(binary large object) entities in the reporting feature, in order to store Dashboard states snapshots of different content types in base64 format. BlobEntityInfo represents an object that contains base info about the blob entity(name, type, contentType, etc.). See the 'Model' tab of the Response Class for more details.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getBlobEntityControllerApi();
final BuiltList<String> blobEntityIds = ; // BuiltList<String> | A list of blob entity ids, separated by comma ','

try {
    final response = api.getBlobEntitiesByIds(blobEntityIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BlobEntityControllerApi->getBlobEntitiesByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blobEntityIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of blob entity ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;BlobEntityInfo&gt;**](BlobEntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBlobEntityInfoById**
> BlobEntityWithCustomerInfo getBlobEntityInfoById(blobEntityId)

Get Blob Entity With Customer Info (getBlobEntityInfoById)

Fetch the BlobEntityWithCustomerInfo object based on the provided Blob entity Id. The platform uses Blob(binary large object) entities in the reporting feature, in order to store Dashboard states snapshots of different content types in base64 format. BlobEntityWithCustomerInfo represents an object that contains base info about the blob entity(name, type, contentType, etc.) and info about the customer(customerTitle, customerIsPublic) of the user that scheduled generation of the dashboard report. Referencing non-existing Blob entity Id will cause an error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getBlobEntityControllerApi();
final String blobEntityId = blobEntityId_example; // String | A string value representing the blob entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getBlobEntityInfoById(blobEntityId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling BlobEntityControllerApi->getBlobEntityInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blobEntityId** | **String**| A string value representing the blob entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**BlobEntityWithCustomerInfo**](BlobEntityWithCustomerInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

