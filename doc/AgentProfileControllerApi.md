# thingsboard_client.api.AgentProfileControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignAppProfileToAgentProfile**](AgentProfileControllerApi.md#assignappprofiletoagentprofile) | **POST** /api/agent/profile/{agentProfileId}/appProfile/{applicationProfileId} | Assign App Profile to Agent Profile (assignAppProfileToAgentProfile)
[**assignAppProfilesToAgentProfile**](AgentProfileControllerApi.md#assignappprofilestoagentprofile) | **POST** /api/agent/profile/{agentProfileId}/appProfiles/assign | Assign Multiple App Profiles to Agent Profile (assignAppProfilesToAgentProfile)
[**bulkOperation**](AgentProfileControllerApi.md#bulkoperation) | **POST** /api/agent/profile/{agentProfileId}/appProfile/{applicationProfileId}/bulk | Bulk Operation (bulkOperation)
[**deleteAgentProfile**](AgentProfileControllerApi.md#deleteagentprofile) | **DELETE** /api/agent/profile/{agentProfileId} | Delete Agent Profile (deleteAgentProfile)
[**getAgentProfileAppProfileBulkActions**](AgentProfileControllerApi.md#getagentprofileappprofilebulkactions) | **GET** /api/agent/profile/{agentProfileId}/appProfile/{applicationProfileId}/bulk | Get Bulk Actions for Agent Profile and Application Profile (getAgentProfileAppProfileBulkActions)
[**getAgentProfileAppProfileInfos**](AgentProfileControllerApi.md#getagentprofileappprofileinfos) | **GET** /api/agent/profile/{agentProfileId}/appProfilesInfo | Get Agent Profile App Profile Infos (getAgentProfileAppProfileInfos)
[**getAgentProfileBulkActions**](AgentProfileControllerApi.md#getagentprofilebulkactions) | **GET** /api/agent/profile/{agentProfileId}/bulk | Get Bulk Actions for Agent Profile (getAgentProfileBulkActions)
[**getAgentProfileById**](AgentProfileControllerApi.md#getagentprofilebyid) | **GET** /api/agent/profile/{agentProfileId} | Get Agent Profile (getAgentProfileById)
[**getAgentProfileInfoById**](AgentProfileControllerApi.md#getagentprofileinfobyid) | **GET** /api/agent/profile/info/{agentProfileId} | Get Agent Profile Info (getAgentProfileInfoById)
[**getAgentProvisionInstructions**](AgentProfileControllerApi.md#getagentprovisioninstructions) | **GET** /api/agent/profile/instructions/provision/{agentProfileId}/{method} | Get Agent Provision Instructions (getAgentProvisionInstructions)
[**getDefaultAgentProfileInfo**](AgentProfileControllerApi.md#getdefaultagentprofileinfo) | **GET** /api/agent/profile/info/default | Get Default Agent Profile (getDefaultAgentProfileInfo)
[**getTenantAgentProfileInfos**](AgentProfileControllerApi.md#gettenantagentprofileinfos) | **GET** /api/tenant/agent/profileInfos | Get Tenant Agent Profile Infos (getTenantAgentProfileInfos)
[**getTenantAgentProfiles**](AgentProfileControllerApi.md#gettenantagentprofiles) | **GET** /api/tenant/agent/profiles | Get Tenant Agent Profiles (getTenantAgentProfiles)
[**previewBulkOperation**](AgentProfileControllerApi.md#previewbulkoperation) | **POST** /api/agent/profile/{agentProfileId}/appProfile/{applicationProfileId}/bulk/preview | Preview Bulk Operation (previewBulkOperation)
[**saveAgentProfile**](AgentProfileControllerApi.md#saveagentprofile) | **POST** /api/agent/profile | Create or Update Agent Profile (saveAgentProfile)
[**setAppProfileRelatesOnAutoDiscovery**](AgentProfileControllerApi.md#setappprofilerelatesonautodiscovery) | **POST** /api/agent/profile/{agentProfileId}/appProfile/{applicationProfileId}/autoDiscovery | Set App Profile Relates On Auto-Discovery (setAppProfileRelatesOnAutoDiscovery)
[**setDefaultAgentProfile**](AgentProfileControllerApi.md#setdefaultagentprofile) | **POST** /api/agent/profile/{agentProfileId}/default | Make Agent Profile Default (setDefaultAgentProfile)
[**unassignAppProfileFromAgentProfile**](AgentProfileControllerApi.md#unassignappprofilefromagentprofile) | **DELETE** /api/agent/profile/{agentProfileId}/appProfile/{applicationProfileId} | Unassign App Profile from Agent Profile (unassignAppProfileFromAgentProfile)


# **assignAppProfileToAgentProfile**
> assignAppProfileToAgentProfile(agentProfileId, applicationProfileId)

Assign App Profile to Agent Profile (assignAppProfileToAgentProfile)

Assigns the given agent application profile to the agent profile, making it available to applications managed by that agent profile.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id
final String applicationProfileId = applicationProfileId_example; // String | Agent Application Profile Id

try {
    api.assignAppProfileToAgentProfile(agentProfileId, applicationProfileId);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->assignAppProfileToAgentProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 
 **applicationProfileId** | **String**| Agent Application Profile Id | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assignAppProfilesToAgentProfile**
> assignAppProfilesToAgentProfile(agentProfileId, appProfileIds)

Assign Multiple App Profiles to Agent Profile (assignAppProfilesToAgentProfile)

Assigns the given set of agent application profiles to the agent profile in a single request, replacing the previous assignment set. An explicitly empty 'appProfileIds' value (e.g. 'appProfileIds=') removes all assignments.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id
final BuiltList<String> appProfileIds = ; // BuiltList<String> | Agent application profile ids that replace the current assignment set. An explicitly empty value removes all assignments.

try {
    api.assignAppProfilesToAgentProfile(agentProfileId, appProfileIds);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->assignAppProfilesToAgentProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 
 **appProfileIds** | [**BuiltList&lt;String&gt;**](String.md)| Agent application profile ids that replace the current assignment set. An explicitly empty value removes all assignments. | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkOperation**
> AgentBulkAction bulkOperation(agentProfileId, applicationProfileId, bulkOperationRequest)

Bulk Operation (bulkOperation)

Enqueues a bulk operation over the applications of the given agent profile and application profile and returns the created bulk action to track its progress.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id
final String applicationProfileId = applicationProfileId_example; // String | Agent Application Profile Id
final BulkOperationRequest bulkOperationRequest = ; // BulkOperationRequest | 

try {
    final response = api.bulkOperation(agentProfileId, applicationProfileId, bulkOperationRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->bulkOperation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 
 **applicationProfileId** | **String**| Agent Application Profile Id | 
 **bulkOperationRequest** | [**BulkOperationRequest**](BulkOperationRequest.md)|  | 

### Return type

[**AgentBulkAction**](AgentBulkAction.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAgentProfile**
> deleteAgentProfile(agentProfileId)

Delete Agent Profile (deleteAgentProfile)

Deletes the Agent Profile. Referencing a non-existing Agent Profile Id will cause an error. The default Agent Profile can not be deleted.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id

try {
    api.deleteAgentProfile(agentProfileId);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->deleteAgentProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentProfileAppProfileBulkActions**
> PageDataAgentBulkAction getAgentProfileAppProfileBulkActions(agentProfileId, applicationProfileId, pageSize, page, sortProperty, sortOrder)

Get Bulk Actions for Agent Profile and Application Profile (getAgentProfileAppProfileBulkActions)

Returns a page of bulk actions previously submitted for the given agent profile and application profile pair. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id
final String applicationProfileId = applicationProfileId_example; // String | Agent Application Profile Id
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAgentProfileAppProfileBulkActions(agentProfileId, applicationProfileId, pageSize, page, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->getAgentProfileAppProfileBulkActions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 
 **applicationProfileId** | **String**| Agent Application Profile Id | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAgentBulkAction**](PageDataAgentBulkAction.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentProfileAppProfileInfos**
> BuiltList<AgentAppProfileRelationInfo> getAgentProfileAppProfileInfos(agentProfileId)

Get Agent Profile App Profile Infos (getAgentProfileAppProfileInfos)

Returns app profiles assigned to the given agent profile, enriched with template version, the count of AgentApplications using each app profile within this agent profile and the additional info of the assignment relation.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id

try {
    final response = api.getAgentProfileAppProfileInfos(agentProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->getAgentProfileAppProfileInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 

### Return type

[**BuiltList&lt;AgentAppProfileRelationInfo&gt;**](AgentAppProfileRelationInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentProfileBulkActions**
> PageDataAgentBulkAction getAgentProfileBulkActions(agentProfileId, pageSize, page, sortProperty, sortOrder)

Get Bulk Actions for Agent Profile (getAgentProfileBulkActions)

Returns a page of bulk actions previously submitted for the given agent profile. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAgentProfileBulkActions(agentProfileId, pageSize, page, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->getAgentProfileBulkActions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAgentBulkAction**](PageDataAgentBulkAction.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentProfileById**
> AgentProfile getAgentProfileById(agentProfileId)

Get Agent Profile (getAgentProfileById)

Fetch the Agent Profile object based on the provided Agent Profile Id.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id

try {
    final response = api.getAgentProfileById(agentProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->getAgentProfileById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 

### Return type

[**AgentProfile**](AgentProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentProfileInfoById**
> AgentProfileInfo getAgentProfileInfoById(agentProfileId)

Get Agent Profile Info (getAgentProfileInfoById)

Fetch the Agent Profile Info object based on the provided Agent Profile Id. Agent Profile Info is a lightweight object that omits the auto-provision key and secret; it is readable by any tenant admin so agent screens can resolve the linked profile.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id

try {
    final response = api.getAgentProfileInfoById(agentProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->getAgentProfileInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 

### Return type

[**AgentProfileInfo**](AgentProfileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentProvisionInstructions**
> AgentInstructions getAgentProvisionInstructions(agentProfileId, method)

Get Agent Provision Instructions (getAgentProvisionInstructions)

Returns the auto-provision docker command for the specified agent profile with the server address and gRPC port resolved server-side.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id
final String method = method_example; // String | Installation method ('docker')

try {
    final response = api.getAgentProvisionInstructions(agentProfileId, method);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->getAgentProvisionInstructions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 
 **method** | **String**| Installation method ('docker') | 

### Return type

[**AgentInstructions**](AgentInstructions.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDefaultAgentProfileInfo**
> AgentProfileInfo getDefaultAgentProfileInfo()

Get Default Agent Profile (getDefaultAgentProfileInfo)

Fetch the Agent Profile Info object that is marked as default within the current tenant scope.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();

try {
    final response = api.getDefaultAgentProfileInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->getDefaultAgentProfileInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AgentProfileInfo**](AgentProfileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantAgentProfileInfos**
> PageDataAgentProfileInfo getTenantAgentProfileInfos(pageSize, page, textSearch, sortProperty, sortOrder)

Get Tenant Agent Profile Infos (getTenantAgentProfileInfos)

Returns a page of Agent Profile Info objects owned by the current tenant. Agent Profile Info is a lightweight object that contains only id and name of the profile. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | 
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantAgentProfileInfos(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->getTenantAgentProfileInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**|  | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAgentProfileInfo**](PageDataAgentProfileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantAgentProfiles**
> PageDataAgentProfile getTenantAgentProfiles(pageSize, page, textSearch, sortProperty, sortOrder)

Get Tenant Agent Profiles (getTenantAgentProfiles)

Returns a page of Agent Profile objects owned by the current tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | 
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantAgentProfiles(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->getTenantAgentProfiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**|  | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAgentProfile**](PageDataAgentProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **previewBulkOperation**
> BulkOperationPreview previewBulkOperation(agentProfileId, applicationProfileId, bulkOperationRequest)

Preview Bulk Operation (previewBulkOperation)

Previews the effect of a bulk operation over the applications of the given agent profile and application profile without enqueuing it, returning the set of affected applications and the resulting actions.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id
final String applicationProfileId = applicationProfileId_example; // String | Agent Application Profile Id
final BulkOperationRequest bulkOperationRequest = ; // BulkOperationRequest | 

try {
    final response = api.previewBulkOperation(agentProfileId, applicationProfileId, bulkOperationRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->previewBulkOperation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 
 **applicationProfileId** | **String**| Agent Application Profile Id | 
 **bulkOperationRequest** | [**BulkOperationRequest**](BulkOperationRequest.md)|  | 

### Return type

[**BulkOperationPreview**](BulkOperationPreview.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveAgentProfile**
> AgentProfile saveAgentProfile(agentProfile, appProfileIds)

Create or Update Agent Profile (saveAgentProfile)

Creates or updates the Agent Profile. When an id is not present in the request, a new Agent Profile is created, otherwise the existing one is updated. Optionally synchronizes the agent application profile assignments in the same request: when the 'appProfileIds' parameter is absent, existing assignments are left untouched; when it is present, the assignment set is replaced with the given ids — including an explicitly empty value (e.g. 'appProfileIds='), which removes all assignments.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final AgentProfile agentProfile = ; // AgentProfile | 
final BuiltList<String> appProfileIds = ; // BuiltList<String> | Agent application profile ids to assign to this agent profile. Absent: assignments are not modified. Present: assignments are replaced with the given ids; an explicitly empty value removes all assignments.

try {
    final response = api.saveAgentProfile(agentProfile, appProfileIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->saveAgentProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfile** | [**AgentProfile**](AgentProfile.md)|  | 
 **appProfileIds** | [**BuiltList&lt;String&gt;**](String.md)| Agent application profile ids to assign to this agent profile. Absent: assignments are not modified. Present: assignments are replaced with the given ids; an explicitly empty value removes all assignments. | [optional] 

### Return type

[**AgentProfile**](AgentProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setAppProfileRelatesOnAutoDiscovery**
> setAppProfileRelatesOnAutoDiscovery(agentProfileId, applicationProfileId, relate)

Set App Profile Relates On Auto-Discovery (setAppProfileRelatesOnAutoDiscovery)

Enables or disables automatic assignment of the app profile to new auto-discovered applications with a matching template. Only one app profile per agent profile and template pair may relate on auto-discovery.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id
final String applicationProfileId = applicationProfileId_example; // String | Agent Application Profile Id
final bool relate = true; // bool | Whether the app profile should be auto-assigned to new auto-discovered applications with a matching template

try {
    api.setAppProfileRelatesOnAutoDiscovery(agentProfileId, applicationProfileId, relate);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->setAppProfileRelatesOnAutoDiscovery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 
 **applicationProfileId** | **String**| Agent Application Profile Id | 
 **relate** | **bool**| Whether the app profile should be auto-assigned to new auto-discovered applications with a matching template | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDefaultAgentProfile**
> AgentProfile setDefaultAgentProfile(agentProfileId)

Make Agent Profile Default (setDefaultAgentProfile)

Marks agent profile as default within a tenant scope.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id

try {
    final response = api.setDefaultAgentProfile(agentProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->setDefaultAgentProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 

### Return type

[**AgentProfile**](AgentProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unassignAppProfileFromAgentProfile**
> unassignAppProfileFromAgentProfile(agentProfileId, applicationProfileId)

Unassign App Profile from Agent Profile (unassignAppProfileFromAgentProfile)

Removes the assignment of the given agent application profile from the agent profile.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentProfileControllerApi();
final String agentProfileId = agentProfileId_example; // String | Agent Profile Id
final String applicationProfileId = applicationProfileId_example; // String | Agent Application Profile Id

try {
    api.unassignAppProfileFromAgentProfile(agentProfileId, applicationProfileId);
} on DioException catch (e) {
    print('Exception when calling AgentProfileControllerApi->unassignAppProfileFromAgentProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentProfileId** | **String**| Agent Profile Id | 
 **applicationProfileId** | **String**| Agent Application Profile Id | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

