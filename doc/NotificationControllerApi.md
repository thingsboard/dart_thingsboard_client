# thingsboard_client.api.NotificationControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNotificationRequest**](NotificationControllerApi.md#createnotificationrequest) | **POST** /api/notification/request | Create notification request (createNotificationRequest)
[**deleteNotification**](NotificationControllerApi.md#deletenotification) | **DELETE** /api/notification/{id} | Delete notification (deleteNotification)
[**deleteNotificationRequest**](NotificationControllerApi.md#deletenotificationrequest) | **DELETE** /api/notification/request/{id} | Delete notification request (deleteNotificationRequest)
[**getAvailableDeliveryMethods**](NotificationControllerApi.md#getavailabledeliverymethods) | **GET** /api/notification/deliveryMethods | Get available delivery methods (getAvailableDeliveryMethods)
[**getNotificationRequestById**](NotificationControllerApi.md#getnotificationrequestbyid) | **GET** /api/notification/request/{id} | Get notification request by id (getNotificationRequestById)
[**getNotificationRequestPreview**](NotificationControllerApi.md#getnotificationrequestpreview) | **POST** /api/notification/request/preview | Get notification request preview (getNotificationRequestPreview)
[**getNotificationRequests**](NotificationControllerApi.md#getnotificationrequests) | **GET** /api/notification/requests | Get notification requests (getNotificationRequests)
[**getNotificationSettings**](NotificationControllerApi.md#getnotificationsettings) | **GET** /api/notification/settings | Get notification settings (getNotificationSettings)
[**getNotifications**](NotificationControllerApi.md#getnotifications) | **GET** /api/notifications | Get notifications (getNotifications)
[**getUnreadNotificationsCount**](NotificationControllerApi.md#getunreadnotificationscount) | **GET** /api/notifications/unread/count | Get unread notifications count (getUnreadNotificationsCount)
[**getUserNotificationSettings**](NotificationControllerApi.md#getusernotificationsettings) | **GET** /api/notification/settings/user | getUserNotificationSettings
[**markAllNotificationsAsRead**](NotificationControllerApi.md#markallnotificationsasread) | **PUT** /api/notifications/read | Mark all notifications as read (markAllNotificationsAsRead)
[**markNotificationAsRead**](NotificationControllerApi.md#marknotificationasread) | **PUT** /api/notification/{id}/read | Mark notification as read (markNotificationAsRead)
[**saveNotificationSettings**](NotificationControllerApi.md#savenotificationsettings) | **POST** /api/notification/settings | Save notification settings (saveNotificationSettings)
[**saveUserNotificationSettings**](NotificationControllerApi.md#saveusernotificationsettings) | **POST** /api/notification/settings/user | saveUserNotificationSettings
[**sendAddonAccessError**](NotificationControllerApi.md#sendaddonaccesserror) | **POST** /api/notification/sendAddonAccessError/{addonType} | Send add-on access error notification to System/Tenant administrators (sendAddonAccessError)
[**sendAddonAccessRequest**](NotificationControllerApi.md#sendaddonaccessrequest) | **POST** /api/notification/sendAddonAccessRequest/{addonType} | Send add-on access request notification to System/Tenant administrators (sendAddonAccessRequest)
[**sendEntitiesLimitIncreaseRequest**](NotificationControllerApi.md#sendentitieslimitincreaserequest) | **POST** /api/notification/entitiesLimitIncreaseRequest/{entityType} | Send entity limit increase request notification to System/Tenant administrators (sendEntitiesLimitIncreaseRequest)
[**sendPlanUpgradeRequest**](NotificationControllerApi.md#sendplanupgraderequest) | **POST** /api/notification/sendPlanUpgradeRequest/{planName} | Send plan upgrade request notification to System administrators (sendPlanUpgradeRequest)


# **createNotificationRequest**
> NotificationRequest createNotificationRequest(notificationRequest)

Create notification request (createNotificationRequest)

Processes notification request. Mandatory request properties are `targets` (list of targets ids to send notification to), and either `templateId` (existing notification template id) or `template` (to send notification without saving the template). Optionally, you can set `sendingDelayInSec` inside the `additionalConfig` field to schedule the notification.  For each enabled delivery method in the notification template, there must be a target in the `targets` list that supports this delivery method: if you chose `WEB`, `EMAIL` or `SMS` - there must be at least one target in `targets` of `PLATFORM_USERS` type. For `SLACK` delivery method - you need to chose at least one `SLACK` notification target.  Notification request object with `PROCESSING` status will be returned immediately, and the notification sending itself is done asynchronously. After all notifications are sent, the `status` of the request becomes `SENT`. Use `getNotificationRequestById` to see the notification request processing status and some sending stats.   Here is an example of notification request to one target using saved template: ```json {   \"templateId\": {     \"entityType\": \"NOTIFICATION_TEMPLATE\",     \"id\": \"6dbc3670-e4dd-11ed-9401-dbcc5dff78be\"   },   \"targets\": [     \"320e3ed0-d785-11ed-a06c-21dd57dd88ca\"   ],   \"additionalConfig\": {     \"sendingDelayInSec\": 0   } } ```  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final NotificationRequest notificationRequest = ; // NotificationRequest | 

try {
    final response = api.createNotificationRequest(notificationRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->createNotificationRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationRequest** | [**NotificationRequest**](NotificationRequest.md)|  | 

### Return type

[**NotificationRequest**](NotificationRequest.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteNotification**
> deleteNotification(id)

Delete notification (deleteNotification)

Deletes notification by its id.  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteNotification(id);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->deleteNotification: $e\n');
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

# **deleteNotificationRequest**
> deleteNotificationRequest(id)

Delete notification request (deleteNotificationRequest)

Deletes notification request by its id.  If the request has status `SENT` - all sent notifications for this request will be deleted. If it is `SCHEDULED`, the request will be cancelled.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteNotificationRequest(id);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->deleteNotificationRequest: $e\n');
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

# **getAvailableDeliveryMethods**
> BuiltList<NotificationDeliveryMethod> getAvailableDeliveryMethods()

Get available delivery methods (getAvailableDeliveryMethods)

Returns the list of delivery methods that are properly configured and are allowed to be used for sending notifications.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();

try {
    final response = api.getAvailableDeliveryMethods();
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->getAvailableDeliveryMethods: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;NotificationDeliveryMethod&gt;**](NotificationDeliveryMethod.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationRequestById**
> NotificationRequestInfo getNotificationRequestById(id)

Get notification request by id (getNotificationRequestById)

Fetches notification request info by request id.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getNotificationRequestById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->getNotificationRequestById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**NotificationRequestInfo**](NotificationRequestInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationRequestPreview**
> NotificationRequestPreview getNotificationRequestPreview(notificationRequest, recipientsPreviewSize)

Get notification request preview (getNotificationRequestPreview)

Returns preview for notification request.  `processedTemplates` shows how the notifications for each delivery method will look like for the first recipient of the corresponding notification target.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final NotificationRequest notificationRequest = ; // NotificationRequest | 
final int recipientsPreviewSize = 56; // int | Amount of the recipients to show in preview

try {
    final response = api.getNotificationRequestPreview(notificationRequest, recipientsPreviewSize);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->getNotificationRequestPreview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationRequest** | [**NotificationRequest**](NotificationRequest.md)|  | 
 **recipientsPreviewSize** | **int**| Amount of the recipients to show in preview | [optional] [default to 20]

### Return type

[**NotificationRequestPreview**](NotificationRequestPreview.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationRequests**
> PageDataNotificationRequestInfo getNotificationRequests(pageSize, page, textSearch, sortProperty, sortOrder)

Get notification requests (getNotificationRequests)

Returns the page of notification requests submitted by users of this tenant or sysadmins.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filed based on the used template name
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getNotificationRequests(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->getNotificationRequests: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Case-insensitive 'substring' filed based on the used template name | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataNotificationRequestInfo**](PageDataNotificationRequestInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationSettings**
> NotificationSettings getNotificationSettings()

Get notification settings (getNotificationSettings)

Retrieves notification settings for this tenant or sysadmin.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();

try {
    final response = api.getNotificationSettings();
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->getNotificationSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NotificationSettings**](NotificationSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotifications**
> PageDataNotification getNotifications(pageSize, page, textSearch, sortProperty, sortOrder, unreadOnly, deliveryMethod)

Get notifications (getNotifications)

Returns the page of notifications for current user.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for any authorized user.   **WebSocket API**:  There are 2 types of subscriptions: one for unread notifications count, another for unread notifications themselves.  The URI for opening WS session for notifications: `/api/ws/plugins/notifications`.  Subscription command for unread notifications count: ``` {   \"unreadCountSubCmd\": {     \"cmdId\": 1234   } } ``` To subscribe for latest unread notifications: ``` {   \"unreadSubCmd\": {     \"cmdId\": 1234,     \"limit\": 10   } } ``` To unsubscribe from any subscription: ``` {   \"unsubCmd\": {     \"cmdId\": 1234   } } ``` To mark certain notifications as read, use following command: ``` {   \"markAsReadCmd\": {     \"cmdId\": 1234,     \"notifications\": [       \"6f860330-7fc2-11ed-b855-7dd3b7d2faa9\",       \"5b6dfee0-8d0d-11ed-b61f-35a57b03dade\"     ]   } }  ``` To mark all notifications as read: ``` {   \"markAllAsReadCmd\": {     \"cmdId\": 1234   } } ```   Update structure for unread **notifications count subscription**: ``` {   \"cmdId\": 1234,   \"totalUnreadCount\": 55 } ``` For **notifications subscription**: - full update of latest unread notifications: ``` {   \"cmdId\": 1234,   \"notifications\": [     {       \"id\": {         \"entityType\": \"NOTIFICATION\",         \"id\": \"6f860330-7fc2-11ed-b855-7dd3b7d2faa9\"       },       ...     }   ],   \"totalUnreadCount\": 1 } ``` - when new notification arrives or shown notification is updated: ``` {   \"cmdId\": 1234,   \"update\": {     \"id\": {       \"entityType\": \"NOTIFICATION\",       \"id\": \"6f860330-7fc2-11ed-b855-7dd3b7d2faa9\"     },     # updated notification info, text, subject etc.     ...   },   \"totalUnreadCount\": 2 } ``` - when unread notifications count changes: ``` {   \"cmdId\": 1234,   \"totalUnreadCount\": 5 } ```

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filter based on notification subject or text
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final bool unreadOnly = true; // bool | To search for unread notifications only
final String deliveryMethod = deliveryMethod_example; // String | Delivery method

try {
    final response = api.getNotifications(pageSize, page, textSearch, sortProperty, sortOrder, unreadOnly, deliveryMethod);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->getNotifications: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Case-insensitive 'substring' filter based on notification subject or text | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **unreadOnly** | **bool**| To search for unread notifications only | [optional] [default to false]
 **deliveryMethod** | **String**| Delivery method | [optional] 

### Return type

[**PageDataNotification**](PageDataNotification.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUnreadNotificationsCount**
> int getUnreadNotificationsCount(deliveryMethod)

Get unread notifications count (getUnreadNotificationsCount)

Returns unread notifications count for chosen delivery method.  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final String deliveryMethod = deliveryMethod_example; // String | Delivery method

try {
    final response = api.getUnreadNotificationsCount(deliveryMethod);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->getUnreadNotificationsCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryMethod** | **String**| Delivery method | [optional] 

### Return type

**int**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserNotificationSettings**
> UserNotificationSettings getUserNotificationSettings()

getUserNotificationSettings

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();

try {
    final response = api.getUserNotificationSettings();
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->getUserNotificationSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserNotificationSettings**](UserNotificationSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markAllNotificationsAsRead**
> markAllNotificationsAsRead(deliveryMethod)

Mark all notifications as read (markAllNotificationsAsRead)

Marks all unread notifications as read.  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final String deliveryMethod = deliveryMethod_example; // String | Delivery method

try {
    api.markAllNotificationsAsRead(deliveryMethod);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->markAllNotificationsAsRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryMethod** | **String**| Delivery method | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markNotificationAsRead**
> markNotificationAsRead(id)

Mark notification as read (markNotificationAsRead)

Marks notification as read by its id.  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.markNotificationAsRead(id);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->markNotificationAsRead: $e\n');
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

# **saveNotificationSettings**
> NotificationSettings saveNotificationSettings(notificationSettings)

Save notification settings (saveNotificationSettings)

Saves notification settings for this tenant or sysadmin. `deliveryMethodsConfigs` of the settings must be specified.  Here is an example of the notification settings with Slack configuration: ```json {   \"deliveryMethodsConfigs\": {     \"SLACK\": {       \"method\": \"SLACK\",       \"botToken\": \"xoxb-....\"     }   } } ```  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final NotificationSettings notificationSettings = ; // NotificationSettings | 

try {
    final response = api.saveNotificationSettings(notificationSettings);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->saveNotificationSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationSettings** | [**NotificationSettings**](NotificationSettings.md)|  | 

### Return type

[**NotificationSettings**](NotificationSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveUserNotificationSettings**
> UserNotificationSettings saveUserNotificationSettings(userNotificationSettings)

saveUserNotificationSettings

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final UserNotificationSettings userNotificationSettings = ; // UserNotificationSettings | 

try {
    final response = api.saveUserNotificationSettings(userNotificationSettings);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->saveUserNotificationSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userNotificationSettings** | [**UserNotificationSettings**](UserNotificationSettings.md)|  | 

### Return type

[**UserNotificationSettings**](UserNotificationSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendAddonAccessError**
> sendAddonAccessError(addonType)

Send add-on access error notification to System/Tenant administrators (sendAddonAccessError)

Send add-on access error notification by Tenant Administrator or Customer User to System/Tenant administrators.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final String addonType = addonType_example; // String | Addon type

try {
    api.sendAddonAccessError(addonType);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->sendAddonAccessError: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addonType** | **String**| Addon type | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendAddonAccessRequest**
> sendAddonAccessRequest(addonType)

Send add-on access request notification to System/Tenant administrators (sendAddonAccessRequest)

Send add-on access request notification by Tenant Administrator or Customer User to System/Tenant administrators.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final String addonType = addonType_example; // String | Addon type

try {
    api.sendAddonAccessRequest(addonType);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->sendAddonAccessRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addonType** | **String**| Addon type | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendEntitiesLimitIncreaseRequest**
> sendEntitiesLimitIncreaseRequest(entityType, subscriptionViolation)

Send entity limit increase request notification to System/Tenant administrators (sendEntitiesLimitIncreaseRequest)

Send entity limit increase request notification by Tenant Administrator or Customer User to System/Tenant administrators.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final String entityType = entityType_example; // String | Entity type
final bool subscriptionViolation = true; // bool | 

try {
    api.sendEntitiesLimitIncreaseRequest(entityType, subscriptionViolation);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->sendEntitiesLimitIncreaseRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| Entity type | 
 **subscriptionViolation** | **bool**|  | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendPlanUpgradeRequest**
> sendPlanUpgradeRequest(planName)

Send plan upgrade request notification to System administrators (sendPlanUpgradeRequest)

Send plan upgrade access request notification by Tenant Administrator to System administrators.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationControllerApi();
final String planName = planName_example; // String | Plan name

try {
    api.sendPlanUpgradeRequest(planName);
} on DioException catch (e) {
    print('Exception when calling NotificationControllerApi->sendPlanUpgradeRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **planName** | **String**| Plan name | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

