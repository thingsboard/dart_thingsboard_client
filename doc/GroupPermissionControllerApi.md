# thingsboard_client.api.GroupPermissionControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteGroupPermission**](GroupPermissionControllerApi.md#deletegrouppermission) | **DELETE** /api/groupPermission/{groupPermissionId} | Delete group permission (deleteGroupPermission)
[**getEntityGroupPermissions**](GroupPermissionControllerApi.md#getentitygrouppermissions) | **GET** /api/entityGroup/{entityGroupId}/groupPermissions | Get group permissions by Entity Group Id (getEntityGroupPermissions)
[**getGroupPermissionById**](GroupPermissionControllerApi.md#getgrouppermissionbyid) | **GET** /api/groupPermission/{groupPermissionId} | Get Group Permission (getGroupPermissionById)
[**getGroupPermissionInfoById**](GroupPermissionControllerApi.md#getgrouppermissioninfobyid) | **GET** /api/groupPermission/info/{groupPermissionId} | Get Group Permission Info (getGroupPermissionInfoById)
[**getUserGroupPermissions**](GroupPermissionControllerApi.md#getusergrouppermissions) | **GET** /api/userGroup/{userGroupId}/groupPermissions | Get group permissions by User Group Id (getUserGroupPermissions)
[**loadUserGroupPermissionInfos**](GroupPermissionControllerApi.md#loadusergrouppermissioninfos) | **POST** /api/userGroup/groupPermissions/info | Load User Group Permissions (loadUserGroupPermissionInfos)
[**saveGroupPermission**](GroupPermissionControllerApi.md#savegrouppermission) | **POST** /api/groupPermission | Create Or Update Group Permission (saveGroupPermission)


# **deleteGroupPermission**
> deleteGroupPermission(groupPermissionId)

Delete group permission (deleteGroupPermission)

Deletes the group permission. Referencing non-existing group permission Id will cause an error.   Security check is performed to verify that the user has 'DELETE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getGroupPermissionControllerApi();
final String groupPermissionId = groupPermissionId_example; // String | A string value representing the group permission id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteGroupPermission(groupPermissionId);
} on DioException catch (e) {
    print('Exception when calling GroupPermissionControllerApi->deleteGroupPermission: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupPermissionId** | **String**| A string value representing the group permission id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntityGroupPermissions**
> BuiltList<GroupPermissionInfo> getEntityGroupPermissions(entityGroupId)

Get group permissions by Entity Group Id (getEntityGroupPermissions)

Returns a list of group permission objects that is assigned for the specified Entity Group Id. Group permission entity represents list of allowed operations for certain User Group to perform against certain Entity Group. Basically, this entity wires three other entities:    * Role that defines set of allowed operations;  * User Group that defines set of users who may perform the operations;   * Entity Group that defines set of entities which will be accessible to users;  There are two types of group permissions depending on the Role type:    * **Generic permission** — uses a GENERIC role. The 'entityGroupId' field must be null (or omitted). Grants the role's operations to all entities within the owner's scope (all tenant entities for tenant admins, only customer-owned entities for customer users).  * **Group permission** — uses a GROUP role. The 'entityGroupId' field must reference a valid entity group. Grants the role's operations only to entities in the specified group.  Assigning a GENERIC role with a non-null 'entityGroupId' will cause an error. The 'entityGroupType' field is auto-populated from the referenced entity group and should not be set manually. Duplicate permissions (same userGroupId + roleId + entityGroupId combination) are rejected.   Group Permission Info object extends the Group Permissions with the full information about Role and User and/or Entity Groups.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getGroupPermissionControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getEntityGroupPermissions(entityGroupId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling GroupPermissionControllerApi->getEntityGroupPermissions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**BuiltList&lt;GroupPermissionInfo&gt;**](GroupPermissionInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupPermissionById**
> GroupPermission getGroupPermissionById(groupPermissionId)

Get Group Permission (getGroupPermissionById)

Fetch the Group Permission object based on the provided Group Permission Id. Group permission entity represents list of allowed operations for certain User Group to perform against certain Entity Group. Basically, this entity wires three other entities:    * Role that defines set of allowed operations;  * User Group that defines set of users who may perform the operations;   * Entity Group that defines set of entities which will be accessible to users;  There are two types of group permissions depending on the Role type:    * **Generic permission** — uses a GENERIC role. The 'entityGroupId' field must be null (or omitted). Grants the role's operations to all entities within the owner's scope (all tenant entities for tenant admins, only customer-owned entities for customer users).  * **Group permission** — uses a GROUP role. The 'entityGroupId' field must reference a valid entity group. Grants the role's operations only to entities in the specified group.  Assigning a GENERIC role with a non-null 'entityGroupId' will cause an error. The 'entityGroupType' field is auto-populated from the referenced entity group and should not be set manually. Duplicate permissions (same userGroupId + roleId + entityGroupId combination) are rejected.   Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getGroupPermissionControllerApi();
final String groupPermissionId = groupPermissionId_example; // String | A string value representing the group permission id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getGroupPermissionById(groupPermissionId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling GroupPermissionControllerApi->getGroupPermissionById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupPermissionId** | **String**| A string value representing the group permission id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**GroupPermission**](GroupPermission.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupPermissionInfoById**
> GroupPermissionInfo getGroupPermissionInfoById(groupPermissionId, isUserGroup)

Get Group Permission Info (getGroupPermissionInfoById)

Fetch the Group Permission Info object based on the provided Group Permission Id and the flag that controls what additional information to load: User or Entity Group. Group permission entity represents list of allowed operations for certain User Group to perform against certain Entity Group. Basically, this entity wires three other entities:    * Role that defines set of allowed operations;  * User Group that defines set of users who may perform the operations;   * Entity Group that defines set of entities which will be accessible to users;  There are two types of group permissions depending on the Role type:    * **Generic permission** — uses a GENERIC role. The 'entityGroupId' field must be null (or omitted). Grants the role's operations to all entities within the owner's scope (all tenant entities for tenant admins, only customer-owned entities for customer users).  * **Group permission** — uses a GROUP role. The 'entityGroupId' field must reference a valid entity group. Grants the role's operations only to entities in the specified group.  Assigning a GENERIC role with a non-null 'entityGroupId' will cause an error. The 'entityGroupType' field is auto-populated from the referenced entity group and should not be set manually. Duplicate permissions (same userGroupId + roleId + entityGroupId combination) are rejected.   Group Permission Info object extends the Group Permissions with the full information about Role and User and/or Entity Groups.  Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getGroupPermissionControllerApi();
final String groupPermissionId = groupPermissionId_example; // String | A string value representing the group permission id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final bool isUserGroup = true; // bool | Load additional information about User('true') or Entity Group('false).

try {
    final response = api.getGroupPermissionInfoById(groupPermissionId, isUserGroup);
    print(response);
} on DioException catch (e) {
    print('Exception when calling GroupPermissionControllerApi->getGroupPermissionInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupPermissionId** | **String**| A string value representing the group permission id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **isUserGroup** | **bool**| Load additional information about User('true') or Entity Group('false). | 

### Return type

[**GroupPermissionInfo**](GroupPermissionInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserGroupPermissions**
> BuiltList<GroupPermissionInfo> getUserGroupPermissions(userGroupId)

Get group permissions by User Group Id (getUserGroupPermissions)

Returns a list of group permission objects that belongs to specified User Group Id. Group permission entity represents list of allowed operations for certain User Group to perform against certain Entity Group. Basically, this entity wires three other entities:    * Role that defines set of allowed operations;  * User Group that defines set of users who may perform the operations;   * Entity Group that defines set of entities which will be accessible to users;  There are two types of group permissions depending on the Role type:    * **Generic permission** — uses a GENERIC role. The 'entityGroupId' field must be null (or omitted). Grants the role's operations to all entities within the owner's scope (all tenant entities for tenant admins, only customer-owned entities for customer users).  * **Group permission** — uses a GROUP role. The 'entityGroupId' field must reference a valid entity group. Grants the role's operations only to entities in the specified group.  Assigning a GENERIC role with a non-null 'entityGroupId' will cause an error. The 'entityGroupType' field is auto-populated from the referenced entity group and should not be set manually. Duplicate permissions (same userGroupId + roleId + entityGroupId combination) are rejected.   Group Permission Info object extends the Group Permissions with the full information about Role and User and/or Entity Groups.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getGroupPermissionControllerApi();
final String userGroupId = userGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getUserGroupPermissions(userGroupId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling GroupPermissionControllerApi->getUserGroupPermissions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**BuiltList&lt;GroupPermissionInfo&gt;**](GroupPermissionInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loadUserGroupPermissionInfos**
> BuiltList<GroupPermissionInfo> loadUserGroupPermissionInfos(groupPermission)

Load User Group Permissions (loadUserGroupPermissionInfos)

Enrich a list of group permission objects with the information about Role, User and Entity Groups. Group permission entity represents list of allowed operations for certain User Group to perform against certain Entity Group. Basically, this entity wires three other entities:    * Role that defines set of allowed operations;  * User Group that defines set of users who may perform the operations;   * Entity Group that defines set of entities which will be accessible to users;  There are two types of group permissions depending on the Role type:    * **Generic permission** — uses a GENERIC role. The 'entityGroupId' field must be null (or omitted). Grants the role's operations to all entities within the owner's scope (all tenant entities for tenant admins, only customer-owned entities for customer users).  * **Group permission** — uses a GROUP role. The 'entityGroupId' field must reference a valid entity group. Grants the role's operations only to entities in the specified group.  Assigning a GENERIC role with a non-null 'entityGroupId' will cause an error. The 'entityGroupType' field is auto-populated from the referenced entity group and should not be set manually. Duplicate permissions (same userGroupId + roleId + entityGroupId combination) are rejected.   Group Permission Info object extends the Group Permissions with the full information about Role and User and/or Entity Groups.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getGroupPermissionControllerApi();
final BuiltList<GroupPermission> groupPermission = ; // BuiltList<GroupPermission> | 

try {
    final response = api.loadUserGroupPermissionInfos(groupPermission);
    print(response);
} on DioException catch (e) {
    print('Exception when calling GroupPermissionControllerApi->loadUserGroupPermissionInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupPermission** | [**BuiltList&lt;GroupPermission&gt;**](GroupPermission.md)|  | 

### Return type

[**BuiltList&lt;GroupPermissionInfo&gt;**](GroupPermissionInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveGroupPermission**
> GroupPermission saveGroupPermission(groupPermission)

Create Or Update Group Permission (saveGroupPermission)

Creates or Updates the Group Permission. When creating group permission, platform generates Group Permission Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Group Permission id will be present in the response. Specify existing Group Permission id to update the permission. Referencing non-existing Group Permission Id will cause 'Not Found' error.  Group permission entity represents list of allowed operations for certain User Group to perform against certain Entity Group. Basically, this entity wires three other entities:    * Role that defines set of allowed operations;  * User Group that defines set of users who may perform the operations;   * Entity Group that defines set of entities which will be accessible to users;  There are two types of group permissions depending on the Role type:    * **Generic permission** — uses a GENERIC role. The 'entityGroupId' field must be null (or omitted). Grants the role's operations to all entities within the owner's scope (all tenant entities for tenant admins, only customer-owned entities for customer users).  * **Group permission** — uses a GROUP role. The 'entityGroupId' field must reference a valid entity group. Grants the role's operations only to entities in the specified group.  Assigning a GENERIC role with a non-null 'entityGroupId' will cause an error. The 'entityGroupType' field is auto-populated from the referenced entity group and should not be set manually. Duplicate permissions (same userGroupId + roleId + entityGroupId combination) are rejected.   Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getGroupPermissionControllerApi();
final GroupPermission groupPermission = ; // GroupPermission | 

try {
    final response = api.saveGroupPermission(groupPermission);
    print(response);
} on DioException catch (e) {
    print('Exception when calling GroupPermissionControllerApi->saveGroupPermission: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupPermission** | [**GroupPermission**](GroupPermission.md)|  | 

### Return type

[**GroupPermission**](GroupPermission.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

