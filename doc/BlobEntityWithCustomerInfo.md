# thingsboard_client.model.BlobEntityWithCustomerInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**BlobEntityId**](BlobEntityId.md) | JSON object with the blob entity Id. Referencing non-existing blob entity Id will cause error | [optional] 
**createdTime** | **int** | Timestamp of the blob entity creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the blob entity | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id | [optional] 
**name** | **String** | blob entity name | [optional] 
**type** | **String** | blob entity type | [optional] 
**contentType** | **String** | blob content type | [optional] 
**customerTitle** | **String** | Title of the customer | [optional] 
**customerIsPublic** | **bool** | Parameter that specifies if customer is public | [optional] 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with Customer or Tenant Id | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


