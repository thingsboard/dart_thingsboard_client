# thingsboard_client.model.TelemetryMappingConfiguration

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**keyName** | **BuiltMap&lt;String, String&gt;** | Map of LwM2M resource paths to telemetry key names | [optional] 
**observe** | **BuiltSet&lt;String&gt;** | Set of resources to observe | [optional] 
**attribute** | **BuiltSet&lt;String&gt;** | Set of attribute keys | [optional] 
**telemetry** | **BuiltSet&lt;String&gt;** | Set of telemetry keys | [optional] 
**attributeLwm2m** | [**BuiltMap&lt;String, ObjectAttributes&gt;**](ObjectAttributes.md) | Map of resource paths to specific LwM2M object attributes | [optional] 
**initAttrTelAsObsStrategy** | **bool** |  | [optional] 
**observeStrategy** | [**TelemetryObserveStrategy**](TelemetryObserveStrategy.md) | Observation strategy for telemetry | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


