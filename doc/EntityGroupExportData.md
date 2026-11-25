# thingsboard_client.model.EntityGroupExportData

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity** | [**ExportableEntity**](ExportableEntity.md) |  | [optional] 
**relations** | [**BuiltList&lt;EntityRelation&gt;**](EntityRelation.md) |  | [optional] 
**attributes** | [**BuiltMap&lt;String, BuiltList&lt;AttributeExportData&gt;&gt;**](BuiltList.md) | Map of attributes where key is the scope of attributes and value is the list of attributes for that scope | [optional] 
**calculatedFields** | [**BuiltList&lt;CalculatedField&gt;**](CalculatedField.md) |  | [optional] 
**entityType** | [**EntityType**](EntityType.md) |  | 
**permissions** | [**BuiltList&lt;GroupPermission&gt;**](GroupPermission.md) | Group permissions to apply to this group on import. Meaningful only for USER groups; ignored for groups of any other type. Each entry's userGroupId, roleId, and entityGroupId may use the external IDs of other entities in this payload or the IDs of entities that already exist on the target tenant; the importer resolves them against the target tenant. System-tenant roles are not allowed and will be rejected. Leave null to skip permission management for this group. | [optional] 
**groupOtaPackages** | [**BuiltList&lt;DeviceGroupOtaPackage&gt;**](DeviceGroupOtaPackage.md) | OTA package assignments to apply to this group on import. Meaningful only for DEVICE groups; ignored for groups of any other type. Each entry's otaPackageId and groupId may reference external IDs of entities in this payload or IDs of entities that already exist on the target tenant. Leave null to skip OTA assignment management for this group. | [optional] 
**groupEntities** | **bool** | Marker indicating that the group's member entities are intended to be transported alongside this payload. Used by flows that convey members through a side channel (notably the version control flow, which stores members in a separate git index). The solution import API does not consume this flag and does not require it to be set. Safe to leave false (default). | [optional] 
**memberIds** | **BuiltList&lt;String&gt;** | External IDs of the entities that should be members of this group after import. Each ID is resolved against the target tenant — by other entity in this payload, by external ID, or by existing internal ID — and the matching entities are added to the group. The import fails if any listed member cannot be resolved. Must be null for the special 'All' group (whose membership is implicit and managed by the platform). Leave null to skip membership wiring; existing membership on the target tenant is left untouched. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


