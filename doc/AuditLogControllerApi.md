# thingsboard_client.api.AuditLogControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuditLogs**](AuditLogControllerApi.md#getauditlogs) | **GET** /api/audit/logs | Get all audit logs (getAuditLogs)
[**getAuditLogsByCustomerId**](AuditLogControllerApi.md#getauditlogsbycustomerid) | **GET** /api/audit/logs/customer/{customerId} | Get audit logs by customer id (getAuditLogsByCustomerId)
[**getAuditLogsByEntityId**](AuditLogControllerApi.md#getauditlogsbyentityid) | **GET** /api/audit/logs/entity/{entityType}/{entityId} | Get audit logs by entity id (getAuditLogsByEntityId)
[**getAuditLogsByUserId**](AuditLogControllerApi.md#getauditlogsbyuserid) | **GET** /api/audit/logs/user/{userId} | Get audit logs by user id (getAuditLogsByUserId)


# **getAuditLogs**
> PageDataAuditLog getAuditLogs(pageSize, page, textSearch, sortProperty, sortOrder, startTime, endTime, actionTypes)

Get all audit logs (getAuditLogs)

Returns a page of audit logs related to all entities in the scope of the current user's Tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the audit logs.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAuditLogControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on one of the next properties: entityType, entityName, userName, actionType, actionStatus.
final String sortProperty = sortProperty_example; // String | Property of audit log to sort by. See the 'Model' tab of the Response Class for more details. Note: entityType sort property is not defined in the AuditLog class, however, it can be used to sort audit logs by types of entities that were logged.
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final int startTime = 789; // int | The start timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'.
final int endTime = 789; // int | The end timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'.
final String actionTypes = actionTypes_example; // String | A String value representing comma-separated list of action types. This parameter is optional, but it can be used to filter results to fetch only audit logs of specific action types. For example, 'LOGIN', 'LOGOUT'. See the 'Model' tab of the Response Class for more details.

try {
    final response = api.getAuditLogs(pageSize, page, textSearch, sortProperty, sortOrder, startTime, endTime, actionTypes);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuditLogControllerApi->getAuditLogs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on one of the next properties: entityType, entityName, userName, actionType, actionStatus. | [optional] 
 **sortProperty** | **String**| Property of audit log to sort by. See the 'Model' tab of the Response Class for more details. Note: entityType sort property is not defined in the AuditLog class, however, it can be used to sort audit logs by types of entities that were logged. | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **startTime** | **int**| The start timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'. | [optional] 
 **endTime** | **int**| The end timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'. | [optional] 
 **actionTypes** | **String**| A String value representing comma-separated list of action types. This parameter is optional, but it can be used to filter results to fetch only audit logs of specific action types. For example, 'LOGIN', 'LOGOUT'. See the 'Model' tab of the Response Class for more details. | [optional] 

### Return type

[**PageDataAuditLog**](PageDataAuditLog.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuditLogsByCustomerId**
> PageDataAuditLog getAuditLogsByCustomerId(customerId, pageSize, page, textSearch, sortProperty, sortOrder, startTime, endTime, actionTypes)

Get audit logs by customer id (getAuditLogsByCustomerId)

Returns a page of audit logs related to the targeted customer entities (devices, assets, etc.), and users actions (login, logout, etc.) that belong to this customer. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the audit logs.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAuditLogControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on one of the next properties: entityType, entityName, userName, actionType, actionStatus.
final String sortProperty = sortProperty_example; // String | Property of audit log to sort by. See the 'Model' tab of the Response Class for more details. Note: entityType sort property is not defined in the AuditLog class, however, it can be used to sort audit logs by types of entities that were logged.
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final int startTime = 789; // int | The start timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'.
final int endTime = 789; // int | The end timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'.
final String actionTypes = actionTypes_example; // String | A String value representing comma-separated list of action types. This parameter is optional, but it can be used to filter results to fetch only audit logs of specific action types. For example, 'LOGIN', 'LOGOUT'. See the 'Model' tab of the Response Class for more details.

try {
    final response = api.getAuditLogsByCustomerId(customerId, pageSize, page, textSearch, sortProperty, sortOrder, startTime, endTime, actionTypes);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuditLogControllerApi->getAuditLogsByCustomerId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on one of the next properties: entityType, entityName, userName, actionType, actionStatus. | [optional] 
 **sortProperty** | **String**| Property of audit log to sort by. See the 'Model' tab of the Response Class for more details. Note: entityType sort property is not defined in the AuditLog class, however, it can be used to sort audit logs by types of entities that were logged. | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **startTime** | **int**| The start timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'. | [optional] 
 **endTime** | **int**| The end timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'. | [optional] 
 **actionTypes** | **String**| A String value representing comma-separated list of action types. This parameter is optional, but it can be used to filter results to fetch only audit logs of specific action types. For example, 'LOGIN', 'LOGOUT'. See the 'Model' tab of the Response Class for more details. | [optional] 

### Return type

[**PageDataAuditLog**](PageDataAuditLog.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuditLogsByEntityId**
> PageDataAuditLog getAuditLogsByEntityId(entityType, entityId, pageSize, page, textSearch, sortProperty, sortOrder, startTime, endTime, actionTypes)

Get audit logs by entity id (getAuditLogsByEntityId)

Returns a page of audit logs related to the actions on the targeted entity. Basically, this API call is used to get the full lifecycle of some specific entity. For example to see when a device was created, updated, assigned to some customer, or even deleted from the system. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the audit logs.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAuditLogControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on one of the next properties: entityType, entityName, userName, actionType, actionStatus.
final String sortProperty = sortProperty_example; // String | Property of audit log to sort by. See the 'Model' tab of the Response Class for more details. Note: entityType sort property is not defined in the AuditLog class, however, it can be used to sort audit logs by types of entities that were logged.
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final int startTime = 789; // int | The start timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'.
final int endTime = 789; // int | The end timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'.
final String actionTypes = actionTypes_example; // String | A String value representing comma-separated list of action types. This parameter is optional, but it can be used to filter results to fetch only audit logs of specific action types. For example, 'LOGIN', 'LOGOUT'. See the 'Model' tab of the Response Class for more details.

try {
    final response = api.getAuditLogsByEntityId(entityType, entityId, pageSize, page, textSearch, sortProperty, sortOrder, startTime, endTime, actionTypes);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuditLogControllerApi->getAuditLogsByEntityId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on one of the next properties: entityType, entityName, userName, actionType, actionStatus. | [optional] 
 **sortProperty** | **String**| Property of audit log to sort by. See the 'Model' tab of the Response Class for more details. Note: entityType sort property is not defined in the AuditLog class, however, it can be used to sort audit logs by types of entities that were logged. | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **startTime** | **int**| The start timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'. | [optional] 
 **endTime** | **int**| The end timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'. | [optional] 
 **actionTypes** | **String**| A String value representing comma-separated list of action types. This parameter is optional, but it can be used to filter results to fetch only audit logs of specific action types. For example, 'LOGIN', 'LOGOUT'. See the 'Model' tab of the Response Class for more details. | [optional] 

### Return type

[**PageDataAuditLog**](PageDataAuditLog.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuditLogsByUserId**
> PageDataAuditLog getAuditLogsByUserId(userId, pageSize, page, textSearch, sortProperty, sortOrder, startTime, endTime, actionTypes)

Get audit logs by user id (getAuditLogsByUserId)

Returns a page of audit logs related to the actions of targeted user. For example, RPC call to a particular device, or alarm acknowledgment for a specific device, etc. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the audit logs.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAuditLogControllerApi();
final String userId = userId_example; // String | A string value representing the user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on one of the next properties: entityType, entityName, userName, actionType, actionStatus.
final String sortProperty = sortProperty_example; // String | Property of audit log to sort by. See the 'Model' tab of the Response Class for more details. Note: entityType sort property is not defined in the AuditLog class, however, it can be used to sort audit logs by types of entities that were logged.
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final int startTime = 789; // int | The start timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'.
final int endTime = 789; // int | The end timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'.
final String actionTypes = actionTypes_example; // String | A String value representing comma-separated list of action types. This parameter is optional, but it can be used to filter results to fetch only audit logs of specific action types. For example, 'LOGIN', 'LOGOUT'. See the 'Model' tab of the Response Class for more details.

try {
    final response = api.getAuditLogsByUserId(userId, pageSize, page, textSearch, sortProperty, sortOrder, startTime, endTime, actionTypes);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuditLogControllerApi->getAuditLogsByUserId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| A string value representing the user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on one of the next properties: entityType, entityName, userName, actionType, actionStatus. | [optional] 
 **sortProperty** | **String**| Property of audit log to sort by. See the 'Model' tab of the Response Class for more details. Note: entityType sort property is not defined in the AuditLog class, however, it can be used to sort audit logs by types of entities that were logged. | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **startTime** | **int**| The start timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'. | [optional] 
 **endTime** | **int**| The end timestamp in milliseconds of the search time range over the AuditLog class field: 'createdTime'. | [optional] 
 **actionTypes** | **String**| A String value representing comma-separated list of action types. This parameter is optional, but it can be used to filter results to fetch only audit logs of specific action types. For example, 'LOGIN', 'LOGOUT'. See the 'Model' tab of the Response Class for more details. | [optional] 

### Return type

[**PageDataAuditLog**](PageDataAuditLog.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

