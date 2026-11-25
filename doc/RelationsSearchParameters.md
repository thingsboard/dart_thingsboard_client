# thingsboard_client.model.RelationsSearchParameters

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rootId** | **String** | Root entity id to start search from. | [optional] 
**rootType** | [**EntityType**](EntityType.md) | Type of the root entity. | [optional] 
**direction** | [**EntitySearchDirection**](EntitySearchDirection.md) | Type of the root entity. | [optional] 
**relationTypeGroup** | [**RelationTypeGroup**](RelationTypeGroup.md) | Type of the relation. | [optional] 
**maxLevel** | **int** | Maximum level of the search depth. | [optional] 
**fetchLastLevelOnly** | **bool** | Fetch entities that match the last level of search. Useful to find Devices that are strictly 'maxLevel' relations away from the root entity. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


