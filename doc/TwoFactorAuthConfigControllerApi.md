# thingsboard_client.api.TwoFactorAuthConfigControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteTwoFaAccountConfig**](TwoFactorAuthConfigControllerApi.md#deletetwofaaccountconfig) | **DELETE** /api/2fa/account/config | Delete 2FA account config (deleteTwoFaAccountConfig)
[**generateTwoFaAccountConfig**](TwoFactorAuthConfigControllerApi.md#generatetwofaaccountconfig) | **POST** /api/2fa/account/config/generate | Generate 2FA account config (generateTwoFaAccountConfig)
[**getAccountTwoFaSettings**](TwoFactorAuthConfigControllerApi.md#getaccounttwofasettings) | **GET** /api/2fa/account/settings | Get account 2FA settings (getAccountTwoFaSettings)
[**getAvailableTwoFaProviderTypes**](TwoFactorAuthConfigControllerApi.md#getavailabletwofaprovidertypes) | **GET** /api/2fa/providers | Get available 2FA providers (getAvailableTwoFaProviderTypes)
[**getPlatformTwoFaSettings**](TwoFactorAuthConfigControllerApi.md#getplatformtwofasettings) | **GET** /api/2fa/settings | Get platform 2FA settings (getPlatformTwoFaSettings)
[**savePlatformTwoFaSettings**](TwoFactorAuthConfigControllerApi.md#saveplatformtwofasettings) | **POST** /api/2fa/settings | Save platform 2FA settings (savePlatformTwoFaSettings)
[**submitTwoFaAccountConfig**](TwoFactorAuthConfigControllerApi.md#submittwofaaccountconfig) | **POST** /api/2fa/account/config/submit | Submit 2FA account config (submitTwoFaAccountConfig)
[**updateTwoFaAccountConfig**](TwoFactorAuthConfigControllerApi.md#updatetwofaaccountconfig) | **PUT** /api/2fa/account/config | Update 2FA account config (updateTwoFaAccountConfig)
[**verifyAndSaveTwoFaAccountConfig**](TwoFactorAuthConfigControllerApi.md#verifyandsavetwofaaccountconfig) | **POST** /api/2fa/account/config | Verify and save 2FA account config (verifyAndSaveTwoFaAccountConfig)


# **deleteTwoFaAccountConfig**
> AccountTwoFaSettings deleteTwoFaAccountConfig(providerType)

Delete 2FA account config (deleteTwoFaAccountConfig)

Delete 2FA config for a given 2FA provider type.  Returns whole account's 2FA settings object.   Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTwoFactorAuthConfigControllerApi();
final TwoFaProviderType providerType = ; // TwoFaProviderType | 

try {
    final response = api.deleteTwoFaAccountConfig(providerType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TwoFactorAuthConfigControllerApi->deleteTwoFaAccountConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerType** | [**TwoFaProviderType**](.md)|  | 

### Return type

[**AccountTwoFaSettings**](AccountTwoFaSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateTwoFaAccountConfig**
> TwoFaAccountConfig generateTwoFaAccountConfig(providerType)

Generate 2FA account config (generateTwoFaAccountConfig)

Generate new 2FA account config template for specified provider type.   For TOTP, this will return a corresponding account config template with a generated OTP auth URL (with new random secret key for each API call) that can be then converted to a QR code to scan with an authenticator app. Example: ``` {   \"providerType\": \"TOTP\",   \"useByDefault\": false,   \"authUrl\": \"otpauth://totp/TB%202FA:tenant@thingsboard.org?issuer=TB+2FA&secret=PNJDNWJVAK4ZTUYT7RFGPQLXA7XGU7PX\" } ```  For EMAIL, the generated config will contain email from user's account: ``` {   \"providerType\": \"EMAIL\",   \"useByDefault\": false,   \"email\": \"tenant@thingsboard.org\" } ```  For SMS 2FA this method will just return a config with empty/default values as there is nothing to generate/preset: ``` {   \"providerType\": \"SMS\",   \"useByDefault\": false,   \"phoneNumber\": null } ```  Will throw an error (Bad Request) if the provider is not configured for usage.   Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTwoFactorAuthConfigControllerApi();
final String providerType = providerType_example; // String | 2FA provider type to generate new account config for

try {
    final response = api.generateTwoFaAccountConfig(providerType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TwoFactorAuthConfigControllerApi->generateTwoFaAccountConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerType** | **String**| 2FA provider type to generate new account config for | 

### Return type

[**TwoFaAccountConfig**](TwoFaAccountConfig.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountTwoFaSettings**
> AccountTwoFaSettings getAccountTwoFaSettings()

Get account 2FA settings (getAccountTwoFaSettings)

Get user's account 2FA configuration. Configuration contains configs for different 2FA providers.  Example: ``` {   \"configs\": {     \"EMAIL\": {       \"providerType\": \"EMAIL\",       \"useByDefault\": true,       \"email\": \"tenant@thingsboard.org\"     },     \"TOTP\": {       \"providerType\": \"TOTP\",       \"useByDefault\": false,       \"authUrl\": \"otpauth://totp/TB%202FA:tenant@thingsboard.org?issuer=TB+2FA&secret=P6Z2TLYTASOGP6LCJZAD24ETT5DACNNX\"     },     \"SMS\": {       \"providerType\": \"SMS\",       \"useByDefault\": false,       \"phoneNumber\": \"+380501253652\"     }   } } ```  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTwoFactorAuthConfigControllerApi();

try {
    final response = api.getAccountTwoFaSettings();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TwoFactorAuthConfigControllerApi->getAccountTwoFaSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccountTwoFaSettings**](AccountTwoFaSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableTwoFaProviderTypes**
> BuiltList<TwoFaProviderType> getAvailableTwoFaProviderTypes()

Get available 2FA providers (getAvailableTwoFaProviderTypes)

Get the list of provider types available for user to use (the ones configured by tenant or sysadmin). Example of response: ``` [   \"TOTP\",   \"EMAIL\",   \"SMS\" ] ```  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTwoFactorAuthConfigControllerApi();

try {
    final response = api.getAvailableTwoFaProviderTypes();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TwoFactorAuthConfigControllerApi->getAvailableTwoFaProviderTypes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;TwoFaProviderType&gt;**](TwoFaProviderType.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPlatformTwoFaSettings**
> PlatformTwoFaSettings getPlatformTwoFaSettings()

Get platform 2FA settings (getPlatformTwoFaSettings)

Get platform settings for 2FA. The settings are described for savePlatformTwoFaSettings API method. If 2FA is not configured, then an empty response will be returned.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTwoFactorAuthConfigControllerApi();

try {
    final response = api.getPlatformTwoFaSettings();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TwoFactorAuthConfigControllerApi->getPlatformTwoFaSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PlatformTwoFaSettings**](PlatformTwoFaSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **savePlatformTwoFaSettings**
> PlatformTwoFaSettings savePlatformTwoFaSettings(platformTwoFaSettings)

Save platform 2FA settings (savePlatformTwoFaSettings)

Save 2FA settings for platform. The settings have following properties: - `useSystemTwoFactorAuthSettings` - option for tenant admins to use 2FA settings configured by sysadmin. If this param is set to true, then the settings will not be validated for constraints (if it is a tenant admin; for sysadmin this param is ignored). - `providers` - the list of 2FA providers' configs. Users will only be allowed to use 2FA providers from this list.   - `minVerificationCodeSendPeriod` - minimal period in seconds to wait after verification code send request to send next request.  - `verificationCodeCheckRateLimit` - rate limit configuration for verification code checking. The format is standard: 'amountOfRequests:periodInSeconds'. The value of '1:60' would limit verification code checking requests to one per minute. - `maxVerificationFailuresBeforeUserLockout` - maximum number of verification failures before a user gets disabled. - `totalAllowedTimeForVerification` - total amount of time in seconds allotted for verification. Basically, this property sets a lifetime for pre-verification token. If not set, default value of 30 minutes is used.   TOTP 2FA provider config has following settings: - `issuerName` - issuer name that will be displayed in an authenticator app near a username. Must not be blank.  For SMS 2FA provider: - `smsVerificationMessageTemplate` - verification message template.  Available template variables are ${code} and ${userEmail}. It must not be blank and must contain verification code variable. - `verificationCodeLifetime` - verification code lifetime in seconds. Required to be positive.  For EMAIL provider type: - `verificationCodeLifetime` - the same as for SMS.  Example of the settings: ``` {   \"useSystemTwoFactorAuthSettings\": false,   \"providers\": [     {       \"providerType\": \"TOTP\",       \"issuerName\": \"TB\"     },     {       \"providerType\": \"EMAIL\",       \"verificationCodeLifetime\": 60     },     {       \"providerType\": \"SMS\",       \"verificationCodeLifetime\": 60,       \"smsVerificationMessageTemplate\": \"Here is your verification code: ${code}\"     }   ],   \"minVerificationCodeSendPeriod\": 60,   \"verificationCodeCheckRateLimit\": \"3:900\",   \"maxVerificationFailuresBeforeUserLockout\": 10,   \"totalAllowedTimeForVerification\": 600 } ```  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTwoFactorAuthConfigControllerApi();
final PlatformTwoFaSettings platformTwoFaSettings = ; // PlatformTwoFaSettings | 

try {
    final response = api.savePlatformTwoFaSettings(platformTwoFaSettings);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TwoFactorAuthConfigControllerApi->savePlatformTwoFaSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platformTwoFaSettings** | [**PlatformTwoFaSettings**](PlatformTwoFaSettings.md)|  | 

### Return type

[**PlatformTwoFaSettings**](PlatformTwoFaSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitTwoFaAccountConfig**
> submitTwoFaAccountConfig(twoFaAccountConfig)

Submit 2FA account config (submitTwoFaAccountConfig)

Submit 2FA account config to prepare for a future verification. Basically, this method will send a verification code for a given account config, if this has sense for a chosen 2FA provider. This code is needed to then verify and save the account config.  Example of EMAIL 2FA account config: ``` {   \"providerType\": \"EMAIL\",   \"useByDefault\": true,   \"email\": \"separate-email-for-2fa@thingsboard.org\" } ```  Example of SMS 2FA account config: ``` {   \"providerType\": \"SMS\",   \"useByDefault\": false,   \"phoneNumber\": \"+38012312321\" } ```  For TOTP this method does nothing.  Will throw an error (Bad Request) if submitted account config is not valid, or if the provider is not configured for usage.   Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTwoFactorAuthConfigControllerApi();
final TwoFaAccountConfig twoFaAccountConfig = ; // TwoFaAccountConfig | 

try {
    api.submitTwoFaAccountConfig(twoFaAccountConfig);
} on DioException catch (e) {
    print('Exception when calling TwoFactorAuthConfigControllerApi->submitTwoFaAccountConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **twoFaAccountConfig** | [**TwoFaAccountConfig**](TwoFaAccountConfig.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTwoFaAccountConfig**
> AccountTwoFaSettings updateTwoFaAccountConfig(providerType, twoFaAccountConfigUpdateRequest)

Update 2FA account config (updateTwoFaAccountConfig)

Update config for a given provider type.  Update request example: ``` {   \"useByDefault\": true } ``` Returns whole account's 2FA settings object.   Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTwoFactorAuthConfigControllerApi();
final TwoFaProviderType providerType = ; // TwoFaProviderType | 
final TwoFaAccountConfigUpdateRequest twoFaAccountConfigUpdateRequest = ; // TwoFaAccountConfigUpdateRequest | 

try {
    final response = api.updateTwoFaAccountConfig(providerType, twoFaAccountConfigUpdateRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TwoFactorAuthConfigControllerApi->updateTwoFaAccountConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerType** | [**TwoFaProviderType**](.md)|  | 
 **twoFaAccountConfigUpdateRequest** | [**TwoFaAccountConfigUpdateRequest**](TwoFaAccountConfigUpdateRequest.md)|  | 

### Return type

[**AccountTwoFaSettings**](AccountTwoFaSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyAndSaveTwoFaAccountConfig**
> AccountTwoFaSettings verifyAndSaveTwoFaAccountConfig(twoFaAccountConfig, verificationCode)

Verify and save 2FA account config (verifyAndSaveTwoFaAccountConfig)

Checks the verification code for submitted config, and if it is correct, saves the provided account config.   Returns whole account's 2FA settings object. Will throw an error (Bad Request) if the provider is not configured for usage.   Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTwoFactorAuthConfigControllerApi();
final TwoFaAccountConfig twoFaAccountConfig = ; // TwoFaAccountConfig | 
final String verificationCode = verificationCode_example; // String | 

try {
    final response = api.verifyAndSaveTwoFaAccountConfig(twoFaAccountConfig, verificationCode);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TwoFactorAuthConfigControllerApi->verifyAndSaveTwoFaAccountConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **twoFaAccountConfig** | [**TwoFaAccountConfig**](TwoFaAccountConfig.md)|  | 
 **verificationCode** | **String**|  | [optional] 

### Return type

[**AccountTwoFaSettings**](AccountTwoFaSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

