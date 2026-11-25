# thingsboard_client.model.Integration

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
**defaultConverterId** | [**ConverterId**](ConverterId.md) | JSON object with the Uplink Converter Id | 
**downlinkConverterId** | [**ConverterId**](ConverterId.md) | JSON object with the Downlink Converter Id | [optional] 
**routingKey** | **String** | String value used by HTTP based integrations for the base URL construction and by the remote integrations. Remote integration uses this value along with the 'secret' for kind of security and validation to be able to connect to the platform using Grpc | 
**secret** | **String** | String value used by the remote integrations. Remote integration uses this value along with the 'routingKey' for kind of security and validation to be able to connect to the platform using Grpc | [optional] 
**configuration** | [**JsonObject**](.md) | JSON object representing integration configuration. Each integration type has specific configuration with the connectivity parameters (like 'host' and 'port' for MQTT type or 'baseUrl' for HTTP based type, etc.) and other important parameters dependent on the integration type | 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the integration | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


