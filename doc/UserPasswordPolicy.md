# thingsboard_client.model.UserPasswordPolicy

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**minimumLength** | **int** | Minimum number of symbols in the password. | [optional] 
**maximumLength** | **int** | Maximum number of symbols in the password. | [optional] 
**minimumUppercaseLetters** | **int** | Minimum number of uppercase letters in the password. | [optional] 
**minimumLowercaseLetters** | **int** | Minimum number of lowercase letters in the password. | [optional] 
**minimumDigits** | **int** | Minimum number of digits in the password. | [optional] 
**minimumSpecialCharacters** | **int** | Minimum number of special in the password. | [optional] 
**allowWhitespaces** | **bool** | Allow whitespaces | [optional] 
**forceUserToResetPasswordIfNotValid** | **bool** | Force user to update password if existing one does not pass validation | [optional] 
**passwordExpirationPeriodDays** | **int** | Password expiration period (days). Force expiration of the password. | [optional] 
**passwordReuseFrequencyDays** | **int** | Password reuse frequency (days). Disallow to use the same password for the defined number of days | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


