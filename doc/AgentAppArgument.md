# thingsboard_client.model.AgentAppArgument

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Argument name, referenced in the compose as ${tb.<name>}. | [optional] 
**sourceType** | [**AgentAppArgumentSource**](AgentAppArgumentSource.md) | Source entity the value is resolved from. | [optional] 
**sourceEntityId** | [**EntityId**](EntityId.md) | Concrete source entity id. Required when sourceType references a specific entity (DEVICE, ASSET, CUSTOMER, EDGE); ignored for the context-derived sources. | [optional] 
**valueType** | [**AgentAppArgumentValueType**](AgentAppArgumentValueType.md) | Whether the value is read from an attribute or the latest telemetry. | [optional] 
**scope** | [**AttributeScope**](AttributeScope.md) | Attribute scope. Applicable only when valueType is ATTRIBUTE. Defaults to SERVER_SCOPE. | [optional] 
**key** | **String** | Attribute or latest telemetry key to read. | [optional] 
**defaultValue** | **String** | Optional fallback value used when the source has no value for the key. | [optional] 
**format** | [**AgentAppArgumentFormat**](AgentAppArgumentFormat.md) | How the resolved value is injected into the compose: STRING (quoted) or JSON (raw, for arrays/objects/numbers when the placeholder is the whole value). Defaults to STRING. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


