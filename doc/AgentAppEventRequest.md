# thingsboard_client.model.AgentAppEventRequest

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actionType** | [**AgentAppEventActionType**](AgentAppEventActionType.md) | Action to perform against the agent application. | [optional] 
**application** | [**AgentApplication**](AgentApplication.md) | Agent application payload supplied by the caller. Used to carry name/config changes for UPDATE and the target state for INSTALL/UPGRADE. | [optional] 
**stepInputs** | [**BuiltMap&lt;String, AgentAppEventStepStatesValue&gt;**](AgentAppEventStepStatesValue.md) | Per-step input overrides keyed by step id (e.g. pullImages flag, backup volume selection). | [optional] 
**relatedEntityId** | [**EntityId**](EntityId.md) | INSTALL-action optional related entity (Edge or Gateway Device) to link to the application in the same operation. When set, the application is created and the relation is assigned atomically. Ignored for non-INSTALL actions. | [optional] 
**bulkActionId** | **String** | Optional bulk-action correlation id. When the same value is used across multiple application events, duplicates are deduplicated server-side. | [optional] 
**skipProfileRefetch** | **bool** | UPDATE-action flag for profile-managed apps. When true, the compose is not re-resolved from the (possibly upgraded) profile — only the credentials carried by `application.config` are applied. Ignored for non-UPDATE actions and for non-profile-managed apps. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


