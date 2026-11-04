# thingsboard_client.model.RuleNode

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**RuleNodeId**](RuleNodeId.md) | JSON object with the Rule Node Id. Specify this field to update the Rule Node. Referencing non-existing Rule Node Id will cause error. Omit this field to create new rule node. | [optional] 
**createdTime** | **int** | Timestamp of the rule node creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the rule node. May include: 'layoutX' (number, X coordinate for visualization), 'layoutY' (number, Y coordinate for visualization), 'description' (string). | [optional] 
**ruleChainId** | [**RuleChainId**](RuleChainId.md) | JSON object with the Rule Chain Id.  | [optional] 
**type** | **String** | Full Java Class Name of the rule node implementation.  | [optional] 
**name** | **String** | User defined name of the rule node. Used on UI and for logging.  | [optional] 
**debugSettings** | [**DebugSettings**](DebugSettings.md) | Debug settings object. | [optional] 
**singletonMode** | **bool** | Enable/disable singleton mode.  | [optional] 
**queueName** | **String** | Queue name.  | [optional] 
**configurationVersion** | **int** | Version of rule node configuration.  | [optional] 
**configuration** | [**JsonObject**](.md) | JSON with the rule node configuration. Structure depends on the rule node implementation. | [optional] 
**externalId** | [**RuleNodeId**](RuleNodeId.md) |  | [optional] 
**debugMode** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


