# thingsboard_client.model.MobileApp

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**MobileAppId**](MobileAppId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id | [optional] 
**pkgName** | **String** | Application package name. Cannot be empty | 
**title** | **String** | Application title | [optional] 
**appSecret** | **String** | Application secret. The length must be at least 16 characters | 
**platformType** | [**PlatformType**](PlatformType.md) | Application platform type: ANDROID or IOS | 
**status** | [**MobileAppStatus**](MobileAppStatus.md) | Application status: PUBLISHED, DEPRECATED, SUSPENDED, DRAFT | 
**versionInfo** | [**MobileAppVersionInfo**](MobileAppVersionInfo.md) | Application version info | [optional] 
**storeInfo** | [**StoreInfo**](StoreInfo.md) | Application store information | [optional] 
**name** | **String** | Mobile app package name | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


