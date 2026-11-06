# thingsboard_client.api.AlarmCommentControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAlarmComment**](AlarmCommentControllerApi.md#deletealarmcomment) | **DELETE** /api/alarm/{alarmId}/comment/{commentId} | Delete Alarm comment (deleteAlarmComment)
[**getAlarmComments**](AlarmCommentControllerApi.md#getalarmcomments) | **GET** /api/alarm/{alarmId}/comment | Get Alarm comments (getAlarmComments)
[**saveAlarmComment**](AlarmCommentControllerApi.md#savealarmcomment) | **POST** /api/alarm/{alarmId}/comment | Create or update Alarm Comment 


# **deleteAlarmComment**
> deleteAlarmComment(alarmId, commentId)

Delete Alarm comment (deleteAlarmComment)

Deletes the Alarm comment. Referencing non-existing Alarm comment Id will cause an error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmCommentControllerApi();
final String alarmId = alarmId_example; // String | A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String commentId = commentId_example; // String | A string value representing the alarm comment id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteAlarmComment(alarmId, commentId);
} on DioException catch (e) {
    print('Exception when calling AlarmCommentControllerApi->deleteAlarmComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmId** | **String**| A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **commentId** | **String**| A string value representing the alarm comment id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlarmComments**
> PageDataAlarmCommentInfo getAlarmComments(alarmId, pageSize, page, sortProperty, sortOrder)

Get Alarm comments (getAlarmComments)

Returns a page of alarm comments for specified alarm. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmCommentControllerApi();
final String alarmId = alarmId_example; // String | A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAlarmComments(alarmId, pageSize, page, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmCommentControllerApi->getAlarmComments: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmId** | **String**| A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAlarmCommentInfo**](PageDataAlarmCommentInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveAlarmComment**
> AlarmComment saveAlarmComment(alarmId, alarmComment)

Create or update Alarm Comment 

Creates or Updates the Alarm Comment. When creating comment, platform generates Alarm Comment Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Alarm Comment id will be present in the response. Specify existing Alarm Comment id to update the alarm. Referencing non-existing Alarm Comment Id will cause 'Not Found' error.    To create new Alarm comment entity it is enough to specify 'comment' json element with 'text' node, for example: {\"comment\": { \"text\": \"my comment\"}}.    If comment type is not specified the default value 'OTHER' will be saved. If 'alarmId' or 'userId' specified in body it will be ignored.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmCommentControllerApi();
final String alarmId = alarmId_example; // String | A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final AlarmComment alarmComment = ; // AlarmComment | A JSON value representing the comment.

try {
    final response = api.saveAlarmComment(alarmId, alarmComment);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmCommentControllerApi->saveAlarmComment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmId** | **String**| A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **alarmComment** | [**AlarmComment**](AlarmComment.md)| A JSON value representing the comment. | 

### Return type

[**AlarmComment**](AlarmComment.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

