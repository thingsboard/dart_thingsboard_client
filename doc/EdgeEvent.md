# thingsboard_client.model.EdgeEvent

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**EdgeEventId**](EdgeEventId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**seqId** | **int** |  | [optional] 
**tenantId** | [**TenantId**](TenantId.md) |  | [optional] 
**edgeId** | [**EdgeId**](EdgeId.md) |  | [optional] 
**action** | [**EdgeEventActionType**](EdgeEventActionType.md) |  | [optional] 
**entityId** | **String** |  | [optional] 
**uid** | **String** |  | [optional] 
**type** | [**EdgeEventType**](EdgeEventType.md) |  | [optional] 
**body** | [**JsonObject**](.md) | A value representing the any type (object or primitive) | [optional] 
**entityGroupId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


