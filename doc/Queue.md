# thingsboard_client.model.Queue

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**QueueId**](QueueId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**additionalInfo** | [**JsonObject**](.md) | A value representing the any type (object or primitive) | [optional] 
**tenantId** | [**TenantId**](TenantId.md) |  | [optional] 
**name** | **String** |  | [optional] 
**topic** | **String** |  | [optional] 
**pollInterval** | **int** |  | [optional] 
**partitions** | **int** |  | [optional] 
**consumerPerPartition** | **bool** |  | [optional] 
**packProcessingTimeout** | **int** |  | [optional] 
**submitStrategy** | [**SubmitStrategy**](SubmitStrategy.md) |  | [optional] 
**processingStrategy** | [**ProcessingStrategy**](ProcessingStrategy.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


