# thingsboard_client.api.AgentControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAgent**](AgentControllerApi.md#deleteagent) | **DELETE** /api/agent/{agentId} | Delete agent (deleteAgent)
[**getAgentAppEventInfosByAgentId**](AgentControllerApi.md#getagentappeventinfosbyagentid) | **GET** /api/agent/{agentId}/eventInfos | Get Agent App Event Infos by Agent Id (getAgentAppEventInfosByAgentId)
[**getAgentAppEventsByAgentId**](AgentControllerApi.md#getagentappeventsbyagentid) | **GET** /api/agent/{agentId}/events | Get Agent App Events by Agent Id (getAgentAppEventsByAgentId)
[**getAgentById**](AgentControllerApi.md#getagentbyid) | **GET** /api/agent/{agentId} | Get Agent (getAgentById)
[**getAgentInfoById**](AgentControllerApi.md#getagentinfobyid) | **GET** /api/agent/info/{agentId} | Get Agent Info (getAgentInfoById)
[**getAgentInfosByIds**](AgentControllerApi.md#getagentinfosbyids) | **GET** /api/agentInfos | Get Agent Infos By Ids (getAgentInfosByIds)
[**getAgentInstallInstructions**](AgentControllerApi.md#getagentinstallinstructions) | **GET** /api/agent/instructions/install/{agentId}/{method} | Get Agent Install Instructions (getAgentInstallInstructions)
[**getAgentUpgradeTarget**](AgentControllerApi.md#getagentupgradetarget) | **GET** /api/agent/{agentId}/upgrade/target | Get the agent upgrade target (getAgentUpgradeTarget)
[**getCustomerAgentInfos**](AgentControllerApi.md#getcustomeragentinfos) | **GET** /api/customer/{customerId}/agentInfos | Get Customer Agent Infos (getCustomerAgentInfos)
[**getCustomerAgents**](AgentControllerApi.md#getcustomeragents) | **GET** /api/customer/{customerId}/agents | Get Customer Agents (getCustomerAgents)
[**getLatestAgentImageRef**](AgentControllerApi.md#getlatestagentimageref) | **GET** /api/agent/upgrade/latest | Get the newest published agent image (getLatestAgentImageRef)
[**getTenantAgentInfos**](AgentControllerApi.md#gettenantagentinfos) | **GET** /api/tenant/agentInfos | Get Tenant Agent Infos (getTenantAgentInfos)
[**getTenantAgents**](AgentControllerApi.md#gettenantagents) | **GET** /api/tenant/agents | Get Tenant Agents (getTenantAgents)
[**isAgentUpgradeAvailable**](AgentControllerApi.md#isagentupgradeavailable) | **GET** /api/agent/{agentId}/upgrade/available | Is agent upgrade available (isAgentUpgradeAvailable)
[**saveAgent**](AgentControllerApi.md#saveagent) | **POST** /api/agent | Create Or Update Agent (saveAgent)
[**upgradeAgent**](AgentControllerApi.md#upgradeagent) | **POST** /api/agent/{agentId}/upgrade | Upgrade Agent (upgradeAgent)


# **deleteAgent**
> deleteAgent(agentId)

Delete agent (deleteAgent)

Deletes the agent and all the relations (from and to the agent). Referencing non-existing agent Id will cause an error.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final String agentId = agentId_example; // String | A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteAgent(agentId);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->deleteAgent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String**| A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentAppEventInfosByAgentId**
> PageDataAgentAppEventInfo getAgentAppEventInfosByAgentId(agentId, pageSize, page, textSearch, sortProperty, sortOrder, actionType, processingStatus)

Get Agent App Event Infos by Agent Id (getAgentAppEventInfosByAgentId)

Returns a page of agent application events for all applications belonging to the specified agent, enriched with the application name for each event. Supports optional filtering by action type and status, and text search over the application name. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final String agentId = agentId_example; // String | A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Optional text value to match against the application name
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final AgentAppEventActionType actionType = ; // AgentAppEventActionType | Optional filter by event action type
final AgentProcessingStatus processingStatus = ; // AgentProcessingStatus | Optional filter by event status

try {
    final response = api.getAgentAppEventInfosByAgentId(agentId, pageSize, page, textSearch, sortProperty, sortOrder, actionType, processingStatus);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->getAgentAppEventInfosByAgentId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String**| A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Optional text value to match against the application name | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **actionType** | [**AgentAppEventActionType**](.md)| Optional filter by event action type | [optional] 
 **processingStatus** | [**AgentProcessingStatus**](.md)| Optional filter by event status | [optional] 

### Return type

[**PageDataAgentAppEventInfo**](PageDataAgentAppEventInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentAppEventsByAgentId**
> PageDataAgentAppEvent getAgentAppEventsByAgentId(agentId, pageSize, page, textSearch, sortProperty, sortOrder)

Get Agent App Events by Agent Id (getAgentAppEventsByAgentId)

Returns a page of agent application events for all applications belonging to the specified agent. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final String agentId = agentId_example; // String | A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Optional String value reserved for future event filtering
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAgentAppEventsByAgentId(agentId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->getAgentAppEventsByAgentId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String**| A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Optional String value reserved for future event filtering | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAgentAppEvent**](PageDataAgentAppEvent.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentById**
> Agent getAgentById(agentId)

Get Agent (getAgentById)

Fetch the Agent object based on the provided Agent Id. The server checks that the agent is owned by the same tenant.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final String agentId = agentId_example; // String | A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getAgentById(agentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->getAgentById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String**| A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Agent**](Agent.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentInfoById**
> AgentInfo getAgentInfoById(agentId)

Get Agent Info (getAgentInfoById)

Fetch the Agent Info object based on the provided Agent Id. Agent Info extends the Agent object and adds customer title and 'is public' flag.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final String agentId = agentId_example; // String | A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getAgentInfoById(agentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->getAgentInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String**| A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**AgentInfo**](AgentInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentInfosByIds**
> BuiltList<AgentInfo> getAgentInfosByIds(agentIds)

Get Agent Infos By Ids (getAgentInfosByIds)

Requested agents must be owned by tenant or assigned to customer which user is performing the request.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final BuiltList<String> agentIds = ; // BuiltList<String> | A list of agent ids, separated by comma ','

try {
    final response = api.getAgentInfosByIds(agentIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->getAgentInfosByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of agent ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;AgentInfo&gt;**](AgentInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentInstallInstructions**
> AgentInstructions getAgentInstallInstructions(agentId, method)

Get Agent Install Instructions (getAgentInstallInstructions)

Returns the docker install command for the specified agent with the server address and gRPC port resolved server-side.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final String agentId = agentId_example; // String | A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String method = method_example; // String | Installation method ('docker')

try {
    final response = api.getAgentInstallInstructions(agentId, method);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->getAgentInstallInstructions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String**| A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **method** | **String**| Installation method ('docker') | 

### Return type

[**AgentInstructions**](AgentInstructions.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentUpgradeTarget**
> String getAgentUpgradeTarget(agentId)

Get the agent upgrade target (getAgentUpgradeTarget)

Returns the image reference the agent should be upgraded to, or an empty string when it already runs the newest published image or cannot be placed in the version graph.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final String agentId = agentId_example; // String | A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getAgentUpgradeTarget(agentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->getAgentUpgradeTarget: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String**| A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerAgentInfos**
> PageDataAgentInfo getCustomerAgentInfos(customerId, pageSize, page, textSearch, sortProperty, sortOrder)

Get Customer Agent Infos (getCustomerAgentInfos)

Returns a page of agent info objects assigned to customer. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Optional String value representing agent name
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getCustomerAgentInfos(customerId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->getCustomerAgentInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Optional String value representing agent name | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAgentInfo**](PageDataAgentInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerAgents**
> PageDataAgent getCustomerAgents(customerId, pageSize, page, textSearch, sortProperty, sortOrder)

Get Customer Agents (getCustomerAgents)

Returns a page of agent objects assigned to customer. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Optional String value representing agent name
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getCustomerAgents(customerId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->getCustomerAgents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Optional String value representing agent name | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAgent**](PageDataAgent.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLatestAgentImageRef**
> String getLatestAgentImageRef()

Get the newest published agent image (getLatestAgentImageRef)

Returns the newest agent image reference known from the version graph, or the floating tag while no version has been published. Lets a list of agents decide locally which rows are upgradable without asking per row.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();

try {
    final response = api.getLatestAgentImageRef();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->getLatestAgentImageRef: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantAgentInfos**
> PageDataAgentInfo getTenantAgentInfos(pageSize, page, textSearch, sortProperty, sortOrder)

Get Tenant Agent Infos (getTenantAgentInfos)

Returns a page of agent info objects owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Optional String value representing agent name
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantAgentInfos(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->getTenantAgentInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Optional String value representing agent name | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAgentInfo**](PageDataAgentInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantAgents**
> PageDataAgent getTenantAgents(pageSize, page, textSearch, sortProperty, sortOrder)

Get Tenant Agents (getTenantAgents)

Returns a page of agents owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Optional String value representing agent name
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantAgents(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->getTenantAgents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Optional String value representing agent name | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAgent**](PageDataAgent.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isAgentUpgradeAvailable**
> bool isAgentUpgradeAvailable(agentId)

Is agent upgrade available (isAgentUpgradeAvailable)

Returns 'true' when the agent reports an image older than the newest published one, 'false' otherwise — including when the agent runs a floating tag such as 'latest', whose current content cannot be told from the tag.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final String agentId = agentId_example; // String | A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.isAgentUpgradeAvailable(agentId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->isAgentUpgradeAvailable: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String**| A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

**bool**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveAgent**
> Agent saveAgent(agent, entityGroupId, entityGroupIds)

Create Or Update Agent (saveAgent)

Creates or Updates the Agent. When creating agent, platform generates Agent Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Agent id will be present in the response. Specify existing Agent id to update the agent. Referencing non-existing Agent Id will cause 'Not Found' error. Remove 'id', 'tenantId' and optionally 'customerId' from the request body example (below) to create new Agent entity.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final Agent agent = ; // Agent | A JSON value representing the agent.
final String entityGroupId = entityGroupId_example; // String | 
final BuiltList<String> entityGroupIds = ; // BuiltList<String> | A list of entity group ids, separated by comma ','

try {
    final response = api.saveAgent(agent, entityGroupId, entityGroupIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->saveAgent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agent** | [**Agent**](Agent.md)| A JSON value representing the agent. | 
 **entityGroupId** | **String**|  | [optional] 
 **entityGroupIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of entity group ids, separated by comma ',' | [optional] 

### Return type

[**Agent**](Agent.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upgradeAgent**
> AgentAppEvent upgradeAgent(agentId, agentUpgradeRequest)

Upgrade Agent (upgradeAgent)

Creates an agent-scoped upgrade event that makes the agent replace its own container with the given image. At most one agent upgrade can be active per agent, and it blocks all application events for that agent until it completes.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentControllerApi();
final String agentId = agentId_example; // String | A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final AgentUpgradeRequest agentUpgradeRequest = ; // AgentUpgradeRequest | 

try {
    final response = api.upgradeAgent(agentId, agentUpgradeRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentControllerApi->upgradeAgent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String**| A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **agentUpgradeRequest** | [**AgentUpgradeRequest**](AgentUpgradeRequest.md)|  | 

### Return type

[**AgentAppEvent**](AgentAppEvent.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

