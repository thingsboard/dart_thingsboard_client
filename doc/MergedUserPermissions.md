# thingsboard_client.model.MergedUserPermissions

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**genericPermissions** | [**BuiltMap&lt;String, BuiltSet&lt;Operation&gt;&gt;**](BuiltSet.md) | Map of permissions defined using generic roles ('Customer Administrator', etc) | [optional] 
**groupPermissions** | [**BuiltMap&lt;String, MergedGroupPermissionInfo&gt;**](MergedGroupPermissionInfo.md) | Map of permissions defined using group roles ('Read' or 'Write' access to specific entity group, etc) | [optional] 
**readGroupPermissions** | [**BuiltMap&lt;String, MergedGroupTypePermissionInfo&gt;**](MergedGroupTypePermissionInfo.md) | Map of read permissions per entity type. Used on the UI to enable/disable certain components. | [optional] 
**readEntityPermissions** | [**BuiltMap&lt;String, MergedGroupTypePermissionInfo&gt;**](MergedGroupTypePermissionInfo.md) | Map of read permissions per resource. Used on the UI to enable/disable certain components. | [optional] 
**readAttrPermissions** | [**BuiltMap&lt;String, MergedGroupTypePermissionInfo&gt;**](MergedGroupTypePermissionInfo.md) | Map of read entity attributes permissions per resource. Used on the UI to enable/disable certain tabs. | [optional] 
**readTsPermissions** | [**BuiltMap&lt;String, MergedGroupTypePermissionInfo&gt;**](MergedGroupTypePermissionInfo.md) | Map of read entity time-series permissions per resource. Used on the UI to enable/disable certain tabs. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


