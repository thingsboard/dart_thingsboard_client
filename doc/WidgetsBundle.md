# thingsboard_client.model.WidgetsBundle

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**WidgetsBundleId**](WidgetsBundleId.md) | JSON object with the Widget Bundle Id. Specify this field to update the Widget Bundle. Referencing non-existing Widget Bundle Id will cause error. Omit this field to create new Widget Bundle. | [optional] 
**createdTime** | **int** | Timestamp of the Widget Bundle creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**alias** | **String** | Unique alias that is used in widget types as a reference widget bundle | [optional] 
**title** | **String** | Title used in search and UI | [optional] 
**image** | **String** | Relative or external image URL. Replaced with image data URL (Base64) in case of relative URL and 'inlineImages' option enabled. | [optional] 
**scada** | **bool** | Whether widgets bundle contains SCADA symbol widget types. | [optional] 
**description** | **String** | Description | [optional] 
**order** | **int** | Order | [optional] 
**version** | **int** |  | [optional] 
**name** | **String** | Same as title of the Widget Bundle. Read-only field. Update the 'title' to change the 'name' of the Widget Bundle. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


