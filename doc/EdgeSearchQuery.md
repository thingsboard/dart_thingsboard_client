# thingsboard_client.model.EdgeSearchQuery

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parameters** | [**RelationsSearchParameters**](RelationsSearchParameters.md) | Main search parameters. | [optional] 
**relationType** | **String** | Type of the relation between root entity and edge (e.g. 'Contains' or 'Manages'). | [optional] 
**edgeTypes** | **BuiltList&lt;String&gt;** | Array of edge types to filter the related entities (e.g. 'Silos', 'Stores'). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


