# thingsboard_client.api.QueueControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteQueue**](QueueControllerApi.md#deletequeue) | **DELETE** /api/queues/{queueId} | Delete Queue (deleteQueue)
[**getQueueById**](QueueControllerApi.md#getqueuebyid) | **GET** /api/queues/{queueId} | Get Queue (getQueueById)
[**getQueueByName**](QueueControllerApi.md#getqueuebyname) | **GET** /api/queues/name/{queueName} | Get Queue (getQueueByName)
[**getTenantQueuesByServiceType**](QueueControllerApi.md#gettenantqueuesbyservicetype) | **GET** /api/queues | Get Queues (getTenantQueuesByServiceType)
[**saveQueue**](QueueControllerApi.md#savequeue) | **POST** /api/queues | Create Or Update Queue (saveQueue)


# **deleteQueue**
> deleteQueue(queueId)

Delete Queue (deleteQueue)

Deletes the Queue.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getQueueControllerApi();
final String queueId = queueId_example; // String | A string value representing the queue id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteQueue(queueId);
} on DioException catch (e) {
    print('Exception when calling QueueControllerApi->deleteQueue: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queueId** | **String**| A string value representing the queue id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueueById**
> Queue getQueueById(queueId)

Get Queue (getQueueById)

Fetch the Queue object based on the provided Queue Id.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getQueueControllerApi();
final String queueId = queueId_example; // String | A string value representing the queue id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getQueueById(queueId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling QueueControllerApi->getQueueById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queueId** | **String**| A string value representing the queue id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Queue**](Queue.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueueByName**
> Queue getQueueByName(queueName)

Get Queue (getQueueByName)

Fetch the Queue object based on the provided Queue name.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getQueueControllerApi();
final String queueName = queueName_example; // String | A string value representing the queue id. For example, 'Main'

try {
    final response = api.getQueueByName(queueName);
    print(response);
} on DioException catch (e) {
    print('Exception when calling QueueControllerApi->getQueueByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **queueName** | **String**| A string value representing the queue id. For example, 'Main' | 

### Return type

[**Queue**](Queue.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantQueuesByServiceType**
> PageDataQueue getTenantQueuesByServiceType(serviceType, pageSize, page, textSearch, sortProperty, sortOrder)

Get Queues (getTenantQueuesByServiceType)

Returns a page of queues registered in the platform. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getQueueControllerApi();
final String serviceType = serviceType_example; // String | Service type (implemented only for the TB-RULE-ENGINE)
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the queue name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantQueuesByServiceType(serviceType, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling QueueControllerApi->getTenantQueuesByServiceType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceType** | **String**| Service type (implemented only for the TB-RULE-ENGINE) | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the queue name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataQueue**](PageDataQueue.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveQueue**
> Queue saveQueue(serviceType, queue)

Create Or Update Queue (saveQueue)

Create or update the Queue. When creating queue, platform generates Queue Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). Specify existing Queue id to update the queue. Referencing non-existing Queue Id will cause 'Not Found' error.  Queue name is unique in the scope of sysadmin. Remove 'id', 'tenantId' from the request body example (below) to create new Queue entity.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getQueueControllerApi();
final String serviceType = serviceType_example; // String | Service type (implemented only for the TB-RULE-ENGINE)
final Queue queue = ; // Queue | 

try {
    final response = api.saveQueue(serviceType, queue);
    print(response);
} on DioException catch (e) {
    print('Exception when calling QueueControllerApi->saveQueue: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serviceType** | **String**| Service type (implemented only for the TB-RULE-ENGINE) | 
 **queue** | [**Queue**](Queue.md)|  | 

### Return type

[**Queue**](Queue.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

