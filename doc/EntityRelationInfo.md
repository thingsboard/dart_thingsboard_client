# thingsboard_client.model.EntityRelationInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | [**EntityId**](EntityId.md) | JSON object with [from] Entity Id. | 
**to** | [**EntityId**](EntityId.md) | JSON object with [to] Entity Id. | 
**type** | **String** | String value of relation type. | 
**typeGroup** | [**RelationTypeGroup**](RelationTypeGroup.md) | Represents the type group of the relation. | 
**version** | **int** |  | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the relation. | [optional] 
**fromName** | **String** | Name of the entity for [from] direction. | [optional] 
**toName** | **String** | Name of the entity for [to] direction. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


