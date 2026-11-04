# thingsboard_client.model.EventInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**EventId**](EventId.md) |  | [optional] 
**createdTime** | **int** | Timestamp of the event creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**type** | **String** | Event type | [optional] 
**uid** | **String** | string | [optional] 
**entityId** | [**EntityId**](EntityId.md) | JSON object with Entity Id for which event is created. | [optional] 
**body** | [**JsonObject**](.md) | A value representing the any type (object or primitive) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


