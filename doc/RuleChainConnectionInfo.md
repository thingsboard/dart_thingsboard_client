# thingsboard_client.model.RuleChainConnectionInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fromIndex** | **int** | Index of rule node in the 'nodes' array of the RuleChainMetaData. Indicates the 'from' part of the connection. | 
**targetRuleChainId** | [**RuleChainId**](RuleChainId.md) | JSON object with the Rule Chain Id. | 
**additionalInfo** | [**JsonObject**](.md) | JSON object with the additional information about the connection. | 
**type** | **String** | Type of the relation. Typically indicated the result of processing by the 'from' rule node. For example, 'Success' or 'Failure' | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


