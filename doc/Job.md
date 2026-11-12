# thingsboard_client.model.Job

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**JobId**](JobId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**tenantId** | [**TenantId**](TenantId.md) |  | 
**customerId** | [**CustomerId**](CustomerId.md) |  | [optional] 
**type** | [**JobType**](JobType.md) |  | 
**key** | **String** |  | 
**entityId** | [**EntityId**](EntityId.md) |  | 
**entityName** | **String** |  | [optional] 
**status** | [**JobStatus**](JobStatus.md) |  | 
**configuration** | [**JobConfiguration**](JobConfiguration.md) |  | 
**result** | [**JobResult**](JobResult.md) |  | 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with Customer or Tenant Id | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


