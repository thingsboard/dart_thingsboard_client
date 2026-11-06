# thingsboard_client.model.RuleChainMetaData

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ruleChainId** | [**RuleChainId**](RuleChainId.md) | JSON object with Rule Chain Id. | 
**version** | **int** | Version of the Rule Chain | [optional] 
**firstNodeIndex** | **int** | Index of the first rule node in the 'nodes' list | 
**nodes** | [**BuiltList&lt;RuleNode&gt;**](RuleNode.md) | List of rule node JSON objects | 
**connections** | [**BuiltList&lt;NodeConnectionInfo&gt;**](NodeConnectionInfo.md) | List of JSON objects that represent connections between rule nodes | 
**ruleChainConnections** | [**BuiltList&lt;RuleChainConnectionInfo&gt;**](RuleChainConnectionInfo.md) | List of JSON objects that represent connections between rule nodes and other rule chains. | 
**notes** | [**BuiltList&lt;RuleChainNote&gt;**](RuleChainNote.md) | List of sticky notes placed on the rule chain canvas | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


