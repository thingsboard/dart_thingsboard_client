# thingsboard_client.model.StatisticsEventFilter

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**eventType** | [**EventType**](EventType.md) | String value representing the event type | 
**notEmpty** | **bool** |  | [optional] 
**server** | **String** | String value representing the server name, identifier or ip address where the platform is running | [optional] 
**minMessagesProcessed** | **int** | The minimum number of successfully processed messages | [optional] 
**maxMessagesProcessed** | **int** | The maximum number of successfully processed messages | [optional] 
**minErrorsOccurred** | **int** | The minimum number of errors occurred during messages processing | [optional] 
**maxErrorsOccurred** | **int** | The maximum number of errors occurred during messages processing | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


