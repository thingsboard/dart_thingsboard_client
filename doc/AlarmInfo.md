# thingsboard_client.model.AlarmInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**AlarmId**](AlarmId.md) | JSON object with the alarm Id. Specify this field to update the alarm. Referencing non-existing alarm Id will cause error. Omit this field to create new alarm. | [optional] 
**createdTime** | **int** | Timestamp of the alarm creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id. Derived from the originator entity owner and cannot be set independently; any value supplied in the request body must match the originator's customer or the request is rejected. | [optional] 
**type** | **String** | representing type of the Alarm | 
**originator** | [**EntityId**](EntityId.md) | JSON object with alarm originator id | 
**severity** | [**AlarmSeverity**](AlarmSeverity.md) | Alarm severity | 
**acknowledged** | **bool** | Acknowledged | 
**cleared** | **bool** | Cleared | 
**assigneeId** | [**UserId**](UserId.md) | Alarm assignee user id | [optional] 
**startTs** | **int** | Timestamp of the alarm start time, in milliseconds | [optional] 
**endTs** | **int** | Timestamp of the alarm end time(last time update), in milliseconds | [optional] 
**ackTs** | **int** | Timestamp of the alarm acknowledgement, in milliseconds | [optional] 
**clearTs** | **int** | Timestamp of the alarm clearing, in milliseconds | [optional] 
**assignTs** | **int** | Timestamp of the alarm assignment, in milliseconds | [optional] 
**details** | [**JsonObject**](.md) | JSON object with alarm details | [optional] 
**propagate** | **bool** | Propagation flag to specify if alarm should be propagated to parent entities of alarm originator | [optional] 
**propagateToOwner** | **bool** | Propagation flag to specify if alarm should be propagated to the owner (tenant or customer) of alarm originator | [optional] 
**propagateToOwnerHierarchy** | **bool** | Propagation flag to specify if alarm should be propagated to the owner (tenant or customer) and all parent owners in the customer hierarchy | [optional] 
**propagateToTenant** | **bool** | Propagation flag to specify if alarm should be propagated to the tenant entity | [optional] 
**propagateRelationTypes** | **BuiltList&lt;String&gt;** | JSON array of relation types that should be used for propagation. By default, 'propagateRelationTypes' array is empty which means that the alarm will be propagated based on any relation type to parent entities. This parameter should be used only in case when 'propagate' parameter is set to true, otherwise, 'propagateRelationTypes' array will be ignored. | [optional] 
**originatorName** | **String** | Alarm originator name | [optional] 
**originatorLabel** | **String** | Alarm originator label | [optional] 
**originatorDisplayName** | **String** | Originator display name | [optional] 
**assignee** | [**AlarmAssignee**](AlarmAssignee.md) | Alarm assignee | [optional] 
**name** | **String** | representing type of the Alarm | 
**status** | [**AlarmStatus**](AlarmStatus.md) | status of the Alarm | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


