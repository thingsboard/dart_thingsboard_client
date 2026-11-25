# thingsboard_client.model.AgentAppEvent

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**AgentAppEventId**](AgentAppEventId.md) | JSON object with the Agent App Event Id. | [optional] 
**createdTime** | **int** | Timestamp of the event creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) |  | [optional] 
**applicationId** | [**AgentApplicationId**](AgentApplicationId.md) |  | [optional] 
**agentId** | [**AgentId**](AgentId.md) |  | [optional] 
**applicationName** | **String** |  | [optional] 
**actionType** | [**AgentAppEventActionType**](AgentAppEventActionType.md) |  | [optional] 
**startStatus** | [**ProcessingStartStatus**](ProcessingStartStatus.md) |  | [optional] 
**processingStatus** | [**AgentProcessingStatus**](AgentProcessingStatus.md) |  | [optional] 
**currentStepId** | **String** |  | [optional] 
**currentActivity** | **String** |  | [optional] 
**errorMessage** | **String** |  | [optional] 
**updatedTime** | **int** |  | [optional] 
**stepStates** | [**BuiltMap&lt;String, AgentAppEventStepStatesValue&gt;**](AgentAppEventStepStatesValue.md) |  | [optional] 
**bulkActionId** | **String** |  | [optional] 
**resolvedArguments** | **BuiltMap&lt;String, String&gt;** |  | [optional] 
**winnerContainerId** | **String** |  | [optional] 
**finalizeDeadlineTs** | **int** |  | [optional] 
**contextMetadata** | **BuiltMap&lt;String, String&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


