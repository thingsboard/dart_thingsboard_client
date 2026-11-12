# thingsboard_client.model.Role

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**RoleId**](RoleId.md) | JSON object with the Role Id. Specify this field to update the Role. Referencing non-existing Role Id will cause error. Omit this field to create new Role. | [optional] 
**createdTime** | **int** | Timestamp of the role creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the role. May include: 'description' (string). | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id. Optional: when omitted the Role is owned by the tenant. When the request is made by a Customer user, the value is forced to the user's own Customer Id. | [optional] 
**name** | **String** | Role Name | 
**type** | [**RoleType**](RoleType.md) | Type of the role: generic or group | 
**permissions** | [**JsonObject**](.md) | Set of permissions granted by this role. The JSON shape depends on the role 'type':  * GENERIC — JSON object mapping `Resource` enum names to arrays of `Operation` enum names allowed on that resource. The wildcard entry `{\"ALL\":[\"ALL\"]}` grants every operation on every resource.  * GROUP — JSON array of `Operation` enum names that apply to the entity group this role is bound to via `GroupPermission.entityGroupId`. Only operations with `allowedForGroupRole=true` may appear (see `Operation` enum). The wildcard entry `[\"ALL\"]` grants every supported operation on the bound entity group. | 
**excludedPermissions** | [**JsonObject**](.md) | Operations to subtract from those granted by `permissions`. Only applicable to GENERIC roles — setting this on a GROUP role is rejected by validation. Same shape as the GENERIC variant of `permissions`: a JSON object mapping `Resource` enum names to non-empty arrays of `Operation` enum names. At evaluation time, for each resource the listed operations are removed from the resolved permission set (e.g. `permissions={\"ALL\":[\"ALL\"]}` combined with `excludedPermissions={\"DEVICE\":[\"DELETE\"]}` grants everything except deleting devices). May be null or an empty object when no exclusions apply. | [optional] 
**version** | **int** |  | [optional] 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with Customer or Tenant Id | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


