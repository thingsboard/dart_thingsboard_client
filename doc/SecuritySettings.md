# thingsboard_client.model.SecuritySettings

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**passwordPolicy** | [**UserPasswordPolicy**](UserPasswordPolicy.md) | The user password policy object. | [optional] 
**maxFailedLoginAttempts** | **int** | Maximum number of failed login attempts allowed before user account is locked. | [optional] 
**userLockoutNotificationEmail** | **String** | Email to use for notifications about locked users. | [optional] 
**mobileSecretKeyLength** | **int** | Mobile secret key length | [optional] 
**userActivationTokenTtl** | **int** | TTL in hours for user activation link | 
**passwordResetTokenTtl** | **int** | TTL in hours for password reset link | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


