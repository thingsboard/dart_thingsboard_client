# thingsboard_client.api.WhiteLabelingControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteCurrentLoginWhiteLabelParams**](WhiteLabelingControllerApi.md#deletecurrentloginwhitelabelparams) | **DELETE** /api/whiteLabel/currentLoginWhiteLabelParams | Delete Login White Labeling configuration (deleteCurrentLoginWhiteLabelParams)
[**deleteCurrentWhiteLabelParams**](WhiteLabelingControllerApi.md#deletecurrentwhitelabelparams) | **DELETE** /api/whiteLabel/currentWhiteLabelParams | Delete General White Labeling configuration (deleteCurrentWhiteLabelParams)
[**getCurrentLoginWhiteLabelParams**](WhiteLabelingControllerApi.md#getcurrentloginwhitelabelparams) | **GET** /api/whiteLabel/currentLoginWhiteLabelParams | Get Login White Labeling configuration (getCurrentWhiteLabelParams)
[**getCurrentWhiteLabelParams**](WhiteLabelingControllerApi.md#getcurrentwhitelabelparams) | **GET** /api/whiteLabel/currentWhiteLabelParams | Get White Labeling configuration (getCurrentWhiteLabelParams)
[**getLoginWhiteLabelParams**](WhiteLabelingControllerApi.md#getloginwhitelabelparams) | **GET** /api/noauth/whiteLabel/loginWhiteLabelParams | Get Login White Labeling parameters
[**getMailTemplates**](WhiteLabelingControllerApi.md#getmailtemplates) | **GET** /api/whiteLabel/mailTemplates | Get the Mail templates settings (getMailTemplates)
[**getWhiteLabelParams**](WhiteLabelingControllerApi.md#getwhitelabelparams) | **GET** /api/whiteLabel/whiteLabelParams | Get White Labeling parameters
[**isCustomerWhiteLabelingAllowed**](WhiteLabelingControllerApi.md#iscustomerwhitelabelingallowed) | **GET** /api/whiteLabel/isCustomerWhiteLabelingAllowed | Check Customer White Labeling Allowed
[**isWhiteLabelingAllowed**](WhiteLabelingControllerApi.md#iswhitelabelingallowed) | **GET** /api/whiteLabel/isWhiteLabelingAllowed | Check White Labeling Allowed
[**previewWhiteLabelParams**](WhiteLabelingControllerApi.md#previewwhitelabelparams) | **POST** /api/whiteLabel/previewWhiteLabelParams | Preview Login White Labeling configuration (saveWhiteLabelParams)
[**saveLoginWhiteLabelParams**](WhiteLabelingControllerApi.md#saveloginwhitelabelparams) | **POST** /api/whiteLabel/loginWhiteLabelParams | Create Or Update Login White Labeling configuration (saveWhiteLabelParams)
[**saveMailTemplates**](WhiteLabelingControllerApi.md#savemailtemplates) | **POST** /api/whiteLabel/mailTemplates | Save the Mail templates settings (saveMailTemplates)
[**saveWhiteLabelParams**](WhiteLabelingControllerApi.md#savewhitelabelparams) | **POST** /api/whiteLabel/whiteLabelParams | Create Or Update White Labeling configuration (saveWhiteLabelParams)


# **deleteCurrentLoginWhiteLabelParams**
> deleteCurrentLoginWhiteLabelParams(customerId)

Delete Login White Labeling configuration (deleteCurrentLoginWhiteLabelParams)

Delete the Login White Labeling configuration that corresponds to the authority of the user.   Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWhiteLabelingControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteCurrentLoginWhiteLabelParams(customerId);
} on DioException catch (e) {
    print('Exception when calling WhiteLabelingControllerApi->deleteCurrentLoginWhiteLabelParams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCurrentWhiteLabelParams**
> deleteCurrentWhiteLabelParams(customerId)

Delete General White Labeling configuration (deleteCurrentWhiteLabelParams)

Delete the White Labeling configuration that corresponds to the authority of the user.   Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWhiteLabelingControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteCurrentWhiteLabelParams(customerId);
} on DioException catch (e) {
    print('Exception when calling WhiteLabelingControllerApi->deleteCurrentWhiteLabelParams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentLoginWhiteLabelParams**
> LoginWhiteLabelingParams getCurrentLoginWhiteLabelParams(customerId)

Get Login White Labeling configuration (getCurrentWhiteLabelParams)

Fetch the Login  White Labeling configuration that corresponds to the authority of the user. The API call is designed to load the Login White Labeling configuration for edition. So, the result is NOT merged with the parent level White Labeling configuration. Let's assume there is a custom White Labeling  configured on a system level. And there is no custom White Labeling  items configured on a tenant level. In such a case, the API call will return default object for the tenant administrator.   Security check is performed to verify that the user has 'READ' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWhiteLabelingControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getCurrentLoginWhiteLabelParams(customerId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WhiteLabelingControllerApi->getCurrentLoginWhiteLabelParams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 

### Return type

[**LoginWhiteLabelingParams**](LoginWhiteLabelingParams.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentWhiteLabelParams**
> WhiteLabelingParams getCurrentWhiteLabelParams(customerId)

Get White Labeling configuration (getCurrentWhiteLabelParams)

Fetch the White Labeling configuration that corresponds to the authority of the user. The API call is designed to load the White Labeling configuration for edition. So, the result is NOT merged with the parent level White Labeling configuration. Let's assume there is a custom White Labeling  configured on a system level. And there is no custom White Labeling  items configured on a tenant level. In such a case, the API call will return default object for the tenant administrator.   Security check is performed to verify that the user has 'READ' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWhiteLabelingControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getCurrentWhiteLabelParams(customerId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WhiteLabelingControllerApi->getCurrentWhiteLabelParams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 

### Return type

[**WhiteLabelingParams**](WhiteLabelingParams.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLoginWhiteLabelParams**
> LoginWhiteLabelingParams getLoginWhiteLabelParams()

Get Login White Labeling parameters

Returns login white-labeling parameters based on the hostname from request.

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getWhiteLabelingControllerApi();

try {
    final response = api.getLoginWhiteLabelParams();
    print(response);
} on DioException catch (e) {
    print('Exception when calling WhiteLabelingControllerApi->getLoginWhiteLabelParams: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LoginWhiteLabelingParams**](LoginWhiteLabelingParams.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailTemplates**
> JsonObject getMailTemplates(systemByDefault)

Get the Mail templates settings (getMailTemplates)

Fetch Mail template settings.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.  Security check is performed to verify that the user has 'READ' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWhiteLabelingControllerApi();
final bool systemByDefault = true; // bool | Use system settings if settings are not defined on tenant level.

try {
    final response = api.getMailTemplates(systemByDefault);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WhiteLabelingControllerApi->getMailTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **systemByDefault** | **bool**| Use system settings if settings are not defined on tenant level. | [optional] [default to false]

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWhiteLabelParams**
> WhiteLabelingParams getWhiteLabelParams()

Get White Labeling parameters

Returns white-labeling parameters for the current user.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWhiteLabelingControllerApi();

try {
    final response = api.getWhiteLabelParams();
    print(response);
} on DioException catch (e) {
    print('Exception when calling WhiteLabelingControllerApi->getWhiteLabelParams: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WhiteLabelingParams**](WhiteLabelingParams.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isCustomerWhiteLabelingAllowed**
> bool isCustomerWhiteLabelingAllowed()

Check Customer White Labeling Allowed

Check if the White Labeling is enabled for the customers of the current tenant  Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWhiteLabelingControllerApi();

try {
    final response = api.isCustomerWhiteLabelingAllowed();
    print(response);
} on DioException catch (e) {
    print('Exception when calling WhiteLabelingControllerApi->isCustomerWhiteLabelingAllowed: $e\n');
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

# **isWhiteLabelingAllowed**
> bool isWhiteLabelingAllowed()

Check White Labeling Allowed

Check if the White Labeling is enabled for the current user owner (tenant or customer)  Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWhiteLabelingControllerApi();

try {
    final response = api.isWhiteLabelingAllowed();
    print(response);
} on DioException catch (e) {
    print('Exception when calling WhiteLabelingControllerApi->isWhiteLabelingAllowed: $e\n');
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

# **previewWhiteLabelParams**
> WhiteLabelingParams previewWhiteLabelParams(whiteLabelingParams)

Preview Login White Labeling configuration (saveWhiteLabelParams)

Merge the White Labeling configuration with the parent configuration and return the result.  Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWhiteLabelingControllerApi();
final WhiteLabelingParams whiteLabelingParams = ; // WhiteLabelingParams | 

try {
    final response = api.previewWhiteLabelParams(whiteLabelingParams);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WhiteLabelingControllerApi->previewWhiteLabelParams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **whiteLabelingParams** | [**WhiteLabelingParams**](WhiteLabelingParams.md)|  | 

### Return type

[**WhiteLabelingParams**](WhiteLabelingParams.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveLoginWhiteLabelParams**
> LoginWhiteLabelingParams saveLoginWhiteLabelParams(loginWhiteLabelingParams, customerId)

Create Or Update Login White Labeling configuration (saveWhiteLabelParams)

Creates or Updates the White Labeling configuration.  Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWhiteLabelingControllerApi();
final LoginWhiteLabelingParams loginWhiteLabelingParams = ; // LoginWhiteLabelingParams | 
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.saveLoginWhiteLabelParams(loginWhiteLabelingParams, customerId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WhiteLabelingControllerApi->saveLoginWhiteLabelParams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginWhiteLabelingParams** | [**LoginWhiteLabelingParams**](LoginWhiteLabelingParams.md)|  | 
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 

### Return type

[**LoginWhiteLabelingParams**](LoginWhiteLabelingParams.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveMailTemplates**
> JsonObject saveMailTemplates(body)

Save the Mail templates settings (saveMailTemplates)

Creates or Updates the Mail templates settings.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.  Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWhiteLabelingControllerApi();
final JsonObject body = ; // JsonObject | A JSON value representing the Administration Settings.

try {
    final response = api.saveMailTemplates(body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WhiteLabelingControllerApi->saveMailTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **JsonObject**| A JSON value representing the Administration Settings. | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveWhiteLabelParams**
> WhiteLabelingParams saveWhiteLabelParams(whiteLabelingParams, customerId)

Create Or Update White Labeling configuration (saveWhiteLabelParams)

Creates or Updates the White Labeling configuration.  Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWhiteLabelingControllerApi();
final WhiteLabelingParams whiteLabelingParams = ; // WhiteLabelingParams | 
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.saveWhiteLabelParams(whiteLabelingParams, customerId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WhiteLabelingControllerApi->saveWhiteLabelParams: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **whiteLabelingParams** | [**WhiteLabelingParams**](WhiteLabelingParams.md)|  | 
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 

### Return type

[**WhiteLabelingParams**](WhiteLabelingParams.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

