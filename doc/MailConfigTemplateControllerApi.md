# thingsboard_client.api.MailConfigTemplateControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMailConfigTemplates**](MailConfigTemplateControllerApi.md#getmailconfigtemplates) | **GET** /api/mail/config/template | Get the list of all OAuth2 client registration templates (getMailConfigTemplates)  Available for users with &#39;SYS_ADMIN&#39; or &#39;TENANT_ADMIN&#39; authority.


# **getMailConfigTemplates**
> JsonObject getMailConfigTemplates()

Get the list of all OAuth2 client registration templates (getMailConfigTemplates)  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

Mail configuration template is set of default smtp settings for mail server that specific provider supports

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getMailConfigTemplateControllerApi();

try {
    final response = api.getMailConfigTemplates();
    print(response);
} on DioException catch (e) {
    print('Exception when calling MailConfigTemplateControllerApi->getMailConfigTemplates: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

