# thingsboard_client.model.GroupPermissionInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**GroupPermissionId**](GroupPermissionId.md) | JSON object with the Group Permission Id. Specify this field to update the Group Permission. Referencing non-existing Group Permission Id will cause error. Omit this field to create new Group Permission. | [optional] 
**createdTime** | **int** | Timestamp of the group permission creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with the Tenant Id. | [optional] 
**userGroupId** | [**EntityGroupId**](EntityGroupId.md) | JSON object with the User Group Id. Represents the user group that will have permissions to perform operations against the corresponding entity group. | [optional] 
**roleId** | [**RoleId**](RoleId.md) | JSON object with the Role Id. Represents the set of permissions. The role type (GENERIC or GROUP) determines whether 'entityGroupId' is required. | 
**entityGroupId** | [**EntityGroupId**](EntityGroupId.md) | JSON object with the Entity Group Id. Required when using a GROUP role — specifies the entity group to which the permissions apply. Must be null or omitted when using a GENERIC role. | [optional] 
**entityGroupType** | [**EntityType**](EntityType.md) | Type of the entities in the group: DEVICE, ASSET, CUSTOMER, etc. Auto-populated from the referenced entity group. Null for generic permissions. | [optional] 
**role** | [**Role**](Role.md) | Represent set of permissions. | [optional] 
**entityGroupName** | **String** | Entity Group Name. | [optional] 
**entityGroupOwnerId** | [**EntityId**](EntityId.md) | Entity Group Owner Id (Tenant or Customer). | [optional] 
**entityGroupOwnerName** | **String** | Name of the entity group owner (Tenant or Customer title). | [optional] 
**userGroupName** | **String** | User Group Name. | [optional] 
**userGroupOwnerId** | [**EntityId**](EntityId.md) | User Group Owner Id (Tenant or Customer). | [optional] 
**userGroupOwnerName** | **String** | Name of the user group owner (Tenant or Customer title). | [optional] 
**name** | **String** | Name of the Group Permissions. Auto-generated | [optional] 
**public** | **bool** |  | [optional] 
**readOnly** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


