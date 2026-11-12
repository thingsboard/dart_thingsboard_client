# thingsboard_client.model.Customer

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**CustomerId**](CustomerId.md) | JSON object with the customer Id. Specify this field to update the customer. Referencing non-existing customer Id will cause error. Omit this field to create new customer. | [optional] 
**createdTime** | **int** | Timestamp of the customer creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the customer. May include: 'description' (string), 'homeDashboardId' (string, UUID of the home dashboard), 'homeDashboardHideToolbar' (boolean, whether to hide the dashboard toolbar), 'isPublic' (boolean, whether this is a public customer). | [optional] 
**country** | **String** | Country | [optional] 
**state** | **String** | State | [optional] 
**city** | **String** | City | [optional] 
**address** | **String** | Address Line 1 | [optional] 
**address2** | **String** | Address Line 2 | [optional] 
**zip** | **String** | Zip code | [optional] 
**phone** | **String** | Phone number | [optional] 
**email** | **String** | Email | [optional] 
**title** | **String** | Title of the customer | 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id | [optional] 
**parentCustomerId** | [**CustomerId**](CustomerId.md) | JSON object with parent Customer Id | [optional] 
**version** | **int** |  | [optional] 
**customMenuId** | [**CustomMenuId**](CustomMenuId.md) |  | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with parent Customer Id | [optional] 
**name** | **String** | Name of the customer. Read-only, duplicated from title for backward compatibility | [optional] 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with Customer or Tenant Id | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


