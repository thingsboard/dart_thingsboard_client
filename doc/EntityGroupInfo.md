# thingsboard_client.model.EntityGroupInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**EntityGroupId**](EntityGroupId.md) | JSON object with the EntityGroupId Id. Specify this field to update the Entity Group. Referencing non-existing Entity Group Id will cause error. Omit this field to create new Entity Group. | [optional] 
**createdTime** | **int** | Timestamp of the entity group creation, in milliseconds | [optional] 
**type** | [**EntityType**](EntityType.md) |  | 
**name** | **String** | Name of the entity group | 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with the owner of the group - Tenant or Customer Id. When omitted or null on creation, defaults to the current user's owner (Tenant for tenant admins, Customer for customer users). | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the entity group. May include: 'description' (string), 'isPublic' (boolean, whether this group is shared publicly), 'publicCustomerId' (string, UUID of the public customer associated with this group). | [optional] 
**configuration** | [**JsonObject**](.md) | JSON with the configuration for UI components: list of columns, settings, actions, etc  | [optional] 
**version** | **int** |  | [optional] 
**ownerIds** | [**BuiltSet&lt;EntityId&gt;**](EntityId.md) | List of the entity group owners. | 
**edgeGroupAll** | **bool** | Indicates special edge group 'All' that contains all entities and can't be deleted. | [optional] 
**groupAll** | **bool** | Indicates special group 'All' that contains all entities and can't be deleted. | [optional] 
**tenantId** | [**TenantId**](TenantId.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


