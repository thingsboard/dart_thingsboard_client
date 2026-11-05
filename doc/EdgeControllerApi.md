# thingsboard_client.api.EdgeControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateInstance**](EdgeControllerApi.md#activateinstance) | **POST** /api/license/activateInstance | Activate edge instance (activateInstance)
[**activateInstanceV2**](EdgeControllerApi.md#activateinstancev2) | **POST** /api/v2/license/activateInstance | Activate edge instance (activateInstance)
[**checkInstance**](EdgeControllerApi.md#checkinstance) | **POST** /api/license/checkInstance | Check edge license (checkInstance)
[**checkInstanceV2**](EdgeControllerApi.md#checkinstancev2) | **POST** /api/v2/license/checkInstance | Check edge license (checkInstance)
[**deleteEdge**](EdgeControllerApi.md#deleteedge) | **DELETE** /api/edge/{edgeId} | Delete edge (deleteEdge)
[**findEdgesByQuery**](EdgeControllerApi.md#findedgesbyquery) | **POST** /api/edges | Find related edges (findEdgesByQuery)
[**findMissingToRelatedRuleChains**](EdgeControllerApi.md#findmissingtorelatedrulechains) | **GET** /api/edge/missingToRelatedRuleChains/{edgeId} | Find missing rule chains (findMissingToRelatedRuleChains)
[**getAllEdgeInfos**](EdgeControllerApi.md#getalledgeinfos) | **GET** /api/edgeInfos/all | Get All Edge Infos for current user (getAllEdgeInfos)
[**getCustomerEdgeInfos**](EdgeControllerApi.md#getcustomeredgeinfos) | **GET** /api/customer/{customerId}/edgeInfos | Get Customer Edge Infos (getCustomerEdgeInfos)
[**getCustomerEdges**](EdgeControllerApi.md#getcustomeredges) | **GET** /api/customer/{customerId}/edges | Get Customer Edges (getCustomerEdges)
[**getEdgeById**](EdgeControllerApi.md#getedgebyid) | **GET** /api/edge/{edgeId} | Get Edge (getEdgeById)
[**getEdgeInfoById**](EdgeControllerApi.md#getedgeinfobyid) | **GET** /api/edge/info/{edgeId} | Get Edge Info (getEdgeInfoById)
[**getEdgeInstallInstructions**](EdgeControllerApi.md#getedgeinstallinstructions) | **GET** /api/edge/instructions/install/{edgeId}/{method} | Get Edge Install Instructions (getEdgeInstallInstructions)
[**getEdgeList**](EdgeControllerApi.md#getedgelist) | **GET** /api/edges/list | Get Edges By Ids (getEdgeList)
[**getEdgeTypes**](EdgeControllerApi.md#getedgetypes) | **GET** /api/edge/types | Get Edge Types (getEdgeTypes)
[**getEdgeUpgradeInstructions**](EdgeControllerApi.md#getedgeupgradeinstructions) | **GET** /api/edge/instructions/upgrade/{edgeVersion}/{method} | Get Edge Upgrade Instructions (getEdgeUpgradeInstructions)
[**getEdges**](EdgeControllerApi.md#getedges) | **GET** /api/edges | Get Tenant Edges (getEdges)
[**getEdgesByEntityGroupId**](EdgeControllerApi.md#getedgesbyentitygroupid) | **GET** /api/entityGroup/{entityGroupId}/edges | Get edges by Entity Group Id (getEdgesByEntityGroupId)
[**getTenantEdgeByName**](EdgeControllerApi.md#gettenantedgebyname) | **GET** /api/tenant/edge | Get Tenant Edge by name (getTenantEdgeByName)
[**getTenantEdges**](EdgeControllerApi.md#gettenantedges) | **GET** /api/tenant/edges | Get Tenant Edges (getTenantEdges)
[**getUserEdges**](EdgeControllerApi.md#getuseredges) | **GET** /api/user/edges | Get Edges (getUserEdges)
[**isEdgeUpgradeAvailable**](EdgeControllerApi.md#isedgeupgradeavailable) | **GET** /api/edge/{edgeId}/upgrade/available | Is edge upgrade enabled (isEdgeUpgradeAvailable)
[**isEdgesSupportEnabled**](EdgeControllerApi.md#isedgessupportenabled) | **GET** /api/edges/enabled | Is edges support enabled (isEdgesSupportEnabled)
[**processEdgesBulkImport**](EdgeControllerApi.md#processedgesbulkimport) | **POST** /api/edge/bulk_import | Import the bulk of edges (processEdgesBulkImport)
[**saveEdge**](EdgeControllerApi.md#saveedge) | **POST** /api/edge | Create Or Update Edge (saveEdge)
[**setEdgeRootRuleChain**](EdgeControllerApi.md#setedgerootrulechain) | **POST** /api/edge/{edgeId}/{ruleChainId}/root | Set root rule chain for provided edge (setEdgeRootRuleChain)
[**syncEdge**](EdgeControllerApi.md#syncedge) | **POST** /api/edge/sync/{edgeId} | Sync edge (syncEdge)


# **activateInstance**
> JsonObject activateInstance(licenseSecret, releaseDate)

Activate edge instance (activateInstance)

Activates edge license on license portal.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String licenseSecret = licenseSecret_example; // String | 
final String releaseDate = releaseDate_example; // String | 

try {
    final response = api.activateInstance(licenseSecret, releaseDate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->activateInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **licenseSecret** | **String**|  | 
 **releaseDate** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activateInstanceV2**
> JsonObject activateInstanceV2(licenseSecret, releaseDate, clusterId, protocolVersion)

Activate edge instance (activateInstance)

Activates edge license (V1/V2) on license portal.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String licenseSecret = licenseSecret_example; // String | 
final String releaseDate = releaseDate_example; // String | 
final String clusterId = clusterId_example; // String | 
final String protocolVersion = protocolVersion_example; // String | 

try {
    final response = api.activateInstanceV2(licenseSecret, releaseDate, clusterId, protocolVersion);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->activateInstanceV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **licenseSecret** | **String**|  | 
 **releaseDate** | **String**|  | 
 **clusterId** | **String**|  | 
 **protocolVersion** | **String**|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkInstance**
> JsonObject checkInstance(body)

Check edge license (checkInstance)

Checks license request from edge service by forwarding request to license portal.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final JsonObject body = ; // JsonObject | 

try {
    final response = api.checkInstance(body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->checkInstance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **JsonObject**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkInstanceV2**
> JsonObject checkInstanceV2(body)

Check edge license (checkInstance)

Checks license request (V1/V2) from edge service by forwarding request to license portal.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final JsonObject body = ; // JsonObject | 

try {
    final response = api.checkInstanceV2(body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->checkInstanceV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **JsonObject**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEdge**
> deleteEdge(edgeId)

Delete edge (deleteEdge)

Deletes the edge. Referencing non-existing edge Id will cause an error.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteEdge(edgeId);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->deleteEdge: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEdgesByQuery**
> BuiltList<Edge> findEdgesByQuery(edgeSearchQuery)

Find related edges (findEdgesByQuery)

Returns all edges that are related to the specific entity. The entity id, relation type, edge types, depth of the search, and other query parameters defined using complex 'EdgeSearchQuery' object. See 'Model' tab of the Parameters for more info.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final EdgeSearchQuery edgeSearchQuery = ; // EdgeSearchQuery | 

try {
    final response = api.findEdgesByQuery(edgeSearchQuery);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->findEdgesByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeSearchQuery** | [**EdgeSearchQuery**](EdgeSearchQuery.md)|  | 

### Return type

[**BuiltList&lt;Edge&gt;**](Edge.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findMissingToRelatedRuleChains**
> String findMissingToRelatedRuleChains(edgeId)

Find missing rule chains (findMissingToRelatedRuleChains)

Returns list of rule chains ids that are not assigned to particular edge, but these rule chains are present in the already assigned rule chains to edge.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.findMissingToRelatedRuleChains(edgeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->findMissingToRelatedRuleChains: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEdgeInfos**
> PageDataEdgeInfo getAllEdgeInfos(pageSize, page, includeCustomers, type, textSearch, sortProperty, sortOrder)

Get All Edge Infos for current user (getAllEdgeInfos)

Returns a page of edge info objects owned by the tenant or the customer of a current user. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final bool includeCustomers = true; // bool | Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.
final String type = type_example; // String | A string value representing the edge type. For example, 'default'
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the edge name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAllEdgeInfos(pageSize, page, includeCustomers, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getAllEdgeInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **includeCustomers** | **bool**| Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers. | [optional] 
 **type** | **String**| A string value representing the edge type. For example, 'default' | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the edge name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEdgeInfo**](PageDataEdgeInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerEdgeInfos**
> PageDataEdgeInfo getCustomerEdgeInfos(customerId, pageSize, page, includeCustomers, type, textSearch, sortProperty, sortOrder)

Get Customer Edge Infos (getCustomerEdgeInfos)

Returns a page of edge info objects owned by the specified customer. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final bool includeCustomers = true; // bool | Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.
final String type = type_example; // String | A string value representing the edge type. For example, 'default'
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the edge name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getCustomerEdgeInfos(customerId, pageSize, page, includeCustomers, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getCustomerEdgeInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **includeCustomers** | **bool**| Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers. | [optional] 
 **type** | **String**| A string value representing the edge type. For example, 'default' | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the edge name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEdgeInfo**](PageDataEdgeInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerEdges**
> PageDataEdge getCustomerEdges(customerId, pageSize, page, type, textSearch, sortProperty, sortOrder)

Get Customer Edges (getCustomerEdges)

Returns a page of edges objects assigned to customer. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String type = type_example; // String | A string value representing the edge type. For example, 'default'
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the edge name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getCustomerEdges(customerId, pageSize, page, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getCustomerEdges: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **type** | **String**| A string value representing the edge type. For example, 'default' | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the edge name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEdge**](PageDataEdge.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgeById**
> Edge getEdgeById(edgeId)

Get Edge (getEdgeById)

Get the Edge object based on the provided Edge Id. If the user has the authority of 'Tenant Administrator', the server checks that the edge is owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the edge is assigned to the same customer.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getEdgeById(edgeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getEdgeById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Edge**](Edge.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgeInfoById**
> EdgeInfo getEdgeInfoById(edgeId)

Get Edge Info (getEdgeInfoById)

Get the Edge info object based on the provided Edge Id. If the user has the authority of 'Tenant Administrator', the server checks that the edge is owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the edge is assigned to the same customer.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getEdgeInfoById(edgeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getEdgeInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**EdgeInfo**](EdgeInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgeInstallInstructions**
> EdgeInstructions getEdgeInstallInstructions(edgeId, method)

Get Edge Install Instructions (getEdgeInstallInstructions)

Get an install instructions for provided edge id.If the user has the authority of 'Tenant Administrator', the server checks that the edge is owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the edge is assigned to the same customer.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String method = method_example; // String | Installation method ('docker', 'ubuntu' or 'centos')

try {
    final response = api.getEdgeInstallInstructions(edgeId, method);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getEdgeInstallInstructions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **method** | **String**| Installation method ('docker', 'ubuntu' or 'centos') | 

### Return type

[**EdgeInstructions**](EdgeInstructions.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgeList**
> BuiltList<Edge> getEdgeList(edgeIds)

Get Edges By Ids (getEdgeList)

Requested edges must be owned by tenant or assigned to customer which user is performing the request.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final BuiltList<String> edgeIds = ; // BuiltList<String> | A list of edges ids, separated by comma ','

try {
    final response = api.getEdgeList(edgeIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getEdgeList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of edges ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;Edge&gt;**](Edge.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgeTypes**
> BuiltList<EntitySubtype> getEdgeTypes()

Get Edge Types (getEdgeTypes)

Returns a set of unique edge types based on edges that are either owned by the tenant or assigned to the customer which user is performing the request.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();

try {
    final response = api.getEdgeTypes();
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getEdgeTypes: $e\n');
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

# **getEdgeUpgradeInstructions**
> EdgeInstructions getEdgeUpgradeInstructions(edgeVersion, method)

Get Edge Upgrade Instructions (getEdgeUpgradeInstructions)

Get an upgrade instructions for provided edge version.If the user has the authority of 'Tenant Administrator', the server checks that the edge is owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the edge is assigned to the same customer.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String edgeVersion = edgeVersion_example; // String | Edge version
final String method = method_example; // String | Upgrade method ('docker', 'ubuntu' or 'centos')

try {
    final response = api.getEdgeUpgradeInstructions(edgeVersion, method);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getEdgeUpgradeInstructions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeVersion** | **String**| Edge version | 
 **method** | **String**| Upgrade method ('docker', 'ubuntu' or 'centos') | 

### Return type

[**EdgeInstructions**](EdgeInstructions.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdges**
> PageDataEdge getEdges(pageSize, page, textSearch, sortProperty, sortOrder)

Get Tenant Edges (getEdges)

Returns a page of edges owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the edge name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEdges(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getEdges: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the edge name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEdge**](PageDataEdge.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgesByEntityGroupId**
> PageDataEdge getEdgesByEntityGroupId(entityGroupId, pageSize, page, textSearch, sortProperty, sortOrder)

Get edges by Entity Group Id (getEdgesByEntityGroupId)

Returns a page of Edge objects that belongs to specified Entity Group Id. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the edge name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEdgesByEntityGroupId(entityGroupId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getEdgesByEntityGroupId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the edge name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEdge**](PageDataEdge.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantEdgeByName**
> Edge getTenantEdgeByName(edgeName)

Get Tenant Edge by name (getTenantEdgeByName)

Requested edge must be owned by tenant or customer that the user belongs to. Edge name is an unique property of edge. So it can be used to identify the edge.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String edgeName = edgeName_example; // String | Unique name of the edge

try {
    final response = api.getTenantEdgeByName(edgeName);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getTenantEdgeByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeName** | **String**| Unique name of the edge | 

### Return type

[**Edge**](Edge.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantEdges**
> PageDataEdge getTenantEdges(pageSize, page, type, textSearch, sortProperty, sortOrder)

Get Tenant Edges (getTenantEdges)

Returns a page of edges owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String type = type_example; // String | A string value representing the edge type. For example, 'default'
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the edge name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantEdges(pageSize, page, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getTenantEdges: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **type** | **String**| A string value representing the edge type. For example, 'default' | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the edge name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEdge**](PageDataEdge.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserEdges**
> PageDataEdge getUserEdges(pageSize, page, type, textSearch, sortProperty, sortOrder)

Get Edges (getUserEdges)

Returns a page of edges available for current user. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String type = type_example; // String | A string value representing the edge type. For example, 'default'
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the edge name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getUserEdges(pageSize, page, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->getUserEdges: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **type** | **String**| A string value representing the edge type. For example, 'default' | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the edge name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEdge**](PageDataEdge.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isEdgeUpgradeAvailable**
> bool isEdgeUpgradeAvailable(edgeId)

Is edge upgrade enabled (isEdgeUpgradeAvailable)

Returns 'true' if upgrade available for connected edge, 'false' - otherwise.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.isEdgeUpgradeAvailable(edgeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->isEdgeUpgradeAvailable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

**bool**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isEdgesSupportEnabled**
> bool isEdgesSupportEnabled()

Is edges support enabled (isEdgesSupportEnabled)

Returns 'true' if edges support enabled on server, 'false' - otherwise.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();

try {
    final response = api.isEdgesSupportEnabled();
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->isEdgesSupportEnabled: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**bool**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **processEdgesBulkImport**
> BulkImportResultEdge processEdgesBulkImport(bulkImportRequest)

Import the bulk of edges (processEdgesBulkImport)

There's an ability to import the bulk of edges using the only .csv file.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final BulkImportRequest bulkImportRequest = ; // BulkImportRequest | 

try {
    final response = api.processEdgesBulkImport(bulkImportRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->processEdgesBulkImport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkImportRequest** | [**BulkImportRequest**](BulkImportRequest.md)|  | 

### Return type

[**BulkImportResultEdge**](BulkImportResultEdge.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveEdge**
> Edge saveEdge(edge, entityGroupId, entityGroupIds)

Create Or Update Edge (saveEdge)

Create or update the Edge. When creating edge, platform generates Edge Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created edge id will be present in the response. Specify existing Edge id to update the edge. Referencing non-existing Edge Id will cause 'Not Found' error.  Edge name is unique in the scope of tenant. Use unique identifiers like MAC or IMEI for the edge names and non-unique 'label' field for user-friendly visualization purposes.Remove 'id', 'tenantId' and optionally 'customerId' from the request body example (below) to create new Edge entity. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final Edge edge = ; // Edge | 
final String entityGroupId = entityGroupId_example; // String | 
final BuiltList<String> entityGroupIds = ; // BuiltList<String> | A list of entity group ids, separated by comma ','

try {
    final response = api.saveEdge(edge, entityGroupId, entityGroupIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->saveEdge: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edge** | [**Edge**](Edge.md)|  | 
 **entityGroupId** | **String**|  | [optional] 
 **entityGroupIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of entity group ids, separated by comma ',' | [optional] 

### Return type

[**Edge**](Edge.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setEdgeRootRuleChain**
> Edge setEdgeRootRuleChain(edgeId, ruleChainId)

Set root rule chain for provided edge (setEdgeRootRuleChain)

Change root rule chain of the edge to the new provided rule chain.  This operation will send a notification to update root rule chain on remote edge service.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String ruleChainId = ruleChainId_example; // String | A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.setEdgeRootRuleChain(edgeId, ruleChainId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->setEdgeRootRuleChain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **ruleChainId** | **String**| A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Edge**](Edge.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncEdge**
> String syncEdge(edgeId)

Sync edge (syncEdge)

Starts synchronization process between edge and cloud.  All entities that are assigned to particular edge are going to be send to remote edge service.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEdgeControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.syncEdge(edgeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EdgeControllerApi->syncEdge: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

