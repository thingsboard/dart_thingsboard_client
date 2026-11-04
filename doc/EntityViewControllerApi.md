# thingsboard_client.api.EntityViewControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteEntityView**](EntityViewControllerApi.md#deleteentityview) | **DELETE** /api/entityView/{entityViewId} | Delete entity view (deleteEntityView)
[**findEntityViewsByQuery**](EntityViewControllerApi.md#findentityviewsbyquery) | **POST** /api/entityViews | Find related entity views (findEntityViewsByQuery)
[**getAllEntityViewInfos**](EntityViewControllerApi.md#getallentityviewinfos) | **GET** /api/entityViewInfos/all | Get All Entity View Infos for current user (getAllEntityViewInfos)
[**getCustomerEntityViewInfos**](EntityViewControllerApi.md#getcustomerentityviewinfos) | **GET** /api/customer/{customerId}/entityViewInfos | Get Customer Entity View Infos (getCustomerEntityViewInfos)
[**getCustomerEntityViews**](EntityViewControllerApi.md#getcustomerentityviews) | **GET** /api/customer/{customerId}/entityViews | Get Customer Entity Views (getCustomerEntityViews)
[**getEntityViewById**](EntityViewControllerApi.md#getentityviewbyid) | **GET** /api/entityView/{entityViewId} | Get entity view (getEntityViewById)
[**getEntityViewInfoById**](EntityViewControllerApi.md#getentityviewinfobyid) | **GET** /api/entityView/info/{entityViewId} | Get entity view info (getEntityViewInfoById)
[**getEntityViewTypes**](EntityViewControllerApi.md#getentityviewtypes) | **GET** /api/entityView/types | Get Entity View Types (getEntityViewTypes)
[**getEntityViewsByEntityGroupId**](EntityViewControllerApi.md#getentityviewsbyentitygroupid) | **GET** /api/entityGroup/{entityGroupId}/entityViews | Get entity views by Entity Group Id (getEntityViewsByEntityGroupId)
[**getEntityViewsByIds**](EntityViewControllerApi.md#getentityviewsbyids) | **GET** /api/entityViews/list | Get Entity Views By Ids (getEntityViewsByIds)
[**getTenantEntityViewByName**](EntityViewControllerApi.md#gettenantentityviewbyname) | **GET** /api/tenant/entityView | Get Entity View by name (getTenantEntityViewByName)
[**getTenantEntityViews**](EntityViewControllerApi.md#gettenantentityviews) | **GET** /api/tenant/entityViews | Get Tenant Entity Views (getTenantEntityViews)
[**getUserEntityViews**](EntityViewControllerApi.md#getuserentityviews) | **GET** /api/user/entityViews | Get Entity Views (getUserEntityViews)
[**saveEntityView**](EntityViewControllerApi.md#saveentityview) | **POST** /api/entityView | Save or update entity view (saveEntityView)


# **deleteEntityView**
> deleteEntityView(entityViewId)

Delete entity view (deleteEntityView)

Delete the EntityView object based on the provided entity view id.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();
final String entityViewId = entityViewId_example; // String | A string value representing the entity view id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteEntityView(entityViewId);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->deleteEntityView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityViewId** | **String**| A string value representing the entity view id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEntityViewsByQuery**
> BuiltList<EntityView> findEntityViewsByQuery(entityViewSearchQuery)

Find related entity views (findEntityViewsByQuery)

Returns all entity views that are related to the specific entity. The entity id, relation type, entity view types, depth of the search, and other query parameters defined using complex 'EntityViewSearchQuery' object. See 'Model' tab of the Parameters for more info.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();
final EntityViewSearchQuery entityViewSearchQuery = ; // EntityViewSearchQuery | 

try {
    final response = api.findEntityViewsByQuery(entityViewSearchQuery);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->findEntityViewsByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityViewSearchQuery** | [**EntityViewSearchQuery**](EntityViewSearchQuery.md)|  | 

### Return type

[**BuiltList&lt;EntityView&gt;**](EntityView.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEntityViewInfos**
> PageDataEntityViewInfo getAllEntityViewInfos(pageSize, page, includeCustomers, type, textSearch, sortProperty, sortOrder)

Get All Entity View Infos for current user (getAllEntityViewInfos)

Returns a page of entity view info objects owned by the tenant or the customer of a current user. Entity Views Info extends the Entity View with owner name. Entity Views limit the degree of exposure of the Device or Asset telemetry and attributes to the Customers. Every Entity View references exactly one entity (device or asset) and defines telemetry and attribute keys that will be visible to the assigned Customer. As a Tenant Administrator you are able to create multiple EVs per Device or Asset and assign them to different Customers.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final bool includeCustomers = true; // bool | Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.
final String type = type_example; // String |   ## Entity View Filter  Allows to filter entity views based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Concrete Mixer' entity views which name starts with 'CAT':  ```json {   \"type\": \"entityViewType\",   \"entityViewType\": \"Concrete Mixer\",   \"entityViewNameFilter\": \"CAT\" } ```
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the entity view name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAllEntityViewInfos(pageSize, page, includeCustomers, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->getAllEntityViewInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **includeCustomers** | **bool**| Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers. | [optional] 
 **type** | **String**|   ## Entity View Filter  Allows to filter entity views based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Concrete Mixer' entity views which name starts with 'CAT':  ```json {   \"type\": \"entityViewType\",   \"entityViewType\": \"Concrete Mixer\",   \"entityViewNameFilter\": \"CAT\" } ``` | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the entity view name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityViewInfo**](PageDataEntityViewInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerEntityViewInfos**
> PageDataEntityViewInfo getCustomerEntityViewInfos(customerId, pageSize, page, includeCustomers, type, textSearch, sortProperty, sortOrder)

Get Customer Entity View Infos (getCustomerEntityViewInfos)

Returns a page of entity view info objects owned by the specified customer. Entity Views Info extends the Entity View with owner name. Entity Views limit the degree of exposure of the Device or Asset telemetry and attributes to the Customers. Every Entity View references exactly one entity (device or asset) and defines telemetry and attribute keys that will be visible to the assigned Customer. As a Tenant Administrator you are able to create multiple EVs per Device or Asset and assign them to different Customers.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final bool includeCustomers = true; // bool | Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.
final String type = type_example; // String |   ## Entity View Filter  Allows to filter entity views based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Concrete Mixer' entity views which name starts with 'CAT':  ```json {   \"type\": \"entityViewType\",   \"entityViewType\": \"Concrete Mixer\",   \"entityViewNameFilter\": \"CAT\" } ```
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the entity view name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getCustomerEntityViewInfos(customerId, pageSize, page, includeCustomers, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->getCustomerEntityViewInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **includeCustomers** | **bool**| Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers. | [optional] 
 **type** | **String**|   ## Entity View Filter  Allows to filter entity views based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Concrete Mixer' entity views which name starts with 'CAT':  ```json {   \"type\": \"entityViewType\",   \"entityViewType\": \"Concrete Mixer\",   \"entityViewNameFilter\": \"CAT\" } ``` | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the entity view name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityViewInfo**](PageDataEntityViewInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerEntityViews**
> PageDataEntityView getCustomerEntityViews(customerId, pageSize, page, type, textSearch, sortProperty, sortOrder)

Get Customer Entity Views (getCustomerEntityViews)

Returns a page of Entity View objects assigned to customer. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String type = type_example; // String |   ## Entity View Filter  Allows to filter entity views based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Concrete Mixer' entity views which name starts with 'CAT':  ```json {   \"type\": \"entityViewType\",   \"entityViewType\": \"Concrete Mixer\",   \"entityViewNameFilter\": \"CAT\" } ```
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the entity view name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getCustomerEntityViews(customerId, pageSize, page, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->getCustomerEntityViews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **type** | **String**|   ## Entity View Filter  Allows to filter entity views based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Concrete Mixer' entity views which name starts with 'CAT':  ```json {   \"type\": \"entityViewType\",   \"entityViewType\": \"Concrete Mixer\",   \"entityViewNameFilter\": \"CAT\" } ``` | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the entity view name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityView**](PageDataEntityView.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityViewById**
> EntityView getEntityViewById(entityViewId)

Get entity view (getEntityViewById)

Fetch the EntityView object based on the provided entity view id. Entity Views limit the degree of exposure of the Device or Asset telemetry and attributes to the Customers. Every Entity View references exactly one entity (device or asset) and defines telemetry and attribute keys that will be visible to the assigned Customer. As a Tenant Administrator you are able to create multiple EVs per Device or Asset and assign them to different Customers. See the 'Model' tab for more details.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();
final String entityViewId = entityViewId_example; // String | A string value representing the entity view id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getEntityViewById(entityViewId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->getEntityViewById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityViewId** | **String**| A string value representing the entity view id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**EntityView**](EntityView.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityViewInfoById**
> EntityViewInfo getEntityViewInfoById(entityViewId)

Get entity view info (getEntityViewInfoById)

Fetch the Entity View info object based on the provided entity view id. Entity Views Info extends the Entity View with owner name. Entity Views limit the degree of exposure of the Device or Asset telemetry and attributes to the Customers. Every Entity View references exactly one entity (device or asset) and defines telemetry and attribute keys that will be visible to the assigned Customer. As a Tenant Administrator you are able to create multiple EVs per Device or Asset and assign them to different Customers. See the 'Model' tab for more details.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();
final String entityViewId = entityViewId_example; // String | A string value representing the entity view id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getEntityViewInfoById(entityViewId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->getEntityViewInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityViewId** | **String**| A string value representing the entity view id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**EntityViewInfo**](EntityViewInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityViewTypes**
> BuiltList<EntitySubtype> getEntityViewTypes()

Get Entity View Types (getEntityViewTypes)

Returns a set of unique entity view types based on entity views that are either owned by the tenant or assigned to the customer which user is performing the request.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();

try {
    final response = api.getEntityViewTypes();
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->getEntityViewTypes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;EntitySubtype&gt;**](EntitySubtype.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityViewsByEntityGroupId**
> PageDataEntityView getEntityViewsByEntityGroupId(entityGroupId, pageSize, page, textSearch, sortProperty, sortOrder)

Get entity views by Entity Group Id (getEntityViewsByEntityGroupId)

Returns a page of Entity View objects that belongs to specified Entity View Id. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the entity view name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEntityViewsByEntityGroupId(entityGroupId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->getEntityViewsByEntityGroupId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the entity view name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityView**](PageDataEntityView.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityViewsByIds**
> BuiltList<EntityView> getEntityViewsByIds(entityViewIds)

Get Entity Views By Ids (getEntityViewsByIds)

Requested entity views must be owned by tenant or assigned to customer which user is performing the request.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();
final BuiltList<String> entityViewIds = ; // BuiltList<String> | A list of entity view ids, separated by comma ','

try {
    final response = api.getEntityViewsByIds(entityViewIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->getEntityViewsByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityViewIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of entity view ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;EntityView&gt;**](EntityView.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantEntityViewByName**
> EntityView getTenantEntityViewByName(entityViewName)

Get Entity View by name (getTenantEntityViewByName)

Fetch the Entity View object based on the tenant id and entity view name.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();
final String entityViewName = entityViewName_example; // String | Entity View name

try {
    final response = api.getTenantEntityViewByName(entityViewName);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->getTenantEntityViewByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityViewName** | **String**| Entity View name | 

### Return type

[**EntityView**](EntityView.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantEntityViews**
> PageDataEntityView getTenantEntityViews(pageSize, page, type, textSearch, sortProperty, sortOrder)

Get Tenant Entity Views (getTenantEntityViews)

Returns a page of entity views owned by tenant. Entity Views limit the degree of exposure of the Device or Asset telemetry and attributes to the Customers. Every Entity View references exactly one entity (device or asset) and defines telemetry and attribute keys that will be visible to the assigned Customer. As a Tenant Administrator you are able to create multiple EVs per Device or Asset and assign them to different Customers. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String type = type_example; // String |   ## Entity View Filter  Allows to filter entity views based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Concrete Mixer' entity views which name starts with 'CAT':  ```json {   \"type\": \"entityViewType\",   \"entityViewType\": \"Concrete Mixer\",   \"entityViewNameFilter\": \"CAT\" } ```
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the entity view name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantEntityViews(pageSize, page, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->getTenantEntityViews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **type** | **String**|   ## Entity View Filter  Allows to filter entity views based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Concrete Mixer' entity views which name starts with 'CAT':  ```json {   \"type\": \"entityViewType\",   \"entityViewType\": \"Concrete Mixer\",   \"entityViewNameFilter\": \"CAT\" } ``` | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the entity view name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityView**](PageDataEntityView.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserEntityViews**
> PageDataEntityView getUserEntityViews(pageSize, page, type, textSearch, sortProperty, sortOrder)

Get Entity Views (getUserEntityViews)

Returns a page of entity views that are available for the current user. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String type = type_example; // String |   ## Entity View Filter  Allows to filter entity views based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Concrete Mixer' entity views which name starts with 'CAT':  ```json {   \"type\": \"entityViewType\",   \"entityViewType\": \"Concrete Mixer\",   \"entityViewNameFilter\": \"CAT\" } ```
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the entity view name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getUserEntityViews(pageSize, page, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->getUserEntityViews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **type** | **String**|   ## Entity View Filter  Allows to filter entity views based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Concrete Mixer' entity views which name starts with 'CAT':  ```json {   \"type\": \"entityViewType\",   \"entityViewType\": \"Concrete Mixer\",   \"entityViewNameFilter\": \"CAT\" } ``` | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the entity view name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityView**](PageDataEntityView.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveEntityView**
> EntityView saveEntityView(entityView, entityGroupId, entityGroupIds, nameConflictPolicy, uniquifySeparator, uniquifyStrategy)

Save or update entity view (saveEntityView)

Entity Views limit the degree of exposure of the Device or Asset telemetry and attributes to the Customers. Every Entity View references exactly one entity (device or asset) and defines telemetry and attribute keys that will be visible to the assigned Customer. As a Tenant Administrator you are able to create multiple EVs per Device or Asset and assign them to different Customers. See the 'Model' tab for more details.Remove 'id', 'tenantId' and optionally 'customerId' from the request body example (below) to create new Entity View entity.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityViewControllerApi();
final EntityView entityView = ; // EntityView | 
final String entityGroupId = entityGroupId_example; // String | 
final BuiltList<String> entityGroupIds = ; // BuiltList<String> | A list of entity group ids, separated by comma ','
final NameConflictPolicy nameConflictPolicy = ; // NameConflictPolicy | Optional value of name conflict policy. Possible values: FAIL or UNIQUIFY.  If omitted, FAIL policy is applied. FAIL policy implies exception will be thrown if an entity with the same name already exists.  UNIQUIFY policy appends a suffix to the entity name, if a name conflict occurs.
final String uniquifySeparator = uniquifySeparator_example; // String | Optional value of name suffix separator used by UNIQUIFY policy. By default, underscore separator is used. For example, strategy is UNIQUIFY, separator is '-'; if a name conflict occurs for entity name 'test-name', created entity will have name like 'test-name-7fsh4f'.
final UniquifyStrategy uniquifyStrategy = ; // UniquifyStrategy | Optional value of uniquify strategy used by UNIQUIFY policy. Possible values: RANDOM or INCREMENTAL. By default, RANDOM strategy is used, which means random alphanumeric string will be added as a suffix to entity name. INCREMENTAL implies the first possible number starting from 1 will be added as a name suffix. For example, strategy is UNIQUIFY, uniquify strategy is INCREMENTAL; if a name conflict occurs for entity name 'test-name', created entity will have name like 'test-name-1.

try {
    final response = api.saveEntityView(entityView, entityGroupId, entityGroupIds, nameConflictPolicy, uniquifySeparator, uniquifyStrategy);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityViewControllerApi->saveEntityView: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityView** | [**EntityView**](EntityView.md)|  | 
 **entityGroupId** | **String**|  | [optional] 
 **entityGroupIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of entity group ids, separated by comma ',' | [optional] 
 **nameConflictPolicy** | [**NameConflictPolicy**](.md)| Optional value of name conflict policy. Possible values: FAIL or UNIQUIFY.  If omitted, FAIL policy is applied. FAIL policy implies exception will be thrown if an entity with the same name already exists.  UNIQUIFY policy appends a suffix to the entity name, if a name conflict occurs. | [optional] [default to FAIL]
 **uniquifySeparator** | **String**| Optional value of name suffix separator used by UNIQUIFY policy. By default, underscore separator is used. For example, strategy is UNIQUIFY, separator is '-'; if a name conflict occurs for entity name 'test-name', created entity will have name like 'test-name-7fsh4f'. | [optional] [default to '_']
 **uniquifyStrategy** | [**UniquifyStrategy**](.md)| Optional value of uniquify strategy used by UNIQUIFY policy. Possible values: RANDOM or INCREMENTAL. By default, RANDOM strategy is used, which means random alphanumeric string will be added as a suffix to entity name. INCREMENTAL implies the first possible number starting from 1 will be added as a name suffix. For example, strategy is UNIQUIFY, uniquify strategy is INCREMENTAL; if a name conflict occurs for entity name 'test-name', created entity will have name like 'test-name-1. | [optional] [default to RANDOM]

### Return type

[**EntityView**](EntityView.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

