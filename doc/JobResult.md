# thingsboard_client.model.JobResult

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successfulCount** | **int** | Count of successfully completed tasks | [optional] 
**failedCount** | **int** | Count of failed tasks | [optional] 
**discardedCount** | **int** | Count of discarded tasks | [optional] 
**totalCount** | **int** | Total number of tasks, set when all tasks are submitted | [optional] 
**results** | [**BuiltList&lt;TaskResult&gt;**](TaskResult.md) |  | [optional] 
**generalError** | **String** | General error message if the job failed | [optional] 
**startTs** | **int** | Timestamp of the job start, in milliseconds | [optional] 
**finishTs** | **int** | Timestamp of the job finish, in milliseconds | [optional] 
**cancellationTs** | **int** | Timestamp of the job cancellation, in milliseconds | [optional] 
**jobType** | **String** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


