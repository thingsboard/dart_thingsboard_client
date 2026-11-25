# thingsboard_client.api.AgentBulkActionControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAgentBulkAction**](AgentBulkActionControllerApi.md#getagentbulkaction) | **GET** /api/agent/bulk/{bulkActionId} | Get Agent Bulk Action (getAgentBulkAction)
[**getAgentBulkActionEventStats**](AgentBulkActionControllerApi.md#getagentbulkactioneventstats) | **GET** /api/agent/bulk/{bulkActionId}/eventStats | Get Agent Bulk Action Event Stats (getAgentBulkActionEventStats)
[**getAgentBulkActionEvents**](AgentBulkActionControllerApi.md#getagentbulkactionevents) | **GET** /api/agent/bulk/{bulkActionId}/events | Get Agent Bulk Action Events (getAgentBulkActionEvents)


# **getAgentBulkAction**
> AgentBulkAction getAgentBulkAction(bulkActionId)

Get Agent Bulk Action (getAgentBulkAction)

Fetch the Agent Bulk Action object based on the provided Bulk Action Id.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentBulkActionControllerApi();
final String bulkActionId = bulkActionId_example; // String | Bulk Action Id

try {
    final response = api.getAgentBulkAction(bulkActionId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentBulkActionControllerApi->getAgentBulkAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkActionId** | **String**| Bulk Action Id | 

### Return type

[**AgentBulkAction**](AgentBulkAction.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentBulkActionEventStats**
> AgentBulkActionEventStats getAgentBulkActionEventStats(bulkActionId)

Get Agent Bulk Action Event Stats (getAgentBulkActionEventStats)

Returns the number of agent application events produced by the given bulk action per processing status, together with their total.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentBulkActionControllerApi();
final String bulkActionId = bulkActionId_example; // String | Bulk Action Id

try {
    final response = api.getAgentBulkActionEventStats(bulkActionId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentBulkActionControllerApi->getAgentBulkActionEventStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkActionId** | **String**| Bulk Action Id | 

### Return type

[**AgentBulkActionEventStats**](AgentBulkActionEventStats.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentBulkActionEvents**
> PageDataAgentAppEventInfo getAgentBulkActionEvents(bulkActionId, pageSize, page, textSearch, actionType, processingStatus, sortProperty, sortOrder)

Get Agent Bulk Action Events (getAgentBulkActionEvents)

Returns a page of agent application events produced by the given bulk action, optionally filtered by action type and status. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentBulkActionControllerApi();
final String bulkActionId = bulkActionId_example; // String | Bulk Action Id
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filter based on the event fields
final AgentAppEventActionType actionType = ; // AgentAppEventActionType | A string value representing the action type to filter by, e.g. 'UPDATE'
final AgentProcessingStatus processingStatus = ; // AgentProcessingStatus | A string value representing the event status to filter by, e.g. 'FINISHED'
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAgentBulkActionEvents(bulkActionId, pageSize, page, textSearch, actionType, processingStatus, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentBulkActionControllerApi->getAgentBulkActionEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkActionId** | **String**| Bulk Action Id | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Case-insensitive 'substring' filter based on the event fields | [optional] 
 **actionType** | [**AgentAppEventActionType**](.md)| A string value representing the action type to filter by, e.g. 'UPDATE' | [optional] 
 **processingStatus** | [**AgentProcessingStatus**](.md)| A string value representing the event status to filter by, e.g. 'FINISHED' | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAgentAppEventInfo**](PageDataAgentAppEventInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

