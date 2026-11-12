# thingsboard_client.model.SolutionExportResponse

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**solution** | [**SolutionData**](SolutionData.md) | The exported solution data containing all requested entities grouped by type. | [optional] 
**warnings** | **BuiltList&lt;String&gt;** | List of dependency warnings. Generated when exported entities reference other entities that are not included in the export (e.g. a device profile references a rule chain that was not selected for export). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


