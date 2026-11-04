# thingsboard_client.api.NotificationRuleControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteNotificationRule**](NotificationRuleControllerApi.md#deletenotificationrule) | **DELETE** /api/notification/rule/{id} | Delete notification rule (deleteNotificationRule)
[**getNotificationRuleById**](NotificationRuleControllerApi.md#getnotificationrulebyid) | **GET** /api/notification/rule/{id} | Get notification rule by id (getNotificationRuleById)
[**getNotificationRules**](NotificationRuleControllerApi.md#getnotificationrules) | **GET** /api/notification/rules | Get notification rules (getNotificationRules)
[**saveNotificationRule**](NotificationRuleControllerApi.md#savenotificationrule) | **POST** /api/notification/rule | Save notification rule (saveNotificationRule)


# **deleteNotificationRule**
> deleteNotificationRule(id)

Delete notification rule (deleteNotificationRule)

Deletes notification rule by id. Cancels all related scheduled notification requests (e.g. due to escalation table)  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationRuleControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteNotificationRule(id);
} on DioException catch (e) {
    print('Exception when calling NotificationRuleControllerApi->deleteNotificationRule: $e\n');
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

# **getNotificationRuleById**
> NotificationRuleInfo getNotificationRuleById(id)

Get notification rule by id (getNotificationRuleById)

Fetches notification rule info by rule's id. In addition to regular notification rule fields, there are `templateName` and `deliveryMethods` in the response.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationRuleControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getNotificationRuleById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationRuleControllerApi->getNotificationRuleById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**NotificationRuleInfo**](NotificationRuleInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationRules**
> PageDataNotificationRuleInfo getNotificationRules(pageSize, page, textSearch, sortProperty, sortOrder)

Get notification rules (getNotificationRules)

Returns the page of notification rules.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationRuleControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filter based on rule's name
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getNotificationRules(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationRuleControllerApi->getNotificationRules: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Case-insensitive 'substring' filter based on rule's name | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataNotificationRuleInfo**](PageDataNotificationRuleInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveNotificationRule**
> NotificationRule saveNotificationRule(notificationRule)

Save notification rule (saveNotificationRule)

Creates or updates notification rule.   Mandatory properties are `name`, `templateId` (of a template with `notificationType` matching to rule's `triggerType`), `triggerType`, `triggerConfig` and `recipientConfig`. Additionally, you may specify rule `description` inside of `additionalConfig`.  Trigger type of the rule cannot be changed. Available trigger types for tenant: `ENTITY_ACTION`, `ALARM`, `ALARM_COMMENT`, `ALARM_ASSIGNMENT`, `DEVICE_ACTIVITY`, `RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT`. For sysadmin, there are following trigger types available: `ENTITIES_LIMIT`, `API_USAGE_LIMIT`, `NEW_PLATFORM_VERSION`.  Here is an example of notification rule to send notification when a device, asset or customer is created or deleted: ```json {   \"name\": \"Entity action\",   \"templateId\": {     \"entityType\": \"NOTIFICATION_TEMPLATE\",     \"id\": \"32117320-d785-11ed-a06c-21dd57dd88ca\"   },   \"triggerType\": \"ENTITY_ACTION\",   \"triggerConfig\": {     \"entityTypes\": [       \"CUSTOMER\",       \"DEVICE\",       \"ASSET\"     ],     \"created\": true,     \"updated\": false,     \"deleted\": true,     \"triggerType\": \"ENTITY_ACTION\"   },   \"recipientsConfig\": {     \"targets\": [       \"320f2930-d785-11ed-a06c-21dd57dd88ca\"     ],     \"triggerType\": \"ENTITY_ACTION\"   },   \"additionalConfig\": {     \"description\": \"Send notification to tenant admins or customer users when a device, asset or customer is created\"   },   \"templateName\": \"Entity action notification\",   \"deliveryMethods\": [     \"WEB\"   ] } ```  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationRuleControllerApi();
final NotificationRule notificationRule = ; // NotificationRule | 

try {
    final response = api.saveNotificationRule(notificationRule);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationRuleControllerApi->saveNotificationRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationRule** | [**NotificationRule**](NotificationRule.md)|  | 

### Return type

[**NotificationRule**](NotificationRule.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

