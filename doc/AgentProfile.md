# thingsboard_client.model.AgentProfile

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**AgentProfileId**](AgentProfileId.md) | JSON object with the Agent Profile Id. | [optional] 
**createdTime** | **int** | Timestamp of the profile creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**name** | **String** | Unique profile name within tenant | 
**description** | **String** | Profile description | [optional] 
**provisionKey** | **String** | Provision key for future auto-provisioning | [optional] 
**provisionSecret** | **String** | Provision secret for future auto-provisioning | [optional] 
**provisionType** | [**AgentProvisionType**](AgentProvisionType.md) | Provisioning strategy. DISABLED by default. | [optional] 
**version** | **int** |  | [optional] 
**default_** | **bool** | Used to mark the default profile that will be assigned to agents when no profile is specified. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


