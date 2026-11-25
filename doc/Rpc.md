# thingsboard_client.model.Rpc

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**RpcId**](RpcId.md) | JSON object with the rpc Id. Referencing non-existing rpc Id will cause error. | [optional] 
**createdTime** | **int** | Timestamp of the rpc creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**deviceId** | [**DeviceId**](DeviceId.md) | JSON object with Device Id. | [optional] 
**expirationTime** | **int** | Expiration time of the request. | [optional] 
**request** | [**JsonObject**](.md) | The request body that will be used to send message to device. | [optional] 
**response** | [**JsonObject**](.md) | The response from the device. | [optional] 
**status** | [**RpcStatus**](RpcStatus.md) | The current status of the RPC call. | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional info used in the rule engine to process the updates to the RPC state. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


