# thingsboard_client.model.SolutionValidationResult

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**valid** | **bool** | 'true' if the solution can be imported without errors. 'false' if there are structural issues (empty entities, unsupported types, malformed data). | [optional] 
**entitySummary** | **BuiltMap&lt;String, int&gt;** | Number of entities per type found in the solution file. | [optional] 
**conflicts** | **BuiltList&lt;String&gt;** | List of blocking issues that would prevent import (e.g. unsupported entity types, missing or malformed entity data). | [optional] 
**warnings** | **BuiltList&lt;String&gt;** | List of non-blocking warnings (e.g. missing dependency references). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


