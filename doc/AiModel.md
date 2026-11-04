# thingsboard_client.model.AiModel

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**AiModelId**](AiModelId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object representing the ID of the tenant associated with this AI model | [optional] 
**version** | **int** | Version of the AI model record; increments automatically whenever the record is changed | [optional] [default to 1]
**name** | **String** | Display name for this AI model configuration; not the technical model identifier | 
**configuration** | [**AiModelConfig**](AiModelConfig.md) | Configuration of the AI model | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


