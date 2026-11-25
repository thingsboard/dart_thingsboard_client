# thingsboard_client.model.User

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**UserId**](UserId.md) | JSON object with the User Id. Specify this field to update the device. Referencing non-existing User Id will cause error. Omit this field to create new customer. | [optional] 
**createdTime** | **int** | Timestamp of the user creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the user. May include: 'defaultDashboardId' (string, UUID of the default dashboard), 'defaultDashboardFullscreen' (boolean), 'homeDashboardId' (string, UUID of the home dashboard), 'homeDashboardHideToolbar' (boolean), 'lang' (string, user locale, e.g. 'en_US'), 'authProviderName' (string, name of the authentication provider). | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with the Tenant Id. | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with the Customer Id. | [optional] 
**email** | **String** | Email of the user | 
**authority** | [**Authority**](Authority.md) | Authority | 
**firstName** | **String** | First name of the user | [optional] 
**lastName** | **String** | Last name of the user | [optional] 
**phone** | **String** | Phone number of the user | [optional] 
**customMenuId** | [**CustomMenuId**](CustomMenuId.md) |  | [optional] 
**version** | **int** |  | [optional] 
**name** | **String** | Duplicates the email of the user, readonly | [optional] 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with Customer or Tenant Id | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


