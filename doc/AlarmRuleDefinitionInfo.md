# thingsboard_client.model.AlarmRuleDefinitionInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**CalculatedFieldId**](CalculatedFieldId.md) | JSON object with the Alarm Rule Id. Referencing non-existing Alarm Rule Id will cause error. | [optional] 
**createdTime** | **int** | Timestamp of the alarm rule creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) |  | [optional] 
**entityId** | [**EntityId**](EntityId.md) |  | [optional] 
**name** | **String** | User defined name of the alarm rule. | [optional] 
**debugSettings** | [**DebugSettings**](DebugSettings.md) | Debug settings object. | [optional] 
**configurationVersion** | **int** | Version of alarm rule configuration. | [optional] 
**configuration** | [**AlarmCalculatedFieldConfiguration**](AlarmCalculatedFieldConfiguration.md) |  | 
**version** | **int** |  | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the alarm rule. May include: 'description' (string). | [optional] 
**entityName** | **String** |  | [optional] 
**debugMode** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


