# thingsboard_client.model.RelationsQueryFilter

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**rootEntity** | [**AliasEntityId**](AliasEntityId.md) |  | [optional] 
**multiRoot** | **bool** |  | [optional] 
**multiRootEntitiesType** | [**EntityType**](EntityType.md) |  | [optional] 
**multiRootEntityIds** | **BuiltSet&lt;String&gt;** |  | [optional] 
**direction** | [**EntitySearchDirection**](EntitySearchDirection.md) |  | [optional] 
**filters** | [**BuiltList&lt;RelationEntityTypeFilter&gt;**](RelationEntityTypeFilter.md) |  | [optional] 
**maxLevel** | **int** |  | [optional] 
**fetchLastLevelOnly** | **bool** |  | [optional] 
**negate** | **bool** |  | [optional] 
**rootStateEntity** | **bool** |  | [optional] 
**defaultStateEntity** | [**AliasEntityId**](AliasEntityId.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


