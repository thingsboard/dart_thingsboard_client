# thingsboard_client.api.CalculatedFieldControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteCalculatedField**](CalculatedFieldControllerApi.md#deletecalculatedfield) | **DELETE** /api/calculatedField/{calculatedFieldId} | Delete Calculated Field (deleteCalculatedField)
[**getCalculatedFieldById**](CalculatedFieldControllerApi.md#getcalculatedfieldbyid) | **GET** /api/calculatedField/{calculatedFieldId} | Get Calculated Field (getCalculatedFieldById)
[**getCalculatedFieldNames**](CalculatedFieldControllerApi.md#getcalculatedfieldnames) | **GET** /api/calculatedFields/names | Get calculated field names (getCalculatedFieldNames)
[**getCalculatedFields**](CalculatedFieldControllerApi.md#getcalculatedfields) | **GET** /api/calculatedFields | Get calculated fields (getCalculatedFields)
[**getCalculatedFieldsByEntityId**](CalculatedFieldControllerApi.md#getcalculatedfieldsbyentityid) | **GET** /api/calculatedField/{entityType}/{entityId} | Get Calculated Fields by Entity Id (getCalculatedFieldsByEntityId)
[**getLastCalculatedFieldReprocessingJob**](CalculatedFieldControllerApi.md#getlastcalculatedfieldreprocessingjob) | **GET** /api/calculatedField/{calculatedFieldId}/reprocess/job | getLastCalculatedFieldReprocessingJob
[**getLatestCalculatedFieldDebugEvent**](CalculatedFieldControllerApi.md#getlatestcalculatedfielddebugevent) | **GET** /api/calculatedField/{calculatedFieldId}/debug | Get latest calculated field debug event (getLatestCalculatedFieldDebugEvent)
[**reprocessCalculatedField**](CalculatedFieldControllerApi.md#reprocesscalculatedfield) | **GET** /api/calculatedField/{calculatedFieldId}/reprocess | Reprocess Calculated Field (reprocessCalculatedField)
[**reprocessCalculatedFieldAndWait**](CalculatedFieldControllerApi.md#reprocesscalculatedfieldandwait) | **GET** /api/calculatedField/{calculatedFieldId}/reprocessAndWait | Reprocess Calculated Field and wait for completion (reprocessCalculatedFieldAndWait)
[**saveCalculatedField**](CalculatedFieldControllerApi.md#savecalculatedfield) | **POST** /api/calculatedField | Create Or Update Calculated Field (saveCalculatedField)
[**testCalculatedFieldScript**](CalculatedFieldControllerApi.md#testcalculatedfieldscript) | **POST** /api/calculatedField/testScript | Test Script expression
[**validateCalculatedFieldReprocessing**](CalculatedFieldControllerApi.md#validatecalculatedfieldreprocessing) | **GET** /api/calculatedField/{calculatedFieldId}/reprocess/validate | Validate reprocessing capability of a calculated field (validateCalculatedFieldReprocessing)


# **deleteCalculatedField**
> deleteCalculatedField(calculatedFieldId)

Delete Calculated Field (deleteCalculatedField)

Deletes the calculated field. Referencing non-existing Calculated Field Id will cause an error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCalculatedFieldControllerApi();
final String calculatedFieldId = calculatedFieldId_example; // String | 

try {
    api.deleteCalculatedField(calculatedFieldId);
} on DioException catch (e) {
    print('Exception when calling CalculatedFieldControllerApi->deleteCalculatedField: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calculatedFieldId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalculatedFieldById**
> CalculatedField getCalculatedFieldById(calculatedFieldId)

Get Calculated Field (getCalculatedFieldById)

Fetch the Calculated Field object based on the provided Calculated Field Id.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCalculatedFieldControllerApi();
final String calculatedFieldId = calculatedFieldId_example; // String | 

try {
    final response = api.getCalculatedFieldById(calculatedFieldId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalculatedFieldControllerApi->getCalculatedFieldById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calculatedFieldId** | **String**|  | 

### Return type

[**CalculatedField**](CalculatedField.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalculatedFieldNames**
> PageDataString getCalculatedFieldNames(type, pageSize, page, textSearch, sortOrder)

Get calculated field names (getCalculatedFieldNames)

Fetch the list of calculated field names for specified type.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCalculatedFieldControllerApi();
final CalculatedFieldType type = ; // CalculatedFieldType | Calculated field type filter.
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the calculated field name.
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getCalculatedFieldNames(type, pageSize, page, textSearch, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalculatedFieldControllerApi->getCalculatedFieldNames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**CalculatedFieldType**](.md)| Calculated field type filter. | 
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

# **getCalculatedFields**
> PageDataCalculatedFieldInfo getCalculatedFields(pageSize, page, types, entityType, entities, textSearch, sortProperty, sortOrder, name)

Get calculated fields (getCalculatedFields)

Fetch tenant calculated fields based on the filter.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCalculatedFieldControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final BuiltSet<CalculatedFieldType> types = ; // BuiltSet<CalculatedFieldType> | Calculated field types filter.
final EntityType entityType = ; // EntityType | Entity type filter. If not specified, calculated fields for all supported entity types will be returned.
final BuiltSet<String> entities = ; // BuiltSet<String> | Entities filter. If not specified, calculated fields for entity type filter will be returned.
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the calculated field name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final BuiltList<String> name = ; // BuiltList<String> | Repeatable name query parameter

try {
    final response = api.getCalculatedFields(pageSize, page, types, entityType, entities, textSearch, sortProperty, sortOrder, name);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalculatedFieldControllerApi->getCalculatedFields: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **types** | [**BuiltSet&lt;CalculatedFieldType&gt;**](CalculatedFieldType.md)| Calculated field types filter. | [optional] 
 **entityType** | [**EntityType**](.md)| Entity type filter. If not specified, calculated fields for all supported entity types will be returned. | [optional] 
 **entities** | [**BuiltSet&lt;String&gt;**](String.md)| Entities filter. If not specified, calculated fields for entity type filter will be returned. | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the calculated field name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **name** | [**BuiltList&lt;String&gt;**](String.md)| Repeatable name query parameter | [optional] 

### Return type

[**PageDataCalculatedFieldInfo**](PageDataCalculatedFieldInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalculatedFieldsByEntityId**
> PageDataCalculatedField getCalculatedFieldsByEntityId(entityType, entityId, pageSize, page, type, textSearch, sortProperty, sortOrder)

Get Calculated Fields by Entity Id (getCalculatedFieldsByEntityId)

Fetch the Calculated Fields based on the provided Entity Id.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCalculatedFieldControllerApi();
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final CalculatedFieldType type = ; // CalculatedFieldType | Calculated field type. If not specified, all types will be returned.
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the calculated field name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getCalculatedFieldsByEntityId(entityType, entityId, pageSize, page, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalculatedFieldControllerApi->getCalculatedFieldsByEntityId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **type** | [**CalculatedFieldType**](.md)| Calculated field type. If not specified, all types will be returned. | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the calculated field name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataCalculatedField**](PageDataCalculatedField.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLastCalculatedFieldReprocessingJob**
> Job getLastCalculatedFieldReprocessingJob(calculatedFieldId)

getLastCalculatedFieldReprocessingJob

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCalculatedFieldControllerApi();
final String calculatedFieldId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.getLastCalculatedFieldReprocessingJob(calculatedFieldId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalculatedFieldControllerApi->getLastCalculatedFieldReprocessingJob: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calculatedFieldId** | **String**|  | 

### Return type

[**Job**](Job.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLatestCalculatedFieldDebugEvent**
> JsonObject getLatestCalculatedFieldDebugEvent(calculatedFieldId)

Get latest calculated field debug event (getLatestCalculatedFieldDebugEvent)

Gets latest calculated field debug event for specified calculated field id. Referencing non-existing calculated field id will cause an error.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCalculatedFieldControllerApi();
final String calculatedFieldId = calculatedFieldId_example; // String | 

try {
    final response = api.getLatestCalculatedFieldDebugEvent(calculatedFieldId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalculatedFieldControllerApi->getLatestCalculatedFieldDebugEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calculatedFieldId** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reprocessCalculatedField**
> Job reprocessCalculatedField(calculatedFieldId, startTs, endTs)

Reprocess Calculated Field (reprocessCalculatedField)

Reprocesses the calculated field.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCalculatedFieldControllerApi();
final String calculatedFieldId = calculatedFieldId_example; // String | 
final int startTs = 789; // int | 
final int endTs = 789; // int | 

try {
    final response = api.reprocessCalculatedField(calculatedFieldId, startTs, endTs);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalculatedFieldControllerApi->reprocessCalculatedField: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calculatedFieldId** | **String**|  | 
 **startTs** | **int**|  | 
 **endTs** | **int**|  | 

### Return type

[**Job**](Job.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reprocessCalculatedFieldAndWait**
> reprocessCalculatedFieldAndWait(calculatedFieldId, startTs, endTs)

Reprocess Calculated Field and wait for completion (reprocessCalculatedFieldAndWait)

Reprocesses the calculated field and waits until the job completes or fails.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCalculatedFieldControllerApi();
final String calculatedFieldId = calculatedFieldId_example; // String | 
final int startTs = 789; // int | 
final int endTs = 789; // int | 

try {
    api.reprocessCalculatedFieldAndWait(calculatedFieldId, startTs, endTs);
} on DioException catch (e) {
    print('Exception when calling CalculatedFieldControllerApi->reprocessCalculatedFieldAndWait: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calculatedFieldId** | **String**|  | 
 **startTs** | **int**|  | 
 **endTs** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveCalculatedField**
> CalculatedField saveCalculatedField(calculatedField)

Create Or Update Calculated Field (saveCalculatedField)

Creates or Updates the Calculated Field. When creating calculated field, platform generates Calculated Field Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Calculated Field Id will be present in the response. Specify existing Calculated Field Id to update the calculated field. Referencing non-existing Calculated Field Id will cause 'Not Found' error. Remove 'id', 'tenantId' from the request body example (below) to create new Calculated Field entity.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCalculatedFieldControllerApi();
final CalculatedField calculatedField = ; // CalculatedField | A JSON value representing the calculated field.

try {
    final response = api.saveCalculatedField(calculatedField);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalculatedFieldControllerApi->saveCalculatedField: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calculatedField** | [**CalculatedField**](CalculatedField.md)| A JSON value representing the calculated field. | 

### Return type

[**CalculatedField**](CalculatedField.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testCalculatedFieldScript**
> JsonObject testCalculatedFieldScript(body)

Test Script expression

Execute the Script expression and return the result. The format of request:   ```json {   \"expression\": \"var temp = 0; foreach(element: temperature.values) {temp += element.value;} var avgTemperature = temp / temperature.values.size(); var adjustedTemperature = avgTemperature + 0.1 * humidity.value; return {\\\"adjustedTemperature\\\": adjustedTemperature};\",   \"arguments\": {     \"temperature\": {       \"type\": \"TS_ROLLING\",       \"timeWindow\": {         \"startTs\": 1739775630002,         \"endTs\": 65432211,         \"limit\": 5       },       \"values\": [         { \"ts\": 1739775639851, \"value\": 23 },         { \"ts\": 1739775664561, \"value\": 43 },         { \"ts\": 1739775713079, \"value\": 15 },         { \"ts\": 1739775999522, \"value\": 34 },         { \"ts\": 1739776228452, \"value\": 22 }       ]     },     \"humidity\": { \"type\": \"SINGLE_VALUE\", \"ts\": 1739776478057, \"value\": 23 }   } } ```   Expected result JSON contains \"output\" and \"error\".  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCalculatedFieldControllerApi();
final JsonObject body = ; // JsonObject | Test calculated field TBEL expression.

try {
    final response = api.testCalculatedFieldScript(body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalculatedFieldControllerApi->testCalculatedFieldScript: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **JsonObject**| Test calculated field TBEL expression. | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateCalculatedFieldReprocessing**
> CfReprocessingValidationResult validateCalculatedFieldReprocessing(calculatedFieldId)

Validate reprocessing capability of a calculated field (validateCalculatedFieldReprocessing)

Checks whether the specified calculated field can be reprocessed. Returns a validation result indicating if reprocessing is allowed and, if not, provides a reason.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCalculatedFieldControllerApi();
final String calculatedFieldId = calculatedFieldId_example; // String | 

try {
    final response = api.validateCalculatedFieldReprocessing(calculatedFieldId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CalculatedFieldControllerApi->validateCalculatedFieldReprocessing: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calculatedFieldId** | **String**|  | 

### Return type

[**CfReprocessingValidationResult**](CfReprocessingValidationResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

