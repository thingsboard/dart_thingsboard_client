# thingsboard_client.api.AuthControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateUser**](AuthControllerApi.md#activateuser) | **POST** /api/noauth/activate | Activate User
[**changePassword**](AuthControllerApi.md#changepassword) | **POST** /api/auth/changePassword | Change password for current User (changePassword)
[**checkActivateToken**](AuthControllerApi.md#checkactivatetoken) | **GET** /api/noauth/activate | Check Activate User Token (checkActivateToken)
[**checkResetToken**](AuthControllerApi.md#checkresettoken) | **GET** /api/noauth/resetPassword | Check password reset token (checkResetToken)
[**getUser**](AuthControllerApi.md#getuser) | **GET** /api/auth/user | Get current User (getUser)
[**getUserPasswordPolicy**](AuthControllerApi.md#getuserpasswordpolicy) | **GET** /api/noauth/userPasswordPolicy | Get the current User password policy (getUserPasswordPolicy)
[**logout**](AuthControllerApi.md#logout) | **POST** /api/auth/logout | Logout (logout)
[**requestResetPasswordByEmail**](AuthControllerApi.md#requestresetpasswordbyemail) | **POST** /api/noauth/resetPasswordByEmail | Request reset password email (requestResetPasswordByEmail)
[**resetPassword**](AuthControllerApi.md#resetpassword) | **POST** /api/noauth/resetPassword | Reset password (resetPassword)


# **activateUser**
> JwtPair activateUser(activateUserRequest, sendActivationMail)

Activate User

Checks the activation token and updates corresponding user password in the database. Now the user may start using his password to login. The response already contains the [JWT](https://jwt.io) activation and refresh tokens, to simplify the user activation flow and avoid asking user to input password again after activation. If token is valid, returns the object that contains [JWT](https://jwt.io/) access and refresh tokens. If token is not valid, returns '400 Bad Request'.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getAuthControllerApi();
final ActivateUserRequest activateUserRequest = ; // ActivateUserRequest | 
final bool sendActivationMail = true; // bool | 

try {
    final response = api.activateUser(activateUserRequest, sendActivationMail);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthControllerApi->activateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activateUserRequest** | [**ActivateUserRequest**](ActivateUserRequest.md)|  | 
 **sendActivationMail** | **bool**|  | [optional] [default to true]

### Return type

[**JwtPair**](JwtPair.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changePassword**
> JwtPair changePassword(changePasswordRequest)

Change password for current User (changePassword)

Change the password for the User which credentials are used to perform this REST API call. Be aware that previously generated [JWT](https://jwt.io/) tokens will be still valid until they expire.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAuthControllerApi();
final ChangePasswordRequest changePasswordRequest = ; // ChangePasswordRequest | 

try {
    final response = api.changePassword(changePasswordRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthControllerApi->changePassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePasswordRequest** | [**ChangePasswordRequest**](ChangePasswordRequest.md)|  | 

### Return type

[**JwtPair**](JwtPair.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkActivateToken**
> JsonObject checkActivateToken(activateToken)

Check Activate User Token (checkActivateToken)

Checks the activation token and forwards user to 'Create Password' page. If token is valid, returns '303 See Other' (redirect) response code with the correct address of 'Create Password' page and same 'activateToken' specified in the URL parameters. If token is not valid, returns '409 Conflict'. If token is expired, redirects to error page.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getAuthControllerApi();
final String activateToken = activateToken_example; // String | The activate token string.

try {
    final response = api.checkActivateToken(activateToken);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthControllerApi->checkActivateToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activateToken** | **String**| The activate token string. | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkResetToken**
> JsonObject checkResetToken(resetToken)

Check password reset token (checkResetToken)

Checks the password reset token and forwards user to 'Reset Password' page. If token is valid, returns '303 See Other' (redirect) response code with the correct address of 'Reset Password' page and same 'resetToken' specified in the URL parameters. If token is not valid, returns '409 Conflict'. If token is expired, redirects to error page.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getAuthControllerApi();
final String resetToken = resetToken_example; // String | The reset token string.

try {
    final response = api.checkResetToken(resetToken);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthControllerApi->checkResetToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetToken** | **String**| The reset token string. | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> User getUser()

Get current User (getUser)

Get the information about the User which credentials are used to perform this REST API call.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAuthControllerApi();

try {
    final response = api.getUser();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthControllerApi->getUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserPasswordPolicy**
> UserPasswordPolicy getUserPasswordPolicy()

Get the current User password policy (getUserPasswordPolicy)

API call to get the password policy for the password validation form(s).

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getAuthControllerApi();

try {
    final response = api.getUserPasswordPolicy();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AuthControllerApi->getUserPasswordPolicy: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserPasswordPolicy**](UserPasswordPolicy.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> logout()

Logout (logout)

Special API call to record the 'logout' of the user to the Audit Logs. Since platform uses [JWT](https://jwt.io/), the actual logout is the procedure of clearing the [JWT](https://jwt.io/) token on the client side. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAuthControllerApi();

try {
    api.logout();
} on DioException catch (e) {
    print('Exception when calling AuthControllerApi->logout: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestResetPasswordByEmail**
> requestResetPasswordByEmail(resetPasswordEmailRequest)

Request reset password email (requestResetPasswordByEmail)

Request to send the reset password email if the user with specified email address is present in the database. Always return '200 OK' status for security purposes.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getAuthControllerApi();
final ResetPasswordEmailRequest resetPasswordEmailRequest = ; // ResetPasswordEmailRequest | 

try {
    api.requestResetPasswordByEmail(resetPasswordEmailRequest);
} on DioException catch (e) {
    print('Exception when calling AuthControllerApi->requestResetPasswordByEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPasswordEmailRequest** | [**ResetPasswordEmailRequest**](ResetPasswordEmailRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPassword**
> resetPassword(resetPasswordRequest)

Reset password (resetPassword)

Checks the password reset token and updates the password. If token is not valid, returns '400 Bad Request'.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getAuthControllerApi();
final ResetPasswordRequest resetPasswordRequest = ; // ResetPasswordRequest | 

try {
    api.resetPassword(resetPasswordRequest);
} on DioException catch (e) {
    print('Exception when calling AuthControllerApi->resetPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPasswordRequest** | [**ResetPasswordRequest**](ResetPasswordRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

