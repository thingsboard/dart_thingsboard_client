# thingsboard_client.model.Lwm2mDeviceProfileTransportConfiguration

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**observeAttr** | [**TelemetryMappingConfiguration**](TelemetryMappingConfiguration.md) | Configuration for mapping LwM2M resources to telemetry and attributes | [optional] 
**bootstrapServerUpdateEnable** | **bool** | Flag indicating whether LwM2M bootstrap server update is enabled | [optional] 
**bootstrap** | [**BuiltList&lt;LwM2MBootstrapServerCredential&gt;**](LwM2MBootstrapServerCredential.md) |  | [optional] 
**clientLwM2mSettings** | [**OtherConfiguration**](OtherConfiguration.md) | Other LwM2M client settings | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


