# thingsboard_client.model.SolutionImportResult

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | 'true' if all entities were imported successfully. | [optional] 
**created** | **BuiltMap&lt;String, int&gt;** | Number of newly created entities per entity type. Entity types with zero created entities are omitted. Entity groups are reported under the ENTITY_GROUP key regardless of their inner type (e.g. a user group and a device group both contribute to ENTITY_GROUP). | [optional] 
**idMapping** | **BuiltMap&lt;String, String&gt;** | Mapping from external entity IDs (as they appear in the solution file) to the internal entity IDs assigned during import. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


