# thingsboard_client.model.CalculatedField

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**CalculatedFieldId**](CalculatedFieldId.md) | JSON object with the Calculated Field Id. Referencing non-existing Calculated Field Id will cause error. | [optional] 
**createdTime** | **int** | Timestamp of the calculated field creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) |  | [optional] 
**entityId** | [**EntityId**](EntityId.md) |  | [optional] 
**type** | [**CalculatedFieldType**](CalculatedFieldType.md) |  | [optional] 
**name** | **String** | User defined name of the calculated field. | [optional] 
**debugSettings** | [**DebugSettings**](DebugSettings.md) | Debug settings object. | [optional] 
**configurationVersion** | **int** | Version of calculated field configuration. | [optional] 
**configuration** | [**CalculatedFieldConfiguration**](CalculatedFieldConfiguration.md) |  | 
**version** | **int** |  | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the calculated field | [optional] 
**debugMode** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


