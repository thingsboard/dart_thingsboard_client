# thingsboard_client.model.EntityViewSearchQuery

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parameters** | [**RelationsSearchParameters**](RelationsSearchParameters.md) | Main search parameters. | [optional] 
**relationType** | **String** | Type of the relation between root entity and device (e.g. 'Contains' or 'Manages'). | [optional] 
**entityViewTypes** | **BuiltList&lt;String&gt;** | Array of entity view types to filter the related entities (e.g. 'Temperature Sensor', 'Smoke Sensor'). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


