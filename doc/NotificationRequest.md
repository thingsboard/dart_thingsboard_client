# thingsboard_client.model.NotificationRequest

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**NotificationRequestId**](NotificationRequestId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**tenantId** | [**TenantId**](TenantId.md) |  | [optional] 
**targets** | **BuiltList&lt;String&gt;** |  | 
**templateId** | [**NotificationTemplateId**](NotificationTemplateId.md) |  | [optional] 
**template** | [**NotificationTemplate**](NotificationTemplate.md) |  | [optional] 
**info** | [**NotificationInfo**](NotificationInfo.md) |  | [optional] 
**additionalConfig** | [**NotificationRequestConfig**](NotificationRequestConfig.md) |  | [optional] 
**originatorEntityId** | [**EntityId**](EntityId.md) |  | [optional] 
**ruleId** | [**NotificationRuleId**](NotificationRuleId.md) |  | [optional] 
**status** | [**NotificationRequestStatus**](NotificationRequestStatus.md) |  | [optional] 
**stats** | [**NotificationRequestStats**](NotificationRequestStats.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


