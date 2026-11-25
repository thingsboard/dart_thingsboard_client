# thingsboard_client.model.SchedulerEventWithCustomerInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**SchedulerEventId**](SchedulerEventId.md) | JSON object with the scheduler event Id. Specify this field to update the scheduler event. Referencing non-existing scheduler event Id will cause error. Omit this field to create new scheduler event | [optional] 
**createdTime** | **int** | Timestamp of the scheduler event creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the scheduler event | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id. Optional: when omitted the Scheduler Event is owned by the tenant. When the request is made by a Customer user, the value is forced to the user's own Customer Id. | [optional] 
**originatorId** | [**EntityId**](EntityId.md) | JSON object with Originator Id | [optional] 
**name** | **String** | scheduler event name | [optional] 
**type** | **String** | scheduler event type | [optional] 
**schedule** | [**JsonObject**](.md) | a JSON value with schedule time configuration | [optional] 
**enabled** | **bool** | Enable/disable scheduler | [optional] 
**version** | **int** |  | [optional] 
**customerTitle** | **String** | Title of the customer | [optional] 
**customerIsPublic** | **bool** | Parameter that specifies if customer is public | [optional] 
**timestamps** | **BuiltList&lt;int&gt;** |  | [optional] 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with Customer or Tenant Id | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


