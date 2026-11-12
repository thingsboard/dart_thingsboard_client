# thingsboard_client.model.Agent

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**AgentId**](AgentId.md) | JSON object with the Agent Id. Specify this field to update the Agent. Referencing non-existing Agent Id will cause error. Omit this field to create new Agent. | [optional] 
**createdTime** | **int** | Timestamp of the agent creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | A value representing the any type (object or primitive) | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. Use 'assignAgentToTenant' to change the Tenant Id. | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id. | [optional] 
**name** | **String** | Unique Agent Name in scope of Tenant | 
**description** | **String** | Agent description | [optional] 
**routingKey** | **String** | Agent routing key used for authentication | 
**secret** | **String** | Agent secret used for authentication | 
**agentProfileId** | [**AgentProfileId**](AgentProfileId.md) | JSON object with Agent Profile Id. Nullable. | [optional] 
**version** | **int** |  | [optional] 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with Customer or Tenant Id | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


