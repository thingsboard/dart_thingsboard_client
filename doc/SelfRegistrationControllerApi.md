# thingsboard_client.api.SelfRegistrationControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteWebSelfRegistrationParams**](SelfRegistrationControllerApi.md#deletewebselfregistrationparams) | **DELETE** /api/selfRegistration/selfRegistrationParams | deleteWebSelfRegistrationParams
[**getPrivacyPolicy**](SelfRegistrationControllerApi.md#getprivacypolicy) | **GET** /api/noauth/selfRegistration/privacyPolicy | Get Privacy Policy for Self Registration form (getPrivacyPolicy)
[**getSignUpSelfRegistrationParams**](SelfRegistrationControllerApi.md#getsignupselfregistrationparams) | **GET** /api/noauth/selfRegistration/signUpSelfRegistrationParams | Get Self Registration form parameters without authentication (getSignUpSelfRegistrationParams)
[**getTermsOfUse**](SelfRegistrationControllerApi.md#gettermsofuse) | **GET** /api/noauth/selfRegistration/termsOfUse | Get Terms of Use for Self Registration form (getTermsOfUse)
[**getWebSelfRegistrationParams**](SelfRegistrationControllerApi.md#getwebselfregistrationparams) | **GET** /api/selfRegistration/selfRegistrationParams | Get Self Registration parameters (getSelfRegistrationParams)
[**saveWebSelfRegistrationParams**](SelfRegistrationControllerApi.md#savewebselfregistrationparams) | **POST** /api/selfRegistration/selfRegistrationParams | Create Or Update Self Registration parameters (saveSelfRegistrationParams)


# **deleteWebSelfRegistrationParams**
> deleteWebSelfRegistrationParams()

deleteWebSelfRegistrationParams

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSelfRegistrationControllerApi();

try {
    api.deleteWebSelfRegistrationParams();
} on DioException catch (e) {
    print('Exception when calling SelfRegistrationControllerApi->deleteWebSelfRegistrationParams: $e\n');
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

# **getPrivacyPolicy**
> String getPrivacyPolicy(pkgName, platform)

Get Privacy Policy for Self Registration form (getPrivacyPolicy)

Fetch the Privacy Policy based on the domain name from the request. Available for non-authorized users. 

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getSelfRegistrationControllerApi();
final String pkgName = pkgName_example; // String | 
final PlatformType platform = ; // PlatformType | 

try {
    final response = api.getPrivacyPolicy(pkgName, platform);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SelfRegistrationControllerApi->getPrivacyPolicy: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgName** | **String**|  | [optional] 
 **platform** | [**PlatformType**](.md)|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSignUpSelfRegistrationParams**
> SignUpSelfRegistrationParams getSignUpSelfRegistrationParams(pkgName, platformType)

Get Self Registration form parameters without authentication (getSignUpSelfRegistrationParams)

Fetch the Self Registration parameters based on the domain name from the request. Available for non-authorized users. Contains the information to customize the sign-up form.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getSelfRegistrationControllerApi();
final String pkgName = pkgName_example; // String | 
final String platformType = platformType_example; // String | Platform type

try {
    final response = api.getSignUpSelfRegistrationParams(pkgName, platformType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SelfRegistrationControllerApi->getSignUpSelfRegistrationParams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgName** | **String**|  | [optional] 
 **platformType** | **String**| Platform type | [optional] 

### Return type

[**SignUpSelfRegistrationParams**](SignUpSelfRegistrationParams.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTermsOfUse**
> String getTermsOfUse(pkgName, platform)

Get Terms of Use for Self Registration form (getTermsOfUse)

Fetch the Terms of Use based on the domain name from the request. Available for non-authorized users. 

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getSelfRegistrationControllerApi();
final String pkgName = pkgName_example; // String | 
final PlatformType platform = ; // PlatformType | 

try {
    final response = api.getTermsOfUse(pkgName, platform);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SelfRegistrationControllerApi->getTermsOfUse: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkgName** | **String**|  | [optional] 
 **platform** | [**PlatformType**](.md)|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebSelfRegistrationParams**
> SelfRegistrationParams getWebSelfRegistrationParams()

Get Self Registration parameters (getSelfRegistrationParams)

Fetch the Self Registration parameters object for the tenant of the current user.   Available for users with 'TENANT_ADMIN' authority.  Security check is performed to verify that the user has 'READ' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSelfRegistrationControllerApi();

try {
    final response = api.getWebSelfRegistrationParams();
    print(response);
} on DioException catch (e) {
    print('Exception when calling SelfRegistrationControllerApi->getWebSelfRegistrationParams: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SelfRegistrationParams**](SelfRegistrationParams.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveWebSelfRegistrationParams**
> WebSelfRegistrationParams saveWebSelfRegistrationParams(webSelfRegistrationParams)

Create Or Update Self Registration parameters (saveSelfRegistrationParams)

Creates or Updates the Self Registration parameters. When creating, platform generates Admin Settings Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Admin Settings Id will be present in the response. Specify existing Admin Settings Id to update the Self Registration parameters. Referencing non-existing Admin Settings Id will cause 'Not Found' error.  Self Registration allows users to signup for using the platform and automatically create a Customer account for them. You may configure default dashboard and user roles that will be assigned for this Customer. This allows you to build out-of-the-box solutions for customers. Ability to white-label the login and main pages helps to brand the platform.  Available for users with 'TENANT_ADMIN' authority.  Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getSelfRegistrationControllerApi();
final WebSelfRegistrationParams webSelfRegistrationParams = ; // WebSelfRegistrationParams | 

try {
    final response = api.saveWebSelfRegistrationParams(webSelfRegistrationParams);
    print(response);
} on DioException catch (e) {
    print('Exception when calling SelfRegistrationControllerApi->saveWebSelfRegistrationParams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webSelfRegistrationParams** | [**WebSelfRegistrationParams**](WebSelfRegistrationParams.md)|  | 

### Return type

[**WebSelfRegistrationParams**](WebSelfRegistrationParams.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

