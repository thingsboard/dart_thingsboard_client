# thingsboard_client.api.LoginEndpointApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login**](LoginEndpointApi.md#login) | **POST** /api/auth/login | Login method to get user JWT token data
[**refreshToken**](LoginEndpointApi.md#refreshtoken) | **POST** /api/auth/token | Refresh user JWT token data


# **login**
> LoginResponse login(loginRequest)

Login method to get user JWT token data

Login method used to authenticate user and get JWT token data.  Value of the response **token** field can be used as **X-Authorization** header value:  `X-Authorization: Bearer $JWT_TOKEN_VALUE`.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getLoginEndpointApi();
final LoginRequest loginRequest = ; // LoginRequest | Login request

try {
    final response = api.login(loginRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LoginEndpointApi->login: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md)| Login request | [optional] 

### Return type

[**LoginResponse**](LoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshToken**
> LoginResponse refreshToken(refreshTokenRequest)

Refresh user JWT token data

Method to refresh JWT token. Provide a valid refresh token to get a new JWT token.  The response contains a new token that can be used for authorization.  `X-Authorization: Bearer $JWT_TOKEN_VALUE`

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getLoginEndpointApi();
final RefreshTokenRequest refreshTokenRequest = ; // RefreshTokenRequest | Refresh token request

try {
    final response = api.refreshToken(refreshTokenRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling LoginEndpointApi->refreshToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshTokenRequest** | [**RefreshTokenRequest**](RefreshTokenRequest.md)| Refresh token request | [optional] 

### Return type

[**LoginResponse**](LoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

