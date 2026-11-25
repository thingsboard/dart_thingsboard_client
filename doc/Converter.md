# thingsboard_client.model.Converter

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**ConverterId**](ConverterId.md) | JSON object with the Converter Id. Specify this field to update the Converter. Referencing non-existing Converter Id will cause error. Omit this field to create new Converter. | [optional] 
**createdTime** | **int** | Timestamp of the converter creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id | [optional] 
**name** | **String** | Unique Converter Name in scope of Tenant | 
**type** | [**ConverterType**](ConverterType.md) | The type of the converter to process incoming or outgoing messages | 
**integrationType** | [**IntegrationType**](IntegrationType.md) | The type of the integration to which the converter is dedicated | [optional] 
**debugMode** | **bool** | Enable/disable debug.  | [optional] 
**debugSettings** | [**DebugSettings**](DebugSettings.md) | Debug settings object. | [optional] 
**configuration** | [**JsonObject**](.md) | JSON object representing converter configuration. It should contain one of two possible fields: 'decoder' or 'encoder'. The former is used when the converter has UPLINK type, the latter is used - when DOWNLINK type. It can contain both 'decoder' and 'encoder' fields, when the correct one is specified for the appropriate converter type, another one can be set to 'null' | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the converter | [optional] 
**edgeTemplate** | **bool** | Boolean flag that specifies that is regular or edge template converter | [optional] 
**converterVersion** | **int** |  | [optional] 
**version** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


