# thingsboard_client.model.AssetInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**AssetId**](AssetId.md) | JSON object with the asset Id. Specify this field to update the asset. Referencing non-existing asset Id will cause error. Omit this field to create new asset. | [optional] 
**createdTime** | **int** | Timestamp of the asset creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the asset. May include: 'description' (string). | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id. Optional on create: when omitted, defaults to the owner of the target Entity Group or to the current Customer user. Cannot be changed on update via this endpoint; use the Owner API (changeOwnerToCustomer) to re-assign an existing Asset. | [optional] 
**name** | **String** | Unique Asset Name in scope of Tenant | 
**type** | **String** | Asset type | [optional] 
**label** | **String** | Label that may be used in widgets | [optional] 
**assetProfileId** | [**AssetProfileId**](AssetProfileId.md) | JSON object with Asset Profile Id. | [optional] 
**version** | **int** |  | [optional] 
**ownerName** | **String** | Owner name | [optional] 
**groups** | [**BuiltList&lt;EntityInfo&gt;**](EntityInfo.md) | Groups | [optional] 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with Customer or Tenant Id | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


