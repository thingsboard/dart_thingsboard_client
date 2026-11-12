# thingsboard_client.model.BulkOperationPreview

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** | Total number of apps targeted by the bulk operation | [optional] 
**eligible** | **int** | Number of apps that would be submitted (total minus skipped) | [optional] 
**skippedCountsByReason** | **BuiltMap&lt;String, int&gt;** | Skip count per reason for the targeted apps | [optional] 
**skippedSample** | [**BuiltList&lt;SkippedApp&gt;**](SkippedApp.md) | Sample of skipped apps, capped per reason. Use the run history to inspect the full list. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


