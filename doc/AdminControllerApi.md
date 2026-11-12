# thingsboard_client.api.AdminControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**autoCommitSettingsExists**](AdminControllerApi.md#autocommitsettingsexists) | **GET** /api/admin/autoCommitSettings/exists | Check auto commit settings exists (autoCommitSettingsExists)
[**checkRepositoryAccess**](AdminControllerApi.md#checkrepositoryaccess) | **POST** /api/admin/repositorySettings/checkAccess | Check repository access (checkRepositoryAccess)
[**checkUpdates**](AdminControllerApi.md#checkupdates) | **GET** /api/admin/updates | Check for new Platform Releases (checkUpdates)
[**deleteAutoCommitSettings**](AdminControllerApi.md#deleteautocommitsettings) | **DELETE** /api/admin/autoCommitSettings | Delete auto commit settings (deleteAutoCommitSettings)
[**deleteRepositorySettings**](AdminControllerApi.md#deleterepositorysettings) | **DELETE** /api/admin/repositorySettings | Delete repository settings (deleteRepositorySettings)
[**getAdminSettings**](AdminControllerApi.md#getadminsettings) | **GET** /api/admin/settings/{key} | Get the Administration Settings object using key (getAdminSettings)
[**getAutoCommitSettings**](AdminControllerApi.md#getautocommitsettings) | **GET** /api/admin/autoCommitSettings | Get auto commit settings (getAutoCommitSettings)
[**getFeaturesInfo**](AdminControllerApi.md#getfeaturesinfo) | **GET** /api/admin/featuresInfo | Get features info (getFeaturesInfo)
[**getJwtSettings**](AdminControllerApi.md#getjwtsettings) | **GET** /api/admin/jwtSettings | Get the JWT Settings object (getJwtSettings)
[**getLicenseUsageInfo**](AdminControllerApi.md#getlicenseusageinfo) | **GET** /api/admin/licenseUsageInfo | Get license usage info (getLicenseUsageInfo)
[**getMailOAuth2AuthorizationUrl**](AdminControllerApi.md#getmailoauth2authorizationurl) | **GET** /api/admin/mail/oauth2/authorize | Redirect user to mail provider login page. 
[**getMailProcessingUrl**](AdminControllerApi.md#getmailprocessingurl) | **GET** /api/admin/mail/oauth2/loginProcessingUrl | Get OAuth2 log in processing URL (getMailProcessingUrl)
[**getRepositorySettings**](AdminControllerApi.md#getrepositorysettings) | **GET** /api/admin/repositorySettings | Get repository settings (getRepositorySettings)
[**getRepositorySettingsInfo**](AdminControllerApi.md#getrepositorysettingsinfo) | **GET** /api/admin/repositorySettings/info | getRepositorySettingsInfo
[**getSecuritySettings**](AdminControllerApi.md#getsecuritysettings) | **GET** /api/admin/securitySettings | Get the Security Settings object (getSecuritySettings)
[**getSubscriptionInfo**](AdminControllerApi.md#getsubscriptioninfo) | **GET** /api/admin/subscriptionInfo | Get subscription info (getSubscriptionInfo)
[**getSystemInfo**](AdminControllerApi.md#getsysteminfo) | **GET** /api/admin/systemInfo | Get system info (getSystemInfo)
[**handleMailOAuth2Callback**](AdminControllerApi.md#handlemailoauth2callback) | **GET** /api/admin/mail/oauth2/code | handleMailOAuth2Callback
[**refreshLicense**](AdminControllerApi.md#refreshlicense) | **POST** /api/admin/refreshLicense | Refresh license (refreshLicense)
[**repositorySettingsExists**](AdminControllerApi.md#repositorysettingsexists) | **GET** /api/admin/repositorySettings/exists | Check repository settings exists (repositorySettingsExists)
[**saveAdminSettings**](AdminControllerApi.md#saveadminsettings) | **POST** /api/admin/settings | Creates or Updates the Administration Settings (saveAdminSettings)
[**saveAutoCommitSettings**](AdminControllerApi.md#saveautocommitsettings) | **POST** /api/admin/autoCommitSettings | Creates or Updates the auto commit settings (saveAutoCommitSettings)
[**saveJwtSettings**](AdminControllerApi.md#savejwtsettings) | **POST** /api/admin/jwtSettings | Update JWT Settings (saveJwtSettings)
[**saveRepositorySettings**](AdminControllerApi.md#saverepositorysettings) | **POST** /api/admin/repositorySettings | Creates or Updates the repository settings (saveRepositorySettings)
[**saveSecuritySettings**](AdminControllerApi.md#savesecuritysettings) | **POST** /api/admin/securitySettings | Update Security Settings (saveSecuritySettings)
[**sendTestMail**](AdminControllerApi.md#sendtestmail) | **POST** /api/admin/settings/testMail | Send test email (sendTestMail)
[**sendTestSms**](AdminControllerApi.md#sendtestsms) | **POST** /api/admin/settings/testSms | Send test sms (sendTestSms)


# **autoCommitSettingsExists**
> bool autoCommitSettingsExists()

Check auto commit settings exists (autoCommitSettingsExists)

Check whether the auto commit settings exists.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.autoCommitSettingsExists();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->autoCommitSettingsExists: $e\n');
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

# **checkRepositoryAccess**
> checkRepositoryAccess(repositorySettings)

Check repository access (checkRepositoryAccess)

Attempts to check repository access.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();
final RepositorySettings repositorySettings = ; // RepositorySettings | 

try {
    api.checkRepositoryAccess(repositorySettings);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->checkRepositoryAccess: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repositorySettings** | [**RepositorySettings**](RepositorySettings.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkUpdates**
> UpdateMessage checkUpdates()

Check for new Platform Releases (checkUpdates)

Check notifications about new platform releases.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.checkUpdates();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->checkUpdates: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UpdateMessage**](UpdateMessage.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAutoCommitSettings**
> deleteAutoCommitSettings()

Delete auto commit settings (deleteAutoCommitSettings)

Deletes the auto commit settings.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    api.deleteAutoCommitSettings();
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->deleteAutoCommitSettings: $e\n');
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

# **deleteRepositorySettings**
> deleteRepositorySettings()

Delete repository settings (deleteRepositorySettings)

Deletes the repository settings.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    api.deleteRepositorySettings();
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->deleteRepositorySettings: $e\n');
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

# **getAdminSettings**
> AdminSettings getAdminSettings(key, systemByDefault)

Get the Administration Settings object using key (getAdminSettings)

Get the Administration Settings object using specified string key. Referencing non-existing key will cause an error.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.  Security check is performed to verify that the user has 'READ' permission for the 'ADMIN_SETTINGS' (for 'SYS_ADMIN' authority) or 'WHITE_LABELING' (for 'TENANT_ADMIN' authority) resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();
final String key = key_example; // String | A string value of the key (e.g. 'general' or 'mail').
final bool systemByDefault = true; // bool | Deprecated, not used.

try {
    final response = api.getAdminSettings(key, systemByDefault);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->getAdminSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| A string value of the key (e.g. 'general' or 'mail'). | 
 **systemByDefault** | **bool**| Deprecated, not used. | [optional] [default to false]

### Return type

[**AdminSettings**](AdminSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAutoCommitSettings**
> BuiltMap<String, AutoVersionCreateConfig> getAutoCommitSettings()

Get auto commit settings (getAutoCommitSettings)

Get the auto commit settings object.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.getAutoCommitSettings();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->getAutoCommitSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltMap&lt;String, AutoVersionCreateConfig&gt;**](AutoVersionCreateConfig.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFeaturesInfo**
> FeaturesInfo getFeaturesInfo()

Get features info (getFeaturesInfo)

Get information about enabled/disabled features.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.getFeaturesInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->getFeaturesInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**FeaturesInfo**](FeaturesInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJwtSettings**
> JwtSettings getJwtSettings()

Get the JWT Settings object (getJwtSettings)

Get the JWT Settings object that contains JWT token policy, etc.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.getJwtSettings();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->getJwtSettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JwtSettings**](JwtSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLicenseUsageInfo**
> LicenseUsageInfo getLicenseUsageInfo()

Get license usage info (getLicenseUsageInfo)

Get license usage info.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.getLicenseUsageInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->getLicenseUsageInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LicenseUsageInfo**](LicenseUsageInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailOAuth2AuthorizationUrl**
> String getMailOAuth2AuthorizationUrl()

Redirect user to mail provider login page. 

After user logged in and provided accessprovider sends authorization code to specified redirect uri.)

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.getMailOAuth2AuthorizationUrl();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->getMailOAuth2AuthorizationUrl: $e\n');
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
 - **Accept**: application/text, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailProcessingUrl**
> String getMailProcessingUrl()

Get OAuth2 log in processing URL (getMailProcessingUrl)

Returns the URL enclosed in double quotes. After successful authentication with OAuth2 provider and user consent for requested scope, it makes a redirect to this path so that the platform can do further log in processing and generating access tokens.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.getMailProcessingUrl();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->getMailProcessingUrl: $e\n');
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRepositorySettings**
> RepositorySettings getRepositorySettings()

Get repository settings (getRepositorySettings)

Get the repository settings object.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.getRepositorySettings();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->getRepositorySettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RepositorySettings**](RepositorySettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRepositorySettingsInfo**
> RepositorySettingsInfo getRepositorySettingsInfo()

getRepositorySettingsInfo

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.getRepositorySettingsInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->getRepositorySettingsInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**RepositorySettingsInfo**](RepositorySettingsInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSecuritySettings**
> SecuritySettings getSecuritySettings()

Get the Security Settings object (getSecuritySettings)

Get the Security Settings object that contains password policy, etc.  Available for users with 'SYS_ADMIN' authority.  Security check is performed to verify that the user has 'READ' permission for the 'ADMIN_SETTINGS' (for 'SYS_ADMIN' authority) or 'WHITE_LABELING' (for 'TENANT_ADMIN' authority) resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.getSecuritySettings();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->getSecuritySettings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SecuritySettings**](SecuritySettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubscriptionInfo**
> SubscriptionInfo getSubscriptionInfo()

Get subscription info (getSubscriptionInfo)

Get subscription info.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.getSubscriptionInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->getSubscriptionInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SubscriptionInfo**](SubscriptionInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSystemInfo**
> SystemInfo getSystemInfo()

Get system info (getSystemInfo)

Get main information about system.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.getSystemInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->getSystemInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemInfo**](SystemInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handleMailOAuth2Callback**
> handleMailOAuth2Callback(code, state)

handleMailOAuth2Callback

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();
final String code = code_example; // String | 
final String state = state_example; // String | 

try {
    api.handleMailOAuth2Callback(code, state);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->handleMailOAuth2Callback: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**|  | 
 **state** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshLicense**
> SubscriptionInfo refreshLicense()

Refresh license (refreshLicense)

Refresh license info.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.refreshLicense();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->refreshLicense: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SubscriptionInfo**](SubscriptionInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repositorySettingsExists**
> bool repositorySettingsExists()

Check repository settings exists (repositorySettingsExists)

Check whether the repository settings exists.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();

try {
    final response = api.repositorySettingsExists();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->repositorySettingsExists: $e\n');
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

# **saveAdminSettings**
> AdminSettings saveAdminSettings(adminSettings)

Creates or Updates the Administration Settings (saveAdminSettings)

Creates or Updates the Administration Settings. Platform generates random Administration Settings Id during settings creation. The Administration Settings Id will be present in the response. Specify the Administration Settings Id when you would like to update the Administration Settings. Referencing non-existing Administration Settings Id will cause an error.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.  Security check is performed to verify that the user has 'WRITE' permission for the 'ADMIN_SETTINGS' (for 'SYS_ADMIN' authority) or 'WHITE_LABELING' (for 'TENANT_ADMIN' authority) resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();
final AdminSettings adminSettings = ; // AdminSettings | A JSON value representing the Administration Settings.

try {
    final response = api.saveAdminSettings(adminSettings);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->saveAdminSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adminSettings** | [**AdminSettings**](AdminSettings.md)| A JSON value representing the Administration Settings. | 

### Return type

[**AdminSettings**](AdminSettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveAutoCommitSettings**
> BuiltMap<String, AutoVersionCreateConfig> saveAutoCommitSettings(requestBody)

Creates or Updates the auto commit settings (saveAutoCommitSettings)

Creates or Updates the auto commit settings object.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();
final BuiltMap<String, AutoVersionCreateConfig> requestBody = Object; // BuiltMap<String, AutoVersionCreateConfig> | 

try {
    final response = api.saveAutoCommitSettings(requestBody);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->saveAutoCommitSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**BuiltMap&lt;String, AutoVersionCreateConfig&gt;**](AutoVersionCreateConfig.md)|  | 

### Return type

[**BuiltMap&lt;String, AutoVersionCreateConfig&gt;**](AutoVersionCreateConfig.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveJwtSettings**
> JwtPair saveJwtSettings(jwtSettings)

Update JWT Settings (saveJwtSettings)

Updates the JWT Settings object that contains JWT token policy, etc. The tokenSigningKey field is a Base64 encoded string.  Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();
final JwtSettings jwtSettings = ; // JwtSettings | 

try {
    final response = api.saveJwtSettings(jwtSettings);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->saveJwtSettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jwtSettings** | [**JwtSettings**](JwtSettings.md)|  | 

### Return type

[**JwtPair**](JwtPair.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveRepositorySettings**
> RepositorySettings saveRepositorySettings(repositorySettings)

Creates or Updates the repository settings (saveRepositorySettings)

Creates or Updates the repository settings object.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();
final RepositorySettings repositorySettings = ; // RepositorySettings | 

try {
    final response = api.saveRepositorySettings(repositorySettings);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->saveRepositorySettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repositorySettings** | [**RepositorySettings**](RepositorySettings.md)|  | 

### Return type

[**RepositorySettings**](RepositorySettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveSecuritySettings**
> SecuritySettings saveSecuritySettings(securitySettings)

Update Security Settings (saveSecuritySettings)

Updates the Security Settings object that contains password policy, etc.  Available for users with 'SYS_ADMIN' authority.  Security check is performed to verify that the user has 'WRITE' permission for the 'ADMIN_SETTINGS' (for 'SYS_ADMIN' authority) or 'WHITE_LABELING' (for 'TENANT_ADMIN' authority) resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();
final SecuritySettings securitySettings = ; // SecuritySettings | 

try {
    final response = api.saveSecuritySettings(securitySettings);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->saveSecuritySettings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **securitySettings** | [**SecuritySettings**](SecuritySettings.md)|  | 

### Return type

[**SecuritySettings**](SecuritySettings.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTestMail**
> sendTestMail(adminSettings)

Send test email (sendTestMail)

Attempts to send test email using Mail Settings provided as a parameter. Email is sent to the address specified in the profile of user who is performing the requestYou may change the 'To' email in the user profile of the System/Tenant Administrator.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.  Security check is performed to verify that the user has 'READ' permission for the 'ADMIN_SETTINGS' (for 'SYS_ADMIN' authority) or 'WHITE_LABELING' (for 'TENANT_ADMIN' authority) resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();
final AdminSettings adminSettings = ; // AdminSettings | 

try {
    api.sendTestMail(adminSettings);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->sendTestMail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **adminSettings** | [**AdminSettings**](AdminSettings.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendTestSms**
> sendTestSms(testSmsRequest)

Send test sms (sendTestSms)

Attempts to send test sms to the System Administrator User using SMS Settings and phone number provided as a parameters of the request.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.  Security check is performed to verify that the user has 'READ' permission for the 'ADMIN_SETTINGS' (for 'SYS_ADMIN' authority) or 'WHITE_LABELING' (for 'TENANT_ADMIN' authority) resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAdminControllerApi();
final TestSmsRequest testSmsRequest = ; // TestSmsRequest | 

try {
    api.sendTestSms(testSmsRequest);
} on DioException catch (e) {
    print('Exception when calling AdminControllerApi->sendTestSms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testSmsRequest** | [**TestSmsRequest**](TestSmsRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

