# thingsboard_client.model.MobileAppBundleInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**MobileAppBundleId**](MobileAppBundleId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id | [optional] 
**title** | **String** | Application bundle title. Cannot be empty | 
**description** | **String** | Application bundle description. | [optional] 
**androidAppId** | [**MobileAppId**](MobileAppId.md) | Android application id | [optional] 
**iosAppId** | [**MobileAppId**](MobileAppId.md) | IOS application id | [optional] 
**layoutConfig** | [**MobileLayoutConfig**](MobileLayoutConfig.md) | Application layout configuration | [optional] 
**selfRegistrationParams** | [**MobileSelfRegistrationParams**](MobileSelfRegistrationParams.md) | Application self registration configuration | [optional] 
**oauth2Enabled** | **bool** | Whether OAuth2 settings are enabled or not | [optional] 
**androidPkgName** | **String** | Android package name | [optional] 
**iosPkgName** | **String** | IOS package name | [optional] 
**oauth2ClientInfos** | [**BuiltList&lt;OAuth2ClientInfo&gt;**](OAuth2ClientInfo.md) | List of available oauth2 clients | [optional] 
**qrCodeEnabled** | **bool** | Indicates if qr code is available for bundle | [optional] 
**name** | **String** | Mobile app bundle title | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


