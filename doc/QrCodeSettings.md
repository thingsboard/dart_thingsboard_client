# thingsboard_client.model.QrCodeSettings

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**QrCodeSettingsId**](QrCodeSettingsId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**useSystemSettings** | **bool** | Use settings from system level | [optional] 
**useDefaultApp** | **bool** | Type of application: true means use default Thingsboard app | [optional] 
**mobileAppBundleId** | [**MobileAppBundleId**](MobileAppBundleId.md) | Mobile app bundle. | [optional] 
**qrCodeConfig** | [**QRCodeConfig**](QRCodeConfig.md) | QR code config configuration. | 
**androidEnabled** | **bool** | Indicates if google play link is available | [optional] 
**iosEnabled** | **bool** | Indicates if apple store link is available | [optional] 
**googlePlayLink** | **String** |  | [optional] 
**appStoreLink** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


