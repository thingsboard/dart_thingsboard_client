# thingsboard_client.model.TenantInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**TenantId**](TenantId.md) | JSON object with the tenant Id. Specify this field to update the tenant. Referencing non-existing tenant Id will cause error. Omit this field to create new tenant. | [optional] 
**createdTime** | **int** | Timestamp of the tenant creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the tenant. May include: 'description' (string), 'homeDashboardId' (string, UUID of the home dashboard), 'homeDashboardHideToolbar' (boolean, whether to hide the dashboard toolbar). | [optional] 
**country** | **String** | Country | [optional] 
**state** | **String** | State | [optional] 
**city** | **String** | City | [optional] 
**address** | **String** | Address Line 1 | [optional] 
**address2** | **String** | Address Line 2 | [optional] 
**zip** | **String** | Zip code | [optional] 
**phone** | **String** | Phone number | [optional] 
**email** | **String** | Email | [optional] 
**title** | **String** | Title of the tenant | 
**region** | **String** | Geo region of the tenant | [optional] 
**tenantProfileId** | [**TenantProfileId**](TenantProfileId.md) | JSON object with Tenant Profile Id | [optional] 
**version** | **int** |  | [optional] 
**tenantProfileName** | **String** | Tenant Profile name | [optional] 
**name** | **String** | Name of the tenant. Read-only, duplicated from title for backward compatibility | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


