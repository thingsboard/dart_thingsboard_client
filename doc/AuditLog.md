# thingsboard_client.model.AuditLog

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**AuditLogId**](AuditLogId.md) | JSON object with the auditLog Id | [optional] 
**createdTime** | **int** | Timestamp of the auditLog creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id | [optional] 
**entityId** | [**EntityId**](EntityId.md) | JSON object with Entity id | [optional] 
**entityName** | **String** | Name of the logged entity | [optional] 
**userId** | [**UserId**](UserId.md) | JSON object with User id. | [optional] 
**userName** | **String** | Unique user name(email) of the user that performed some action on logged entity | [optional] 
**actionType** | [**ActionType**](ActionType.md) | String represented Action type | [optional] 
**actionData** | [**JsonObject**](.md) | JsonNode represented action data | [optional] 
**actionStatus** | [**ActionStatus**](ActionStatus.md) | String represented Action status | [optional] 
**actionFailureDetails** | **String** | Failure action details info. An empty string in case of action status type 'SUCCESS', otherwise includes stack trace of the caused exception. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


