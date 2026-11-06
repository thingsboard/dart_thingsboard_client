# thingsboard_client.api.NotificationTemplateControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteNotificationTemplateById**](NotificationTemplateControllerApi.md#deletenotificationtemplatebyid) | **DELETE** /api/notification/template/{id} | Delete notification template by id (deleteNotificationTemplateById
[**getNotificationTemplateById**](NotificationTemplateControllerApi.md#getnotificationtemplatebyid) | **GET** /api/notification/template/{id} | Get notification template by id (getNotificationTemplateById)
[**getNotificationTemplates**](NotificationTemplateControllerApi.md#getnotificationtemplates) | **GET** /api/notification/templates | Get notification templates (getNotificationTemplates)
[**listSlackConversations**](NotificationTemplateControllerApi.md#listslackconversations) | **GET** /api/notification/slack/conversations | List Slack conversations (listSlackConversations)
[**saveNotificationTemplate**](NotificationTemplateControllerApi.md#savenotificationtemplate) | **POST** /api/notification/template | Save notification template (saveNotificationTemplate)


# **deleteNotificationTemplateById**
> deleteNotificationTemplateById(id)

Delete notification template by id (deleteNotificationTemplateById

Deletes notification template by its id.  This template cannot be referenced by existing scheduled notification requests or any notification rules.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationTemplateControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteNotificationTemplateById(id);
} on DioException catch (e) {
    print('Exception when calling NotificationTemplateControllerApi->deleteNotificationTemplateById: $e\n');
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

# **getNotificationTemplateById**
> NotificationTemplate getNotificationTemplateById(id)

Get notification template by id (getNotificationTemplateById)

Fetches notification template by id.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationTemplateControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getNotificationTemplateById(id);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationTemplateControllerApi->getNotificationTemplateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**NotificationTemplate**](NotificationTemplate.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotificationTemplates**
> PageDataNotificationTemplate getNotificationTemplates(pageSize, page, textSearch, sortProperty, sortOrder, notificationTypes)

Get notification templates (getNotificationTemplates)

Returns the page of notification templates owned by sysadmin or tenant.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationTemplateControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filter based on template's name and notification type
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final BuiltList<String> notificationTypes = ; // BuiltList<String> | Comma-separated list of notification types to filter the templates

try {
    final response = api.getNotificationTemplates(pageSize, page, textSearch, sortProperty, sortOrder, notificationTypes);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationTemplateControllerApi->getNotificationTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Case-insensitive 'substring' filter based on template's name and notification type | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **notificationTypes** | [**BuiltList&lt;String&gt;**](String.md)| Comma-separated list of notification types to filter the templates | [optional] 

### Return type

[**PageDataNotificationTemplate**](PageDataNotificationTemplate.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSlackConversations**
> BuiltList<SlackConversation> listSlackConversations(type, token)

List Slack conversations (listSlackConversations)

List available Slack conversations by type.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationTemplateControllerApi();
final SlackConversationType type = ; // SlackConversationType | 
final String token = token_example; // String | Slack bot token. If absent - system Slack settings will be used

try {
    final response = api.listSlackConversations(type, token);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationTemplateControllerApi->listSlackConversations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**SlackConversationType**](.md)|  | 
 **token** | **String**| Slack bot token. If absent - system Slack settings will be used | [optional] 

### Return type

[**BuiltList&lt;SlackConversation&gt;**](SlackConversation.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveNotificationTemplate**
> NotificationTemplate saveNotificationTemplate(notificationTemplate)

Save notification template (saveNotificationTemplate)

Creates or updates notification template.  Here is an example of template to send notification via Web, SMS and Slack: ```json {   \"name\": \"Greetings\",   \"notificationType\": \"GENERAL\",   \"configuration\": {     \"deliveryMethodsTemplates\": {       \"WEB\": {         \"enabled\": true,         \"subject\": \"Greetings\",         \"body\": \"Hi there, ${recipientTitle}\",         \"additionalConfig\": {           \"icon\": {             \"enabled\": true,             \"icon\": \"back_hand\",             \"color\": \"#757575\"           },           \"actionButtonConfig\": {             \"enabled\": false           }         },         \"method\": \"WEB\"       },       \"SMS\": {         \"enabled\": true,         \"body\": \"Hi there, ${recipientTitle}\",         \"method\": \"SMS\"       },       \"SLACK\": {         \"enabled\": true,         \"body\": \"Hi there, @${recipientTitle}\",         \"method\": \"SLACK\"       }     }   } } ```  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getNotificationTemplateControllerApi();
final NotificationTemplate notificationTemplate = ; // NotificationTemplate | 

try {
    final response = api.saveNotificationTemplate(notificationTemplate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling NotificationTemplateControllerApi->saveNotificationTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationTemplate** | [**NotificationTemplate**](NotificationTemplate.md)|  | 

### Return type

[**NotificationTemplate**](NotificationTemplate.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

