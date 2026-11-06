# thingsboard_client.model.AvailableEntityKeysV2

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**totalEntities** | **int** | Total number of entities that matched the query filter. | 
**entityTypes** | [**BuiltSet&lt;EntityType&gt;**](EntityType.md) | Set of entity types found among the matched entities. | 
**timeseries** | [**BuiltList&lt;KeyInfo&gt;**](KeyInfo.md) | List of unique time series keys available on the matched entities, sorted alphabetically. Omitted when timeseries keys were not requested. | [optional] 
**attributes** | [**BuiltMap&lt;String, BuiltList&lt;KeyInfo&gt;&gt;**](BuiltList.md) | Map of attribute scope to the list of unique attribute keys available on the matched entities. Only scopes supported by the matched entity types are included. Omitted when attribute keys were not requested or when none of the requested scopes apply to the matched entity types. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


