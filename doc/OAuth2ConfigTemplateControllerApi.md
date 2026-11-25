# thingsboard_client.api.OAuth2ConfigTemplateControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteClientRegistrationTemplate**](OAuth2ConfigTemplateControllerApi.md#deleteclientregistrationtemplate) | **DELETE** /api/oauth2/config/template/{clientRegistrationTemplateId} | Delete OAuth2 client registration template by id (deleteClientRegistrationTemplate)  Available for users with &#39;SYS_ADMIN&#39; authority.
[**getOAuth2ClientRegistrationTemplates**](OAuth2ConfigTemplateControllerApi.md#getoauth2clientregistrationtemplates) | **GET** /api/oauth2/config/template | Get the list of all OAuth2 client registration templates (getOAuth2ClientRegistrationTemplates)  Available for users with &#39;SYS_ADMIN&#39; or &#39;TENANT_ADMIN&#39; authority.
[**saveClientRegistrationTemplate**](OAuth2ConfigTemplateControllerApi.md#saveclientregistrationtemplate) | **POST** /api/oauth2/config/template | Create or update OAuth2 client registration template (saveClientRegistrationTemplate)  Available for users with &#39;SYS_ADMIN&#39; authority.


# **deleteClientRegistrationTemplate**
> deleteClientRegistrationTemplate(clientRegistrationTemplateId)

Delete OAuth2 client registration template by id (deleteClientRegistrationTemplate)  Available for users with 'SYS_ADMIN' authority.

Client registration template is OAuth2 provider configuration template with default settings for registering new OAuth2 clients

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOAuth2ConfigTemplateControllerApi();
final String clientRegistrationTemplateId = 139b1f81-2f5d-11ec-9dbe-9b627e1a88f4; // String | String representation of client registration template id to delete

try {
    api.deleteClientRegistrationTemplate(clientRegistrationTemplateId);
} on DioException catch (e) {
    print('Exception when calling OAuth2ConfigTemplateControllerApi->deleteClientRegistrationTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientRegistrationTemplateId** | **String**| String representation of client registration template id to delete | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuth2ClientRegistrationTemplates**
> BuiltList<OAuth2ClientRegistrationTemplate> getOAuth2ClientRegistrationTemplates()

Get the list of all OAuth2 client registration templates (getOAuth2ClientRegistrationTemplates)  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

Client registration template is OAuth2 provider configuration template with default settings for registering new OAuth2 clients

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOAuth2ConfigTemplateControllerApi();

try {
    final response = api.getOAuth2ClientRegistrationTemplates();
    print(response);
} on DioException catch (e) {
    print('Exception when calling OAuth2ConfigTemplateControllerApi->getOAuth2ClientRegistrationTemplates: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;OAuth2ClientRegistrationTemplate&gt;**](OAuth2ClientRegistrationTemplate.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveClientRegistrationTemplate**
> OAuth2ClientRegistrationTemplate saveClientRegistrationTemplate(oAuth2ClientRegistrationTemplate)

Create or update OAuth2 client registration template (saveClientRegistrationTemplate)  Available for users with 'SYS_ADMIN' authority.

Client registration template is OAuth2 provider configuration template with default settings for registering new OAuth2 clients

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOAuth2ConfigTemplateControllerApi();
final OAuth2ClientRegistrationTemplate oAuth2ClientRegistrationTemplate = ; // OAuth2ClientRegistrationTemplate | 

try {
    final response = api.saveClientRegistrationTemplate(oAuth2ClientRegistrationTemplate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OAuth2ConfigTemplateControllerApi->saveClientRegistrationTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **oAuth2ClientRegistrationTemplate** | [**OAuth2ClientRegistrationTemplate**](OAuth2ClientRegistrationTemplate.md)|  | 

### Return type

[**OAuth2ClientRegistrationTemplate**](OAuth2ClientRegistrationTemplate.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

