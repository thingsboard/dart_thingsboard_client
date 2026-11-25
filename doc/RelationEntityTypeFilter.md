# thingsboard_client.model.RelationEntityTypeFilter

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**relationType** | **String** | Type of the relation between root entity and other entity (e.g. 'Contains' or 'Manages'). | [optional] 
**entityTypes** | [**BuiltList&lt;EntityType&gt;**](EntityType.md) | Array of entity types to filter the related entities (e.g. 'DEVICE', 'ASSET'). | [optional] 
**negate** | **bool** | Negate relation type between root entity and other entity. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


