# thingsboard_client.api.AiModelControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAiModelById**](AiModelControllerApi.md#deleteaimodelbyid) | **DELETE** /api/ai/model/{modelUuid} | Delete AI model by ID (deleteAiModelById)
[**getAiModelById**](AiModelControllerApi.md#getaimodelbyid) | **GET** /api/ai/model/{modelUuid} | Get AI model by ID (getAiModelById)
[**getAiModelInfos**](AiModelControllerApi.md#getaimodelinfos) | **GET** /api/ai/model/infos | Get AI model infos (getAiModelInfos)
[**getAiModels**](AiModelControllerApi.md#getaimodels) | **GET** /api/ai/model | Get AI models (getAiModels)
[**saveAiModel**](AiModelControllerApi.md#saveaimodel) | **POST** /api/ai/model | Create or update AI model (saveAiModel)
[**sendChatRequest**](AiModelControllerApi.md#sendchatrequest) | **POST** /api/ai/model/chat | Send request to AI chat model (sendChatRequest)
[**sendChatRequestToAiModel**](AiModelControllerApi.md#sendchatrequesttoaimodel) | **POST** /api/ai/model/{modelUuid}/chat | Send request to a saved AI chat model (sendChatRequestToAiModel)


# **deleteAiModelById**
> bool deleteAiModelById(modelUuid)

Delete AI model by ID (deleteAiModelById)

Deletes the AI model record by its `id`. If a record with the specified `id` exists, the record is deleted and the endpoint returns `true`. If no such record exists, the endpoint returns `false`.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiModelControllerApi();
final String modelUuid = de7900d4-30e2-11f0-9cd2-0242ac120002; // String | ID of the AI model record

try {
    final response = api.deleteAiModelById(modelUuid);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiModelControllerApi->deleteAiModelById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelUuid** | **String**| ID of the AI model record | 

### Return type

**bool**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAiModelById**
> AiModel getAiModelById(modelUuid)

Get AI model by ID (getAiModelById)

Fetches an AI model record by its `id`.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiModelControllerApi();
final String modelUuid = de7900d4-30e2-11f0-9cd2-0242ac120002; // String | ID of the AI model record

try {
    final response = api.getAiModelById(modelUuid);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiModelControllerApi->getAiModelById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelUuid** | **String**| ID of the AI model record | 

### Return type

[**AiModel**](AiModel.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAiModelInfos**
> PageDataAiModelInfo getAiModelInfos(pageSize, page, textSearch, sortProperty, sortOrder)

Get AI model infos (getAiModelInfos)

Returns a page of AI model infos: AI models with the provider credentials removed, so 'configuration.providerConfig' is always null. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiModelControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the AI model name, provider and model ID.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAiModelInfos(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiModelControllerApi->getAiModelInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the AI model name, provider and model ID. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAiModelInfo**](PageDataAiModelInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAiModels**
> PageDataAiModel getAiModels(pageSize, page, textSearch, sortProperty, sortOrder)

Get AI models (getAiModels)

Returns a page of AI models. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiModelControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the AI model name, provider and model ID.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAiModels(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiModelControllerApi->getAiModels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the AI model name, provider and model ID. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAiModel**](PageDataAiModel.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveAiModel**
> AiModel saveAiModel(aiModel)

Create or update AI model (saveAiModel)

Creates or updates an AI model record.  • **Create:** Omit the `id` to create a new record. The platform assigns a UUID to the new record and returns it in the `id` field of the response.  • **Update:** Include an existing `id` to modify that record. If no matching record exists, the API responds with **404 Not Found**.  Tenant ID for the AI model will be taken from the authenticated user making the request, regardless of any value provided in the request body.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiModelControllerApi();
final AiModel aiModel = ; // AiModel | 

try {
    final response = api.saveAiModel(aiModel);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiModelControllerApi->saveAiModel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aiModel** | [**AiModel**](AiModel.md)|  | 

### Return type

[**AiModel**](AiModel.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendChatRequest**
> TbChatResponse sendChatRequest(tbChatRequest)

Send request to AI chat model (sendChatRequest)

Submits a single prompt - made up of an optional system message and a required user message - to the specified AI chat model and returns either the generated answer or an error envelope.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiModelControllerApi();
final TbChatRequest tbChatRequest = ; // TbChatRequest | 

try {
    final response = api.sendChatRequest(tbChatRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiModelControllerApi->sendChatRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tbChatRequest** | [**TbChatRequest**](TbChatRequest.md)|  | 

### Return type

[**TbChatResponse**](TbChatResponse.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendChatRequestToAiModel**
> TbChatResponse sendChatRequestToAiModel(modelUuid, tbChatPrompt)

Send request to a saved AI chat model (sendChatRequestToAiModel)

Submits a single prompt - made up of an optional system message and a required user message - to the AI chat model with the specified `id`, using its saved configuration, and returns either the generated answer or an error envelope. The user must have the 'INVOKE' permission for AI models, and customer users additionally require the model to have customer access enabled. Roles that grant all operations, such as the default 'Customer Administrator' role, include 'INVOKE', so enabling customer access makes the model callable by every customer user with such a role.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAiModelControllerApi();
final String modelUuid = de7900d4-30e2-11f0-9cd2-0242ac120002; // String | ID of the AI model record
final TbChatPrompt tbChatPrompt = ; // TbChatPrompt | 

try {
    final response = api.sendChatRequestToAiModel(modelUuid, tbChatPrompt);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AiModelControllerApi->sendChatRequestToAiModel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modelUuid** | **String**| ID of the AI model record | 
 **tbChatPrompt** | [**TbChatPrompt**](TbChatPrompt.md)|  | 

### Return type

[**TbChatResponse**](TbChatResponse.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

