# thingsboard_client.api.EntityGroupControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addEntitiesToEntityGroup**](EntityGroupControllerApi.md#addentitiestoentitygroup) | **POST** /api/entityGroup/{entityGroupId}/addEntities | Add entities to the group (addEntitiesToEntityGroup)
[**assignEntityGroupToEdge**](EntityGroupControllerApi.md#assignentitygrouptoedge) | **POST** /api/edge/{edgeId}/entityGroup/{entityGroupId}/{groupType} | Assign entity group to edge (assignEntityGroupToEdge)
[**deleteEntityGroup**](EntityGroupControllerApi.md#deleteentitygroup) | **DELETE** /api/entityGroup/{entityGroupId} | Delete Entity Group (deleteEntityGroup)
[**getAllEdgeEntityGroups**](EntityGroupControllerApi.md#getalledgeentitygroups) | **GET** /api/allEntityGroups/edge/{edgeId}/{groupType} | Get All Edge Entity Groups by entity type (getAllEdgeEntityGroups)
[**getAllEntityGroupsByOwnerAndType**](EntityGroupControllerApi.md#getallentitygroupsbyownerandtype) | **GET** /api/entityGroups/{ownerType}/{ownerId}/{groupType}/all | Get Entity Groups by owner and entity type (getAllEntityGroupsByOwnerAndType)
[**getAllEntityGroupsByType**](EntityGroupControllerApi.md#getallentitygroupsbytype) | **GET** /api/entityGroups/{groupType}/all | Get Entity Groups by entity type (getAllEntityGroupsByType)
[**getAllSharedEntityGroups**](EntityGroupControllerApi.md#getallsharedentitygroups) | **GET** /api/entityGroups/{groupType}/shared/all | Get Shared Entity Groups by entity type (getAllSharedEntityGroups)
[**getEdgeEntityGroups**](EntityGroupControllerApi.md#getedgeentitygroups) | **GET** /api/entityGroups/edge/{edgeId}/{groupType} | Get Edge Entity Groups by entity type (getEdgeEntityGroups)
[**getEntities**](EntityGroupControllerApi.md#getentities) | **GET** /api/entityGroup/{entityGroupId}/entities | Get Group Entities (getEntities)
[**getEntityGroupAllByOwnerAndType**](EntityGroupControllerApi.md#getentitygroupallbyownerandtype) | **GET** /api/entityGroup/all/{ownerType}/{ownerId}/{groupType} | Get special group All by owner and entity type (getEntityGroupsByOwnerAndType)
[**getEntityGroupById**](EntityGroupControllerApi.md#getentitygroupbyid) | **GET** /api/entityGroup/{entityGroupId} | Get Entity Group Info (getEntityGroupById)
[**getEntityGroupByOwnerAndNameAndType**](EntityGroupControllerApi.md#getentitygroupbyownerandnameandtype) | **GET** /api/entityGroup/{ownerType}/{ownerId}/{groupType}/{groupName} | Get Entity Group by owner, type and name (getEntityGroupByOwnerAndNameAndType)
[**getEntityGroupEntityInfoById**](EntityGroupControllerApi.md#getentitygroupentityinfobyid) | **GET** /api/entityGroupInfo/{entityGroupId} | Get Entity Group Entity Info (getEntityGroupEntityInfoById)
[**getEntityGroupEntityInfosByIds**](EntityGroupControllerApi.md#getentitygroupentityinfosbyids) | **GET** /api/entityGroupInfos | Get Entity Group Entity Infos by Ids (getEntityGroupEntityInfosByIds)
[**getEntityGroupEntityInfosByOwnerAndTypeAndPageLink**](EntityGroupControllerApi.md#getentitygroupentityinfosbyownerandtypeandpagelink) | **GET** /api/entityGroupInfos/{ownerType}/{ownerId}/{groupType} | Get Entity Group Entity Infos by owner and entity type and page link (getEntityGroupEntityInfosByOwnerAndTypeAndPageLink)
[**getEntityGroupEntityInfosByTypeAndPageLink**](EntityGroupControllerApi.md#getentitygroupentityinfosbytypeandpagelink) | **GET** /api/entityGroupInfos/{groupType} | Get Entity Group Entity Infos by entity type and page link (getEntityGroupEntityInfosByTypeAndPageLink)
[**getEntityGroupEntityInfosHierarchyByOwnerAndTypeAndPageLink**](EntityGroupControllerApi.md#getentitygroupentityinfoshierarchybyownerandtypeandpagelink) | **GET** /api/entityGroupInfosHierarchy/{ownerType}/{ownerId}/{groupType} | Get Entity Group Entity Infos for all owners starting from specified than ending with owner of current user (getEntityGroupEntityInfosHierarchyByOwnerAndTypeAndPageLink)
[**getEntityGroupsByIds**](EntityGroupControllerApi.md#getentitygroupsbyids) | **GET** /api/entityGroups/list | Get Entity Groups by Ids (getEntityGroupsByIds)
[**getEntityGroupsByOwnerAndTypeAndPageLink**](EntityGroupControllerApi.md#getentitygroupsbyownerandtypeandpagelink) | **GET** /api/entityGroups/{ownerType}/{ownerId}/{groupType} | Get Entity Groups by owner and entity type and page link (getEntityGroupsByOwnerAndTypeAndPageLink)
[**getEntityGroupsByTypeAndPageLink**](EntityGroupControllerApi.md#getentitygroupsbytypeandpagelink) | **GET** /api/entityGroups/{groupType} | Get Entity Groups by entity type and page link (getEntityGroupsByTypeAndPageLink)
[**getEntityGroupsForEntity**](EntityGroupControllerApi.md#getentitygroupsforentity) | **GET** /api/entityGroups/{entityType}/{entityId} | Get Entity Groups by Entity Id (getEntityGroupsForEntity)
[**getEntityGroupsHierarchyByOwnerAndTypeAndPageLink**](EntityGroupControllerApi.md#getentitygroupshierarchybyownerandtypeandpagelink) | **GET** /api/entityGroupsHierarchy/{ownerType}/{ownerId}/{groupType} | Get Entity Groups for all owners starting from specified than ending with owner of current user (getEntityGroupsHierarchyByOwnerAndTypeAndPageLink)
[**getGroupEntity**](EntityGroupControllerApi.md#getgroupentity) | **GET** /api/entityGroup/{entityGroupId}/{entityId} | Get Group Entity (getGroupEntity)
[**getOwnerInfo**](EntityGroupControllerApi.md#getownerinfo) | **GET** /api/ownerInfo/{ownerType}/{ownerId} | Get Owner Info (getOwnerInfo)
[**getOwnerInfos**](EntityGroupControllerApi.md#getownerinfos) | **GET** /api/ownerInfos | Get Owner Infos (getOwnerInfos)
[**getOwners**](EntityGroupControllerApi.md#getowners) | **GET** /api/owners | Get Owners (getOwners)
[**getSharedEntityGroupEntityInfosByTypeAndPageLink**](EntityGroupControllerApi.md#getsharedentitygroupentityinfosbytypeandpagelink) | **GET** /api/entityGroupInfos/{groupType}/shared | Get Shared Entity Group Entity Infos by entity type and page link (getSharedEntityGroupEntityInfosByTypeAndPageLink)
[**getSharedEntityGroupsByTypeAndPageLink**](EntityGroupControllerApi.md#getsharedentitygroupsbytypeandpagelink) | **GET** /api/entityGroups/{groupType}/shared | Get Shared Entity Groups by entity type and page link (getSharedEntityGroupsByTypeAndPageLink)
[**makeEntityGroupPrivate**](EntityGroupControllerApi.md#makeentitygroupprivate) | **POST** /api/entityGroup/{entityGroupId}/makePrivate | Make Entity Group Private (makeEntityGroupPrivate)
[**makeEntityGroupPublic**](EntityGroupControllerApi.md#makeentitygrouppublic) | **POST** /api/entityGroup/{entityGroupId}/makePublic | Make Entity Group Publicly available (makeEntityGroupPublic)
[**removeEntitiesFromEntityGroup**](EntityGroupControllerApi.md#removeentitiesfromentitygroup) | **POST** /api/entityGroup/{entityGroupId}/deleteEntities | Remove entities from the group (removeEntitiesFromEntityGroup)
[**saveEntityGroup**](EntityGroupControllerApi.md#saveentitygroup) | **POST** /api/entityGroup | Create Or Update Entity Group (saveEntityGroup)
[**shareEntityGroup**](EntityGroupControllerApi.md#shareentitygroup) | **POST** /api/entityGroup/{entityGroupId}/share | Share the Entity Group (shareEntityGroup)
[**shareEntityGroupToChildOwnerUserGroup**](EntityGroupControllerApi.md#shareentitygrouptochildownerusergroup) | **POST** /api/entityGroup/{entityGroupId}/{userGroupId}/{roleId}/share | Share the Entity Group with User group (shareEntityGroupToChildOwnerUserGroup)
[**shareEntityGroupToChildOwnerUserGroupV2**](EntityGroupControllerApi.md#shareentitygrouptochildownerusergroupv2) | **POST** /api/v2/entityGroup/{entityGroupId}/share | Share the Entity Group with User group (shareEntityGroupToChildOwnerUserGroupV2)
[**unassignEntityGroupFromEdge**](EntityGroupControllerApi.md#unassignentitygroupfromedge) | **DELETE** /api/edge/{edgeId}/entityGroup/{entityGroupId}/{groupType} | Unassign entity group from edge (unassignEntityGroupFromEdge)


# **addEntitiesToEntityGroup**
> addEntitiesToEntityGroup(entityGroupId, requestBody)

Add entities to the group (addEntitiesToEntityGroup)

Add entities to the specified entity group. This operation is idempotent: entities that are already members of the group are silently ignored. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'ADD_TO_GROUP' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final BuiltList<String> requestBody = ; // BuiltList<String> | 

try {
    api.addEntitiesToEntityGroup(entityGroupId, requestBody);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->addEntitiesToEntityGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **requestBody** | [**BuiltList&lt;String&gt;**](String.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assignEntityGroupToEdge**
> EntityGroup assignEntityGroupToEdge(edgeId, groupType, entityGroupId)

Assign entity group to edge (assignEntityGroupToEdge)

Creates assignment of an existing entity group to an instance of The Edge. Assignment works in async way - first, notification event pushed to edge service queue on platform. Second, remote edge service will receive a copy of assignment entity group (Edge will receive this instantly, if it's currently connected, or once it's going to be connected to platform). Third, once entity group will be delivered to edge service, edge will request entities of this group to be send to edge. Once entities will be delivered to edge service, they are going to be available for usage on remote edge instance.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String groupType = groupType_example; // String | EntityGroup type
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.assignEntityGroupToEdge(edgeId, groupType, entityGroupId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->assignEntityGroupToEdge: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **groupType** | **String**| EntityGroup type | 
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**EntityGroup**](EntityGroup.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEntityGroup**
> deleteEntityGroup(entityGroupId)

Delete Entity Group (deleteEntityGroup)

Deletes the entity group but does not delete the entities in the group, since they are also present in reserved group 'All'. Referencing non-existing Entity Group Id will cause an error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'DELETE' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteEntityGroup(entityGroupId);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->deleteEntityGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEdgeEntityGroups**
> BuiltList<EntityGroupInfo> getAllEdgeEntityGroups(edgeId, groupType)

Get All Edge Entity Groups by entity type (getAllEdgeEntityGroups)

Fetch the list of Entity Group Info objects based on the provided Entity Type and assigned to the provided Edge entity. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.Entity Group Info extends Entity Group object and adds 'ownerIds' - a list of owner ids.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String groupType = groupType_example; // String | EntityGroup type

try {
    final response = api.getAllEdgeEntityGroups(edgeId, groupType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getAllEdgeEntityGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **groupType** | **String**| EntityGroup type | 

### Return type

[**BuiltList&lt;EntityGroupInfo&gt;**](EntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEntityGroupsByOwnerAndType**
> BuiltList<EntityGroupInfo> getAllEntityGroupsByOwnerAndType(ownerType, ownerId, groupType)

Get Entity Groups by owner and entity type (getAllEntityGroupsByOwnerAndType)

Fetch the list of Entity Group Info objects based on the provided Owner Id and Entity Type. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.Entity Group Info extends Entity Group object and adds 'ownerIds' - a list of owner ids.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String ownerType = ownerType_example; // String | Tenant or Customer
final String ownerId = 784f394c-42b6-435a-983c-b7beff2784f9; // String | A string value representing the Tenant or Customer id
final String groupType = groupType_example; // String | Entity Group type

try {
    final response = api.getAllEntityGroupsByOwnerAndType(ownerType, ownerId, groupType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getAllEntityGroupsByOwnerAndType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerType** | **String**| Tenant or Customer | 
 **ownerId** | **String**| A string value representing the Tenant or Customer id | 
 **groupType** | **String**| Entity Group type | 

### Return type

[**BuiltList&lt;EntityGroupInfo&gt;**](EntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEntityGroupsByType**
> BuiltList<EntityGroupInfo> getAllEntityGroupsByType(groupType, includeShared)

Get Entity Groups by entity type (getAllEntityGroupsByType)

Fetch the list of Entity Group Info objects based on the provided Entity Type. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.Entity Group Info extends Entity Group object and adds 'ownerIds' - a list of owner ids.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String groupType = groupType_example; // String | Entity Group type
final bool includeShared = true; // bool | Whether to include shared entity groups.

try {
    final response = api.getAllEntityGroupsByType(groupType, includeShared);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getAllEntityGroupsByType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupType** | **String**| Entity Group type | 
 **includeShared** | **bool**| Whether to include shared entity groups. | [optional] 

### Return type

[**BuiltList&lt;EntityGroupInfo&gt;**](EntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllSharedEntityGroups**
> BuiltList<EntityGroupInfo> getAllSharedEntityGroups(groupType)

Get Shared Entity Groups by entity type (getAllSharedEntityGroups)

Fetch the list of Shared Entity Group Info objects based on the provided Entity Type. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.Entity Group Info extends Entity Group object and adds 'ownerIds' - a list of owner ids.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String groupType = groupType_example; // String | Entity Group type

try {
    final response = api.getAllSharedEntityGroups(groupType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getAllSharedEntityGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupType** | **String**| Entity Group type | 

### Return type

[**BuiltList&lt;EntityGroupInfo&gt;**](EntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgeEntityGroups**
> PageDataEntityGroupInfo getEdgeEntityGroups(edgeId, groupType, pageSize, page, textSearch, sortProperty, sortOrder)

Get Edge Entity Groups by entity type (getEdgeEntityGroups)

Returns a page of Entity Group Info objects based on the provided Entity Type and assigned to the provided Edge entity. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.Entity Group Info extends Entity Group object and adds 'ownerIds' - a list of owner ids.You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String groupType = groupType_example; // String | EntityGroup type
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the entity group name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEdgeEntityGroups(edgeId, groupType, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEdgeEntityGroups: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **groupType** | **String**| EntityGroup type | 
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the entity group name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityGroupInfo**](PageDataEntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntities**
> PageDataShortEntityView getEntities(entityGroupId, pageSize, page, textSearch, sortProperty, sortOrder)

Get Group Entities (getEntities)

Returns a page of Short Entity View objects that belongs to specified Entity Group Id. Short Entity View object contains the entity id and number of fields (attributes, telemetry, etc). List of those fields is configurable and defined in the group configuration.You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the entity group name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEntities(entityGroupId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the entity group name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataShortEntityView**](PageDataShortEntityView.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupAllByOwnerAndType**
> EntityGroupInfo getEntityGroupAllByOwnerAndType(ownerType, ownerId, groupType)

Get special group All by owner and entity type (getEntityGroupsByOwnerAndType)

Fetch reserved group 'All' based on the provided Owner Id and Entity Type. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.Entity Group Info extends Entity Group object and adds 'ownerIds' - a list of owner ids.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String ownerType = ownerType_example; // String | Tenant or Customer
final String ownerId = 784f394c-42b6-435a-983c-b7beff2784f9; // String | A string value representing the Tenant or Customer id
final String groupType = groupType_example; // String | Entity Group type

try {
    final response = api.getEntityGroupAllByOwnerAndType(ownerType, ownerId, groupType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntityGroupAllByOwnerAndType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerType** | **String**| Tenant or Customer | 
 **ownerId** | **String**| A string value representing the Tenant or Customer id | 
 **groupType** | **String**| Entity Group type | 

### Return type

[**EntityGroupInfo**](EntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupById**
> EntityGroupInfo getEntityGroupById(entityGroupId)

Get Entity Group Info (getEntityGroupById)

Fetch the Entity Group object based on the provided Entity Group Id. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.Entity Group Info extends Entity Group object and adds 'ownerIds' - a list of owner ids.  Entity group name is unique in the scope of owner and entity type. For example, you can't create two tenant device groups called 'Water meters'. However, you may create device and asset group with the same name. And also you may create groups with the same name for two different customers of the same tenant.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getEntityGroupById(entityGroupId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntityGroupById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**EntityGroupInfo**](EntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupByOwnerAndNameAndType**
> EntityGroupInfo getEntityGroupByOwnerAndNameAndType(ownerType, ownerId, groupType, groupName)

Get Entity Group by owner, type and name (getEntityGroupByOwnerAndNameAndType)

Fetch the Entity Group object based on the provided Entity Group Id. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.Entity Group Info extends Entity Group object and adds 'ownerIds' - a list of owner ids.  Entity group name is unique in the scope of owner and entity type. For example, you can't create two tenant device groups called 'Water meters'. However, you may create device and asset group with the same name. And also you may create groups with the same name for two different customers of the same tenant.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String ownerType = ownerType_example; // String | Tenant or Customer
final String ownerId = 784f394c-42b6-435a-983c-b7beff2784f9; // String | A string value representing the Tenant or Customer id
final String groupType = groupType_example; // String | Entity Group type
final String groupName = groupName_example; // String | Entity Group name

try {
    final response = api.getEntityGroupByOwnerAndNameAndType(ownerType, ownerId, groupType, groupName);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntityGroupByOwnerAndNameAndType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerType** | **String**| Tenant or Customer | 
 **ownerId** | **String**| A string value representing the Tenant or Customer id | 
 **groupType** | **String**| Entity Group type | 
 **groupName** | **String**| Entity Group name | 

### Return type

[**EntityGroupInfo**](EntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupEntityInfoById**
> EntityInfo getEntityGroupEntityInfoById(entityGroupId)

Get Entity Group Entity Info (getEntityGroupEntityInfoById)

Fetch the Entity Group Entity Info object based on the provided Entity Group Id. Entity Info is a lightweight object that contains only id and name of the entity group.   Entity group name is unique in the scope of owner and entity type. For example, you can't create two tenant device groups called 'Water meters'. However, you may create device and asset group with the same name. And also you may create groups with the same name for two different customers of the same tenant.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getEntityGroupEntityInfoById(entityGroupId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntityGroupEntityInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**EntityInfo**](EntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupEntityInfosByIds**
> BuiltList<EntityInfo> getEntityGroupEntityInfosByIds(entityGroupIds)

Get Entity Group Entity Infos by Ids (getEntityGroupEntityInfosByIds)

Fetch the list of Entity Group Entity Info objects based on the provided entity group ids list. Entity Info is a lightweight object that contains only id and name of the entity group.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final BuiltList<String> entityGroupIds = ; // BuiltList<String> | A list of group ids, separated by comma ','

try {
    final response = api.getEntityGroupEntityInfosByIds(entityGroupIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntityGroupEntityInfosByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of group ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;EntityInfo&gt;**](EntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupEntityInfosByOwnerAndTypeAndPageLink**
> PageDataEntityInfo getEntityGroupEntityInfosByOwnerAndTypeAndPageLink(ownerType, ownerId, groupType, pageSize, page, textSearch, sortProperty, sortOrder)

Get Entity Group Entity Infos by owner and entity type and page link (getEntityGroupEntityInfosByOwnerAndTypeAndPageLink)

Returns a page of Entity Group Entity Info objects based on the provided Owner Id and Entity Type and Page Link. Entity Info is a lightweight object that contains only id and name of the entity group. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String ownerType = ownerType_example; // String | Tenant or Customer
final String ownerId = 784f394c-42b6-435a-983c-b7beff2784f9; // String | A string value representing the Tenant or Customer id
final String groupType = groupType_example; // String | Entity Group type
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the entity group name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEntityGroupEntityInfosByOwnerAndTypeAndPageLink(ownerType, ownerId, groupType, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntityGroupEntityInfosByOwnerAndTypeAndPageLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerType** | **String**| Tenant or Customer | 
 **ownerId** | **String**| A string value representing the Tenant or Customer id | 
 **groupType** | **String**| Entity Group type | 
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the entity group name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityInfo**](PageDataEntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupEntityInfosByTypeAndPageLink**
> PageDataEntityInfo getEntityGroupEntityInfosByTypeAndPageLink(groupType, pageSize, page, includeShared, textSearch, sortProperty, sortOrder)

Get Entity Group Entity Infos by entity type and page link (getEntityGroupEntityInfosByTypeAndPageLink)

Returns a page of Entity Group Entity Info objects based on the provided Entity Type and Page Link. Entity Info is a lightweight object that contains only id and name of the entity group. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String groupType = groupType_example; // String | Entity Group type
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final bool includeShared = true; // bool | Whether to include shared entity groups.
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the entity group name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEntityGroupEntityInfosByTypeAndPageLink(groupType, pageSize, page, includeShared, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntityGroupEntityInfosByTypeAndPageLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupType** | **String**| Entity Group type | 
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **includeShared** | **bool**| Whether to include shared entity groups. | [optional] 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the entity group name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityInfo**](PageDataEntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupEntityInfosHierarchyByOwnerAndTypeAndPageLink**
> PageDataEntityInfo getEntityGroupEntityInfosHierarchyByOwnerAndTypeAndPageLink(ownerType, ownerId, groupType, pageSize, page, textSearch, sortProperty, sortOrder)

Get Entity Group Entity Infos for all owners starting from specified than ending with owner of current user (getEntityGroupEntityInfosHierarchyByOwnerAndTypeAndPageLink)

Returns a page of Entity Group Entity Info objects based on the provided Owner Id and Entity Type and Page Link. Entity Info is a lightweight object that contains only id and name of the entity group. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String ownerType = ownerType_example; // String | Tenant or Customer
final String ownerId = 784f394c-42b6-435a-983c-b7beff2784f9; // String | A string value representing the Tenant or Customer id
final String groupType = groupType_example; // String | Entity Group type
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the entity group name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEntityGroupEntityInfosHierarchyByOwnerAndTypeAndPageLink(ownerType, ownerId, groupType, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntityGroupEntityInfosHierarchyByOwnerAndTypeAndPageLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerType** | **String**| Tenant or Customer | 
 **ownerId** | **String**| A string value representing the Tenant or Customer id | 
 **groupType** | **String**| Entity Group type | 
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the entity group name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityInfo**](PageDataEntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupsByIds**
> BuiltList<EntityGroupInfo> getEntityGroupsByIds(entityGroupIds)

Get Entity Groups by Ids (getEntityGroupsByIds)

Fetch the list of Entity Group Info objects based on the provided entity group ids list. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.Entity Group Info extends Entity Group object and adds 'ownerIds' - a list of owner ids.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final BuiltList<String> entityGroupIds = ; // BuiltList<String> | A list of group ids, separated by comma ','

try {
    final response = api.getEntityGroupsByIds(entityGroupIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntityGroupsByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of group ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;EntityGroupInfo&gt;**](EntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupsByOwnerAndTypeAndPageLink**
> PageDataEntityGroupInfo getEntityGroupsByOwnerAndTypeAndPageLink(ownerType, ownerId, groupType, pageSize, page, textSearch, sortProperty, sortOrder)

Get Entity Groups by owner and entity type and page link (getEntityGroupsByOwnerAndTypeAndPageLink)

Returns a page of Entity Group objects based on the provided Owner Id and Entity Type and Page Link. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String ownerType = ownerType_example; // String | Tenant or Customer
final String ownerId = 784f394c-42b6-435a-983c-b7beff2784f9; // String | A string value representing the Tenant or Customer id
final String groupType = groupType_example; // String | Entity Group type
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the entity group name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEntityGroupsByOwnerAndTypeAndPageLink(ownerType, ownerId, groupType, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntityGroupsByOwnerAndTypeAndPageLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerType** | **String**| Tenant or Customer | 
 **ownerId** | **String**| A string value representing the Tenant or Customer id | 
 **groupType** | **String**| Entity Group type | 
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the entity group name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityGroupInfo**](PageDataEntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupsByTypeAndPageLink**
> PageDataEntityGroupInfo getEntityGroupsByTypeAndPageLink(groupType, pageSize, page, includeShared, textSearch, sortProperty, sortOrder)

Get Entity Groups by entity type and page link (getEntityGroupsByTypeAndPageLink)

Returns a page of Entity Group Info objects based on the provided Entity Type and Page Link. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.Entity Group Info extends Entity Group object and adds 'ownerIds' - a list of owner ids.You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String groupType = groupType_example; // String | Entity Group type
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final bool includeShared = true; // bool | Whether to include shared entity groups.
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the entity group name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEntityGroupsByTypeAndPageLink(groupType, pageSize, page, includeShared, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntityGroupsByTypeAndPageLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupType** | **String**| Entity Group type | 
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **includeShared** | **bool**| Whether to include shared entity groups. | [optional] 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the entity group name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityGroupInfo**](PageDataEntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupsForEntity**
> BuiltList<EntityGroupId> getEntityGroupsForEntity(entityType, entityId)

Get Entity Groups by Entity Id (getEntityGroupsForEntity)

Returns a list of groups that contain the specified Entity Id. For example, all device groups that contain specific device. The list always contain at least one element - special group 'All'.You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String entityType = entityType_example; // String | Entity Group type
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getEntityGroupsForEntity(entityType, entityId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntityGroupsForEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| Entity Group type | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**BuiltList&lt;EntityGroupId&gt;**](EntityGroupId.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupsHierarchyByOwnerAndTypeAndPageLink**
> PageDataEntityGroupInfo getEntityGroupsHierarchyByOwnerAndTypeAndPageLink(ownerType, ownerId, groupType, pageSize, page, textSearch, sortProperty, sortOrder)

Get Entity Groups for all owners starting from specified than ending with owner of current user (getEntityGroupsHierarchyByOwnerAndTypeAndPageLink)

Returns a page of Entity Group objects based on the provided Owner Id and Entity Type and Page Link. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String ownerType = ownerType_example; // String | Tenant or Customer
final String ownerId = 784f394c-42b6-435a-983c-b7beff2784f9; // String | A string value representing the Tenant or Customer id
final String groupType = groupType_example; // String | Entity Group type
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the entity group name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEntityGroupsHierarchyByOwnerAndTypeAndPageLink(ownerType, ownerId, groupType, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getEntityGroupsHierarchyByOwnerAndTypeAndPageLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerType** | **String**| Tenant or Customer | 
 **ownerId** | **String**| A string value representing the Tenant or Customer id | 
 **groupType** | **String**| Entity Group type | 
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the entity group name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityGroupInfo**](PageDataEntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupEntity**
> ShortEntityView getGroupEntity(entityGroupId, entityId)

Get Group Entity (getGroupEntity)

Fetch the Short Entity View object based on the group and entity id. Short Entity View object contains the entity id and number of fields (attributes, telemetry, etc). List of those fields is configurable and defined in the group configuration.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getGroupEntity(entityGroupId, entityId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getGroupEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**ShortEntityView**](ShortEntityView.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOwnerInfo**
> EntityInfo getOwnerInfo(ownerType, ownerId)

Get Owner Info (getOwnerInfo)

Fetch the owner info (tenant or customer) presented as Entity Info object based on the provided owner Id.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String ownerType = ownerType_example; // String | Tenant or Customer
final String ownerId = 784f394c-42b6-435a-983c-b7beff2784f9; // String | A string value representing the Tenant or Customer id

try {
    final response = api.getOwnerInfo(ownerType, ownerId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getOwnerInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerType** | **String**| Tenant or Customer | 
 **ownerId** | **String**| A string value representing the Tenant or Customer id | 

### Return type

[**EntityInfo**](EntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOwnerInfos**
> PageDataEntityInfo getOwnerInfos(pageSize, page, textSearch, sortProperty, sortOrder)

Get Owner Infos (getOwnerInfos)

Provides a rage view of Customers that the current user has READ access to. If the current user is Tenant administrator, the result set also contains the tenant. The call is designed for the UI auto-complete component to show tenant and all possible Customers that the user may select to change the owner of the particular entity or entity group.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the entity group name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getOwnerInfos(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getOwnerInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the entity group name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityInfo**](PageDataEntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOwners**
> PageDataContactBasedObject getOwners(pageSize, page, textSearch, sortProperty, sortOrder)

Get Owners (getOwners)

Provides a rage view of Customers that the current user has READ access to. If the current user is Tenant administrator, the result set also contains the tenant. The call is designed for the UI auto-complete component to show tenant and all possible Customers that the user may select to change the owner of the particular entity or entity group.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the entity group name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getOwners(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getOwners: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the entity group name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataContactBasedObject**](PageDataContactBasedObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSharedEntityGroupEntityInfosByTypeAndPageLink**
> PageDataEntityInfo getSharedEntityGroupEntityInfosByTypeAndPageLink(groupType, pageSize, page, textSearch, sortProperty, sortOrder)

Get Shared Entity Group Entity Infos by entity type and page link (getSharedEntityGroupEntityInfosByTypeAndPageLink)

Returns a page of Shared Entity Group Entity Info objects based on the provided Entity Type and Page Link. Entity Info is a lightweight object that contains only id and name of the entity group. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String groupType = groupType_example; // String | Entity Group type
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the entity group name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getSharedEntityGroupEntityInfosByTypeAndPageLink(groupType, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getSharedEntityGroupEntityInfosByTypeAndPageLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupType** | **String**| Entity Group type | 
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the entity group name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityInfo**](PageDataEntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSharedEntityGroupsByTypeAndPageLink**
> PageDataEntityGroupInfo getSharedEntityGroupsByTypeAndPageLink(groupType, pageSize, page, textSearch, sortProperty, sortOrder)

Get Shared Entity Groups by entity type and page link (getSharedEntityGroupsByTypeAndPageLink)

Returns a page of Shared Entity Group Info objects based on the provided Entity Type and Page Link. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.Entity Group Info extends Entity Group object and adds 'ownerIds' - a list of owner ids.You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String groupType = groupType_example; // String | Entity Group type
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the entity group name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getSharedEntityGroupsByTypeAndPageLink(groupType, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->getSharedEntityGroupsByTypeAndPageLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupType** | **String**| Entity Group type | 
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the entity group name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityGroupInfo**](PageDataEntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **makeEntityGroupPrivate**
> makeEntityGroupPrivate(entityGroupId)

Make Entity Group Private (makeEntityGroupPrivate)

Make the entity group not available for non authorized users. Every group is private by default. This call is useful to hide the group that was previously made public.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.makeEntityGroupPrivate(entityGroupId);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->makeEntityGroupPrivate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **makeEntityGroupPublic**
> makeEntityGroupPublic(entityGroupId)

Make Entity Group Publicly available (makeEntityGroupPublic)

Make the entity group available for non authorized users. Useful for public dashboards that will be embedded into the public websites.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.makeEntityGroupPublic(entityGroupId);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->makeEntityGroupPublic: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeEntitiesFromEntityGroup**
> removeEntitiesFromEntityGroup(entityGroupId, requestBody)

Remove entities from the group (removeEntitiesFromEntityGroup)

Removes entities from the specified entity group. Entity group allows you to group multiple entities of the same entity type (Device, Asset, Customer, User, Dashboard, etc). Entity Group always have an owner - particular Tenant or Customer. Each entity may belong to multiple groups simultaneously.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'REMOVE_FROM_GROUP' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final BuiltList<String> requestBody = ; // BuiltList<String> | 

try {
    api.removeEntitiesFromEntityGroup(entityGroupId, requestBody);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->removeEntitiesFromEntityGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **requestBody** | [**BuiltList&lt;String&gt;**](String.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveEntityGroup**
> EntityGroupInfo saveEntityGroup(entityGroup)

Create Or Update Entity Group (saveEntityGroup)

Create or update the Entity Group. When creating Entity Group, platform generates Entity Group Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Entity Group Id will be present in the response. Specify existing Entity Group Id to update the group. Referencing non-existing Entity Group Id will cause 'Not Found' error.Remove 'id', 'tenantId' and optionally 'ownerId' from the request body example (below) to create new Entity Group entity. When 'ownerId' is not set (or null), it defaults to the current user's owner (Tenant for tenant admins, Customer for customer users).   Entity group name is unique in the scope of owner and entity type. For example, you can't create two tenant device groups called 'Water meters'. However, you may create device and asset group with the same name. And also you may create groups with the same name for two different customers of the same tenant.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final EntityGroup entityGroup = ; // EntityGroup | 

try {
    final response = api.saveEntityGroup(entityGroup);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->saveEntityGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroup** | [**EntityGroup**](EntityGroup.md)|  | 

### Return type

[**EntityGroupInfo**](EntityGroupInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shareEntityGroup**
> shareEntityGroup(entityGroupId, shareGroupRequest)

Share the Entity Group (shareEntityGroup)

Share the entity group with certain user group based on the provided Share Group Request. The request is quite flexible and processing of the request involves multiple security checks using platform RBAC feature.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final ShareGroupRequest shareGroupRequest = ; // ShareGroupRequest | 

try {
    api.shareEntityGroup(entityGroupId, shareGroupRequest);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->shareEntityGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **shareGroupRequest** | [**ShareGroupRequest**](ShareGroupRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shareEntityGroupToChildOwnerUserGroup**
> shareEntityGroupToChildOwnerUserGroup(entityGroupId, userGroupId, roleId)

Share the Entity Group with User group (shareEntityGroupToChildOwnerUserGroup)

Share the entity group with the specified user group using the specified role. Unlike the 'shareEntityGroup' API method, this method is designed for sharing 'down' the owner hierarchy and does not require 'WRITE' permission for the shared entity group or the target user group. In particular, it allows the current user to re-share an entity group that was shared with them by the parent owner: for example, a customer user may re-share a tenant-owned dashboard group with a user group of their sub-customer.  The following security checks are performed:  * the target user group must belong to the current user's owner or to one of its sub-customers; * the current user must have the 'SHARE_GROUP' operation granted for the shared entity group: either as a generic permission for the corresponding entity group resource (applies only if the shared entity group belongs to the current user's owner hierarchy), or as a group permission created when the entity group was shared with the current user's user group using a group role that includes the 'SHARE_GROUP' operation; * the specified role must be a group role that is readable by the current user, so it must belong to the current user's owner or to one of its sub-customers; * the operations of the specified role must be a subset of the operations the current user was granted for the shared entity group (always passes if the current user was granted the 'ALL' operation).  If the specified role also includes the 'SHARE_GROUP' operation, the members of the target user group will be able to re-share the entity group further down their own owner hierarchy in the same way.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String entityGroupId = entityGroupId_example; // String | ID of the entity group to share
final String userGroupId = userGroupId_example; // String | ID of the user group to share the entity group with. The user group must belong to the current user's owner or to one of its sub-customers
final String roleId = roleId_example; // String | ID of the group role that defines the set of operations to grant to the target user group

try {
    api.shareEntityGroupToChildOwnerUserGroup(entityGroupId, userGroupId, roleId);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->shareEntityGroupToChildOwnerUserGroup: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| ID of the entity group to share | 
 **userGroupId** | **String**| ID of the user group to share the entity group with. The user group must belong to the current user's owner or to one of its sub-customers | 
 **roleId** | **String**| ID of the group role that defines the set of operations to grant to the target user group | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shareEntityGroupToChildOwnerUserGroupV2**
> shareEntityGroupToChildOwnerUserGroupV2(entityGroupId, shareGroupRequest)

Share the Entity Group with User group (shareEntityGroupToChildOwnerUserGroupV2)

Share the entity group with specified user group using specified role.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String entityGroupId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A uuid value representing the Entity Group Id that you would like to share. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final ShareGroupRequest shareGroupRequest = ; // ShareGroupRequest | 

try {
    api.shareEntityGroupToChildOwnerUserGroupV2(entityGroupId, shareGroupRequest);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->shareEntityGroupToChildOwnerUserGroupV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A uuid value representing the Entity Group Id that you would like to share. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **shareGroupRequest** | [**ShareGroupRequest**](ShareGroupRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unassignEntityGroupFromEdge**
> EntityGroup unassignEntityGroupFromEdge(edgeId, groupType, entityGroupId)

Unassign entity group from edge (unassignEntityGroupFromEdge)

Clears assignment of the entity group to the edge. Unassignment works in async way - first, 'unassign' notification event pushed to edge queue on platform. Second, remote edge service will receive an 'unassign' command to remove entity group (Edge will receive this instantly, if it's currently connected, or once it's going to be connected to platform). Third, once 'unassign' command will be delivered to edge service, it's going to remove entity group and entities inside this group locally.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityGroupControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String groupType = groupType_example; // String | EntityGroup type
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.unassignEntityGroupFromEdge(edgeId, groupType, entityGroupId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityGroupControllerApi->unassignEntityGroupFromEdge: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **groupType** | **String**| EntityGroup type | 
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**EntityGroup**](EntityGroup.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

