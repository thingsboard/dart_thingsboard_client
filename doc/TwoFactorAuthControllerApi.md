# thingsboard_client.api.TwoFactorAuthControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticateByTwoFaConfigurationToken**](TwoFactorAuthControllerApi.md#authenticatebytwofaconfigurationtoken) | **POST** /api/auth/2fa/login | Get regular token pair after successfully configuring 2FA
[**checkTwoFaVerificationCode**](TwoFactorAuthControllerApi.md#checktwofaverificationcode) | **POST** /api/auth/2fa/verification/check | Check 2FA verification code (checkTwoFaVerificationCode)
[**getAvailableTwoFaProviderInfos**](TwoFactorAuthControllerApi.md#getavailabletwofaproviderinfos) | **GET** /api/auth/2fa/providers | Get available 2FA providers (getAvailableTwoFaProviderInfos)
[**requestTwoFaVerificationCode**](TwoFactorAuthControllerApi.md#requesttwofaverificationcode) | **POST** /api/auth/2fa/verification/send | Request 2FA verification code (requestTwoFaVerificationCode)


# **authenticateByTwoFaConfigurationToken**
> JwtPair authenticateByTwoFaConfigurationToken()

Get regular token pair after successfully configuring 2FA

Checks 2FA is configured, returning token pair on success.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTwoFactorAuthControllerApi();

try {
    final response = api.authenticateByTwoFaConfigurationToken();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TwoFactorAuthControllerApi->authenticateByTwoFaConfigurationToken: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JwtPair**](JwtPair.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkTwoFaVerificationCode**
> JwtPair checkTwoFaVerificationCode(providerType, verificationCode)

Check 2FA verification code (checkTwoFaVerificationCode)

Checks 2FA verification code, and if it is correct the method returns a regular access and refresh token pair.  The API method is rate limited (using rate limit config from TwoFactorAuthSettings), and also will block a user after X unsuccessful verification attempts if such behavior is configured (in TwoFactorAuthSettings).  Will return a Bad Request error if provider is not configured for usage, and Too Many Requests error if rate limits are exceeded.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTwoFactorAuthControllerApi();
final TwoFaProviderType providerType = ; // TwoFaProviderType | 
final String verificationCode = verificationCode_example; // String | 

try {
    final response = api.checkTwoFaVerificationCode(providerType, verificationCode);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TwoFactorAuthControllerApi->checkTwoFaVerificationCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerType** | [**TwoFaProviderType**](.md)|  | 
 **verificationCode** | **String**|  | 

### Return type

[**JwtPair**](JwtPair.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableTwoFaProviderInfos**
> BuiltList<TwoFaProviderInfo> getAvailableTwoFaProviderInfos()

Get available 2FA providers (getAvailableTwoFaProviderInfos)

Get the list of 2FA provider infos available for user to use. Example: ``` [   {     \"type\": \"EMAIL\",     \"default\": true,     \"contact\": \"ab*****ko@gmail.com\"   },   {     \"type\": \"TOTP\",     \"default\": false,     \"contact\": null   },   {     \"type\": \"SMS\",     \"default\": false,     \"contact\": \"+38********12\"   } ] ```

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTwoFactorAuthControllerApi();

try {
    final response = api.getAvailableTwoFaProviderInfos();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TwoFactorAuthControllerApi->getAvailableTwoFaProviderInfos: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;TwoFaProviderInfo&gt;**](TwoFaProviderInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestTwoFaVerificationCode**
> requestTwoFaVerificationCode(providerType)

Request 2FA verification code (requestTwoFaVerificationCode)

Request 2FA verification code.  To make a request to this endpoint, you need an access token with the scope of PRE_VERIFICATION_TOKEN, which is issued on username/password auth if 2FA is enabled.  The API method is rate limited (using rate limit config from TwoFactorAuthSettings). Will return a Bad Request error if provider is not configured for usage, and Too Many Requests error if rate limits are exceeded.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTwoFactorAuthControllerApi();
final TwoFaProviderType providerType = ; // TwoFaProviderType | 

try {
    api.requestTwoFaVerificationCode(providerType);
} on DioException catch (e) {
    print('Exception when calling TwoFactorAuthControllerApi->requestTwoFaVerificationCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerType** | [**TwoFaProviderType**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

