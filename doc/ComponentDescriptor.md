# thingsboard_client.model.ComponentDescriptor

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**ComponentDescriptorId**](ComponentDescriptorId.md) | JSON object with the descriptor Id. Specify existing descriptor id to update the descriptor. Referencing non-existing descriptor Id will cause error. Omit this field to create new descriptor. | [optional] 
**createdTime** | **int** | Timestamp of the descriptor creation, in milliseconds | [optional] 
**type** | [**ComponentType**](ComponentType.md) | Type of the Rule Node | [optional] 
**scope** | [**ComponentScope**](ComponentScope.md) | Scope of the Rule Node. Always set to 'TENANT', since no rule chains on the 'SYSTEM' level yet. | [optional] 
**clusteringMode** | [**ComponentClusteringMode**](ComponentClusteringMode.md) | Clustering mode of the RuleNode. This mode represents the ability to start Rule Node in multiple microservices. | [optional] 
**name** | **String** | Name of the Rule Node. Taken from the @RuleNode annotation. | [optional] 
**clazz** | **String** | Full name of the Java class that implements the Rule Engine Node interface. | [optional] 
**configurationDescriptor** | [**JsonObject**](.md) | A value representing the any type (object or primitive) | [optional] 
**configurationVersion** | **int** | Rule node configuration version. By default, this value is 0. If the rule node is a versioned node, this value might be greater than 0. | [optional] 
**actions** | **String** | Rule Node Actions. Deprecated. Always null. | [optional] 
**hasQueueName** | **bool** | Indicates that the RuleNode supports queue name configuration. | [optional] 
**hasSecrets** | **bool** | Indicates that the RuleNode configuration uses secrets placeholders. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


