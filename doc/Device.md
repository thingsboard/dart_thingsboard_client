# thingsboard_client.model.Device

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**DeviceId**](DeviceId.md) | JSON object with the Device Id. Specify this field to update the Device. Referencing non-existing Device Id will cause error. Omit this field to create new Device. | [optional] 
**createdTime** | **int** | Timestamp of the device creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the device. May include: 'gateway' (boolean, whether the device is a gateway), 'description' (string), 'lastConnectedGateway' (string, UUID of the last gateway that connected this device). | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. Use 'assignDeviceToTenant' to change the Tenant Id. | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id. Optional on create: when omitted, defaults to the owner of the target Entity Group or to the current Customer user. Cannot be changed on update via this endpoint; use the Owner API (changeOwnerToCustomer) to re-assign an existing Device. | [optional] 
**name** | **String** | Unique Device Name in scope of Tenant | [optional] 
**type** | **String** | Device Profile Name | [optional] 
**label** | **String** | Label that may be used in widgets | [optional] 
**deviceProfileId** | [**DeviceProfileId**](DeviceProfileId.md) | JSON object with Device Profile Id. If not provided, the type will be used to determine the profile. If neither deviceProfileId nor type is specified, the default device profile will be used. | [optional] 
**deviceData** | [**DeviceData**](DeviceData.md) | JSON object with content specific to type of transport in the device profile. | [optional] 
**firmwareId** | [**OtaPackageId**](OtaPackageId.md) | JSON object with Ota Package Id. | [optional] 
**softwareId** | [**OtaPackageId**](OtaPackageId.md) | JSON object with Ota Package Id. | [optional] 
**version** | **int** |  | [optional] 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with Customer or Tenant Id | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


