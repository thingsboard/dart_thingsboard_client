# thingsboard_client.api.AiSolutionControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chat**](AiSolutionControllerApi.md#chat) | **POST** /api/ai/solution/{solutionId}/{step}/chat | chat
[**clearStep**](AiSolutionControllerApi.md#clearstep) | **DELETE** /api/ai/solution/{solutionId}/{step}/clear | clearStep
[**createSolution**](AiSolutionControllerApi.md#createsolution) | **POST** /api/ai/solution/{solutionId}/create | createSolution
[**deleteSolution**](AiSolutionControllerApi.md#deletesolution) | **DELETE** /api/ai/solution/{solutionId} | deleteSolution
[**getSolution**](AiSolutionControllerApi.md#getsolution) | **GET** /api/ai/solution/{solutionId} | getSolution
[**getSolutions**](AiSolutionControllerApi.md#getsolutions) | **GET** /api/ai/solution/infos | getSolutions
[**installSolution**](AiSolutionControllerApi.md#installsolution) | **POST** /api/ai/solution/{solutionId}/install | installSolution
[**sendMessage**](AiSolutionControllerApi.md#sendmessage) | **POST** /api/ai/solution/{solutionId}/{step}/messages | sendMessage
[**startNew**](AiSolutionControllerApi.md#startnew) | **POST** /api/ai/solution/start | startNew
[**uninstallSolution**](AiSolutionControllerApi.md#uninstallsolution) | **DELETE** /api/ai/solution/{solutionId}/uninstall | uninstallSolution
[**updateData**](AiSolutionControllerApi.md#updatedata) | **PUT** /api/ai/solution/{solutionId}/{dataKey} | updateData


# **chat**
> JsonObject chat(solutionId, step, body)

chat

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiSolutionControllerApi();
final String solutionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final SolutionStep step = ; // SolutionStep | 
final String body = body_example; // String | 

try {
    final response = api.chat(solutionId, step, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiSolutionControllerApi->chat: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **solutionId** | **String**|  | 
 **step** | [**SolutionStep**](.md)|  | 
 **body** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **clearStep**
> clearStep(solutionId, step)

clearStep

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiSolutionControllerApi();
final String solutionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final SolutionStep step = ; // SolutionStep | 

try {
    api.clearStep(solutionId, step);
} on DioException catch (e) {
    print('Exception when calling AiSolutionControllerApi->clearStep: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **solutionId** | **String**|  | 
 **step** | [**SolutionStep**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSolution**
> JsonObject createSolution(solutionId)

createSolution

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiSolutionControllerApi();
final String solutionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.createSolution(solutionId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiSolutionControllerApi->createSolution: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **solutionId** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSolution**
> deleteSolution(solutionId)

deleteSolution

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiSolutionControllerApi();
final String solutionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api.deleteSolution(solutionId);
} on DioException catch (e) {
    print('Exception when calling AiSolutionControllerApi->deleteSolution: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **solutionId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSolution**
> JsonObject getSolution(solutionId)

getSolution

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiSolutionControllerApi();
final String solutionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getSolution(solutionId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiSolutionControllerApi->getSolution: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **solutionId** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSolutions**
> JsonObject getSolutions()

getSolutions

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiSolutionControllerApi();

try {
    final response = api.getSolutions();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiSolutionControllerApi->getSolutions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **installSolution**
> JsonObject installSolution(solutionId, xAuthorization)

installSolution

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiSolutionControllerApi();
final String solutionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String xAuthorization = xAuthorization_example; // String | 

try {
    final response = api.installSolution(solutionId, xAuthorization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiSolutionControllerApi->installSolution: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **solutionId** | **String**|  | 
 **xAuthorization** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMessage**
> JsonObject sendMessage(solutionId, step, solutionChatMessage)

sendMessage

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiSolutionControllerApi();
final String solutionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final SolutionStep step = ; // SolutionStep | 
final SolutionChatMessage solutionChatMessage = ; // SolutionChatMessage | 

try {
    final response = api.sendMessage(solutionId, step, solutionChatMessage);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiSolutionControllerApi->sendMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **solutionId** | **String**|  | 
 **step** | [**SolutionStep**](.md)|  | 
 **solutionChatMessage** | [**SolutionChatMessage**](SolutionChatMessage.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startNew**
> JsonObject startNew()

startNew

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiSolutionControllerApi();

try {
    final response = api.startNew();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiSolutionControllerApi->startNew: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uninstallSolution**
> JsonObject uninstallSolution(solutionId, xAuthorization)

uninstallSolution

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiSolutionControllerApi();
final String solutionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String xAuthorization = xAuthorization_example; // String | 

try {
    final response = api.uninstallSolution(solutionId, xAuthorization);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiSolutionControllerApi->uninstallSolution: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **solutionId** | **String**|  | 
 **xAuthorization** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateData**
> JsonObject updateData(solutionId, dataKey, body)

updateData

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiSolutionControllerApi();
final String solutionId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final String dataKey = dataKey_example; // String | 
final JsonObject body = ; // JsonObject | 

try {
    final response = api.updateData(solutionId, dataKey, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiSolutionControllerApi->updateData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **solutionId** | **String**|  | 
 **dataKey** | **String**|  | 
 **body** | **JsonObject**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

