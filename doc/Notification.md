# thingsboard_client.model.Notification

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**NotificationId**](NotificationId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**requestId** | [**NotificationRequestId**](NotificationRequestId.md) |  | [optional] 
**recipientId** | [**UserId**](UserId.md) |  | [optional] 
**type** | [**NotificationType**](NotificationType.md) |  | [optional] 
**deliveryMethod** | [**NotificationDeliveryMethod**](NotificationDeliveryMethod.md) |  | [optional] 
**subject** | **String** |  | [optional] 
**text** | **String** |  | [optional] 
**additionalConfig** | [**JsonObject**](.md) | A value representing the any type (object or primitive) | [optional] 
**info** | [**NotificationInfo**](NotificationInfo.md) |  | [optional] 
**status** | [**NotificationStatus**](NotificationStatus.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


