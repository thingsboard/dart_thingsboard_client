# thingsboard_client.api.UserPermissionsControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllowedPermissions**](UserPermissionsControllerApi.md#getallowedpermissions) | **GET** /api/permissions/allowedPermissions | Get Permissions (getAllowedPermissions)
[**hasEntityPermission**](UserPermissionsControllerApi.md#hasentitypermission) | **GET** /api/permission/{entityType}/{entityId}/{operation} | Check permission for specified entity (hasEntityPermission)


# **getAllowedPermissions**
> AllowedPermissionsInfo getAllowedPermissions()

Get Permissions (getAllowedPermissions)

Returns a complex object that describes:   * all possible (both granted and not granted) permissions for the authority of the user (Tenant or Customer);  * all granted permissions for the user;   The result impacts UI behavior and hides certain UI elements if user has no permissions to invoke the related operations. Nevertheless, all API calls check the permissions each time they are executed on the server side.You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getUserPermissionsControllerApi();

try {
    final response = api.getAllowedPermissions();
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserPermissionsControllerApi->getAllowedPermissions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AllowedPermissionsInfo**](AllowedPermissionsInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hasEntityPermission**
> bool hasEntityPermission(entityType, entityId, operation)

Check permission for specified entity (hasEntityPermission)

Returns true if the user has permission to perform the operation, and false otherwise. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getUserPermissionsControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String operation = operation_example; // String | A string value representing permission operation. For example, 'READ', 'WRITE', 'DELETE', 'CREATE', 'ALL'

try {
    final response = api.hasEntityPermission(entityType, entityId, operation);
    print(response);
} on DioException catch (e) {
    print('Exception when calling UserPermissionsControllerApi->hasEntityPermission: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **operation** | **String**| A string value representing permission operation. For example, 'READ', 'WRITE', 'DELETE', 'CREATE', 'ALL' | 

### Return type

**bool**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

