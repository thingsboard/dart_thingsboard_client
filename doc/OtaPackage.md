# thingsboard_client.model.OtaPackage

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**OtaPackageId**](OtaPackageId.md) | JSON object with the ota package Id. Specify existing ota package Id to update the ota package. Referencing non-existing ota package id will cause error. Omit this field to create new ota package. | [optional] 
**createdTime** | **int** | Timestamp of the ota package creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | OTA Package description. | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. Tenant Id of the ota package can't be changed. | [optional] 
**deviceProfileId** | [**DeviceProfileId**](DeviceProfileId.md) | JSON object with Device Profile Id. Device Profile Id of the ota package can't be changed. | [optional] 
**type** | [**OtaPackageType**](OtaPackageType.md) | OTA Package type. | [optional] 
**title** | **String** | OTA Package title. | [optional] 
**version** | **String** | OTA Package version. | [optional] 
**tag** | **String** | OTA Package tag. | [optional] 
**url** | **String** | OTA Package url. | [optional] 
**hasData** | **bool** | Indicates OTA Package 'has data'. Field is returned from DB ('true' if data exists or url is set).  If OTA Package 'has data' is 'false' we can not assign the OTA Package to the Device or Device Profile. | [optional] 
**fileName** | **String** | OTA Package file name. | [optional] 
**contentType** | **String** | OTA Package content type. | [optional] 
**checksumAlgorithm** | [**ChecksumAlgorithm**](ChecksumAlgorithm.md) | OTA Package checksum algorithm. | [optional] 
**checksum** | **String** | OTA Package checksum. | [optional] 
**dataSize** | **int** | OTA Package data size. | [optional] 
**data** | **String** |  | [optional] 
**name** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


