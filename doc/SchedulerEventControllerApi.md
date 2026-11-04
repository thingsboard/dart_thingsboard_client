# thingsboard_client.api.SchedulerEventControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignSchedulerEventToEdge**](SchedulerEventControllerApi.md#assignschedulereventtoedge) | **POST** /api/edge/{edgeId}/schedulerEvent/{schedulerEventId} | Assign scheduler event to edge (assignSchedulerEventToEdge)
[**deleteSchedulerEvent**](SchedulerEventControllerApi.md#deleteschedulerevent) | **DELETE** /api/schedulerEvent/{schedulerEventId} | Delete Scheduler Event (deleteSchedulerEvent)
[**enableSchedulerEvent**](SchedulerEventControllerApi.md#enableschedulerevent) | **PUT** /api/schedulerEvent/{schedulerEventId}/enabled/{enabledValue} | Enable or disable Scheduler Event (enableSchedulerEvent)
[**getAllEdgeSchedulerEvents**](SchedulerEventControllerApi.md#getalledgeschedulerevents) | **GET** /api/edge/{edgeId}/allSchedulerEvents | Get All Edge Scheduler Events (getAllEdgeSchedulerEvents)
[**getAllSchedulerEvents**](SchedulerEventControllerApi.md#getallschedulerevents) | **GET** /api/schedulerEvents/all | Get all scheduler events (getAllSchedulerEvents)
[**getEdgeSchedulerEvents**](SchedulerEventControllerApi.md#getedgeschedulerevents) | **GET** /api/edge/{edgeId}/schedulerEvents | Get Edge Scheduler Events (getEdgeSchedulerEvents)
[**getScheduledReportEvents**](SchedulerEventControllerApi.md#getscheduledreportevents) | **GET** /api/scheduledReports | Get Scheduled Report Events (getScheduledReportEvents)
[**getSchedulerEventById**](SchedulerEventControllerApi.md#getschedulereventbyid) | **GET** /api/schedulerEvent/{schedulerEventId} | Get Scheduler Event (getSchedulerEventById)
[**getSchedulerEventInfoById**](SchedulerEventControllerApi.md#getschedulereventinfobyid) | **GET** /api/schedulerEvent/info/{schedulerEventId} | Get Scheduler Event With Customer Info (getSchedulerEventInfoById)
[**getSchedulerEvents**](SchedulerEventControllerApi.md#getschedulerevents) | **GET** /api/schedulerEvents | Get scheduler events (getSchedulerEvents)
[**getSchedulerEventsByIds**](SchedulerEventControllerApi.md#getschedulereventsbyids) | **GET** /api/schedulerEvents/list | Get Scheduler Events By Ids (getSchedulerEventsByIds)
[**getSchedulerEventsByRange**](SchedulerEventControllerApi.md#getschedulereventsbyrange) | **GET** /api/schedulerEvents/startTime/{startTime}/endTime/{endTime} | Get scheduler events (getSchedulerEventsByRange)
[**saveSchedulerEvent**](SchedulerEventControllerApi.md#saveschedulerevent) | **POST** /api/schedulerEvent | Save Scheduler Event (saveSchedulerEvent)
[**unassignSchedulerEventFromEdge**](SchedulerEventControllerApi.md#unassignschedulereventfromedge) | **DELETE** /api/edge/{edgeId}/schedulerEvent/{schedulerEventId} | Unassign scheduler event from edge (unassignSchedulerEventFromEdge)


# **assignSchedulerEventToEdge**
> SchedulerEventInfo assignSchedulerEventToEdge(edgeId, schedulerEventId)

Assign scheduler event to edge (assignSchedulerEventToEdge)

Creates assignment of an existing scheduler event to an instance of The Edge. Assignment works in async way - first, notification event pushed to edge service queue on platform. Second, remote edge service will receive a copy of assignment scheduler event (Edge will receive this instantly, if it's currently connected, or once it's going to be connected to platform). Third, once scheduler event will be delivered to edge service, it is going to be available for usage on remote edge instance.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String schedulerEventId = schedulerEventId_example; // String | A string value representing the scheduler id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.assignSchedulerEventToEdge(edgeId, schedulerEventId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->assignSchedulerEventToEdge: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **schedulerEventId** | **String**| A string value representing the scheduler id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**SchedulerEventInfo**](SchedulerEventInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSchedulerEvent**
> deleteSchedulerEvent(schedulerEventId)

Delete Scheduler Event (deleteSchedulerEvent)

Deletes the scheduler event. Referencing non-existing Scheduler Event Id will cause 'Not Found' error.   Security check is performed to verify that the user has 'DELETE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final String schedulerEventId = schedulerEventId_example; // String | A string value representing the scheduler id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteSchedulerEvent(schedulerEventId);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->deleteSchedulerEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedulerEventId** | **String**| A string value representing the scheduler id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableSchedulerEvent**
> SchedulerEvent enableSchedulerEvent(schedulerEventId, enabledValue)

Enable or disable Scheduler Event (enableSchedulerEvent)

Updates scheduler event with enabled = true/false. Scheduler Event extends Scheduler Event Info object and adds 'configuration' - a JSON structure of scheduler event configuration. See the 'Model' tab of the Response Class for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final String schedulerEventId = schedulerEventId_example; // String | A string value representing the scheduler id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final bool enabledValue = true; // bool | Enabled or disabled scheduler

try {
    final response = api.enableSchedulerEvent(schedulerEventId, enabledValue);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->enableSchedulerEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedulerEventId** | **String**| A string value representing the scheduler id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **enabledValue** | **bool**| Enabled or disabled scheduler | 

### Return type

[**SchedulerEvent**](SchedulerEvent.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEdgeSchedulerEvents**
> BuiltList<SchedulerEventInfo> getAllEdgeSchedulerEvents(edgeId)

Get All Edge Scheduler Events (getAllEdgeSchedulerEvents)

Fetch the list of Scheduler Event Info objects based on the provided Edge entity. Scheduler Event extends Scheduler Event Info object and adds 'configuration' - a JSON structure of scheduler event configuration. See the 'Model' tab of the Response Class for more details. Scheduler Events allows you to schedule various types of events with flexible schedule configuration. Scheduler fires configured scheduler events according to their schedule. See the 'Model' tab of the Response Class for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getAllEdgeSchedulerEvents(edgeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->getAllEdgeSchedulerEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**BuiltList&lt;SchedulerEventInfo&gt;**](SchedulerEventInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllSchedulerEvents**
> BuiltList<SchedulerEventWithCustomerInfo> getAllSchedulerEvents(type)

Get all scheduler events (getAllSchedulerEvents)

Requested scheduler events must be owned by tenant or assigned to customer which user is performing the request. Scheduler Event With Customer Info extends Scheduler Event Info object and adds 'customerTitle' - a String value representing the title of the customer which user created a Scheduler Event and 'customerIsPublic' - a boolean parameter that specifies if customer is public. See the 'Model' tab of the Response Class for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.   Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final String type = type_example; // String | A string value representing the scheduler type. For example, 'generateReport'

try {
    final response = api.getAllSchedulerEvents(type);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->getAllSchedulerEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| A string value representing the scheduler type. For example, 'generateReport' | [optional] 

### Return type

[**BuiltList&lt;SchedulerEventWithCustomerInfo&gt;**](SchedulerEventWithCustomerInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgeSchedulerEvents**
> PageDataSchedulerEventInfo getEdgeSchedulerEvents(edgeId, pageSize, page, textSearch, sortProperty, sortOrder)

Get Edge Scheduler Events (getEdgeSchedulerEvents)

Returns a page of  Scheduler Events Info objects based on the provided Edge entity. Scheduler Event extends Scheduler Event Info object and adds 'configuration' - a JSON structure of scheduler event configuration. See the 'Model' tab of the Response Class for more details. Scheduler Events allows you to schedule various types of events with flexible schedule configuration. Scheduler fires configured scheduler events according to their schedule. See the 'Model' tab of the Response Class for more details. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the scheduler event name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEdgeSchedulerEvents(edgeId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->getEdgeSchedulerEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the scheduler event name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataSchedulerEventInfo**](PageDataSchedulerEventInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScheduledReportEvents**
> PageDataScheduledReportInfo getScheduledReportEvents(pageSize, page, reportTemplateId, userId, includeCustomers, textSearch, sortProperty, sortOrder)

Get Scheduled Report Events (getScheduledReportEvents)

  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.   Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final String pageSize = pageSize_example; // String | Maximum amount of entities in a one page
final String page = page_example; // String | Sequence number of page starting from 0
final String reportTemplateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Report template id
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The user used for report generation.
final bool includeCustomers = true; // bool | Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the scheduler event name or customer title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getScheduledReportEvents(pageSize, page, reportTemplateId, userId, includeCustomers, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->getScheduledReportEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **String**| Maximum amount of entities in a one page | 
 **page** | **String**| Sequence number of page starting from 0 | 
 **reportTemplateId** | **String**| Report template id | [optional] 
 **userId** | **String**| The user used for report generation. | [optional] 
 **includeCustomers** | **bool**| Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers. | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the scheduler event name or customer title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataScheduledReportInfo**](PageDataScheduledReportInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSchedulerEventById**
> SchedulerEvent getSchedulerEventById(schedulerEventId)

Get Scheduler Event (getSchedulerEventById)

Fetch the SchedulerEvent object based on the provided scheduler event Id. Scheduler Event extends Scheduler Event Info object and adds 'configuration' - a JSON structure of scheduler event configuration. See the 'Model' tab of the Response Class for more details. Referencing non-existing Scheduler Event Id will cause 'Not Found' error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.   Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final String schedulerEventId = schedulerEventId_example; // String | A string value representing the scheduler id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getSchedulerEventById(schedulerEventId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->getSchedulerEventById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedulerEventId** | **String**| A string value representing the scheduler id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**SchedulerEvent**](SchedulerEvent.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSchedulerEventInfoById**
> SchedulerEventWithCustomerInfo getSchedulerEventInfoById(schedulerEventId)

Get Scheduler Event With Customer Info (getSchedulerEventInfoById)

Fetch the SchedulerEventWithCustomerInfo object based on the provided scheduler event Id. Scheduler Event With Customer Info extends Scheduler Event Info object and adds 'customerTitle' - a String value representing the title of the customer which user created a Scheduler Event and 'customerIsPublic' - a boolean parameter that specifies if customer is public. See the 'Model' tab of the Response Class for more details. Referencing non-existing Scheduler Event Id will cause 'Not Found' error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.   Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final String schedulerEventId = schedulerEventId_example; // String | A string value representing the scheduler id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getSchedulerEventInfoById(schedulerEventId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->getSchedulerEventInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedulerEventId** | **String**| A string value representing the scheduler id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**SchedulerEventWithCustomerInfo**](SchedulerEventWithCustomerInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSchedulerEvents**
> PageDataSchedulerEventWithCustomerInfo getSchedulerEvents(pageSize, page, textSearch, sortProperty, sortOrder, type, edgeId)

Get scheduler events (getSchedulerEvents)

Requested scheduler events must be owned by tenant or assigned to customer which user is performing the request. Scheduler Event With Customer Info extends Scheduler Event Info object and adds 'customerTitle' - a String value representing the title of the customer which user created a Scheduler Event and 'customerIsPublic' - a boolean parameter that specifies if customer is public. See the 'Model' tab of the Response Class for more details.   You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.     Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.   Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filter based on event's name, type, or customer's name
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final String type = type_example; // String | A string value representing the scheduler type. For example, 'generateReport'
final String edgeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getSchedulerEvents(pageSize, page, textSearch, sortProperty, sortOrder, type, edgeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->getSchedulerEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Case-insensitive 'substring' filter based on event's name, type, or customer's name | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **type** | **String**| A string value representing the scheduler type. For example, 'generateReport' | [optional] 
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 

### Return type

[**PageDataSchedulerEventWithCustomerInfo**](PageDataSchedulerEventWithCustomerInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSchedulerEventsByIds**
> BuiltList<SchedulerEventInfo> getSchedulerEventsByIds(schedulerEventIds)

Get Scheduler Events By Ids (getSchedulerEventsByIds)

Requested scheduler events must be owned by tenant or assigned to customer which user is performing the request. Scheduler Events allows you to schedule various types of events with flexible schedule configuration. Scheduler fires configured scheduler events according to their schedule. See the 'Model' tab of the Response Class for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.   Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final BuiltList<String> schedulerEventIds = ; // BuiltList<String> | A list of scheduler event ids, separated by comma ','

try {
    final response = api.getSchedulerEventsByIds(schedulerEventIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->getSchedulerEventsByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedulerEventIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of scheduler event ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;SchedulerEventInfo&gt;**](SchedulerEventInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSchedulerEventsByRange**
> BuiltList<SchedulerEventWithCustomerInfo> getSchedulerEventsByRange(startTime, endTime, type, edgeId, textSearch)

Get scheduler events (getSchedulerEventsByRange)

Retrieves scheduler events filtering by event run time. Requested scheduler events must be owned by tenant or assigned to customer which user is performing the request. Scheduler Event With Customer Info extends Scheduler Event Info object and adds 'customerTitle' - a String value representing the title of the customer which user created a Scheduler Event and 'customerIsPublic' - a boolean parameter that specifies if customer is public. See the 'Model' tab of the Response Class for more details.   You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.     Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.   Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final int startTime = 789; // int | Start time filter in milliseconds for scheduler event run time
final int endTime = 789; // int | End time filter in milliseconds for scheduler event run time
final String type = type_example; // String | A string value representing the scheduler type. For example, 'generateReport'
final String edgeId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filter based on event's name, type, or customer's name

try {
    final response = api.getSchedulerEventsByRange(startTime, endTime, type, edgeId, textSearch);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->getSchedulerEventsByRange: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startTime** | **int**| Start time filter in milliseconds for scheduler event run time | 
 **endTime** | **int**| End time filter in milliseconds for scheduler event run time | 
 **type** | **String**| A string value representing the scheduler type. For example, 'generateReport' | [optional] 
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 
 **textSearch** | **String**| Case-insensitive 'substring' filter based on event's name, type, or customer's name | [optional] 

### Return type

[**BuiltList&lt;SchedulerEventWithCustomerInfo&gt;**](SchedulerEventWithCustomerInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveSchedulerEvent**
> SchedulerEvent saveSchedulerEvent(schedulerEvent)

Save Scheduler Event (saveSchedulerEvent)

Creates or Updates scheduler event. Scheduler Event extends Scheduler Event Info object and adds 'configuration' - a JSON structure of scheduler event configuration. See the 'Model' tab of the Response Class for more details. When creating scheduler event, platform generates scheduler event Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created scheduler event id will be present in the response. Specify existing scheduler event id to update the scheduler event. Referencing non-existing scheduler event Id will cause 'Not Found' error. Remove 'id', 'tenantId' and optionally 'customerId' from the request body example (below) to create new Scheduler Event entity.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final SchedulerEvent schedulerEvent = ; // SchedulerEvent | 

try {
    final response = api.saveSchedulerEvent(schedulerEvent);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->saveSchedulerEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schedulerEvent** | [**SchedulerEvent**](SchedulerEvent.md)|  | 

### Return type

[**SchedulerEvent**](SchedulerEvent.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unassignSchedulerEventFromEdge**
> SchedulerEventInfo unassignSchedulerEventFromEdge(edgeId, schedulerEventId)

Unassign scheduler event from edge (unassignSchedulerEventFromEdge)

Clears assignment of the scheduler event to the edge. Unassignment works in async way - first, 'unassign' notification event pushed to edge queue on platform. Second, remote edge service will receive an 'unassign' command to remove entity group (Edge will receive this instantly, if it's currently connected, or once it's going to be connected to platform). Third, once 'unassign' command will be delivered to edge service, it's going to remove entity group and entities inside this group locally.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSchedulerEventControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String schedulerEventId = schedulerEventId_example; // String | A string value representing the scheduler id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.unassignSchedulerEventFromEdge(edgeId, schedulerEventId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SchedulerEventControllerApi->unassignSchedulerEventFromEdge: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **schedulerEventId** | **String**| A string value representing the scheduler id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**SchedulerEventInfo**](SchedulerEventInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

