# thingsboard_client.api.NotificationTargetControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteNotificationTargetById**](NotificationTargetControllerApi.md#deletenotificationtargetbyid) | **DELETE** /api/notification/target/{id} | Delete notification target by id (deleteNotificationTargetById)
[**getNotificationTargetById**](NotificationTargetControllerApi.md#getnotificationtargetbyid) | **GET** /api/notification/target/{id} | Get notification target by id (getNotificationTargetById)
[**getNotificationTargets**](NotificationTargetControllerApi.md#getnotificationtargets) | **GET** /api/notification/targets | Get notification targets (getNotificationTargets)
[**getNotificationTargetsByIds**](NotificationTargetControllerApi.md#getnotificationtargetsbyids) | **GET** /api/notification/targets/list | Get notification targets by ids (getNotificationTargetsByIds)
[**getNotificationTargetsBySupportedNotificationType**](NotificationTargetControllerApi.md#getnotificationtargetsbysupportednotificationtype) | **GET** /api/notification/targets/notificationType/{notificationType} | Get notification targets by supported notification type (getNotificationTargetsBySupportedNotificationType)
[**getRecipientsForNotificationTargetConfig**](NotificationTargetControllerApi.md#getrecipientsfornotificationtargetconfig) | **POST** /api/notification/target/recipients | Get recipients for notification target config (getRecipientsForNotificationTargetConfig)
[**saveNotificationTarget**](NotificationTargetControllerApi.md#savenotificationtarget) | **POST** /api/notification/target | Save notification target (saveNotificationTarget)


# **deleteNotificationTargetById**
> deleteNotificationTargetById(id)

Delete notification target by id (deleteNotificationTargetById)

Deletes notification target by its id.  This target cannot be referenced by existing scheduled notification requests or any notification rules.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationTargetControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteNotificationTargetById(id);
} on DioException catch (e) {
    print('Exception when calling NotificationTargetControllerApi->deleteNotificationTargetById: $e\n');
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

# **getNotificationTargetById**
> NotificationTarget getNotificationTargetById(id)

Get notification target by id (getNotificationTargetById)

Fetches notification target by id.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationTargetControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getNotificationTargetById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationTargetControllerApi->getNotificationTargetById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**NotificationTarget**](NotificationTarget.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationTargets**
> PageDataNotificationTarget getNotificationTargets(pageSize, page, textSearch, sortProperty, sortOrder)

Get notification targets (getNotificationTargets)

Returns the page of notification targets owned by sysadmin or tenant.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationTargetControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filed based on the target's name
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getNotificationTargets(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationTargetControllerApi->getNotificationTargets: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Case-insensitive 'substring' filed based on the target's name | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataNotificationTarget**](PageDataNotificationTarget.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationTargetsByIds**
> BuiltList<NotificationTarget> getNotificationTargetsByIds(ids)

Get notification targets by ids (getNotificationTargetsByIds)

Returns the list of notification targets found by provided ids.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationTargetControllerApi();
final BuiltList<String> ids = ; // BuiltList<String> | Comma-separated list of uuids representing targets ids

try {
    final response = api.getNotificationTargetsByIds(ids);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationTargetControllerApi->getNotificationTargetsByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**BuiltList&lt;String&gt;**](String.md)| Comma-separated list of uuids representing targets ids | 

### Return type

[**BuiltList&lt;NotificationTarget&gt;**](NotificationTarget.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationTargetsBySupportedNotificationType**
> PageDataNotificationTarget getNotificationTargetsBySupportedNotificationType(notificationType, pageSize, page, textSearch, sortProperty, sortOrder)

Get notification targets by supported notification type (getNotificationTargetsBySupportedNotificationType)

Returns the page of notification targets filtered by notification type that they can be used for.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationTargetControllerApi();
final NotificationType notificationType = ; // NotificationType | Notification type to filter targets by
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filed based on the target's name
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getNotificationTargetsBySupportedNotificationType(notificationType, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationTargetControllerApi->getNotificationTargetsBySupportedNotificationType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationType** | [**NotificationType**](.md)| Notification type to filter targets by | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Case-insensitive 'substring' filed based on the target's name | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataNotificationTarget**](PageDataNotificationTarget.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecipientsForNotificationTargetConfig**
> PageDataUser getRecipientsForNotificationTargetConfig(pageSize, page, notificationTarget)

Get recipients for notification target config (getRecipientsForNotificationTargetConfig)

Returns the page of recipients for such notification target configuration.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationTargetControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final NotificationTarget notificationTarget = ; // NotificationTarget | 

try {
    final response = api.getRecipientsForNotificationTargetConfig(pageSize, page, notificationTarget);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationTargetControllerApi->getRecipientsForNotificationTargetConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **notificationTarget** | [**NotificationTarget**](NotificationTarget.md)|  | 

### Return type

[**PageDataUser**](PageDataUser.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveNotificationTarget**
> NotificationTarget saveNotificationTarget(notificationTarget)

Save notification target (saveNotificationTarget)

Creates or updates notification target.  Available `configuration` types are `PLATFORM_USERS` and `SLACK`. For `PLATFORM_USERS` the `usersFilter` must be specified. For tenant, there are following users filter types available: `USER_LIST`, `CUSTOMER_USERS`, `USER_GROUP_LIST`, `TENANT_ADMINISTRATORS`, `USER_ROLE`, `ALL_USERS`, `ORIGINATOR_ENTITY_OWNER_USERS`, `AFFECTED_USER`. For sysadmin: `TENANT_ADMINISTRATORS`, `AFFECTED_TENANT_ADMINISTRATORS`, `SYSTEM_ADMINISTRATORS`, `ALL_USERS`.  Here is an example of tenant-level notification target to send notification to customer's users: ```json {   \"name\": \"Users of Customer A\",   \"configuration\": {     \"type\": \"PLATFORM_USERS\",     \"usersFilter\": {       \"type\": \"CUSTOMER_USERS\",       \"customerId\": \"32499a20-d785-11ed-a06c-21dd57dd88ca\"     },     \"description\": \"Users of Customer A\"   } } ```  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationTargetControllerApi();
final NotificationTarget notificationTarget = ; // NotificationTarget | 

try {
    final response = api.saveNotificationTarget(notificationTarget);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationTargetControllerApi->saveNotificationTarget: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationTarget** | [**NotificationTarget**](NotificationTarget.md)|  | 

### Return type

[**NotificationTarget**](NotificationTarget.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

