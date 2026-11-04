# thingsboard_client.model.RuleNodeDebugEventFilter

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventType** | [**EventType**](EventType.md) | String value representing the event type | 
**notEmpty** | **bool** |  | [optional] 
**server** | **String** | String value representing the server name, identifier or ip address where the platform is running | [optional] 
**isError** | **bool** | Boolean value to filter the errors | [optional] 
**errorStr** | **String** | The case insensitive 'contains' filter based on error message | [optional] 
**msgDirectionType** | **String** | String value representing msg direction type (incoming to entity or outcoming from entity) | [optional] 
**entityId** | **String** | String value representing the entity id in the event body (originator of the message) | [optional] 
**entityType** | **String** | String value representing the entity type | [optional] 
**msgId** | **String** | String value representing the message id in the rule engine | [optional] 
**msgType** | **String** | String value representing the message type | [optional] 
**relationType** | **String** | String value representing the type of message routing | [optional] 
**dataSearch** | **String** | The case insensitive 'contains' filter based on data (key and value) for the message. | [optional] 
**metadataSearch** | **String** | The case insensitive 'contains' filter based on metadata (key and value) for the message. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


