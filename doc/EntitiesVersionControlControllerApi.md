# thingsboard_client.api.EntitiesVersionControlControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compareEntityDataToVersion**](EntitiesVersionControlControllerApi.md#compareentitydatatoversion) | **GET** /api/entities/vc/diff/{entityType}/{internalEntityUuid} | Compare entity data to version (compareEntityDataToVersion)
[**getEntityDataInfo**](EntitiesVersionControlControllerApi.md#getentitydatainfo) | **GET** /api/entities/vc/info/{versionId}/{entityType}/{externalEntityUuid} | Get entity data info (getEntityDataInfo)
[**getVersionCreateRequestStatus**](EntitiesVersionControlControllerApi.md#getversioncreaterequeststatus) | **GET** /api/entities/vc/version/{requestId}/status | Get version create request status (getVersionCreateRequestStatus)
[**getVersionLoadRequestStatus**](EntitiesVersionControlControllerApi.md#getversionloadrequeststatus) | **GET** /api/entities/vc/entity/{requestId}/status | Get version load request status (getVersionLoadRequestStatus)
[**listAllEntitiesAtVersion**](EntitiesVersionControlControllerApi.md#listallentitiesatversion) | **GET** /api/entities/vc/entity/{versionId} | List all entities at version (listAllEntitiesAtVersion)
[**listBranches**](EntitiesVersionControlControllerApi.md#listbranches) | **GET** /api/entities/vc/branches | List branches (listBranches)
[**listEntitiesAtVersion**](EntitiesVersionControlControllerApi.md#listentitiesatversion) | **GET** /api/entities/vc/entity/{entityType}/{versionId} | List entities at version (listEntitiesAtVersion)
[**listEntityTypeVersions**](EntitiesVersionControlControllerApi.md#listentitytypeversions) | **GET** /api/entities/vc/version/{entityType} | List entity type versions (listEntityTypeVersions)
[**listEntityVersions**](EntitiesVersionControlControllerApi.md#listentityversions) | **GET** /api/entities/vc/version/{entityType}/{externalEntityUuid} | List entity versions (listEntityVersions)
[**listVersions**](EntitiesVersionControlControllerApi.md#listversions) | **GET** /api/entities/vc/version | List all versions (listVersions)
[**loadEntitiesVersion**](EntitiesVersionControlControllerApi.md#loadentitiesversion) | **POST** /api/entities/vc/entity | Load entities version (loadEntitiesVersion)
[**saveEntitiesVersion**](EntitiesVersionControlControllerApi.md#saveentitiesversion) | **POST** /api/entities/vc/version | Save entities version (saveEntitiesVersion)


# **compareEntityDataToVersion**
> EntityDataDiff compareEntityDataToVersion(entityType, internalEntityUuid, versionId)

Compare entity data to version (compareEntityDataToVersion)

Returns an object with current entity data and the one at a specific version. Entity data structure is the same as stored in a repository.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntitiesVersionControlControllerApi();
final EntityType entityType = ; // EntityType | A string value representing the entity type. For example, 'DEVICE'
final String internalEntityUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String versionId = versionId_example; // String | Version id, for example fd82625bdd7d6131cf8027b44ee967012ecaf990. Represents commit hash.

try {
    final response = api.compareEntityDataToVersion(entityType, internalEntityUuid, versionId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntitiesVersionControlControllerApi->compareEntityDataToVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | [**EntityType**](.md)| A string value representing the entity type. For example, 'DEVICE' | 
 **internalEntityUuid** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **versionId** | **String**| Version id, for example fd82625bdd7d6131cf8027b44ee967012ecaf990. Represents commit hash. | 

### Return type

[**EntityDataDiff**](EntityDataDiff.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityDataInfo**
> EntityDataInfo getEntityDataInfo(versionId, entityType, externalEntityUuid, internalEntityId)

Get entity data info (getEntityDataInfo)

Retrieves short info about the remote entity by external id at a concrete version.  Returned entity data info contains following properties: `hasRelations` (whether stored entity data contains relations), `hasAttributes` (contains attributes), `hasCredentials` (whether stored device data has credentials), `hasPermissions` (user group data contains group permission list) and `hasGroupEntities` (entity group data contains group entities).  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntitiesVersionControlControllerApi();
final String versionId = versionId_example; // String | Version id, for example fd82625bdd7d6131cf8027b44ee967012ecaf990. Represents commit hash.
final EntityType entityType = ; // EntityType | A string value representing the entity type. For example, 'DEVICE'
final String externalEntityUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing external entity id
final String internalEntityId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getEntityDataInfo(versionId, entityType, externalEntityUuid, internalEntityId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntitiesVersionControlControllerApi->getEntityDataInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **versionId** | **String**| Version id, for example fd82625bdd7d6131cf8027b44ee967012ecaf990. Represents commit hash. | 
 **entityType** | [**EntityType**](.md)| A string value representing the entity type. For example, 'DEVICE' | 
 **externalEntityUuid** | **String**| A string value representing external entity id | 
 **internalEntityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 

### Return type

[**EntityDataInfo**](EntityDataInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVersionCreateRequestStatus**
> VersionCreationResult getVersionCreateRequestStatus(requestId)

Get version create request status (getVersionCreateRequestStatus)

Returns the status of previously made version create request.   This status contains following properties: - `done` - whether request processing is finished; - `version` - created version info: timestamp, version id (commit hash), commit name and commit author; - `added` - count of items that were created in the remote repo; - `modified` - modified items count; - `removed` - removed items count; - `error` - error message, if an error occurred while handling the request.  An example of successful status: ```json {   \"done\": true,   \"added\": 10,   \"modified\": 2,   \"removed\": 5,   \"version\": {     \"timestamp\": 1655198528000,     \"id\":\"8a834dd389ed80e0759ba8ee338b3f1fd160a114\",     \"name\": \"My devices v2.0\",     \"author\": \"John Doe\"   },   \"error\": null } ```  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntitiesVersionControlControllerApi();
final String requestId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the version control request id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getVersionCreateRequestStatus(requestId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntitiesVersionControlControllerApi->getVersionCreateRequestStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestId** | **String**| A string value representing the version control request id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**VersionCreationResult**](VersionCreationResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVersionLoadRequestStatus**
> VersionLoadResult getVersionLoadRequestStatus(requestId)

Get version load request status (getVersionLoadRequestStatus)

Returns the status of previously made version load request. The structure contains following parameters: - `done` - if the request was successfully processed; - `result` - a list of load results for each entity type:      - `created` - created entities count;      - `updated` - updated entities count;      - `deleted` - removed entities count;      - `groupsCreated` - created entity groups count;      - `groupsUpdated` - updated entity groups count;      - `groupsDeleted` - removed entity groups count. - `error` - if an error occurred during processing, error info:      - `type` - error type;      - `source` - an external id of remote entity;      - `target` - if failed to find referenced entity by external id - this external id;      - `message` - error message.  An example of successfully processed request status: ```json {   \"done\": true,   \"result\": [     {       \"entityType\": \"DEVICE\",       \"created\": 10,       \"updated\": 5,       \"deleted\": 5,       \"groupsCreated\": 1,       \"groupsUpdated\": 1,       \"groupsDeleted\": 1     },      {       \"entityType\": \"ASSET\",       \"created\": 4,       \"updated\": 0,       \"deleted\": 8,       \"groupsCreated\": 1,       \"groupsUpdated\": 0,       \"groupsDeleted\": 2     }   ] } ```  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntitiesVersionControlControllerApi();
final String requestId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the version control request id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getVersionLoadRequestStatus(requestId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntitiesVersionControlControllerApi->getVersionLoadRequestStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestId** | **String**| A string value representing the version control request id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**VersionLoadResult**](VersionLoadResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllEntitiesAtVersion**
> BuiltList<VersionedEntityInfo> listAllEntitiesAtVersion(versionId)

List all entities at version (listAllEntitiesAtVersion)

Returns a list of all remote entities available in a specific version. Response type is the same as for listAllEntitiesAtVersion API method.  Returned entities order will be the same as in the repository.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntitiesVersionControlControllerApi();
final String versionId = versionId_example; // String | Version id, for example fd82625bdd7d6131cf8027b44ee967012ecaf990. Represents commit hash.

try {
    final response = api.listAllEntitiesAtVersion(versionId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntitiesVersionControlControllerApi->listAllEntitiesAtVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **versionId** | **String**| Version id, for example fd82625bdd7d6131cf8027b44ee967012ecaf990. Represents commit hash. | 

### Return type

[**BuiltList&lt;VersionedEntityInfo&gt;**](VersionedEntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBranches**
> BuiltList<BranchInfo> listBranches()

List branches (listBranches)

Lists branches available in the remote repository.   Response example:  ```json [   {     \"name\": \"master\",     \"default\": true   },   {     \"name\": \"dev\",     \"default\": false   },   {     \"name\": \"dev-2\",     \"default\": false   } ] ```

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntitiesVersionControlControllerApi();

try {
    final response = api.listBranches();
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntitiesVersionControlControllerApi->listBranches: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;BranchInfo&gt;**](BranchInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEntitiesAtVersion**
> BuiltList<VersionedEntityInfo> listEntitiesAtVersion(entityType, versionId)

List entities at version (listEntitiesAtVersion)

Returns a list of remote entities of a specific entity type that are available at a concrete version.  Each entity item in the result has `externalId` property. Entities order will be the same as in the repository.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntitiesVersionControlControllerApi();
final EntityType entityType = ; // EntityType | A string value representing the entity type. For example, 'DEVICE'
final String versionId = versionId_example; // String | Version id, for example fd82625bdd7d6131cf8027b44ee967012ecaf990. Represents commit hash.

try {
    final response = api.listEntitiesAtVersion(entityType, versionId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntitiesVersionControlControllerApi->listEntitiesAtVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | [**EntityType**](.md)| A string value representing the entity type. For example, 'DEVICE' | 
 **versionId** | **String**| Version id, for example fd82625bdd7d6131cf8027b44ee967012ecaf990. Represents commit hash. | 

### Return type

[**BuiltList&lt;VersionedEntityInfo&gt;**](VersionedEntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEntityTypeVersions**
> PageDataEntityVersion listEntityTypeVersions(entityType, branch, pageSize, page, textSearch, sortProperty, sortOrder)

List entity type versions (listEntityTypeVersions)

Returns list of versions of an entity type in a branch. This is a collected list of versions that were created for entities of this type in a remote branch.  If specified branch does not exist - empty page data will be returned. The response structure is the same as for `listEntityVersions` API method.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntitiesVersionControlControllerApi();
final EntityType entityType = ; // EntityType | A string value representing the entity type. For example, 'DEVICE'
final String branch = branch_example; // String | The name of the working branch, for example 'master'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the entity version name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.listEntityTypeVersions(entityType, branch, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntitiesVersionControlControllerApi->listEntityTypeVersions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | [**EntityType**](.md)| A string value representing the entity type. For example, 'DEVICE' | 
 **branch** | **String**| The name of the working branch, for example 'master' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the entity version name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityVersion**](PageDataEntityVersion.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEntityVersions**
> PageDataEntityVersion listEntityVersions(entityType, externalEntityUuid, branch, pageSize, page, internalEntityId, textSearch, sortProperty, sortOrder)

List entity versions (listEntityVersions)

Returns list of versions for a specific entity in a concrete branch.  You need to specify external id of an entity to list versions for. This is `externalId` property of an entity, or otherwise if not set - simply id of this entity.  If specified branch does not exist - empty page data will be returned.   Each version info item has timestamp, id, name and author. Version id can then be used to restore the version. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Response example:  ```json {   \"data\": [     {       \"timestamp\": 1655198593000,       \"id\": \"fd82625bdd7d6131cf8027b44ee967012ecaf990\",       \"name\": \"Devices and assets - v2.0\",       \"author\": \"John Doe (johndoe@gmail.com)\"     },     {       \"timestamp\": 1655198528000,       \"id\": \"682adcffa9c8a2f863af6f00c4850323acbd4219\",       \"name\": \"Update my device\",       \"author\": \"John Doe (johndoe@gmail.com)\"     },     {       \"timestamp\": 1655198280000,       \"id\": \"d2a6087c2b30e18cc55e7cdda345a8d0dfb959a4\",       \"name\": \"Devices and assets - v1.0\",       \"author\": \"John Doe (johndoe@gmail.com)\"     }   ],   \"totalPages\": 1,   \"totalElements\": 3,   \"hasNext\": false } ```  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntitiesVersionControlControllerApi();
final EntityType entityType = ; // EntityType | A string value representing the entity type. For example, 'DEVICE'
final String externalEntityUuid = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing external entity id. This is `externalId` property of an entity, or otherwise if not set - simply id of this entity.
final String branch = branch_example; // String | The name of the working branch, for example 'master'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String internalEntityId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the entity version name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.listEntityVersions(entityType, externalEntityUuid, branch, pageSize, page, internalEntityId, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntitiesVersionControlControllerApi->listEntityVersions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | [**EntityType**](.md)| A string value representing the entity type. For example, 'DEVICE' | 
 **externalEntityUuid** | **String**| A string value representing external entity id. This is `externalId` property of an entity, or otherwise if not set - simply id of this entity. | 
 **branch** | **String**| The name of the working branch, for example 'master' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **internalEntityId** | **String**|  | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the entity version name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityVersion**](PageDataEntityVersion.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listVersions**
> PageDataEntityVersion listVersions(branch, pageSize, page, textSearch, sortProperty, sortOrder)

List all versions (listVersions)

Lists all available versions in a branch for all entity types.  If specified branch does not exist - empty page data will be returned. The response format is the same as for `listEntityVersions` API method.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntitiesVersionControlControllerApi();
final String branch = branch_example; // String | The name of the working branch, for example 'master'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the entity version name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.listVersions(branch, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntitiesVersionControlControllerApi->listVersions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branch** | **String**| The name of the working branch, for example 'master' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the entity version name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityVersion**](PageDataEntityVersion.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loadEntitiesVersion**
> String loadEntitiesVersion(versionLoadRequest)

Load entities version (loadEntitiesVersion)

Loads specific version of remote entities (or single entity) by request. Supported entity types: CUSTOMER, ASSET, RULE_CHAIN, DASHBOARD, DEVICE_PROFILE, DEVICE, ENTITY_VIEW, WIDGETS_BUNDLE, CONVERTER, INTEGRATION, ROLE and USER group.  There are multiple types of request. Each of them requires branch name (`branch`) and version id (`versionId`). Request of type `SINGLE_ENTITY` is needed to restore a concrete version of a specific entity. It contains id of a remote entity (`externalEntityId`), internal entity id (`internalEntityId`) and additional configuration (`config`): - `loadRelations` - to update relations list (in case `saveRelations` option was enabled during version creation); - `loadAttributes` - to load entity attributes (if `saveAttributes` config option was enabled); - `loadCredentials` - to update device credentials (if `saveCredentials` option was enabled during version creation); - `loadPermissions` - when loading user group, to update group permission list; - `loadGroupEntities` - when loading an entity group, to load its entities as well; - `autoGenerateIntegrationKey` - if loading integration version, to autogenerate routing key.  An example of such request: ```json {   \"type\": \"SINGLE_ENTITY\",      \"branch\": \"dev\",   \"versionId\": \"b3c28d722d328324c7c15b0b30047b0c40011cf7\",      \"externalEntityId\": {     \"entityType\": \"DEVICE\",     \"id\": \"b7944123-d4f4-11ec-847b-0f432358ab48\"   },   \"config\": {     \"loadRelations\": false,     \"loadAttributes\": true,     \"loadCredentials\": true   } } ```  Another request type (`ENTITY_TYPE`) is needed to load specific version of the whole entity types. It contains a structure with entity types to load and configs for each entity type (`entityTypes`). For each specified entity type, the method will load all remote entities of this type that are present at the version. A config for each entity type contains the same options as in `SINGLE_ENTITY` request type, and additionally contains following options: - `removeOtherEntities` - to remove local entities that are not present on the remote - basically to    overwrite local entity type with the remote one; - `findExistingEntityByName` - when you are loading some remote entities that are not yet present at this tenant,    try to find existing entity by name and update it rather than create new.  Here is an example of the request to completely restore version of the whole device entity type: ```json {   \"type\": \"ENTITY_TYPE\",    \"branch\": \"dev\",   \"versionId\": \"b3c28d722d328324c7c15b0b30047b0c40011cf7\",    \"entityTypes\": {     \"DEVICE\": {       \"removeOtherEntities\": true,       \"findExistingEntityByName\": false,       \"loadRelations\": true,       \"loadAttributes\": true,       \"loadCredentials\": true     }   } } ```  The response will contain generated request UUID that is to be used to check the status of operation via `getVersionLoadRequestStatus`.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntitiesVersionControlControllerApi();
final VersionLoadRequest versionLoadRequest = ; // VersionLoadRequest | 

try {
    final response = api.loadEntitiesVersion(versionLoadRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntitiesVersionControlControllerApi->loadEntitiesVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **versionLoadRequest** | [**VersionLoadRequest**](VersionLoadRequest.md)|  | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveEntitiesVersion**
> String saveEntitiesVersion(versionCreateRequest)

Save entities version (saveEntitiesVersion)

Creates a new version of entities (or a single entity) by request. Supported entity types: CUSTOMER, ASSET, RULE_CHAIN, DASHBOARD, DEVICE_PROFILE, DEVICE, ENTITY_VIEW, WIDGETS_BUNDLE, CONVERTER, INTEGRATION, ROLE and USER group.  There are two available types of request: `SINGLE_ENTITY` and `COMPLEX`. Each of them contains version name (`versionName`) and name of a branch (`branch`) to create version (commit) in. If specified branch does not exists in a remote repo, then new empty branch will be created. Request of the `SINGLE_ENTITY` type has id of an entity (`entityId`) and additional configuration (`config`) which has following options:  - `saveRelations` - whether to add inbound and outbound relations of type COMMON to created entity version; - `saveAttributes` - to save attributes of server scope (and also shared scope for devices); - `saveCredentials` - when saving a version of a device, to add its credentials to the version; - `savePermissions` - when saving a user group - to save group permission list; - `saveGroupEntities` - when saving an entity group - to save its entities as well.  An example of a `SINGLE_ENTITY` version create request: ```json {   \"type\": \"SINGLE_ENTITY\",    \"versionName\": \"Version 1.0\",   \"branch\": \"dev\",    \"entityId\": {     \"entityType\": \"DEVICE\",     \"id\": \"b79448e0-d4f4-11ec-847b-0f432358ab48\"   },   \"config\": {     \"saveRelations\": true,     \"saveAttributes\": true,     \"saveCredentials\": false   } } ```  Second request type (`COMPLEX`), additionally to `branch` and `versionName`, contains following properties: - `entityTypes` - a structure with entity types to export and configuration for each entity type;    this configuration has all the options available for `SINGLE_ENTITY` and additionally has these ones:       - `allEntities` and `entityIds` - if you want to save the version of all entities of the entity type         then set `allEntities` param to true, otherwise set it to false and specify `entityIds` -         in case entity type is group entity, list of specific entity groups, or if not - list of entities;      - `syncStrategy` - synchronization strategy to use for this entity type: when set to `OVERWRITE`         then the list of remote entities of this type will be overwritten by newly added entities. If set to         `MERGE` - existing remote entities of this entity type will not be removed, new entities will just         be added on top (or existing remote entities will be updated). - `syncStrategy` - default synchronization strategy to use when it is not specified for an entity type.  Example for this type of request: ```json {   \"type\": \"COMPLEX\",    \"versionName\": \"Devices and profiles: release 2\",   \"branch\": \"master\",    \"syncStrategy\": \"OVERWRITE\",   \"entityTypes\": {     \"DEVICE\": {       \"syncStrategy\": null,       \"allEntities\": true,       \"saveRelations\": true,       \"saveAttributes\": true,       \"saveCredentials\": true     },     \"DEVICE_PROFILE\": {       \"syncStrategy\": \"MERGE\",       \"allEntities\": false,       \"entityIds\": [         \"b79448e0-d4f4-11ec-847b-0f432358ab48\"       ],       \"saveRelations\": true     }   } } ```  Response wil contain generated request UUID, that can be then used to retrieve status of operation via `getVersionCreateRequestStatus`.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntitiesVersionControlControllerApi();
final VersionCreateRequest versionCreateRequest = ; // VersionCreateRequest | 

try {
    final response = api.saveEntitiesVersion(versionCreateRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntitiesVersionControlControllerApi->saveEntitiesVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **versionCreateRequest** | [**VersionCreateRequest**](VersionCreateRequest.md)|  | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

