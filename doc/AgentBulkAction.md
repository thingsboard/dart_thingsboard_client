# thingsboard_client.model.AgentBulkAction

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**AgentBulkActionId**](AgentBulkActionId.md) | JSON object with the Agent Bulk Action Id. | [optional] 
**createdTime** | **int** | Timestamp of the bulk action creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) |  | [optional] 
**agentProfileId** | **String** |  | [optional] 
**applicationProfileId** | **String** |  | [optional] 
**actionType** | [**AgentAppEventActionType**](AgentAppEventActionType.md) |  | [optional] 
**status** | [**AgentBulkActionStatus**](AgentBulkActionStatus.md) |  | [optional] 
**errorMsg** | **String** |  | [optional] 
**processingStartedTime** | **int** |  | [optional] 
**total** | **int** |  | [optional] 
**submitted** | **int** |  | [optional] 
**skipCounts** | **BuiltMap&lt;String, int&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


