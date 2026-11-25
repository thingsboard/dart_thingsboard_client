# thingsboard_client.model.AllowedPermissionsInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operationsByResource** | [**BuiltMap&lt;String, BuiltSet&lt;Operation&gt;&gt;**](BuiltSet.md) | Static map (vocabulary) of allowed operations by resource type | [optional] 
**allowedForGroupRoleOperations** | [**BuiltSet&lt;Operation&gt;**](Operation.md) | Static set (vocabulary) of allowed operations for group roles | [optional] 
**allowedForGroupOwnerOnlyOperations** | [**BuiltSet&lt;Operation&gt;**](Operation.md) | Static set (vocabulary) of allowed operations for group owner | [optional] 
**allowedForGroupOwnerOnlyGroupOperations** | [**BuiltSet&lt;Operation&gt;**](Operation.md) | Static set (vocabulary) of allowed group operations for group owner | [optional] 
**allowedResources** | [**BuiltSet&lt;Resource&gt;**](Resource.md) | Static set (vocabulary) of all possibly allowed resources. Static and depends only on the authority of the user | [optional] 
**userPermissions** | [**MergedUserPermissions**](MergedUserPermissions.md) | JSON object with merged permission for all generic and group roles assigned to all user groups the user belongs to | [optional] 
**userOwnerId** | [**EntityId**](EntityId.md) | Owner Id of the user (Tenant or Customer) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


