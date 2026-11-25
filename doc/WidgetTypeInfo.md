# thingsboard_client.model.WidgetTypeInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**WidgetTypeId**](WidgetTypeId.md) | JSON object with the Widget Type Id. Specify this field to update the Widget Type. Referencing non-existing Widget Type Id will cause error. Omit this field to create new Widget Type. | [optional] 
**createdTime** | **int** | Timestamp of the Widget Type creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**fqn** | **String** | Unique FQN that is used in dashboards as a reference widget type | [optional] 
**name** | **String** | Widget name used in search and UI | [optional] 
**deprecated** | **bool** | Whether widget type is deprecated. | [optional] 
**scada** | **bool** | Whether widget type is SCADA symbol. | [optional] 
**version** | **int** |  | [optional] 
**image** | **String** | Base64 encoded widget thumbnail | [optional] 
**description** | **String** | Description of the widget type | [optional] 
**tags** | **BuiltList&lt;String&gt;** | Tags of the widget type | [optional] 
**widgetType** | **String** | Type of the widget (timeseries, latest, control, alarm or static) | [optional] 
**bundles** | [**BuiltList&lt;WidgetBundleInfo&gt;**](WidgetBundleInfo.md) | Bundles | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


