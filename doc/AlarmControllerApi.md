# thingsboard_client.api.AlarmControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ackAlarm**](AlarmControllerApi.md#ackalarm) | **POST** /api/alarm/{alarmId}/ack | Acknowledge Alarm (ackAlarm)
[**assignAlarm**](AlarmControllerApi.md#assignalarm) | **POST** /api/alarm/{alarmId}/assign/{assigneeId} | Assign/Reassign Alarm (assignAlarm)
[**clearAlarm**](AlarmControllerApi.md#clearalarm) | **POST** /api/alarm/{alarmId}/clear | Clear Alarm (clearAlarm)
[**deleteAlarm**](AlarmControllerApi.md#deletealarm) | **DELETE** /api/alarm/{alarmId} | Delete Alarm (deleteAlarm)
[**getAlarmById**](AlarmControllerApi.md#getalarmbyid) | **GET** /api/alarm/{alarmId} | Get Alarm (getAlarmById)
[**getAlarmInfoById**](AlarmControllerApi.md#getalarminfobyid) | **GET** /api/alarm/info/{alarmId} | Get Alarm Info (getAlarmInfoById)
[**getAlarmTypes**](AlarmControllerApi.md#getalarmtypes) | **GET** /api/alarm/types | Get Alarm Types (getAlarmTypes)
[**getAlarmsByEntity**](AlarmControllerApi.md#getalarmsbyentity) | **GET** /api/alarm/{entityType}/{entityId} | Get Alarms (getAlarmsByEntity)
[**getAlarmsV2**](AlarmControllerApi.md#getalarmsv2) | **GET** /api/v2/alarm/{entityType}/{entityId} | Get Alarms (getAlarmsV2)
[**getAllAlarms**](AlarmControllerApi.md#getallalarms) | **GET** /api/alarms | Get All Alarms (getAllAlarms)
[**getAllAlarmsV2**](AlarmControllerApi.md#getallalarmsv2) | **GET** /api/v2/alarms | Get All Alarms (getAllAlarmsV2)
[**getHighestAlarmSeverity**](AlarmControllerApi.md#gethighestalarmseverity) | **GET** /api/alarm/highestSeverity/{entityType}/{entityId} | Get Highest Alarm Severity (getHighestAlarmSeverity)
[**saveAlarm**](AlarmControllerApi.md#savealarm) | **POST** /api/alarm | Create or Update Alarm (saveAlarm)
[**unassignAlarm**](AlarmControllerApi.md#unassignalarm) | **DELETE** /api/alarm/{alarmId}/assign | Unassign Alarm (unassignAlarm)


# **ackAlarm**
> AlarmInfo ackAlarm(alarmId)

Acknowledge Alarm (ackAlarm)

Acknowledge the Alarm. Once acknowledged, the 'ack_ts' field will be set to current timestamp and special rule chain event 'ALARM_ACK' will be generated. Referencing non-existing Alarm Id will cause an error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final String alarmId = alarmId_example; // String | A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.ackAlarm(alarmId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->ackAlarm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmId** | **String**| A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**AlarmInfo**](AlarmInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assignAlarm**
> AlarmInfo assignAlarm(alarmId, assigneeId)

Assign/Reassign Alarm (assignAlarm)

Assign the Alarm. Once assigned, the 'assign_ts' field will be set to current timestamp and special rule chain event 'ALARM_ASSIGNED' (or ALARM_REASSIGNED in case of assigning already assigned alarm) will be generated. Referencing non-existing Alarm Id will cause an error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final String alarmId = alarmId_example; // String | A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String assigneeId = assigneeId_example; // String | A string value representing the user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.assignAlarm(alarmId, assigneeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->assignAlarm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmId** | **String**| A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **assigneeId** | **String**| A string value representing the user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**AlarmInfo**](AlarmInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearAlarm**
> AlarmInfo clearAlarm(alarmId)

Clear Alarm (clearAlarm)

Clear the Alarm. Once cleared, the 'clear_ts' field will be set to current timestamp and special rule chain event 'ALARM_CLEAR' will be generated. Referencing non-existing Alarm Id will cause an error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final String alarmId = alarmId_example; // String | A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.clearAlarm(alarmId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->clearAlarm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmId** | **String**| A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**AlarmInfo**](AlarmInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAlarm**
> bool deleteAlarm(alarmId)

Delete Alarm (deleteAlarm)

Deletes the Alarm. Referencing non-existing Alarm Id will cause an error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'DELETE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final String alarmId = alarmId_example; // String | A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.deleteAlarm(alarmId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->deleteAlarm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmId** | **String**| A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

**bool**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlarmById**
> Alarm getAlarmById(alarmId)

Get Alarm (getAlarmById)

Fetch the Alarm object based on the provided Alarm Id.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final String alarmId = alarmId_example; // String | A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getAlarmById(alarmId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->getAlarmById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmId** | **String**| A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Alarm**](Alarm.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlarmInfoById**
> AlarmInfo getAlarmInfoById(alarmId)

Get Alarm Info (getAlarmInfoById)

Fetch the Alarm Info object based on the provided Alarm Id. Alarm Info is an extension of the default Alarm object that also contains name of the alarm originator.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final String alarmId = alarmId_example; // String | A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getAlarmInfoById(alarmId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->getAlarmInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmId** | **String**| A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**AlarmInfo**](AlarmInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlarmTypes**
> PageDataEntitySubtype getAlarmTypes(pageSize, page, textSearch, sortOrder)

Get Alarm Types (getAlarmTypes)

Returns a set of unique alarm types based on alarms that are either owned by the tenant or assigned to the customer which user is performing the request.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on of next alarm fields: type, severity or status
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAlarmTypes(pageSize, page, textSearch, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->getAlarmTypes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on of next alarm fields: type, severity or status | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntitySubtype**](PageDataEntitySubtype.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlarmsByEntity**
> PageDataAlarmInfo getAlarmsByEntity(entityType, entityId, pageSize, page, searchStatus, status, assigneeId, textSearch, sortProperty, sortOrder, startTime, endTime, fetchOriginator)

Get Alarms (getAlarmsByEntity)

Returns a page of alarms for the selected entity. Specifying both parameters 'searchStatus' and 'status' at the same time will cause an error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String searchStatus = searchStatus_example; // String | A string value representing one of the AlarmSearchStatus enumeration value
final String status = status_example; // String | A string value representing one of the AlarmStatus enumeration value
final String assigneeId = assigneeId_example; // String | A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on of next alarm fields: type, severity or status
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final int startTime = 789; // int | The start timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
final int endTime = 789; // int | The end timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
final bool fetchOriginator = true; // bool | A boolean value to specify if the alarm originator name will be filled in the AlarmInfo object  field: 'originatorName' or will returns as null.

try {
    final response = api.getAlarmsByEntity(entityType, entityId, pageSize, page, searchStatus, status, assigneeId, textSearch, sortProperty, sortOrder, startTime, endTime, fetchOriginator);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->getAlarmsByEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **searchStatus** | **String**| A string value representing one of the AlarmSearchStatus enumeration value | [optional] 
 **status** | **String**| A string value representing one of the AlarmStatus enumeration value | [optional] 
 **assigneeId** | **String**| A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on of next alarm fields: type, severity or status | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **startTime** | **int**| The start timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'. | [optional] 
 **endTime** | **int**| The end timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'. | [optional] 
 **fetchOriginator** | **bool**| A boolean value to specify if the alarm originator name will be filled in the AlarmInfo object  field: 'originatorName' or will returns as null. | [optional] 

### Return type

[**PageDataAlarmInfo**](PageDataAlarmInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlarmsV2**
> PageDataAlarmInfo getAlarmsV2(entityType, entityId, pageSize, page, statusList, severityList, typeList, assigneeId, textSearch, sortProperty, sortOrder, startTime, endTime)

Get Alarms (getAlarmsV2)

Returns a page of alarms for the selected entity. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final BuiltList<String> statusList = ; // BuiltList<String> | A list of string values separated by comma ',' representing one of the AlarmSearchStatus enumeration value
final BuiltList<String> severityList = ; // BuiltList<String> | A list of string values separated by comma ',' representing one of the AlarmSeverity enumeration value
final BuiltList<String> typeList = ; // BuiltList<String> | A list of string values separated by comma ',' representing alarm types
final String assigneeId = assigneeId_example; // String | A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on of next alarm fields: type, severity or status
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final int startTime = 789; // int | The start timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
final int endTime = 789; // int | The end timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.

try {
    final response = api.getAlarmsV2(entityType, entityId, pageSize, page, statusList, severityList, typeList, assigneeId, textSearch, sortProperty, sortOrder, startTime, endTime);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->getAlarmsV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **statusList** | [**BuiltList&lt;String&gt;**](String.md)| A list of string values separated by comma ',' representing one of the AlarmSearchStatus enumeration value | [optional] 
 **severityList** | [**BuiltList&lt;String&gt;**](String.md)| A list of string values separated by comma ',' representing one of the AlarmSeverity enumeration value | [optional] 
 **typeList** | [**BuiltList&lt;String&gt;**](String.md)| A list of string values separated by comma ',' representing alarm types | [optional] 
 **assigneeId** | **String**| A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on of next alarm fields: type, severity or status | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **startTime** | **int**| The start timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'. | [optional] 
 **endTime** | **int**| The end timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'. | [optional] 

### Return type

[**PageDataAlarmInfo**](PageDataAlarmInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAlarms**
> PageDataAlarmInfo getAllAlarms(pageSize, page, searchStatus, status, assigneeId, textSearch, sortProperty, sortOrder, startTime, endTime, fetchOriginator)

Get All Alarms (getAllAlarms)

Returns a page of alarms that belongs to the current user owner. If the user has the authority of 'Tenant Administrator', the server returns alarms that belongs to the tenant of current user. If the user has the authority of 'Customer User', the server returns alarms that belongs to the customer of current user. Specifying both parameters 'searchStatus' and 'status' at the same time will cause an error. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String searchStatus = searchStatus_example; // String | A string value representing one of the AlarmSearchStatus enumeration value
final String status = status_example; // String | A string value representing one of the AlarmStatus enumeration value
final String assigneeId = assigneeId_example; // String | A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on of next alarm fields: type, severity or status
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final int startTime = 789; // int | The start timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
final int endTime = 789; // int | The end timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
final bool fetchOriginator = true; // bool | A boolean value to specify if the alarm originator name will be filled in the AlarmInfo object  field: 'originatorName' or will returns as null.

try {
    final response = api.getAllAlarms(pageSize, page, searchStatus, status, assigneeId, textSearch, sortProperty, sortOrder, startTime, endTime, fetchOriginator);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->getAllAlarms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **searchStatus** | **String**| A string value representing one of the AlarmSearchStatus enumeration value | [optional] 
 **status** | **String**| A string value representing one of the AlarmStatus enumeration value | [optional] 
 **assigneeId** | **String**| A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on of next alarm fields: type, severity or status | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **startTime** | **int**| The start timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'. | [optional] 
 **endTime** | **int**| The end timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'. | [optional] 
 **fetchOriginator** | **bool**| A boolean value to specify if the alarm originator name will be filled in the AlarmInfo object  field: 'originatorName' or will returns as null. | [optional] 

### Return type

[**PageDataAlarmInfo**](PageDataAlarmInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllAlarmsV2**
> PageDataAlarmInfo getAllAlarmsV2(pageSize, page, statusList, severityList, typeList, assigneeId, textSearch, sortProperty, sortOrder, startTime, endTime)

Get All Alarms (getAllAlarmsV2)

Returns a page of alarms that belongs to the current user owner. If the user has the authority of 'Tenant Administrator', the server returns alarms that belongs to the tenant of current user. If the user has the authority of 'Customer User', the server returns alarms that belongs to the customer of current user. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final BuiltList<String> statusList = ; // BuiltList<String> | A list of string values separated by comma ',' representing one of the AlarmSearchStatus enumeration value
final BuiltList<String> severityList = ; // BuiltList<String> | A list of string values separated by comma ',' representing one of the AlarmSeverity enumeration value
final BuiltList<String> typeList = ; // BuiltList<String> | A list of string values separated by comma ',' representing alarm types
final String assigneeId = assigneeId_example; // String | A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on of next alarm fields: type, severity or status
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final int startTime = 789; // int | The start timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
final int endTime = 789; // int | The end timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.

try {
    final response = api.getAllAlarmsV2(pageSize, page, statusList, severityList, typeList, assigneeId, textSearch, sortProperty, sortOrder, startTime, endTime);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->getAllAlarmsV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **statusList** | [**BuiltList&lt;String&gt;**](String.md)| A list of string values separated by comma ',' representing one of the AlarmSearchStatus enumeration value | [optional] 
 **severityList** | [**BuiltList&lt;String&gt;**](String.md)| A list of string values separated by comma ',' representing one of the AlarmSeverity enumeration value | [optional] 
 **typeList** | [**BuiltList&lt;String&gt;**](String.md)| A list of string values separated by comma ',' representing alarm types | [optional] 
 **assigneeId** | **String**| A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on of next alarm fields: type, severity or status | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **startTime** | **int**| The start timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'. | [optional] 
 **endTime** | **int**| The end timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'. | [optional] 

### Return type

[**PageDataAlarmInfo**](PageDataAlarmInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHighestAlarmSeverity**
> AlarmSeverity getHighestAlarmSeverity(entityType, entityId, searchStatus, status, assigneeId)

Get Highest Alarm Severity (getHighestAlarmSeverity)

Search the alarms by originator ('entityType' and entityId') and optional 'status' or 'searchStatus' filters and returns the highest AlarmSeverity(CRITICAL, MAJOR, MINOR, WARNING or INDETERMINATE). Specifying both parameters 'searchStatus' and 'status' at the same time will cause an error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String searchStatus = searchStatus_example; // String | A string value representing one of the AlarmSearchStatus enumeration value
final String status = status_example; // String | A string value representing one of the AlarmStatus enumeration value
final String assigneeId = assigneeId_example; // String | A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getHighestAlarmSeverity(entityType, entityId, searchStatus, status, assigneeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->getHighestAlarmSeverity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **searchStatus** | **String**| A string value representing one of the AlarmSearchStatus enumeration value | [optional] 
 **status** | **String**| A string value representing one of the AlarmStatus enumeration value | [optional] 
 **assigneeId** | **String**| A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 

### Return type

[**AlarmSeverity**](AlarmSeverity.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveAlarm**
> Alarm saveAlarm(alarm)

Create or Update Alarm (saveAlarm)

Creates or Updates the Alarm. When creating alarm, platform generates Alarm Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Alarm id will be present in the response. Specify existing Alarm id to update the alarm. Referencing non-existing Alarm Id will cause 'Not Found' error.   Platform also deduplicate the alarms based on the entity id of originator and alarm 'type'. For example, if the user or system component create the alarm with the type 'HighTemperature' for device 'Device A' the new active alarm is created. If the user tries to create 'HighTemperature' alarm for the same device again, the previous alarm will be updated (the 'end_ts' will be set to current timestamp). If the user clears the alarm (see 'Clear Alarm(clearAlarm)'), than new alarm with the same type and same device may be created. Remove 'id', 'tenantId' and optionally 'customerId' from the request body example (below) to create new Alarm entity.   The alarm originator is an immutable routing key: when updating an existing alarm, the 'originator' in the request body must match the stored alarm's originator. A request that references an existing alarm id but carries a different originator is treated as a lookup miss and causes a 'Not Found' error.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final Alarm alarm = ; // Alarm | A JSON value representing the alarm.

try {
    final response = api.saveAlarm(alarm);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->saveAlarm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarm** | [**Alarm**](Alarm.md)| A JSON value representing the alarm. | 

### Return type

[**Alarm**](Alarm.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unassignAlarm**
> AlarmInfo unassignAlarm(alarmId)

Unassign Alarm (unassignAlarm)

Unassign the Alarm. Once unassigned, the 'assign_ts' field will be set to current timestamp and special rule chain event 'ALARM_UNASSIGNED' will be generated. Referencing non-existing Alarm Id will cause an error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmControllerApi();
final String alarmId = alarmId_example; // String | A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.unassignAlarm(alarmId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmControllerApi->unassignAlarm: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmId** | **String**| A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**AlarmInfo**](AlarmInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

