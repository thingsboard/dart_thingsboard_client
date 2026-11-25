# thingsboard_client.model.AgentAppProfileInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**AgentAppProfileId**](AgentAppProfileId.md) | JSON object with the Agent Application Profile Id. | [optional] 
**createdTime** | **int** | Timestamp of the profile creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**name** | **String** | Unique profile name within tenant | 
**description** | **String** | Profile description | [optional] 
**appType** | [**AgentApplicationType**](AgentApplicationType.md) | Application type: EDGE, GATEWAY, or GENERIC | 
**templateVersion** | **String** | Template version this profile is based on | 
**config** | [**DockerComposeConfig**](DockerComposeConfig.md) | Shared config (compose definition) | [optional] 
**version** | **int** |  | [optional] 
**templateCurrentVersion** | **String** | Current version of the template this profile points to. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


