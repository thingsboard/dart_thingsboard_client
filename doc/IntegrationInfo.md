# thingsboard_client.model.IntegrationInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**IntegrationId**](IntegrationId.md) | JSON object with the Integration Id. Specify this field to update the Integration. Referencing non-existing Integration Id will cause error. Omit this field to create new Integration. | [optional] 
**createdTime** | **int** | Timestamp of the integration creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id | [optional] 
**name** | **String** | Integration Name | 
**type** | [**IntegrationType**](IntegrationType.md) | The type of the integration | 
**debugMode** | **bool** | Enable/disable debug.  | [optional] 
**debugSettings** | [**DebugSettings**](DebugSettings.md) | Debug settings object. | [optional] 
**enabled** | **bool** | Boolean flag to enable/disable the integration | [optional] 
**remote** | **bool** | Boolean flag to enable/disable the integration to be executed remotely. Remote integration is launched in a separate microservice. Local integration is executed by the platform core | [optional] 
**allowCreateDevicesOrAssets** | **bool** | Boolean flag to allow/disallow the integration to create devices or assets that send message and do not exist in the system yet | [optional] 
**edgeTemplate** | **bool** | Boolean flag that specifies that is regular or edge template integration | [optional] 
**version** | **int** |  | [optional] 
**status** | [**JsonObject**](.md) |  | [optional] 
**stats** | [**JsonObject**](.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


