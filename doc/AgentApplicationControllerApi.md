# thingsboard_client.api.AgentApplicationControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignRelatedEntityToAgentApp**](AgentApplicationControllerApi.md#assignrelatedentitytoagentapp) | **POST** /api/agent/app/{agentApplicationId}/relatedEntity/{entityType}/{entityId} | Assign Related Entity to Agent Application (assignRelatedEntityToAgentApp)
[**attachToProfile**](AgentApplicationControllerApi.md#attachtoprofile) | **POST** /api/agent/app/{agentApplicationId}/attach/{profileId} | Attach Application to Profile (attachToProfile)
[**cancelAgentAppEvent**](AgentApplicationControllerApi.md#cancelagentappevent) | **POST** /api/agent/app/{agentApplicationId}/event/{agentAppEventId}/cancel | Cancel Agent Application Event (cancelAgentAppEvent)
[**createAgentAppEvent**](AgentApplicationControllerApi.md#createagentappevent) | **POST** /api/agent/app/{agentApplicationId}/event | Execute Agent Application Event (createAgentAppEvent)
[**detachFromProfile**](AgentApplicationControllerApi.md#detachfromprofile) | **POST** /api/agent/app/{agentApplicationId}/detach | Detach Application from Profile (detachFromProfile)
[**getAgentAppEventById**](AgentApplicationControllerApi.md#getagentappeventbyid) | **GET** /api/agent/app/event/{agentAppEventId} | Get Agent Application Event (getAgentAppEventById)
[**getAgentAppEvents**](AgentApplicationControllerApi.md#getagentappevents) | **GET** /api/agent/app/{agentApplicationId}/events | Get Agent Application Events (getAgentAppEvents)
[**getAgentAppUnits**](AgentApplicationControllerApi.md#getagentappunits) | **GET** /api/agent/app/{agentApplicationId}/units | Get Agent Application Units (getAgentAppUnits)
[**getAgentApplicationById**](AgentApplicationControllerApi.md#getagentapplicationbyid) | **GET** /api/agent/app/{agentApplicationId} | Get Agent Application (getAgentApplicationById)
[**getAgentApplicationByRelatedEntity**](AgentApplicationControllerApi.md#getagentapplicationbyrelatedentity) | **GET** /api/agent/apps/{entityType}/{entityId} | Get Agent Application by Related Entity (getAgentApplicationByRelatedEntity)
[**getAgentApplicationsByAgentId**](AgentApplicationControllerApi.md#getagentapplicationsbyagentid) | **GET** /api/agent/{agentId}/apps | Get Agent Applications by Agent Id (getAgentApplicationsByAgentId)
[**getManagedRelatedEntityIds**](AgentApplicationControllerApi.md#getmanagedrelatedentityids) | **GET** /api/agent/app/managedRelatedEntities/{entityType} | Get Managed Related Entity Ids (getManagedRelatedEntityIds)
[**getRelatedEntityCandidates**](AgentApplicationControllerApi.md#getrelatedentitycandidates) | **GET** /api/agent/app/relatedEntityCandidates | Get Related Entity Candidates (getRelatedEntityCandidates)
[**installAgentApp**](AgentApplicationControllerApi.md#installagentapp) | **POST** /api/agent/app/event | Install Agent Application (installAgentApp)
[**mergeAgentApplicationForPreview**](AgentApplicationControllerApi.md#mergeagentapplicationforpreview) | **POST** /api/agent/app/merge/{templateVersion}/preview | Merge template into application for preview (mergeAgentApplicationForPreview)
[**unassignRelatedEntityFromAgentApp**](AgentApplicationControllerApi.md#unassignrelatedentityfromagentapp) | **DELETE** /api/agent/app/{agentApplicationId}/relatedEntity | Unassign Related Entity from Agent Application (unassignRelatedEntityFromAgentApp)
[**updateAgentApplication**](AgentApplicationControllerApi.md#updateagentapplication) | **PUT** /api/agent/app | Update Agent Application (saveAgentApplication)


# **assignRelatedEntityToAgentApp**
> AgentApplication assignRelatedEntityToAgentApp(agentApplicationId, entityType, entityId)

Assign Related Entity to Agent Application (assignRelatedEntityToAgentApp)

Links an Edge or Gateway Device to the specified agent application and re-merges entity credentials into the compose.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String agentApplicationId = agentApplicationId_example; // String | A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String entityType = entityType_example; // String | Related entity type (EDGE or DEVICE)
final String entityId = entityId_example; // String | Related entity id

try {
    final response = api.assignRelatedEntityToAgentApp(agentApplicationId, entityType, entityId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->assignRelatedEntityToAgentApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentApplicationId** | **String**| A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **entityType** | **String**| Related entity type (EDGE or DEVICE) | 
 **entityId** | **String**| Related entity id | 

### Return type

[**AgentApplication**](AgentApplication.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachToProfile**
> AgentApplication attachToProfile(agentApplicationId, profileId)

Attach Application to Profile (attachToProfile)

Re-attaches the application to a profile. The application adopts the profile's template version without running any upgrade or downgrade steps. After attachment the profile becomes the source of the config; the app's own credentials are carried over.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String agentApplicationId = agentApplicationId_example; // String | A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String profileId = profileId_example; // String | 

try {
    final response = api.attachToProfile(agentApplicationId, profileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->attachToProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentApplicationId** | **String**| A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **profileId** | **String**|  | 

### Return type

[**AgentApplication**](AgentApplication.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelAgentAppEvent**
> cancelAgentAppEvent(agentApplicationId, agentAppEventId)

Cancel Agent Application Event (cancelAgentAppEvent)

Force-cancels an in-flight or pending agent application event, marking it as ERROR. Cannot cancel events that are already in a terminal state (FINISHED or ERROR).  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String agentApplicationId = agentApplicationId_example; // String | A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String agentAppEventId = agentAppEventId_example; // String | A string value representing the agent app event id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.cancelAgentAppEvent(agentApplicationId, agentAppEventId);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->cancelAgentAppEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentApplicationId** | **String**| A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **agentAppEventId** | **String**| A string value representing the agent app event id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAgentAppEvent**
> AgentAppEvent createAgentAppEvent(agentApplicationId, agentAppEventRequest)

Execute Agent Application Event (createAgentAppEvent)

Creates an event for the specified agent application. The action type determines the operation (UPDATE, DELETE, RESTART, UPGRADE, ROLLBACK). Step inputs can be provided for actions that require them. Returns the created event so the caller can open a progress view.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String agentApplicationId = agentApplicationId_example; // String | A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final AgentAppEventRequest agentAppEventRequest = ; // AgentAppEventRequest | A JSON value representing the event request.

try {
    final response = api.createAgentAppEvent(agentApplicationId, agentAppEventRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->createAgentAppEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentApplicationId** | **String**| A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **agentAppEventRequest** | [**AgentAppEventRequest**](AgentAppEventRequest.md)| A JSON value representing the event request. | 

### Return type

[**AgentAppEvent**](AgentAppEvent.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detachFromProfile**
> AgentApplication detachFromProfile(agentApplicationId)

Detach Application from Profile (detachFromProfile)

Detaches the application from its profile. The application keeps the effective config it already carries (profile config with its own credentials merged in) and becomes standalone and editable.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String agentApplicationId = agentApplicationId_example; // String | A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.detachFromProfile(agentApplicationId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->detachFromProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentApplicationId** | **String**| A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**AgentApplication**](AgentApplication.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentAppEventById**
> AgentAppEvent getAgentAppEventById(agentAppEventId)

Get Agent Application Event (getAgentAppEventById)

Fetches a single agent application event by id. Works for orphan events whose application has been deleted (application_id is nullable).  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String agentAppEventId = agentAppEventId_example; // String | A string value representing the agent app event id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getAgentAppEventById(agentAppEventId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->getAgentAppEventById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentAppEventId** | **String**| A string value representing the agent app event id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**AgentAppEvent**](AgentAppEvent.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentAppEvents**
> PageDataAgentAppEvent getAgentAppEvents(agentApplicationId, pageSize, page, textSearch, actionType, processingStatus, sortProperty, sortOrder)

Get Agent Application Events (getAgentAppEvents)

Returns a page of events for the specified agent application. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String agentApplicationId = agentApplicationId_example; // String | A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Optional case-insensitive substring matched against the event action type and processing status
final AgentAppEventActionType actionType = ; // AgentAppEventActionType | Optional action type filter
final AgentProcessingStatus processingStatus = ; // AgentProcessingStatus | Optional processing status filter
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAgentAppEvents(agentApplicationId, pageSize, page, textSearch, actionType, processingStatus, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->getAgentAppEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentApplicationId** | **String**| A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Optional case-insensitive substring matched against the event action type and processing status | [optional] 
 **actionType** | [**AgentAppEventActionType**](.md)| Optional action type filter | [optional] 
 **processingStatus** | [**AgentProcessingStatus**](.md)| Optional processing status filter | [optional] 
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

# **getAgentAppUnits**
> PageDataAgentAppUnit getAgentAppUnits(agentApplicationId, pageSize, page, textSearch, type, sortProperty, sortOrder)

Get Agent Application Units (getAgentAppUnits)

Returns a page of units (containers, volumes, networks) for the specified agent application. Live per-unit data such as `image` and `state` lives in server-scope attributes on each unit and should be fetched separately via the standard telemetry/attributes API.You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String agentApplicationId = agentApplicationId_example; // String | A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Case-insensitive substring match against the unit identifier
final AgentAppUnitType type = ; // AgentAppUnitType | Optional unit type filter (CONTAINER, VOLUME, NETWORK)
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAgentAppUnits(agentApplicationId, pageSize, page, textSearch, type, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->getAgentAppUnits: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentApplicationId** | **String**| A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Case-insensitive substring match against the unit identifier | [optional] 
 **type** | [**AgentAppUnitType**](.md)| Optional unit type filter (CONTAINER, VOLUME, NETWORK) | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAgentAppUnit**](PageDataAgentAppUnit.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentApplicationById**
> AgentApplicationInfo getAgentApplicationById(agentApplicationId)

Get Agent Application (getAgentApplicationById)

Fetch the Agent Application object based on the provided Agent Application Id.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String agentApplicationId = agentApplicationId_example; // String | A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getAgentApplicationById(agentApplicationId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->getAgentApplicationById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentApplicationId** | **String**| A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**AgentApplicationInfo**](AgentApplicationInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentApplicationByRelatedEntity**
> AgentApplication getAgentApplicationByRelatedEntity(entityType, entityId)

Get Agent Application by Related Entity (getAgentApplicationByRelatedEntity)

Returns the agent application linked to the specified entity.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String entityType = entityType_example; // String | Entity type
final String entityId = entityId_example; // String | Entity id

try {
    final response = api.getAgentApplicationByRelatedEntity(entityType, entityId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->getAgentApplicationByRelatedEntity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| Entity type | 
 **entityId** | **String**| Entity id | 

### Return type

[**AgentApplication**](AgentApplication.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentApplicationsByAgentId**
> PageDataAgentApplicationInfo getAgentApplicationsByAgentId(agentId, pageSize, page, textSearch, sortProperty, sortOrder)

Get Agent Applications by Agent Id (getAgentApplicationsByAgentId)

Returns a page of agent applications that belong to the specified agent. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String agentId = agentId_example; // String | A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Optional String value representing application name
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAgentApplicationsByAgentId(agentId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->getAgentApplicationsByAgentId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentId** | **String**| A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Optional String value representing application name | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAgentApplicationInfo**](PageDataAgentApplicationInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getManagedRelatedEntityIds**
> BuiltList<GetManagedRelatedEntityIds200ResponseInner> getManagedRelatedEntityIds(entityType)

Get Managed Related Entity Ids (getManagedRelatedEntityIds)

Returns the ids of entities of the given type that are already linked to an agent application.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String entityType = entityType_example; // String | Related entity type (EDGE or DEVICE)

try {
    final response = api.getManagedRelatedEntityIds(entityType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->getManagedRelatedEntityIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| Related entity type (EDGE or DEVICE) | 

### Return type

[**BuiltList&lt;GetManagedRelatedEntityIds200ResponseInner&gt;**](GetManagedRelatedEntityIds200ResponseInner.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRelatedEntityCandidates**
> PageDataEntityInfo getRelatedEntityCandidates(entityType, pageSize, page, textSearch, currentEntityId)

Get Related Entity Candidates (getRelatedEntityCandidates)

Returns a page of Edges or Gateway Devices (devices with 'gateway' set in additional info) that can be linked to an agent application. Entities already linked to another application are excluded unless passed as 'currentEntityId'. Results are sorted by name. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String entityType = entityType_example; // String | Related entity type (EDGE or DEVICE)
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Optional String value representing entity name
final String currentEntityId = currentEntityId_example; // String | Optional id of the entity currently linked to the edited application; it is kept in the result even though it is managed

try {
    final response = api.getRelatedEntityCandidates(entityType, pageSize, page, textSearch, currentEntityId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->getRelatedEntityCandidates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | **String**| Related entity type (EDGE or DEVICE) | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Optional String value representing entity name | [optional] 
 **currentEntityId** | **String**| Optional id of the entity currently linked to the edited application; it is kept in the result even though it is managed | [optional] 

### Return type

[**PageDataEntityInfo**](PageDataEntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **installAgentApp**
> AgentAppInstallResponse installAgentApp(agentAppEventRequest)

Install Agent Application (installAgentApp)

Creates a new agent application and an INSTALL event in a single operation. Returns both the created application and the INSTALL event so the caller can open a progress view without a second round-trip. The request body must include the application object.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final AgentAppEventRequest agentAppEventRequest = ; // AgentAppEventRequest | A JSON value representing the install event request with the application.

try {
    final response = api.installAgentApp(agentAppEventRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->installAgentApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentAppEventRequest** | [**AgentAppEventRequest**](AgentAppEventRequest.md)| A JSON value representing the install event request with the application. | 

### Return type

[**AgentAppInstallResponse**](AgentAppInstallResponse.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mergeAgentApplicationForPreview**
> AgentApplication mergeAgentApplicationForPreview(templateVersion, appType, composeType, actionType, setHostValues, relatedEntityType, relatedEntityId, agentApplication)

Merge template into application for preview (mergeAgentApplicationForPreview)

Merges the specified template into an agent application for preview purposes. If no application is provided in the body, a new one is created from the template. The compose type determines which compose configuration variant from the template is used. Optionally provide relatedEntityType and relatedEntityId to auto-fill entity credentials (Edge routing key/secret or Gateway access token) into the compose.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String templateVersion = templateVersion_example; // String | The template version to merge (e.g. '4.3.1.2EDGEPE')
final AgentApplicationType appType = ; // AgentApplicationType | Application type (EDGE, GATEWAY, GENERIC). Required when no application body is supplied.
final String composeType = composeType_example; // String | The compose type to select from the template (e.g. 'monolith', 'microservices')
final AgentAppEventActionType actionType = ; // AgentAppEventActionType | The event action this merge previews (e.g. UPGRADE). Drives action-specific merge rules.
final bool setHostValues = true; // bool | Whether to auto-fill host values (e.g. CLOUD_RPC_HOST) from the platform base URL. Should be true only for the install preview; keep false when previewing the saved compose of an existing application to preserve user-configured host values.
final String relatedEntityType = relatedEntityType_example; // String | Related entity type (EDGE or DEVICE)
final String relatedEntityId = relatedEntityId_example; // String | Related entity id
final AgentApplication agentApplication = ; // AgentApplication | Optional agent application to merge with. If null, a new application is created from the template.

try {
    final response = api.mergeAgentApplicationForPreview(templateVersion, appType, composeType, actionType, setHostValues, relatedEntityType, relatedEntityId, agentApplication);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->mergeAgentApplicationForPreview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **templateVersion** | **String**| The template version to merge (e.g. '4.3.1.2EDGEPE') | 
 **appType** | [**AgentApplicationType**](.md)| Application type (EDGE, GATEWAY, GENERIC). Required when no application body is supplied. | [optional] 
 **composeType** | **String**| The compose type to select from the template (e.g. 'monolith', 'microservices') | [optional] 
 **actionType** | [**AgentAppEventActionType**](.md)| The event action this merge previews (e.g. UPGRADE). Drives action-specific merge rules. | [optional] 
 **setHostValues** | **bool**| Whether to auto-fill host values (e.g. CLOUD_RPC_HOST) from the platform base URL. Should be true only for the install preview; keep false when previewing the saved compose of an existing application to preserve user-configured host values. | [optional] [default to false]
 **relatedEntityType** | **String**| Related entity type (EDGE or DEVICE) | [optional] 
 **relatedEntityId** | **String**| Related entity id | [optional] 
 **agentApplication** | [**AgentApplication**](AgentApplication.md)| Optional agent application to merge with. If null, a new application is created from the template. | [optional] 

### Return type

[**AgentApplication**](AgentApplication.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unassignRelatedEntityFromAgentApp**
> AgentApplication unassignRelatedEntityFromAgentApp(agentApplicationId)

Unassign Related Entity from Agent Application (unassignRelatedEntityFromAgentApp)

Removes the link between an agent application and its related Edge or Gateway Device.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final String agentApplicationId = agentApplicationId_example; // String | A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.unassignRelatedEntityFromAgentApp(agentApplicationId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->unassignRelatedEntityFromAgentApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentApplicationId** | **String**| A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**AgentApplication**](AgentApplication.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAgentApplication**
> AgentApplication updateAgentApplication(agentApplication)

Update Agent Application (saveAgentApplication)

Updates the Agent Application.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentApplicationControllerApi();
final AgentApplication agentApplication = ; // AgentApplication | A JSON value representing the agent application.

try {
    final response = api.updateAgentApplication(agentApplication);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentApplicationControllerApi->updateAgentApplication: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agentApplication** | [**AgentApplication**](AgentApplication.md)| A JSON value representing the agent application. | 

### Return type

[**AgentApplication**](AgentApplication.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

