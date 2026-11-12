# thingsboard_client.api.AgentAppTemplateControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAgentAppTemplateByCurrentVersion**](AgentAppTemplateControllerApi.md#getagentapptemplatebycurrentversion) | **GET** /api/agent/app/template/{appType}/{configType}/version/{currentVersion} | Get Agent App Template by current version (getAgentAppTemplateByCurrentVersion)
[**getAgentAppTemplates**](AgentAppTemplateControllerApi.md#getagentapptemplates) | **GET** /api/agent/app/templates | Get all Agent App Templates (getAgentAppTemplates)
[**getAgentAppTemplatesByAppType**](AgentAppTemplateControllerApi.md#getagentapptemplatesbyapptype) | **GET** /api/agent/app/templates/{appType}/{configType} | Get Agent App Templates by type (getAgentAppTemplatesByAppType)
[**getLatestAgentAppTemplateByAppTypeAndConfigType**](AgentAppTemplateControllerApi.md#getlatestagentapptemplatebyapptypeandconfigtype) | **GET** /api/agent/app/template/{appType}/{configType}/latest | Get Agent App Template (getLatestAgentAppTemplateByType)


# **getAgentAppTemplateByCurrentVersion**
> AgentAppTemplate getAgentAppTemplateByCurrentVersion(appType, configType, currentVersion)

Get Agent App Template by current version (getAgentAppTemplateByCurrentVersion)

Fetch the Agent App Template object based on the provided app type, config type, and current version. Matches the version exactly, including a floating tag used as a version such as the gateway 'latest' tag.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentAppTemplateControllerApi();
final AgentApplicationType appType = ; // AgentApplicationType | A string value representing the agent application type, e.g. 'EDGE', 'GATEWAY'
final AgentAppConfigType configType = ; // AgentAppConfigType | A string value representing the agent configuration type, e.g. 'DOCKER_COMPOSE'
final String currentVersion = currentVersion_example; // String | A string value representing the current version of the template, e.g. '1.0.0'

try {
    final response = api.getAgentAppTemplateByCurrentVersion(appType, configType, currentVersion);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentAppTemplateControllerApi->getAgentAppTemplateByCurrentVersion: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appType** | [**AgentApplicationType**](.md)| A string value representing the agent application type, e.g. 'EDGE', 'GATEWAY' | 
 **configType** | [**AgentAppConfigType**](.md)| A string value representing the agent configuration type, e.g. 'DOCKER_COMPOSE' | 
 **currentVersion** | **String**| A string value representing the current version of the template, e.g. '1.0.0' | 

### Return type

[**AgentAppTemplate**](AgentAppTemplate.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentAppTemplates**
> BuiltList<AgentAppTemplate> getAgentAppTemplates()

Get all Agent App Templates (getAgentAppTemplates)

Returns a list of all agent app templates available for the current tenant.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentAppTemplateControllerApi();

try {
    final response = api.getAgentAppTemplates();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentAppTemplateControllerApi->getAgentAppTemplates: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;AgentAppTemplate&gt;**](AgentAppTemplate.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentAppTemplatesByAppType**
> BuiltList<AgentAppTemplate> getAgentAppTemplatesByAppType(appType, configType)

Get Agent App Templates by type (getAgentAppTemplatesByAppType)

Returns a list of agent app templates filtered by application type and config type.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentAppTemplateControllerApi();
final AgentApplicationType appType = ; // AgentApplicationType | A string value representing the agent application type, e.g. 'EDGE', 'GATEWAY'
final AgentAppConfigType configType = ; // AgentAppConfigType | A string value representing the agent configuration type, e.g. 'DOCKER_COMPOSE'

try {
    final response = api.getAgentAppTemplatesByAppType(appType, configType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentAppTemplateControllerApi->getAgentAppTemplatesByAppType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appType** | [**AgentApplicationType**](.md)| A string value representing the agent application type, e.g. 'EDGE', 'GATEWAY' | 
 **configType** | [**AgentAppConfigType**](.md)| A string value representing the agent configuration type, e.g. 'DOCKER_COMPOSE' | 

### Return type

[**BuiltList&lt;AgentAppTemplate&gt;**](AgentAppTemplate.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLatestAgentAppTemplateByAppTypeAndConfigType**
> AgentAppTemplate getLatestAgentAppTemplateByAppTypeAndConfigType(appType, configType)

Get Agent App Template (getLatestAgentAppTemplateByType)

Fetch the latest Agent App Template object for the given app type and config type.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAgentAppTemplateControllerApi();
final AgentApplicationType appType = ; // AgentApplicationType | A string value representing the agent application type, e.g. 'EDGE', 'GATEWAY'
final AgentAppConfigType configType = ; // AgentAppConfigType | A string value representing the agent configuration type, e.g. 'DOCKER_COMPOSE'

try {
    final response = api.getLatestAgentAppTemplateByAppTypeAndConfigType(appType, configType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AgentAppTemplateControllerApi->getLatestAgentAppTemplateByAppTypeAndConfigType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appType** | [**AgentApplicationType**](.md)| A string value representing the agent application type, e.g. 'EDGE', 'GATEWAY' | 
 **configType** | [**AgentAppConfigType**](.md)| A string value representing the agent configuration type, e.g. 'DOCKER_COMPOSE' | 

### Return type

[**AgentAppTemplate**](AgentAppTemplate.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

