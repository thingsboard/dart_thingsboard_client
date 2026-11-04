# thingsboard_client.model.Edge

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**EdgeId**](EdgeId.md) | JSON object with the Edge Id. Specify this field to update the Edge. Referencing non-existing Edge Id will cause error. Omit this field to create new Edge. | [optional] 
**createdTime** | **int** | Timestamp of the edge creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the edge. May include: 'description' (string). | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. Always set to the tenant of the current user on save; cannot be changed after creation. | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id. | [optional] 
**rootRuleChainId** | [**RuleChainId**](RuleChainId.md) | JSON object with Root Rule Chain Id. Use 'setEdgeRootRuleChain' to change the Root Rule Chain Id. | [optional] 
**name** | **String** | Unique Edge Name in scope of Tenant | 
**type** | **String** | Edge type | 
**label** | **String** | Label that may be used in widgets | [optional] 
**routingKey** | **String** | Edge routing key ('username') to authorize on cloud | 
**secret** | **String** | Edge secret ('password') to authorize on cloud | 
**edgeLicenseKey** | **String** | Edge license key obtained from license portal | 
**cloudEndpoint** | **String** | Edge uses this cloud URL to activate and periodically check it's license | 
**version** | **int** |  | [optional] 
**ownerId** | [**EntityId**](EntityId.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


