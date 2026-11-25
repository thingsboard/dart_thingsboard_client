# thingsboard_client.api.QrCodeSettingsControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApplicationRedirect**](QrCodeSettingsControllerApi.md#getapplicationredirect) | **GET** /api/noauth/qr | getApplicationRedirect
[**getMergedMobileAppSettings**](QrCodeSettingsControllerApi.md#getmergedmobileappsettings) | **GET** /api/mobile/qr/merged | Get QR code configuration for home page (getMergedMobileAppSettings)
[**getMobileAppDeepLink**](QrCodeSettingsControllerApi.md#getmobileappdeeplink) | **GET** /api/mobile/qr/deepLink | Get the deep link to the associated mobile application (getMobileAppDeepLink)
[**getQrCodeSettings**](QrCodeSettingsControllerApi.md#getqrcodesettings) | **GET** /api/mobile/qr/settings | Get Mobile application settings (getQrCodeSettings)
[**getUserTokenByMobileSecret**](QrCodeSettingsControllerApi.md#getusertokenbymobilesecret) | **GET** /api/noauth/qr/{secret} | Get User Token (getUserTokenByMobileSecret)
[**saveQrCodeSettings**](QrCodeSettingsControllerApi.md#saveqrcodesettings) | **POST** /api/mobile/qr/settings | Create Or Update the Mobile application settings (saveQrCodeSettings)


# **getApplicationRedirect**
> JsonObject getApplicationRedirect(userAgent)

getApplicationRedirect

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getQrCodeSettingsControllerApi();
final String userAgent = userAgent_example; // String | 

try {
    final response = api.getApplicationRedirect(userAgent);
    print(response);
} on DioException catch (e) {
    print('Exception when calling QrCodeSettingsControllerApi->getApplicationRedirect: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userAgent** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMergedMobileAppSettings**
> QrCodeSettings getMergedMobileAppSettings()

Get QR code configuration for home page (getMergedMobileAppSettings)

The response payload contains ui configuration of qr code  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getQrCodeSettingsControllerApi();

try {
    final response = api.getMergedMobileAppSettings();
    print(response);
} on DioException catch (e) {
    print('Exception when calling QrCodeSettingsControllerApi->getMergedMobileAppSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**QrCodeSettings**](QrCodeSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMobileAppDeepLink**
> String getMobileAppDeepLink()

Get the deep link to the associated mobile application (getMobileAppDeepLink)

Fetch the url that takes user to linked mobile application   Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getQrCodeSettingsControllerApi();

try {
    final response = api.getMobileAppDeepLink();
    print(response);
} on DioException catch (e) {
    print('Exception when calling QrCodeSettingsControllerApi->getMobileAppDeepLink: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQrCodeSettings**
> QrCodeSettings getQrCodeSettings()

Get Mobile application settings (getQrCodeSettings)

The response payload contains configuration for android/iOS applications and platform qr code widget settings.  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getQrCodeSettingsControllerApi();

try {
    final response = api.getQrCodeSettings();
    print(response);
} on DioException catch (e) {
    print('Exception when calling QrCodeSettingsControllerApi->getQrCodeSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**QrCodeSettings**](QrCodeSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTokenByMobileSecret**
> JwtPair getUserTokenByMobileSecret(secret)

Get User Token (getUserTokenByMobileSecret)

Returns the token of the User based on the provided secret key.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getQrCodeSettingsControllerApi();
final String secret = secret_example; // String | A string value representing short-lived secret key

try {
    final response = api.getUserTokenByMobileSecret(secret);
    print(response);
} on DioException catch (e) {
    print('Exception when calling QrCodeSettingsControllerApi->getUserTokenByMobileSecret: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret** | **String**| A string value representing short-lived secret key | 

### Return type

[**JwtPair**](JwtPair.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveQrCodeSettings**
> QrCodeSettings saveQrCodeSettings(qrCodeSettings)

Create Or Update the Mobile application settings (saveQrCodeSettings)

The request payload contains configuration for android/iOS applications and platform qr code widget settings.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getQrCodeSettingsControllerApi();
final QrCodeSettings qrCodeSettings = ; // QrCodeSettings | 

try {
    final response = api.saveQrCodeSettings(qrCodeSettings);
    print(response);
} on DioException catch (e) {
    print('Exception when calling QrCodeSettingsControllerApi->saveQrCodeSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qrCodeSettings** | [**QrCodeSettings**](QrCodeSettings.md)|  | 

### Return type

[**QrCodeSettings**](QrCodeSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

