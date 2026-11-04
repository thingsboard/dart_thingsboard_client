# thingsboard_client.model.NotificationRuleInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**NotificationRuleId**](NotificationRuleId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**tenantId** | [**TenantId**](TenantId.md) |  | [optional] 
**name** | **String** |  | 
**enabled** | **bool** |  | [optional] 
**templateId** | [**NotificationTemplateId**](NotificationTemplateId.md) |  | 
**triggerType** | [**NotificationRuleTriggerType**](NotificationRuleTriggerType.md) |  | 
**triggerConfig** | [**NotificationRuleTriggerConfig**](NotificationRuleTriggerConfig.md) |  | 
**recipientsConfig** | [**NotificationRuleRecipientsConfig**](NotificationRuleRecipientsConfig.md) |  | 
**additionalConfig** | [**NotificationRuleConfig**](NotificationRuleConfig.md) |  | [optional] 
**templateName** | **String** |  | [optional] 
**deliveryMethods** | [**BuiltList&lt;NotificationDeliveryMethod&gt;**](NotificationDeliveryMethod.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


