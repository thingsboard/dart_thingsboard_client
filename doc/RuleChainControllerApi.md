# thingsboard_client.api.RuleChainControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignRuleChainToEdge**](RuleChainControllerApi.md#assignrulechaintoedge) | **POST** /api/edge/{edgeId}/ruleChain/{ruleChainId} | Assign rule chain to edge (assignRuleChainToEdge)
[**deleteRuleChain**](RuleChainControllerApi.md#deleterulechain) | **DELETE** /api/ruleChain/{ruleChainId} | Delete rule chain (deleteRuleChain)
[**exportRuleChains**](RuleChainControllerApi.md#exportrulechains) | **GET** /api/ruleChains/export | Export Rule Chains
[**getAutoAssignToEdgeRuleChains**](RuleChainControllerApi.md#getautoassigntoedgerulechains) | **GET** /api/ruleChain/autoAssignToEdgeRuleChains | Get Auto Assign To Edge Rule Chains (getAutoAssignToEdgeRuleChains)
[**getEdgeRuleChains**](RuleChainControllerApi.md#getedgerulechains) | **GET** /api/edge/{edgeId}/ruleChains | Get Edge Rule Chains (getEdgeRuleChains)
[**getLatestRuleNodeDebugInput**](RuleChainControllerApi.md#getlatestrulenodedebuginput) | **GET** /api/ruleNode/{ruleNodeId}/debugIn | Get latest input message (getLatestRuleNodeDebugInput)
[**getRuleChainById**](RuleChainControllerApi.md#getrulechainbyid) | **GET** /api/ruleChain/{ruleChainId} | Get Rule Chain (getRuleChainById)
[**getRuleChainMetaData**](RuleChainControllerApi.md#getrulechainmetadata) | **GET** /api/ruleChain/{ruleChainId}/metadata | Get Rule Chain (getRuleChainById)
[**getRuleChainOutputLabels**](RuleChainControllerApi.md#getrulechainoutputlabels) | **GET** /api/ruleChain/{ruleChainId}/output/labels | Get Rule Chain output labels (getRuleChainOutputLabels)
[**getRuleChainOutputLabelsUsage**](RuleChainControllerApi.md#getrulechainoutputlabelsusage) | **GET** /api/ruleChain/{ruleChainId}/output/labels/usage | Get output labels usage (getRuleChainOutputLabelsUsage)
[**getRuleChains**](RuleChainControllerApi.md#getrulechains) | **GET** /api/ruleChains | Get Rule Chains (getRuleChains)
[**getRuleChainsByIds**](RuleChainControllerApi.md#getrulechainsbyids) | **GET** /api/ruleChains/list | Get Rule Chains By Ids (getRuleChainsByIds)
[**importRuleChains**](RuleChainControllerApi.md#importrulechains) | **POST** /api/ruleChains/import | Import Rule Chains
[**isTbelEnabled**](RuleChainControllerApi.md#istbelenabled) | **GET** /api/ruleChain/tbelEnabled | Is TBEL script executor enabled
[**saveRuleChain**](RuleChainControllerApi.md#saverulechain) | **POST** /api/ruleChain | Create Or Update Rule Chain (saveRuleChain)
[**saveRuleChainMetaData**](RuleChainControllerApi.md#saverulechainmetadata) | **POST** /api/ruleChain/metadata | Update Rule Chain Metadata
[**setAutoAssignToEdgeRuleChain**](RuleChainControllerApi.md#setautoassigntoedgerulechain) | **POST** /api/ruleChain/{ruleChainId}/autoAssignToEdge | Set Auto Assign To Edge Rule Chain (setAutoAssignToEdgeRuleChain)
[**setDeviceDefaultRuleChain**](RuleChainControllerApi.md#setdevicedefaultrulechain) | **POST** /api/ruleChain/device/default | Create Default Rule Chain (setDeviceDefaultRuleChain)
[**setEdgeTemplateRootRuleChain**](RuleChainControllerApi.md#setedgetemplaterootrulechain) | **POST** /api/ruleChain/{ruleChainId}/edgeTemplateRoot | Set Edge Template Root Rule Chain (setEdgeTemplateRootRuleChain)
[**setRootRuleChain**](RuleChainControllerApi.md#setrootrulechain) | **POST** /api/ruleChain/{ruleChainId}/root | Set Root Rule Chain (setRootRuleChain)
[**testRuleChainScript**](RuleChainControllerApi.md#testrulechainscript) | **POST** /api/ruleChain/testScript | Test Script function
[**unassignRuleChainFromEdge**](RuleChainControllerApi.md#unassignrulechainfromedge) | **DELETE** /api/edge/{edgeId}/ruleChain/{ruleChainId} | Unassign rule chain from edge (unassignRuleChainFromEdge)
[**unsetAutoAssignToEdgeRuleChain**](RuleChainControllerApi.md#unsetautoassigntoedgerulechain) | **DELETE** /api/ruleChain/{ruleChainId}/autoAssignToEdge | Unset Auto Assign To Edge Rule Chain (unsetAutoAssignToEdgeRuleChain)


# **assignRuleChainToEdge**
> RuleChain assignRuleChainToEdge(edgeId, ruleChainId)

Assign rule chain to edge (assignRuleChainToEdge)

Creates assignment of an existing rule chain to an instance of The Edge. Assignment works in async way - first, notification event pushed to edge service queue on platform. Second, remote edge service will receive a copy of assignment rule chain (Edge will receive this instantly, if it's currently connected, or once it's going to be connected to platform). Third, once rule chain will be delivered to edge service, it's going to start processing messages locally.   Only rule chain with type 'EDGE' can be assigned to edge.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final String edgeId = edgeId_example; // String | 
final String ruleChainId = ruleChainId_example; // String | 

try {
    final response = api.assignRuleChainToEdge(edgeId, ruleChainId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->assignRuleChainToEdge: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**|  | 
 **ruleChainId** | **String**|  | 

### Return type

[**RuleChain**](RuleChain.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRuleChain**
> deleteRuleChain(ruleChainId)

Delete rule chain (deleteRuleChain)

Deletes the rule chain. Referencing non-existing rule chain Id will cause an error. Referencing rule chain that is used in the device profiles will cause an error.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final String ruleChainId = ruleChainId_example; // String | A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteRuleChain(ruleChainId);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->deleteRuleChain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleChainId** | **String**| A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportRuleChains**
> RuleChainData exportRuleChains(limit)

Export Rule Chains

Exports all tenant rule chains as one JSON.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final int limit = 56; // int | A limit of rule chains to export.

try {
    final response = api.exportRuleChains(limit);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->exportRuleChains: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| A limit of rule chains to export. | 

### Return type

[**RuleChainData**](RuleChainData.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAutoAssignToEdgeRuleChains**
> BuiltList<RuleChain> getAutoAssignToEdgeRuleChains()

Get Auto Assign To Edge Rule Chains (getAutoAssignToEdgeRuleChains)

Returns a list of Rule Chains that will be assigned to a newly created edge. The rule chain object is lightweight and contains general information about the rule chain. List of rule nodes and their connection is stored in a separate 'metadata' object.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();

try {
    final response = api.getAutoAssignToEdgeRuleChains();
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->getAutoAssignToEdgeRuleChains: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;RuleChain&gt;**](RuleChain.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgeRuleChains**
> PageDataRuleChain getEdgeRuleChains(edgeId, pageSize, page, textSearch, sortProperty, sortOrder)

Get Edge Rule Chains (getEdgeRuleChains)

Returns a page of Rule Chains assigned to the specified edge. The rule chain object is lightweight and contains general information about the rule chain. List of rule nodes and their connection is stored in a separate 'metadata' object.You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the rule chain name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEdgeRuleChains(edgeId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->getEdgeRuleChains: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the rule chain name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataRuleChain**](PageDataRuleChain.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLatestRuleNodeDebugInput**
> JsonObject getLatestRuleNodeDebugInput(ruleNodeId)

Get latest input message (getLatestRuleNodeDebugInput)

Gets the input message from the debug events for specified Rule Chain Id. Referencing non-existing rule chain Id will cause an error.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final String ruleNodeId = ruleNodeId_example; // String | A string value representing the rule node id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getLatestRuleNodeDebugInput(ruleNodeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->getLatestRuleNodeDebugInput: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleNodeId** | **String**| A string value representing the rule node id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRuleChainById**
> RuleChain getRuleChainById(ruleChainId)

Get Rule Chain (getRuleChainById)

Fetch the Rule Chain object based on the provided Rule Chain Id. The rule chain object is lightweight and contains general information about the rule chain. List of rule nodes and their connection is stored in a separate 'metadata' object.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final String ruleChainId = ruleChainId_example; // String | A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getRuleChainById(ruleChainId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->getRuleChainById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleChainId** | **String**| A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**RuleChain**](RuleChain.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRuleChainMetaData**
> RuleChainMetaData getRuleChainMetaData(ruleChainId)

Get Rule Chain (getRuleChainById)

Fetch the Rule Chain Metadata object based on the provided Rule Chain Id. The metadata object contains information about the rule nodes and their connections.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final String ruleChainId = ruleChainId_example; // String | A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getRuleChainMetaData(ruleChainId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->getRuleChainMetaData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleChainId** | **String**| A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**RuleChainMetaData**](RuleChainMetaData.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRuleChainOutputLabels**
> BuiltSet<String> getRuleChainOutputLabels(ruleChainId)

Get Rule Chain output labels (getRuleChainOutputLabels)

Fetch the unique labels for the \"output\" Rule Nodes that belong to the Rule Chain based on the provided Rule Chain Id. The rule chain object is lightweight and contains general information about the rule chain. List of rule nodes and their connection is stored in a separate 'metadata' object.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final String ruleChainId = ruleChainId_example; // String | A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getRuleChainOutputLabels(ruleChainId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->getRuleChainOutputLabels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleChainId** | **String**| A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

**BuiltSet&lt;String&gt;**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRuleChainOutputLabelsUsage**
> BuiltList<RuleChainOutputLabelsUsage> getRuleChainOutputLabelsUsage(ruleChainId)

Get output labels usage (getRuleChainOutputLabelsUsage)

Fetch the list of rule chains and the relation types (labels) they use to process output of the current rule chain based on the provided Rule Chain Id. The rule chain object is lightweight and contains general information about the rule chain. List of rule nodes and their connection is stored in a separate 'metadata' object.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final String ruleChainId = ruleChainId_example; // String | A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getRuleChainOutputLabelsUsage(ruleChainId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->getRuleChainOutputLabelsUsage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleChainId** | **String**| A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**BuiltList&lt;RuleChainOutputLabelsUsage&gt;**](RuleChainOutputLabelsUsage.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRuleChains**
> PageDataRuleChain getRuleChains(pageSize, page, type, textSearch, sortProperty, sortOrder)

Get Rule Chains (getRuleChains)

Returns a page of Rule Chains owned by tenant. The rule chain object is lightweight and contains general information about the rule chain. List of rule nodes and their connection is stored in a separate 'metadata' object.You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String type = type_example; // String | Rule chain type (CORE or EDGE)
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the rule chain name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getRuleChains(pageSize, page, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->getRuleChains: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **type** | **String**| Rule chain type (CORE or EDGE) | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the rule chain name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataRuleChain**](PageDataRuleChain.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRuleChainsByIds**
> BuiltList<RuleChain> getRuleChainsByIds(ruleChainIds)

Get Rule Chains By Ids (getRuleChainsByIds)

Requested rule chains must be owned by tenant which is performing the request.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final BuiltList<String> ruleChainIds = ; // BuiltList<String> | A list of rule chain ids, separated by comma ','

try {
    final response = api.getRuleChainsByIds(ruleChainIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->getRuleChainsByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleChainIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of rule chain ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;RuleChain&gt;**](RuleChain.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importRuleChains**
> BuiltList<RuleChainImportResult> importRuleChains(ruleChainData, overwrite)

Import Rule Chains

Imports all tenant rule chains as one JSON.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final RuleChainData ruleChainData = ; // RuleChainData | 
final bool overwrite = true; // bool | Enables overwrite for existing rule chains with the same name.

try {
    final response = api.importRuleChains(ruleChainData, overwrite);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->importRuleChains: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleChainData** | [**RuleChainData**](RuleChainData.md)|  | 
 **overwrite** | **bool**| Enables overwrite for existing rule chains with the same name. | [optional] [default to false]

### Return type

[**BuiltList&lt;RuleChainImportResult&gt;**](RuleChainImportResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isTbelEnabled**
> bool isTbelEnabled()

Is TBEL script executor enabled

Returns 'True' if the TBEL script execution is enabled  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();

try {
    final response = api.isTbelEnabled();
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->isTbelEnabled: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**bool**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveRuleChain**
> RuleChain saveRuleChain(ruleChain)

Create Or Update Rule Chain (saveRuleChain)

Create or update the Rule Chain. When creating Rule Chain, platform generates Rule Chain Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Rule Chain Id will be present in the response. Specify existing Rule Chain id to update the rule chain. Referencing non-existing rule chain Id will cause 'Not Found' error.  The rule chain object is lightweight and contains general information about the rule chain. List of rule nodes and their connection is stored in a separate 'metadata' object.Remove 'id', 'tenantId' from the request body example (below) to create new Rule Chain entity.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final RuleChain ruleChain = ; // RuleChain | 

try {
    final response = api.saveRuleChain(ruleChain);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->saveRuleChain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleChain** | [**RuleChain**](RuleChain.md)|  | 

### Return type

[**RuleChain**](RuleChain.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveRuleChainMetaData**
> RuleChainMetaData saveRuleChainMetaData(ruleChainMetaData, updateRelated)

Update Rule Chain Metadata

Updates the rule chain metadata. The metadata object contains information about the rule nodes and their connections.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final RuleChainMetaData ruleChainMetaData = ; // RuleChainMetaData | 
final bool updateRelated = true; // bool | Update related rule nodes.

try {
    final response = api.saveRuleChainMetaData(ruleChainMetaData, updateRelated);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->saveRuleChainMetaData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleChainMetaData** | [**RuleChainMetaData**](RuleChainMetaData.md)|  | 
 **updateRelated** | **bool**| Update related rule nodes. | [optional] [default to true]

### Return type

[**RuleChainMetaData**](RuleChainMetaData.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setAutoAssignToEdgeRuleChain**
> RuleChain setAutoAssignToEdgeRuleChain(ruleChainId)

Set Auto Assign To Edge Rule Chain (setAutoAssignToEdgeRuleChain)

Makes the rule chain to be automatically assigned for any new edge that will be created. Does not assign this rule chain for already created edges.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final String ruleChainId = ruleChainId_example; // String | A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.setAutoAssignToEdgeRuleChain(ruleChainId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->setAutoAssignToEdgeRuleChain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleChainId** | **String**| A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**RuleChain**](RuleChain.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDeviceDefaultRuleChain**
> RuleChain setDeviceDefaultRuleChain(defaultRuleChainCreateRequest)

Create Default Rule Chain (setDeviceDefaultRuleChain)

Create rule chain from template, based on the specified name in the request. Creates the rule chain based on the template that is used to create root rule chain.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final DefaultRuleChainCreateRequest defaultRuleChainCreateRequest = ; // DefaultRuleChainCreateRequest | 

try {
    final response = api.setDeviceDefaultRuleChain(defaultRuleChainCreateRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->setDeviceDefaultRuleChain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **defaultRuleChainCreateRequest** | [**DefaultRuleChainCreateRequest**](DefaultRuleChainCreateRequest.md)|  | 

### Return type

[**RuleChain**](RuleChain.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setEdgeTemplateRootRuleChain**
> RuleChain setEdgeTemplateRootRuleChain(ruleChainId)

Set Edge Template Root Rule Chain (setEdgeTemplateRootRuleChain)

Makes the rule chain to be root rule chain for any new edge that will be created. Does not update root rule chain for already created edges.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final String ruleChainId = ruleChainId_example; // String | A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.setEdgeTemplateRootRuleChain(ruleChainId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->setEdgeTemplateRootRuleChain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleChainId** | **String**| A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**RuleChain**](RuleChain.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setRootRuleChain**
> RuleChain setRootRuleChain(ruleChainId)

Set Root Rule Chain (setRootRuleChain)

Makes the rule chain to be root rule chain. Updates previous root rule chain as well.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final String ruleChainId = ruleChainId_example; // String | A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.setRootRuleChain(ruleChainId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->setRootRuleChain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleChainId** | **String**| A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**RuleChain**](RuleChain.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testRuleChainScript**
> JsonObject testRuleChainScript(body, scriptLang)

Test Script function

Execute the Script function and return the result. The format of request:   ```json {   \"script\": \"Your Function as String\",   \"scriptType\": \"One of: update, generate, filter, switch, json, string\",   \"argNames\": [\"msg\", \"metadata\", \"type\"],   \"msg\": \"{\\\"temperature\\\": 42}\",    \"metadata\": {     \"deviceName\": \"Device A\",     \"deviceType\": \"Thermometer\"   },   \"msgType\": \"POST_TELEMETRY_REQUEST\" } ```   Expected result JSON contains \"output\" and \"error\".  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final JsonObject body = ; // JsonObject | Test JS request. See API call description above.
final ScriptLanguage scriptLang = ; // ScriptLanguage | Script language: JS or TBEL

try {
    final response = api.testRuleChainScript(body, scriptLang);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->testRuleChainScript: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **JsonObject**| Test JS request. See API call description above. | 
 **scriptLang** | [**ScriptLanguage**](.md)| Script language: JS or TBEL | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unassignRuleChainFromEdge**
> RuleChain unassignRuleChainFromEdge(edgeId, ruleChainId)

Unassign rule chain from edge (unassignRuleChainFromEdge)

Clears assignment of the rule chain to the edge. Unassignment works in async way - first, 'unassign' notification event pushed to edge queue on platform. Second, remote edge service will receive an 'unassign' command to remove rule chain (Edge will receive this instantly, if it's currently connected, or once it's going to be connected to platform). Third, once 'unassign' command will be delivered to edge service, it's going to remove rule chain locally.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final String edgeId = edgeId_example; // String | 
final String ruleChainId = ruleChainId_example; // String | 

try {
    final response = api.unassignRuleChainFromEdge(edgeId, ruleChainId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->unassignRuleChainFromEdge: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**|  | 
 **ruleChainId** | **String**|  | 

### Return type

[**RuleChain**](RuleChain.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unsetAutoAssignToEdgeRuleChain**
> RuleChain unsetAutoAssignToEdgeRuleChain(ruleChainId)

Unset Auto Assign To Edge Rule Chain (unsetAutoAssignToEdgeRuleChain)

Removes the rule chain from the list of rule chains that are going to be automatically assigned for any new edge that will be created. Does not unassign this rule chain for already assigned edges.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getRuleChainControllerApi();
final String ruleChainId = ruleChainId_example; // String | A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.unsetAutoAssignToEdgeRuleChain(ruleChainId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling RuleChainControllerApi->unsetAutoAssignToEdgeRuleChain: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleChainId** | **String**| A string value representing the rule chain id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**RuleChain**](RuleChain.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

