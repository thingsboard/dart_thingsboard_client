# thingsboard_client.model.ShareGroupRequest

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ownerId** | [**EntityId**](EntityId.md) | In case 'allUserGroup' is set to true, this property specifies the owner of the user group 'All'. Either Tenant or Customer Id. | [optional] 
**allUserGroup** | **bool** | Indicate that the group should be shared with user group 'All' that belongs to Tenant or Customer (see 'ownerId' property description). | 
**userGroupId** | [**EntityGroupId**](EntityGroupId.md) | In case 'allUserGroup' is set to false, this property specifies the specific user group that the entity group should be shared with. | [optional] 
**readElseWrite** | **bool** | Used if 'roleIds' property is not present. if the value is 'true', creates role with read-only permissions. If the value is 'false', creates role with write permissions. | [optional] 
**roleIds** | [**BuiltList&lt;RoleId&gt;**](RoleId.md) | List of group role Ids that should be used to share the entity group with the user group. If not set, the platform will create new role (see 'readElseWrite' property description) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


