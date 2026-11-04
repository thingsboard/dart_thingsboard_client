# thingsboard_client.api.RoleControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteRole**](RoleControllerApi.md#deleterole) | **DELETE** /api/role/{roleId} | Delete role (deleteRole)
[**getRoleById**](RoleControllerApi.md#getrolebyid) | **GET** /api/role/{roleId} | Get Role by Id (getRoleById)
[**getRoles**](RoleControllerApi.md#getroles) | **GET** /api/roles | Get Roles (getRoles)
[**getRolesByIds**](RoleControllerApi.md#getrolesbyids) | **GET** /api/roles/list | Get Roles By Ids (getRolesByIds)
[**saveRole**](RoleControllerApi.md#saverole) | **POST** /api/role | Create Or Update Role (saveRole)


# **deleteRole**
> deleteRole(roleId)

Delete role (deleteRole)

Deletes the role. Referencing non-existing role Id will cause an error.   Security check is performed to verify that the user has 'DELETE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRoleControllerApi();
final String roleId = roleId_example; // String | A string value representing the role id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteRole(roleId);
} on DioException catch (e) {
    print('Exception when calling RoleControllerApi->deleteRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **String**| A string value representing the role id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoleById**
> Role getRoleById(roleId)

Get Role by Id (getRoleById)

Fetch the Role object based on the provided Role Id. Role Contains a set of permissions. Role has two types. Generic Role may be assigned to the user group and will provide permissions for all entities of a certain type. Group Role may be assigned to both user and entity group and will provides permissions only for the entities that belong to specified entity group. The assignment of the Role to the User Group is done using [Group Permission Controller](/swagger-ui.html#/group-permission-controller). Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRoleControllerApi();
final String roleId = roleId_example; // String | A string value representing the role id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getRoleById(roleId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RoleControllerApi->getRoleById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **String**| A string value representing the role id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Role**](Role.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoles**
> PageDataRole getRoles(pageSize, page, type, textSearch, sortProperty, sortOrder)

Get Roles (getRoles)

Returns a page of roles that are available for the current user. Role Contains a set of permissions. Role has two types. Generic Role may be assigned to the user group and will provide permissions for all entities of a certain type. Group Role may be assigned to both user and entity group and will provides permissions only for the entities that belong to specified entity group. The assignment of the Role to the User Group is done using [Group Permission Controller](/swagger-ui.html#/group-permission-controller).You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRoleControllerApi();
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String type = type_example; // String | Type of the role
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the role name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getRoles(pageSize, page, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RoleControllerApi->getRoles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **type** | **String**| Type of the role | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the role name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataRole**](PageDataRole.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRolesByIds**
> BuiltList<Role> getRolesByIds(roleIds)

Get Roles By Ids (getRolesByIds)

Returns the list of rows based on their ids.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRoleControllerApi();
final BuiltList<String> roleIds = ; // BuiltList<String> | A list of role ids, separated by comma ','

try {
    final response = api.getRolesByIds(roleIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RoleControllerApi->getRolesByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of role ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;Role&gt;**](Role.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveRole**
> Role saveRole(role)

Create Or Update Role (saveRole)

Creates or Updates the Role. When creating Role, platform generates Role Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Role id will be present in the response. Specify existing Role id to update the permission. Referencing non-existing Group Permission Id will cause 'Not Found' error.  Role Contains a set of permissions. Role has two types. Generic Role may be assigned to the user group and will provide permissions for all entities of a certain type. Group Role may be assigned to both user and entity group and will provides permissions only for the entities that belong to specified entity group. The assignment of the Role to the User Group is done using [Group Permission Controller](/swagger-ui.html#/group-permission-controller).  Example of Generic Role with read-only permissions for any resource and all permissions for the 'DEVICE' and 'PROFILE' resources is listed below:   ```json {   \"name\": \"Read-Only User\",   \"type\": \"GENERIC\",   \"permissions\": {     \"ALL\": [       \"READ\",       \"RPC_CALL\",       \"READ_CREDENTIALS\",       \"READ_ATTRIBUTES\",       \"READ_TELEMETRY\"     ],     \"DEVICE\": [       \"ALL\"     ]     \"PROFILE\": [       \"ALL\"     ]   },   \"additionalInfo\": {     \"description\": \"Read-only permissions for everything, Write permissions for devices and own profile.\"   } } ```  Example of Group Role with read-only permissions. Note that the group role has no association with the resources. The type of the resource is taken from the entity group that this role is assigned to:   ```json {   \"name\": \"Entity Group Read-only User\",   \"type\": \"GROUP\",   \"permissions\": [     \"READ\",     \"RPC_CALL\",     \"READ_CREDENTIALS\",     \"READ_ATTRIBUTES\",     \"READ_TELEMETRY\"   ],   \"additionalInfo\": {     \"description\": \"Read-only permissions.\"   } } ```   Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRoleControllerApi();
final Role role = ; // Role | 

try {
    final response = api.saveRole(role);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RoleControllerApi->saveRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | [**Role**](Role.md)|  | 

### Return type

[**Role**](Role.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

