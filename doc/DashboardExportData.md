# thingsboard_client.model.DashboardExportData

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

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


