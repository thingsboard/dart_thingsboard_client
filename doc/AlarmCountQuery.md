# thingsboard_client.model.AlarmCountQuery

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entityFilter** | [**EntityFilter**](EntityFilter.md) |  | [optional] 
**keyFilters** | [**BuiltList&lt;KeyFilter&gt;**](KeyFilter.md) |  | [optional] 
**keyFiltersOperation** | [**AlarmRuleComplexOperation**](AlarmRuleComplexOperation.md) |  | [optional] 
**startTs** | **int** |  | [optional] 
**endTs** | **int** |  | [optional] 
**timeWindow** | **int** |  | [optional] 
**typeList** | **BuiltList&lt;String&gt;** |  | [optional] 
**statusList** | [**BuiltList&lt;AlarmSearchStatus&gt;**](AlarmSearchStatus.md) |  | [optional] 
**severityList** | [**BuiltList&lt;AlarmSeverity&gt;**](AlarmSeverity.md) |  | [optional] 
**searchPropagatedAlarms** | **bool** |  | [optional] 
**assigneeId** | [**UserId**](UserId.md) |  | [optional] 
**keyFiltersOperationOrDefault** | [**AlarmRuleComplexOperation**](AlarmRuleComplexOperation.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


