# thingsboard_client.model.PlatformTwoFaSettings

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**useSystemTwoFactorAuthSettings** | **bool** |  | [optional] 
**providers** | [**BuiltList&lt;TwoFaProviderConfig&gt;**](TwoFaProviderConfig.md) |  | 
**minVerificationCodeSendPeriod** | **int** |  | 
**verificationCodeCheckRateLimit** | **String** |  | [optional] 
**maxVerificationFailuresBeforeUserLockout** | **int** |  | [optional] 
**totalAllowedTimeForVerification** | **int** |  | 
**enforceTwoFa** | **bool** |  | [optional] 
**enforcedUsersFilter** | [**JsonObject**](.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


