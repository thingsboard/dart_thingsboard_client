# thingsboard_client.model.Login401Response

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **int** | HTTP Response Status Code | [optional] 
**message** | **String** | Error message | [optional] 
**errorCode** | [**ThingsboardErrorCode**](ThingsboardErrorCode.md) | Platform error code: * `2` - General error (HTTP: 500 - Internal Server Error)  * `10` - Authentication failed (HTTP: 401 - Unauthorized)  * `11` - JWT token expired (HTTP: 401 - Unauthorized)  * `15` - Credentials expired (HTTP: 401 - Unauthorized)  * `20` - Permission denied (HTTP: 403 - Forbidden)  * `30` - Invalid arguments (HTTP: 400 - Bad Request)  * `31` - Bad request params (HTTP: 400 - Bad Request)  * `32` - Item not found (HTTP: 404 - Not Found)  * `33` - Too many requests (HTTP: 429 - Too Many Requests)  * `34` - Too many updates (Too many updates over Websocket session)  * `35` - Version conflict (HTTP: 409 - Conflict)  * `40` - Subscription violation (HTTP: 403 - Forbidden)  * `41` - Entities limit exceeded (HTTP: 403 - Forbidden)  * `47` - Setup incomplete (HTTP: 423 - Locked) | [optional] 
**timestamp** | **int** | Timestamp | [optional] 
**subscriptionErrorCode** | [**SubscriptionErrorCode**](SubscriptionErrorCode.md) |  | [optional] 
**subscriptionEntry** | [**SubscriptionEntry**](SubscriptionEntry.md) |  | [optional] 
**subscriptionValue** | [**JsonObject**](.md) | A value representing the any type (object or primitive) | [optional] 
**resetToken** | **String** | Password reset token | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


