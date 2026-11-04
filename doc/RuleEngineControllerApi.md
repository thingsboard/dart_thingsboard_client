# thingsboard_client.api.RuleEngineControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**handleRuleEngineRequestForEntity**](RuleEngineControllerApi.md#handleruleenginerequestforentity) | **POST** /api/rule-engine/{entityType}/{entityId} | Push entity message to the rule engine (handleRuleEngineRequestForEntity)
[**handleRuleEngineRequestForEntityWithQueueAndTimeout**](RuleEngineControllerApi.md#handleruleenginerequestforentitywithqueueandtimeout) | **POST** /api/rule-engine/{entityType}/{entityId}/{queueName}/{timeout} | Push entity message with timeout and specified queue to the rule engine (handleRuleEngineRequestForEntityWithQueueAndTimeout)
[**handleRuleEngineRequestForEntityWithTimeout**](RuleEngineControllerApi.md#handleruleenginerequestforentitywithtimeout) | **POST** /api/rule-engine/{entityType}/{entityId}/{timeout} | Push entity message with timeout to the rule engine (handleRuleEngineRequestForEntityWithTimeout)
[**handleRuleEngineRequestForUser**](RuleEngineControllerApi.md#handleruleenginerequestforuser) | **POST** /api/rule-engine/ | Push user message to the rule engine (handleRuleEngineRequestForUser)


# **handleRuleEngineRequestForEntity**
> String handleRuleEngineRequestForEntity(entityType, entityId, body)

Push entity message to the rule engine (handleRuleEngineRequestForEntity)

Creates the Message with type 'REST_API_REQUEST' and payload taken from the request body. Uses specified Entity Id as the Rule Engine message originator. This method allows you to extend the regular platform API with the power of Rule Engine. You may use default and custom rule nodes to handle the message. The generated message contains two important metadata fields:   * **'serviceId'** to identify the platform server that received the request;  * **'requestUUID'** to identify the request and route possible response from the Rule Engine;  Use **'rest call reply'** rule node to push the reply from rule engine back as a REST API call response. The default timeout of the request processing is 10 seconds.   Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleEngineControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String body = body_example; // String | A JSON object representing the message.

try {
    final response = api.handleRuleEngineRequestForEntity(entityType, entityId, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleEngineControllerApi->handleRuleEngineRequestForEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **body** | **String**| A JSON object representing the message. | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handleRuleEngineRequestForEntityWithQueueAndTimeout**
> String handleRuleEngineRequestForEntityWithQueueAndTimeout(entityType, entityId, queueName, timeout, body)

Push entity message with timeout and specified queue to the rule engine (handleRuleEngineRequestForEntityWithQueueAndTimeout)

Creates the Message with type 'REST_API_REQUEST' and payload taken from the request body. Uses specified Entity Id as the Rule Engine message originator. This method allows you to extend the regular platform API with the power of Rule Engine. You may use default and custom rule nodes to handle the message. The generated message contains two important metadata fields:   * **'serviceId'** to identify the platform server that received the request;  * **'requestUUID'** to identify the request and route possible response from the Rule Engine;  Use **'rest call reply'** rule node to push the reply from rule engine back as a REST API call response. If request sent for Device/Device Profile or Asset/Asset Profile entity, specified queue will be used instead of the queue selected in the device or asset profile. The platform expects the timeout value in milliseconds.   Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleEngineControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String queueName = queueName_example; // String | Queue name to process the request in the rule engine
final int timeout = 56; // int | Timeout to process the request in milliseconds
final String body = body_example; // String | A JSON object representing the message.

try {
    final response = api.handleRuleEngineRequestForEntityWithQueueAndTimeout(entityType, entityId, queueName, timeout, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleEngineControllerApi->handleRuleEngineRequestForEntityWithQueueAndTimeout: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **queueName** | **String**| Queue name to process the request in the rule engine | 
 **timeout** | **int**| Timeout to process the request in milliseconds | 
 **body** | **String**| A JSON object representing the message. | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handleRuleEngineRequestForEntityWithTimeout**
> String handleRuleEngineRequestForEntityWithTimeout(entityType, entityId, timeout, body)

Push entity message with timeout to the rule engine (handleRuleEngineRequestForEntityWithTimeout)

Creates the Message with type 'REST_API_REQUEST' and payload taken from the request body. Uses specified Entity Id as the Rule Engine message originator. This method allows you to extend the regular platform API with the power of Rule Engine. You may use default and custom rule nodes to handle the message. The generated message contains two important metadata fields:   * **'serviceId'** to identify the platform server that received the request;  * **'requestUUID'** to identify the request and route possible response from the Rule Engine;  Use **'rest call reply'** rule node to push the reply from rule engine back as a REST API call response. The platform expects the timeout value in milliseconds.   Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleEngineControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int timeout = 56; // int | Timeout to process the request in milliseconds
final String body = body_example; // String | A JSON object representing the message.

try {
    final response = api.handleRuleEngineRequestForEntityWithTimeout(entityType, entityId, timeout, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleEngineControllerApi->handleRuleEngineRequestForEntityWithTimeout: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **timeout** | **int**| Timeout to process the request in milliseconds | 
 **body** | **String**| A JSON object representing the message. | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handleRuleEngineRequestForUser**
> String handleRuleEngineRequestForUser(body)

Push user message to the rule engine (handleRuleEngineRequestForUser)

Creates the Message with type 'REST_API_REQUEST' and payload taken from the request body. Uses current User Id ( the one which credentials is used to perform the request) as the Rule Engine message originator. This method allows you to extend the regular platform API with the power of Rule Engine. You may use default and custom rule nodes to handle the message. The generated message contains two important metadata fields:   * **'serviceId'** to identify the platform server that received the request;  * **'requestUUID'** to identify the request and route possible response from the Rule Engine;  Use **'rest call reply'** rule node to push the reply from rule engine back as a REST API call response. The default timeout of the request processing is 10 seconds.   Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleEngineControllerApi();
final String body = body_example; // String | A JSON object representing the message.

try {
    final response = api.handleRuleEngineRequestForUser(body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleEngineControllerApi->handleRuleEngineRequestForUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**| A JSON object representing the message. | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

