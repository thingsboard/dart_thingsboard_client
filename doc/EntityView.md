# thingsboard_client.model.EntityView

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**EntityViewId**](EntityViewId.md) | JSON object with the Entity View Id. Specify this field to update the Entity View. Referencing non-existing Entity View Id will cause error. Omit this field to create new Entity View. | [optional] 
**createdTime** | **int** | Timestamp of the Entity View creation, in milliseconds | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional parameters of the entity view. May include: 'description' (string). | [optional] 
**entityId** | [**EntityId**](EntityId.md) | JSON object with the referenced Entity Id (Device or Asset). | 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id. Optional on create: when omitted, defaults to the owner of the target Entity Group or to the current Customer user. Cannot be changed on update via this endpoint; use the Owner API (changeOwnerToCustomer) to re-assign an existing Entity View. | [optional] 
**name** | **String** | Entity View name | 
**type** | **String** | Device Profile Name | 
**keys** | [**TelemetryEntityView**](TelemetryEntityView.md) | Set of telemetry and attribute keys to expose via Entity View. | [optional] 
**startTimeMs** | **int** | Represents the start time of the interval that is used to limit access to target device telemetry. Customer will not be able to see entity telemetry that is outside the specified interval; | [optional] 
**endTimeMs** | **int** | Represents the end time of the interval that is used to limit access to target device telemetry. Customer will not be able to see entity telemetry that is outside the specified interval; | [optional] 
**version** | **int** |  | [optional] 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with Customer or Tenant Id | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


