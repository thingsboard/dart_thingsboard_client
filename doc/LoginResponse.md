# thingsboard_client.model.LoginResponse

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **String** | JWT token | 
**refreshToken** | **String** | Refresh token. Absent when the token is a two-factor authentication token (see scope) | [optional] 
**scope** | [**Authority**](Authority.md) | Set only when two-factor authentication is required: PRE_VERIFICATION_TOKEN when the user must verify a code, MFA_CONFIGURATION_TOKEN when the user must configure two-factor authentication first. The token then grants access only to the two-factor authentication API | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


