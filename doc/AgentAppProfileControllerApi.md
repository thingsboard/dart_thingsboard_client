# thingsboard_client.api.AgentAppProfileControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAgentAppProfile**](AgentAppProfileControllerApi.md#deleteagentappprofile) | **DELETE** /api/agent/app/profile/{profileId} | Delete Agent Application Profile (deleteAgentAppProfile)
[**getAgentAppProfileById**](AgentAppProfileControllerApi.md#getagentappprofilebyid) | **GET** /api/agent/app/profile/{profileId} | Get Agent Application Profile (getAgentAppProfileById)
[**getAgentAppProfileInfoById**](AgentAppProfileControllerApi.md#getagentappprofileinfobyid) | **GET** /api/agent/app/profile/info/{profileId} | Get Agent Application Profile Info (getAgentAppProfileInfoById)
[**getAgentAppProfilesByAppType**](AgentAppProfileControllerApi.md#getagentappprofilesbyapptype) | **GET** /api/agent/app/profiles/{appType} | Get Agent Application Profiles by app type (getAgentAppProfilesByAppType)
[**getAgentAppProfilesByIds**](AgentAppProfileControllerApi.md#getagentappprofilesbyids) | **GET** /api/agent/app/profiles | Get Agent Application Profiles By Ids (getAgentAppProfilesByIds)
[**getTenantAgentAppProfiles**](AgentAppProfileControllerApi.md#gettenantagentappprofiles) | **GET** /api/tenant/agent/app/profiles | Get Tenant Agent Application Profiles (getTenantAgentAppProfiles)
[**materializeAgentAppProfile**](AgentAppProfileControllerApi.md#materializeagentappprofile) | **POST** /api/agent/app/profile/materialize/{appType}/{templateVersion} | Create Agent Application Profile from template (materializeAgentAppProfile)
[**mergeAgentAppProfileForPreview**](AgentAppProfileControllerApi.md#mergeagentappprofileforpreview) | **POST** /api/agent/app/profiles/merge/{templateVersion}/preview | Merge template into application profile for preview (mergeAgentAppProfileForPreview)
[**saveAgentAppProfile**](AgentAppProfileControllerApi.md#saveagentappprofile) | **POST** /api/agent/app/profile | Create or Update Agent Application Profile (saveAgentAppProfile)


# **deleteAgentAppProfile**
> deleteAgentAppProfile(profileId)

Delete Agent Application Profile (deleteAgentAppProfile)

Deletes the agent application profile. Cannot delete if referenced by applications.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentAppProfileControllerApi();
final String profileId = profileId_example; // String | Profile Id

try {
    api.deleteAgentAppProfile(profileId);
} on DioException catch (e) {
    print('Exception when calling AgentAppProfileControllerApi->deleteAgentAppProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentAppProfileById**
> AgentAppProfile getAgentAppProfileById(profileId)

Get Agent Application Profile (getAgentAppProfileById)

Fetch the Agent Application Profile by Id.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentAppProfileControllerApi();
final String profileId = profileId_example; // String | Profile Id

try {
    final response = api.getAgentAppProfileById(profileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentAppProfileControllerApi->getAgentAppProfileById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | 

### Return type

[**AgentAppProfile**](AgentAppProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentAppProfileInfoById**
> AgentAppProfileInfo getAgentAppProfileInfoById(profileId)

Get Agent Application Profile Info (getAgentAppProfileInfoById)

Fetch the Agent Application Profile Info by Id. Readable by any tenant admin without AGENT_APP_PROFILE permission, so agent/application screens can resolve the linked profile. Returns the full profile, config and arguments included - an application profile carries deployment configuration rather than credentials, so it is not gated like other profiles.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentAppProfileControllerApi();
final String profileId = profileId_example; // String | Profile Id

try {
    final response = api.getAgentAppProfileInfoById(profileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentAppProfileControllerApi->getAgentAppProfileInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **profileId** | **String**| Profile Id | 

### Return type

[**AgentAppProfileInfo**](AgentAppProfileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentAppProfilesByAppType**
> BuiltList<AgentAppProfileInfo> getAgentAppProfilesByAppType(appType)

Get Agent Application Profiles by app type (getAgentAppProfilesByAppType)

Returns a list of agent application profiles filtered by application type.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentAppProfileControllerApi();
final AgentApplicationType appType = ; // AgentApplicationType | Application type, e.g. 'EDGE', 'GATEWAY', 'GENERIC'

try {
    final response = api.getAgentAppProfilesByAppType(appType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentAppProfileControllerApi->getAgentAppProfilesByAppType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appType** | [**AgentApplicationType**](.md)| Application type, e.g. 'EDGE', 'GATEWAY', 'GENERIC' | 

### Return type

[**BuiltList&lt;AgentAppProfileInfo&gt;**](AgentAppProfileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentAppProfilesByIds**
> BuiltList<AgentAppProfile> getAgentAppProfilesByIds(agentAppProfileIds)

Get Agent Application Profiles By Ids (getAgentAppProfilesByIds)

Requested agent application profiles must be owned by tenant which is performing the request.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentAppProfileControllerApi();
final BuiltList<String> agentAppProfileIds = ; // BuiltList<String> | A list of agent application profile ids, separated by comma ','

try {
    final response = api.getAgentAppProfilesByIds(agentAppProfileIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentAppProfileControllerApi->getAgentAppProfilesByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentAppProfileIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of agent application profile ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;AgentAppProfile&gt;**](AgentAppProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantAgentAppProfiles**
> PageDataAgentAppProfile getTenantAgentAppProfiles(pageSize, page, textSearch, sortProperty, sortOrder)

Get Tenant Agent Application Profiles (getTenantAgentAppProfiles)

Returns a page of agent application profiles owned by tenant.You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentAppProfileControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Optional search text
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantAgentAppProfiles(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentAppProfileControllerApi->getTenantAgentAppProfiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Optional search text | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAgentAppProfile**](PageDataAgentAppProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **materializeAgentAppProfile**
> AgentAppProfile materializeAgentAppProfile(appType, templateVersion, composeType)

Create Agent Application Profile from template (materializeAgentAppProfile)

Creates an agent application profile from the default configuration of the template with the given app type and version. Used to materialize a predefined (virtual) profile shown in the UI into a real profile on first use. If a profile with the given app type and template version already exists, the existing profile is returned (the oldest one by created time) instead of creating a new one.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentAppProfileControllerApi();
final AgentApplicationType appType = ; // AgentApplicationType | Application type, e.g. 'EDGE', 'GATEWAY', 'GENERIC'
final String templateVersion = templateVersion_example; // String | The template version to materialize (e.g. '4.3.1.2EDGEPE')
final String composeType = composeType_example; // String | The compose type to select from the template (e.g. 'in_memory', 'kafka'). Defaults to the template's first compose type.

try {
    final response = api.materializeAgentAppProfile(appType, templateVersion, composeType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentAppProfileControllerApi->materializeAgentAppProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appType** | [**AgentApplicationType**](.md)| Application type, e.g. 'EDGE', 'GATEWAY', 'GENERIC' | 
 **templateVersion** | **String**| The template version to materialize (e.g. '4.3.1.2EDGEPE') | 
 **composeType** | **String**| The compose type to select from the template (e.g. 'in_memory', 'kafka'). Defaults to the template's first compose type. | [optional] 

### Return type

[**AgentAppProfile**](AgentAppProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mergeAgentAppProfileForPreview**
> AgentAppProfile mergeAgentAppProfileForPreview(templateVersion, agentAppProfile, composeType, actionType, setHostValues)

Merge template into application profile for preview (mergeAgentAppProfileForPreview)

Merges the specified template into an agent application profile for preview purposes. The compose type determines which compose configuration variant from the template is used.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentAppProfileControllerApi();
final String templateVersion = templateVersion_example; // String | The template version to merge (e.g. '4.3.1.2EDGEPE')
final AgentAppProfile agentAppProfile = ; // AgentAppProfile | Agent application profile to merge template with
final String composeType = composeType_example; // String | The compose type to select from the template (e.g. 'monolith', 'microservices')
final AgentAppEventActionType actionType = ; // AgentAppEventActionType | The event action this merge previews (e.g. UPGRADE). Drives action-specific merge rules.
final bool setHostValues = true; // bool | Whether to auto-fill host values (e.g. CLOUD_RPC_HOST) from the platform base URL. Should be true only for the install preview; keep false when previewing the saved compose of an existing profile to preserve user-configured host values.

try {
    final response = api.mergeAgentAppProfileForPreview(templateVersion, agentAppProfile, composeType, actionType, setHostValues);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentAppProfileControllerApi->mergeAgentAppProfileForPreview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateVersion** | **String**| The template version to merge (e.g. '4.3.1.2EDGEPE') | 
 **agentAppProfile** | [**AgentAppProfile**](AgentAppProfile.md)| Agent application profile to merge template with | 
 **composeType** | **String**| The compose type to select from the template (e.g. 'monolith', 'microservices') | [optional] 
 **actionType** | [**AgentAppEventActionType**](.md)| The event action this merge previews (e.g. UPGRADE). Drives action-specific merge rules. | [optional] 
 **setHostValues** | **bool**| Whether to auto-fill host values (e.g. CLOUD_RPC_HOST) from the platform base URL. Should be true only for the install preview; keep false when previewing the saved compose of an existing profile to preserve user-configured host values. | [optional] [default to false]

### Return type

[**AgentAppProfile**](AgentAppProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveAgentAppProfile**
> AgentAppProfile saveAgentAppProfile(agentAppProfile)

Create or Update Agent Application Profile (saveAgentAppProfile)

Creates or updates an agent application profile.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentAppProfileControllerApi();
final AgentAppProfile agentAppProfile = ; // AgentAppProfile | 

try {
    final response = api.saveAgentAppProfile(agentAppProfile);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentAppProfileControllerApi->saveAgentAppProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentAppProfile** | [**AgentAppProfile**](AgentAppProfile.md)|  | 

### Return type

[**AgentAppProfile**](AgentAppProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

