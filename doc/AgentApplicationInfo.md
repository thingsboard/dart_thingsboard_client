# thingsboard_client.model.AgentApplicationInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**AgentApplicationId**](AgentApplicationId.md) | JSON object with the Agent Application Id. | [optional] 
**createdTime** | **int** | Timestamp of the agent application creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**agentId** | [**AgentId**](AgentId.md) | Agent this application belongs to | 
**name** | **String** | Application name (not unique across tenant) | [optional] 
**templateVersion** | **String** | Template version this application is based on | 
**desiredTemplateVersion** | **String** |  | [optional] 
**appType** | [**AgentApplicationType**](AgentApplicationType.md) | Application type | 
**config** | [**DockerComposeConfig**](DockerComposeConfig.md) | Config (with compose field and type = 'DOCKER_COMPOSE' for EDGE/GATEWAY) | [optional] 
**version** | **int** |  | [optional] 
**projectName** | **String** |  | [optional] 
**pendingDeletion** | **bool** |  | [optional] 
**origin** | [**AgentApplicationOrigin**](AgentApplicationOrigin.md) | Origin of the application (INSTALLED or DISCOVERED) | [optional] 
**applicationProfileId** | [**AgentAppProfileId**](AgentAppProfileId.md) | Application Profile Id. When set, config is read-only and inherited from the profile. | [optional] 
**profileConfigVersion** | **int** |  | [optional] 
**currentVersion** | **String** | Current version of the template this application is based on. | [optional] 
**nextVersion** | **String** | Next version available for upgrade. | [optional] 
**profileConfigOutdated** | **bool** | True if the app's config is outdated relative to its profile. | [optional] 
**profileName** | **String** | Name of the application profile this app is based on. | [optional] 
**profileTemplateVersion** | **String** | Template version of the application profile this app is based on. | [optional] 
**agentName** | **String** | Name of the owning agent. | [optional] 
**relatedEntityId** | [**EntityId**](EntityId.md) | Related entity id (Edge or Gateway device) currently assigned to this application. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


