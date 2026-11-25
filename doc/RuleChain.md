# thingsboard_client.model.RuleChain

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**RuleChainId**](RuleChainId.md) | JSON object with the Rule Chain Id. Specify this field to update the Rule Chain. Referencing non-existing Rule Chain Id will cause error. Omit this field to create new rule chain. | [optional] 
**createdTime** | **int** | Timestamp of the rule chain creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | A value representing the any type (object or primitive) | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**name** | **String** | Rule Chain name | 
**type** | [**RuleChainType**](RuleChainType.md) | Rule Chain type. 'EDGE' rule chains are processing messages on the edge devices only. | [optional] 
**firstRuleNodeId** | [**RuleNodeId**](RuleNodeId.md) | JSON object with Rule Chain Id. Pointer to the first rule node that should receive all messages pushed to this rule chain. | [optional] 
**root** | **bool** | Indicates root rule chain. The root rule chain process messages from all devices and entities by default. User may configure default rule chain per device profile. | [optional] 
**debugMode** | **bool** | Reserved for future usage. | [optional] 
**configuration** | [**JsonObject**](.md) | A value representing the any type (object or primitive) | [optional] 
**version** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


