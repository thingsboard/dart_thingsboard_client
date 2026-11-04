# thingsboard_client.api.SignUpControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptPrivacyPolicy**](SignUpControllerApi.md#acceptprivacypolicy) | **POST** /api/signup/acceptPrivacyPolicy | Accept privacy policy (acceptPrivacyPolicy)
[**acceptTermsOfUse**](SignUpControllerApi.md#accepttermsofuse) | **POST** /api/signup/acceptTermsOfUse | Accept Terms of Use (acceptTermsOfUse)
[**activateEmail**](SignUpControllerApi.md#activateemail) | **GET** /api/noauth/activateEmail | Activate User using code from Email (activateEmail)
[**activateUserByEmailCode**](SignUpControllerApi.md#activateuserbyemailcode) | **POST** /api/noauth/activateByEmailCode | Activate and login using code from Email (activateUserByEmailCode)
[**mobileLogin**](SignUpControllerApi.md#mobilelogin) | **GET** /api/noauth/login | Mobile Login redirect (mobileLogin)
[**privacyPolicyAccepted**](SignUpControllerApi.md#privacypolicyaccepted) | **GET** /api/signup/privacyPolicyAccepted | Check privacy policy (privacyPolicyAccepted)
[**resendEmailActivation**](SignUpControllerApi.md#resendemailactivation) | **POST** /api/noauth/resendEmailActivation | Resend Activation Email (resendEmailActivation)
[**signUp**](SignUpControllerApi.md#signup) | **POST** /api/noauth/signup | User Sign Up (signUp)
[**termsOfUseAccepted**](SignUpControllerApi.md#termsofuseaccepted) | **GET** /api/signup/termsOfUseAccepted | Check Terms Of User (termsOfUseAccepted)


# **acceptPrivacyPolicy**
> JwtPair acceptPrivacyPolicy()

Accept privacy policy (acceptPrivacyPolicy)

Accept privacy policy by the current user. Stores the acceptance flag 'privacyPolicyAccepted' and the acceptance time 'privacyPolicyAcceptedTs' (epoch milliseconds) in the user's additional info. Repeated acceptance overwrites the stored time.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSignUpControllerApi();

try {
    final response = api.acceptPrivacyPolicy();
    print(response);
} on DioException catch (e) {
    print('Exception when calling SignUpControllerApi->acceptPrivacyPolicy: $e\n');
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

# **acceptTermsOfUse**
> JwtPair acceptTermsOfUse()

Accept Terms of Use (acceptTermsOfUse)

Accept Terms of Use by the current user. Stores the acceptance flag 'termsOfUseAccepted' and the acceptance time 'termsOfUseAcceptedTs' (epoch milliseconds) in the user's additional info. Repeated acceptance overwrites the stored time.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSignUpControllerApi();

try {
    final response = api.acceptTermsOfUse();
    print(response);
} on DioException catch (e) {
    print('Exception when calling SignUpControllerApi->acceptTermsOfUse: $e\n');
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

# **activateEmail**
> String activateEmail(emailCode, pkgName, platform)

Activate User using code from Email (activateEmail)

Activate the user using code(link) from the activation email. Validates the code an redirects according to the signup flow. Checks that user was not activated yet.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getSignUpControllerApi();
final String emailCode = emailCode_example; // String | Activation token.
final String pkgName = pkgName_example; // String | Optional package name of the mobile application.
final String platform = platform_example; // String | Platform type

try {
    final response = api.activateEmail(emailCode, pkgName, platform);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SignUpControllerApi->activateEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCode** | **String**| Activation token. | 
 **pkgName** | **String**| Optional package name of the mobile application. | [optional] 
 **platform** | **String**| Platform type | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **activateUserByEmailCode**
> JwtPair activateUserByEmailCode(emailCode, pkgName, platform)

Activate and login using code from Email (activateUserByEmailCode)

Activate the user using code(link) from the activation email and return the JWT Token. Sends the notification and email about user activation. Checks that user was not activated yet.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getSignUpControllerApi();
final String emailCode = emailCode_example; // String | Activation token.
final String pkgName = pkgName_example; // String | Optional package name of the mobile application.
final String platform = platform_example; // String | Platform type

try {
    final response = api.activateUserByEmailCode(emailCode, pkgName, platform);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SignUpControllerApi->activateUserByEmailCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailCode** | **String**| Activation token. | 
 **pkgName** | **String**| Optional package name of the mobile application. | [optional] 
 **platform** | **String**| Platform type | [optional] 

### Return type

[**JwtPair**](JwtPair.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mobileLogin**
> String mobileLogin(pkgName, platform)

Mobile Login redirect (mobileLogin)

This method generates redirect to the special link that is handled by mobile application. Useful for email verification flow on mobile app.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getSignUpControllerApi();
final String pkgName = pkgName_example; // String | Mobile app package name. Used to identify the application and build the redirect link.
final String platform = platform_example; // String | Platform type

try {
    final response = api.mobileLogin(pkgName, platform);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SignUpControllerApi->mobileLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgName** | **String**| Mobile app package name. Used to identify the application and build the redirect link. | 
 **platform** | **String**| Platform type | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **privacyPolicyAccepted**
> bool privacyPolicyAccepted()

Check privacy policy (privacyPolicyAccepted)

Checks that current user accepted the privacy policy.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSignUpControllerApi();

try {
    final response = api.privacyPolicyAccepted();
    print(response);
} on DioException catch (e) {
    print('Exception when calling SignUpControllerApi->privacyPolicyAccepted: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**bool**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resendEmailActivation**
> resendEmailActivation(email, pkgName, platform)

Resend Activation Email (resendEmailActivation)

Request to resend the activation email for the user. Checks that user was not activated yet.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getSignUpControllerApi();
final String email = john.doe@company.com; // String | Email of the user.
final String pkgName = pkgName_example; // String | Optional package name of the mobile application.
final String platform = platform_example; // String | Platform type

try {
    api.resendEmailActivation(email, pkgName, platform);
} on DioException catch (e) {
    print('Exception when calling SignUpControllerApi->resendEmailActivation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email of the user. | 
 **pkgName** | **String**| Optional package name of the mobile application. | [optional] 
 **platform** | **String**| Platform type | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signUp**
> SignUpResult signUp(signUpRequest)

User Sign Up (signUp)

Process user sign up request. Creates the Customer and corresponding User based on self Registration parameters for the domain. See [Self Registration Controller](/swagger-ui.html#/self-registration-controller) for more details.  The result is either 'SUCCESS' or 'INACTIVE_USER_EXISTS'. If Success, the user will receive an email with instruction to activate the account. The content of the email is customizable via the mail templates.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getSignUpControllerApi();
final SignUpRequest signUpRequest = ; // SignUpRequest | 

try {
    final response = api.signUp(signUpRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SignUpControllerApi->signUp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signUpRequest** | [**SignUpRequest**](SignUpRequest.md)|  | 

### Return type

[**SignUpResult**](SignUpResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **termsOfUseAccepted**
> bool termsOfUseAccepted()

Check Terms Of User (termsOfUseAccepted)

Checks that current user accepted the privacy policy.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSignUpControllerApi();

try {
    final response = api.termsOfUseAccepted();
    print(response);
} on DioException catch (e) {
    print('Exception when calling SignUpControllerApi->termsOfUseAccepted: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**bool**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

