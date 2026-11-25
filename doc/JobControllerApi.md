# thingsboard_client.api.JobControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelJob**](JobControllerApi.md#canceljob) | **POST** /api/job/{id}/cancel | Cancel job (cancelJob)
[**deleteJob**](JobControllerApi.md#deletejob) | **DELETE** /api/job/{id} | deleteJob
[**getJobById**](JobControllerApi.md#getjobbyid) | **GET** /api/job/{id} | Get job by id (getJobById)
[**getJobs**](JobControllerApi.md#getjobs) | **GET** /api/jobs | Get jobs (getJobs)
[**reprocessJob**](JobControllerApi.md#reprocessjob) | **POST** /api/job/{id}/reprocess | Reprocess job (reprocessJob)


# **cancelJob**
> cancelJob(id)

Cancel job (cancelJob)

Cancels the job. The status of the job must be QUEUED, PENDING or RUNNING.  For a running job, all the tasks not yet processed will be discarded.  See the example of a cancelled job result in getJobById method description.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getJobControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.cancelJob(id);
} on DioException catch (e) {
    print('Exception when calling JobControllerApi->cancelJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteJob**
> deleteJob(id)

deleteJob

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getJobControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteJob(id);
} on DioException catch (e) {
    print('Exception when calling JobControllerApi->deleteJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobById**
> Job getJobById(id)

Get job by id (getJobById)

Fetches job info by id.  Example of a RUNNING CF_REPROCESSING job response: ```json {   \"id\": {     \"entityType\": \"JOB\",     \"id\": \"475e94e0-2f2d-11f0-8240-91e99922a704\"   },   \"createdTime\": 1747053196590,   \"tenantId\": {     \"entityType\": \"TENANT\",     \"id\": \"46859a00-2f2d-11f0-8240-91e99922a704\"   },   \"type\": \"CF_REPROCESSING\",   \"key\": \"474e4130-2f2d-11f0-8240-91e99922a704\",   \"entityId\": {     \"entityType\": \"DEVICE_PROFILE\",     \"id\": \"9fd41f20-31a1-11f0-933e-27998d6db02e\"    },   \"status\": \"RUNNING\",   \"configuration\": {     \"type\": \"CF_REPROCESSING\",     \"calculatedFieldId\": {       \"entityType\": \"CALCULATED_FIELD\",       \"id\": \"474e4130-2f2d-11f0-8240-91e99922a704\"     },     \"startTs\": 1747051995760,     \"endTs\": 1747052895760,     \"tasksKey\": \"c3cdbd42-799e-4d3a-9aad-9310f767aa36\",     \"toReprocess\": null   },   \"result\": {     \"jobType\": \"CF_REPROCESSING\",     \"successfulCount\": 1,     \"failedCount\": 0,     \"discardedCount\": 0,     \"totalCount\": 2,     \"results\": [],     \"generalError\": null,     \"startTs\": 1747323069445,     \"finishTs\": 1747323070585,     \"cancellationTs\": 0   } }  ```  Example of a CF_REPROCESSING job with failures: ```json {   ...,   \"status\": \"FAILED\",   ...,   \"result\": {     \"jobType\": \"CF_REPROCESSING\",     \"successfulCount\": 0,     \"failedCount\": 2,     \"discardedCount\": 0,     \"totalCount\": 2,     \"results\": [       {         \"jobType\": \"CF_REPROCESSING\",         \"key\": \"c3cdbd42-799e-4d3a-9aad-9310f767aa36\",         \"success\": false,         \"discarded\": false,         \"failure\": {           \"error\": \"Failed to fetch temperature: Failed to fetch timeseries data\",           \"entityInfo\": {             \"id\": {               \"entityType\": \"DEVICE\",               \"id\": \"9fd41f20-31a1-11f0-933e-27998d6db02e\"             },             \"name\": \"Test device 1\"           }         }       },       {         \"jobType\": \"CF_REPROCESSING\",         \"key\": \"c3cdbd42-799e-4d3a-9aad-9310f767aa36\",         \"success\": false,         \"discarded\": false,         \"failure\": {           \"error\": \"Failed to fetch temperature: Failed to fetch timeseries data\",           \"entityInfo\": {             \"id\": {               \"entityType\": \"DEVICE\",               \"id\": \"9ffc4090-31a1-11f0-933e-27998d6db02e\"             },             \"name\": \"Test device 2\"           }         }       }     ],     \"generalError\": null,     \"startTs\": 1747323069445,     \"finishTs\": 1747323070585,     \"cancellationTs\": 0   } }  ```  Example of a FAILED job result with general error: ```json {   ...,   \"status\": \"FAILED\",   ...,   \"result\": {     \"jobType\": \"CF_REPROCESSING\",     \"successfulCount\": 1,     \"failedCount\": 0,     \"discardedCount\": 0,     \"totalCount\": null,     \"results\": [],     \"generalError\": \"Timeout to find devices by profile\",     \"cancellationTs\": 0   } }  ```  Example of a CANCELLED job result: ```json {   ...,   \"status\": \"CANCELLED\",   ...,   \"result\": {     \"jobType\": \"CF_REPROCESSING\",     \"successfulCount\": 15,     \"failedCount\": 0,     \"discardedCount\": 85,     \"totalCount\": 100,     \"results\": [],     \"generalError\": null,     \"cancellationTs\": 1747065908414   } }  ```  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getJobControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getJobById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling JobControllerApi->getJobById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Job**](Job.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobs**
> PageDataJob getJobs(pageSize, page, textSearch, sortProperty, sortOrder, types, statuses, entities, startTime, endTime, includeCustomers)

Get jobs (getJobs)

Returns the page of jobs.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getJobControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filter based on job's description
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final BuiltList<String> types = ; // BuiltList<String> | Comma-separated list of job types to include. If empty - all job types are included.
final BuiltList<String> statuses = ; // BuiltList<String> | Comma-separated list of job statuses to include. If empty - all job statuses are included.
final BuiltList<String> entities = ; // BuiltList<String> | Comma-separated list of entity ids. If empty - jobs for all entities are included.
final int startTime = 789; // int | To only include jobs created after this timestamp.
final int endTime = 789; // int | To only include jobs created before this timestamp.
final bool includeCustomers = true; // bool | Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.

try {
    final response = api.getJobs(pageSize, page, textSearch, sortProperty, sortOrder, types, statuses, entities, startTime, endTime, includeCustomers);
    print(response);
} on DioException catch (e) {
    print('Exception when calling JobControllerApi->getJobs: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Case-insensitive 'substring' filter based on job's description | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **types** | [**BuiltList&lt;String&gt;**](String.md)| Comma-separated list of job types to include. If empty - all job types are included. | [optional] 
 **statuses** | [**BuiltList&lt;String&gt;**](String.md)| Comma-separated list of job statuses to include. If empty - all job statuses are included. | [optional] 
 **entities** | [**BuiltList&lt;String&gt;**](String.md)| Comma-separated list of entity ids. If empty - jobs for all entities are included. | [optional] 
 **startTime** | **int**| To only include jobs created after this timestamp. | [optional] 
 **endTime** | **int**| To only include jobs created before this timestamp. | [optional] 
 **includeCustomers** | **bool**| Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers. | [optional] 

### Return type

[**PageDataJob**](PageDataJob.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reprocessJob**
> reprocessJob(id)

Reprocess job (reprocessJob)

Reprocesses the job. Failures are located at job.result.results list. Platform iterates over this list and submits new tasks for them. Doesn't create new job entity but updates the existing one. Successfully reprocessed job will look the same as completed one.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getJobControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.reprocessJob(id);
} on DioException catch (e) {
    print('Exception when calling JobControllerApi->reprocessJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

