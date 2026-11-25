# thingsboard_client.api.AlarmRuleControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAlarmRule**](AlarmRuleControllerApi.md#deletealarmrule) | **DELETE** /api/alarm/rule/{alarmRuleId} | Delete Alarm Rule (deleteAlarmRule)
[**getAlarmRuleById**](AlarmRuleControllerApi.md#getalarmrulebyid) | **GET** /api/alarm/rule/{alarmRuleId} | Get Alarm Rule (getAlarmRuleById)
[**getAlarmRuleNames**](AlarmRuleControllerApi.md#getalarmrulenames) | **GET** /api/alarm/rules/names | Get alarm rule names (getAlarmRuleNames)
[**getAlarmRules**](AlarmRuleControllerApi.md#getalarmrules) | **GET** /api/alarm/rules | Get alarm rules (getAlarmRules)
[**getAlarmRulesByEntityId**](AlarmRuleControllerApi.md#getalarmrulesbyentityid) | **GET** /api/alarm/rules/{entityType}/{entityId} | Get Alarm Rules by Entity Id (getAlarmRulesByEntityId)
[**getLatestAlarmRuleDebugEvent**](AlarmRuleControllerApi.md#getlatestalarmruledebugevent) | **GET** /api/alarm/rule/{alarmRuleId}/debug | Get latest alarm rule debug event (getLatestAlarmRuleDebugEvent)
[**saveAlarmRule**](AlarmRuleControllerApi.md#savealarmrule) | **POST** /api/alarm/rule | Create Or Update Alarm Rule (saveAlarmRule)
[**testAlarmRuleScript**](AlarmRuleControllerApi.md#testalarmrulescript) | **POST** /api/alarm/rule/testScript | Test alarm rule TBEL expression (testAlarmRuleScript)


# **deleteAlarmRule**
> deleteAlarmRule(alarmRuleId)

Delete Alarm Rule (deleteAlarmRule)

Deletes the alarm rule. Referencing non-existing Alarm Rule Id will cause an error.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmRuleControllerApi();
final String alarmRuleId = alarmRuleId_example; // String | 

try {
    api.deleteAlarmRule(alarmRuleId);
} on DioException catch (e) {
    print('Exception when calling AlarmRuleControllerApi->deleteAlarmRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmRuleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlarmRuleById**
> AlarmRuleDefinition getAlarmRuleById(alarmRuleId)

Get Alarm Rule (getAlarmRuleById)

Fetch the Alarm Rule object based on the provided Alarm Rule Id.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmRuleControllerApi();
final String alarmRuleId = alarmRuleId_example; // String | 

try {
    final response = api.getAlarmRuleById(alarmRuleId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmRuleControllerApi->getAlarmRuleById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmRuleId** | **String**|  | 

### Return type

[**AlarmRuleDefinition**](AlarmRuleDefinition.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlarmRuleNames**
> PageDataString getAlarmRuleNames(pageSize, page, textSearch, sortOrder)

Get alarm rule names (getAlarmRuleNames)

Fetch the list of alarm rule names.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmRuleControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the calculated field name.
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAlarmRuleNames(pageSize, page, textSearch, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmRuleControllerApi->getAlarmRuleNames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the calculated field name. | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataString**](PageDataString.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlarmRules**
> PageDataAlarmRuleDefinitionInfo getAlarmRules(pageSize, page, entityType, entities, textSearch, sortProperty, sortOrder)

Get alarm rules (getAlarmRules)

Fetch tenant alarm rules based on the filter.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmRuleControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final EntityType entityType = ; // EntityType | Entity type filter. If not specified, alarm rules for all supported entity types will be returned.
final BuiltSet<String> entities = ; // BuiltSet<String> | Entities filter. If not specified, alarm rules for entity type filter will be returned.
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the calculated field name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAlarmRules(pageSize, page, entityType, entities, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmRuleControllerApi->getAlarmRules: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **entityType** | [**EntityType**](.md)| Entity type filter. If not specified, alarm rules for all supported entity types will be returned. | [optional] 
 **entities** | [**BuiltSet&lt;String&gt;**](String.md)| Entities filter. If not specified, alarm rules for entity type filter will be returned. | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the calculated field name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAlarmRuleDefinitionInfo**](PageDataAlarmRuleDefinitionInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlarmRulesByEntityId**
> PageDataAlarmRuleDefinition getAlarmRulesByEntityId(entityType, entityId, pageSize, page, textSearch, sortProperty, sortOrder)

Get Alarm Rules by Entity Id (getAlarmRulesByEntityId)

Fetch the Alarm Rules based on the provided Entity Id.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmRuleControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the calculated field name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAlarmRulesByEntityId(entityType, entityId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmRuleControllerApi->getAlarmRulesByEntityId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the calculated field name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAlarmRuleDefinition**](PageDataAlarmRuleDefinition.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLatestAlarmRuleDebugEvent**
> JsonObject getLatestAlarmRuleDebugEvent(alarmRuleId)

Get latest alarm rule debug event (getLatestAlarmRuleDebugEvent)

Gets latest alarm rule debug event for specified alarm rule id. Referencing non-existing alarm rule id will cause an error.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmRuleControllerApi();
final String alarmRuleId = alarmRuleId_example; // String | 

try {
    final response = api.getLatestAlarmRuleDebugEvent(alarmRuleId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmRuleControllerApi->getLatestAlarmRuleDebugEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmRuleId** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveAlarmRule**
> AlarmRuleDefinition saveAlarmRule(alarmRuleDefinition)

Create Or Update Alarm Rule (saveAlarmRule)

Creates or Updates the Alarm Rule. When creating alarm rule, platform generates Alarm Rule Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Alarm Rule Id will be present in the response. Specify existing Alarm Rule Id to update the alarm rule. Referencing non-existing Alarm Rule Id will cause 'Not Found' error. Remove 'id', 'tenantId' from the request body example (below) to create new Alarm Rule entity.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmRuleControllerApi();
final AlarmRuleDefinition alarmRuleDefinition = ; // AlarmRuleDefinition | A JSON value representing the alarm rule.

try {
    final response = api.saveAlarmRule(alarmRuleDefinition);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmRuleControllerApi->saveAlarmRule: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmRuleDefinition** | [**AlarmRuleDefinition**](AlarmRuleDefinition.md)| A JSON value representing the alarm rule. | 

### Return type

[**AlarmRuleDefinition**](AlarmRuleDefinition.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testAlarmRuleScript**
> JsonObject testAlarmRuleScript(body)

Test alarm rule TBEL expression (testAlarmRuleScript)

Execute the alarm rule TBEL condition expression and return the result. Alarm rule expressions must return a boolean value. The format of request:   ```json {   \"expression\": \"return temperature > 50;\",   \"arguments\": {     \"temperature\": { \"type\": \"SINGLE_VALUE\", \"ts\": 1739776478057, \"value\": 55 }   } } ```   Expected result JSON contains \"output\" and \"error\".  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAlarmRuleControllerApi();
final JsonObject body = ; // JsonObject | Test alarm rule TBEL condition expression. The expression must return a boolean value.

try {
    final response = api.testAlarmRuleScript(body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AlarmRuleControllerApi->testAlarmRuleScript: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **JsonObject**| Test alarm rule TBEL condition expression. The expression must return a boolean value. | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

