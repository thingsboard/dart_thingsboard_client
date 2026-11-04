# thingsboard_client.api.QueueStatsControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getQueueStatsById**](QueueStatsControllerApi.md#getqueuestatsbyid) | **GET** /api/queueStats/{queueStatsId} | Get Queue stats entity by id (getQueueStatsById)
[**getQueueStatsByIds**](QueueStatsControllerApi.md#getqueuestatsbyids) | **GET** /api/queueStats/list | Get QueueStats By Ids (getQueueStatsByIds)
[**getTenantQueueStats**](QueueStatsControllerApi.md#gettenantqueuestats) | **GET** /api/queueStats | Get Queue Stats entities (getTenantQueueStats)


# **getQueueStatsById**
> QueueStats getQueueStatsById(queueStatsId)

Get Queue stats entity by id (getQueueStatsById)

Fetch the Queue stats object based on the provided Queue stats id.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getQueueStatsControllerApi();
final String queueStatsId = queueStatsId_example; // String | A string value representing the queue stats id. For example, '687f294c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getQueueStatsById(queueStatsId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling QueueStatsControllerApi->getQueueStatsById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queueStatsId** | **String**| A string value representing the queue stats id. For example, '687f294c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**QueueStats**](QueueStats.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueueStatsByIds**
> BuiltList<QueueStats> getQueueStatsByIds(queueStatsIds)

Get QueueStats By Ids (getQueueStatsByIds)

Fetch the Queue stats objects based on the provided ids. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getQueueStatsControllerApi();
final BuiltList<String> queueStatsIds = ; // BuiltList<String> | A list of queue stats ids, separated by comma ','

try {
    final response = api.getQueueStatsByIds(queueStatsIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling QueueStatsControllerApi->getQueueStatsByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queueStatsIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of queue stats ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;QueueStats&gt;**](QueueStats.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantQueueStats**
> PageDataQueueStats getTenantQueueStats(pageSize, page, textSearch, sortProperty, sortOrder)

Get Queue Stats entities (getTenantQueueStats)

Returns a page of queue stats objects that are designed to collect queue statistics for every service. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getQueueStatsControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the queue name or service id.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantQueueStats(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling QueueStatsControllerApi->getTenantQueueStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the queue name or service id. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataQueueStats**](PageDataQueueStats.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

