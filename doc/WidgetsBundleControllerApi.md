# thingsboard_client.api.WidgetsBundleControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteWidgetsBundle**](WidgetsBundleControllerApi.md#deletewidgetsbundle) | **DELETE** /api/widgetsBundle/{widgetsBundleId} | Delete widgets bundle (deleteWidgetsBundle)
[**getAllWidgetsBundles**](WidgetsBundleControllerApi.md#getallwidgetsbundles) | **GET** /api/widgetsBundles/all | Get all Widget Bundles (getAllWidgetsBundles)
[**getWidgetsBundleById**](WidgetsBundleControllerApi.md#getwidgetsbundlebyid) | **GET** /api/widgetsBundle/{widgetsBundleId} | Get Widget Bundle (getWidgetsBundleById)
[**getWidgetsBundles**](WidgetsBundleControllerApi.md#getwidgetsbundles) | **GET** /api/widgetsBundles | Get Widget Bundles (getWidgetsBundles)
[**getWidgetsBundlesList**](WidgetsBundleControllerApi.md#getwidgetsbundleslist) | **GET** /api/widgetsBundles/list | Get Widgets Bundles By Ids (getWidgetsBundlesList)
[**saveWidgetsBundle**](WidgetsBundleControllerApi.md#savewidgetsbundle) | **POST** /api/widgetsBundle | Create Or Update Widget Bundle (saveWidgetsBundle)
[**updateWidgetsBundleWidgetFqns**](WidgetsBundleControllerApi.md#updatewidgetsbundlewidgetfqns) | **POST** /api/widgetsBundle/{widgetsBundleId}/widgetTypeFqns | Update widgets bundle widgets list from widget type FQNs list (updateWidgetsBundleWidgetFqns)
[**updateWidgetsBundleWidgetTypes**](WidgetsBundleControllerApi.md#updatewidgetsbundlewidgettypes) | **POST** /api/widgetsBundle/{widgetsBundleId}/widgetTypes | Update widgets bundle widgets types list (updateWidgetsBundleWidgetTypes)


# **deleteWidgetsBundle**
> deleteWidgetsBundle(widgetsBundleId)

Delete widgets bundle (deleteWidgetsBundle)

Deletes the widget bundle. Referencing non-existing Widget Bundle Id will cause an error.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetsBundleControllerApi();
final String widgetsBundleId = widgetsBundleId_example; // String | A string value representing the widget bundle id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteWidgetsBundle(widgetsBundleId);
} on DioException catch (e) {
    print('Exception when calling WidgetsBundleControllerApi->deleteWidgetsBundle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetsBundleId** | **String**| A string value representing the widget bundle id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllWidgetsBundles**
> BuiltList<WidgetsBundle> getAllWidgetsBundles()

Get all Widget Bundles (getAllWidgetsBundles)

Returns an array of Widget Bundle objects that are available for current user.Widget Bundle represents a group(bundle) of widgets. Widgets are grouped into bundle by type or use case.    Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetsBundleControllerApi();

try {
    final response = api.getAllWidgetsBundles();
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetsBundleControllerApi->getAllWidgetsBundles: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;WidgetsBundle&gt;**](WidgetsBundle.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWidgetsBundleById**
> WidgetsBundle getWidgetsBundleById(widgetsBundleId, inlineImages)

Get Widget Bundle (getWidgetsBundleById)

Get the Widget Bundle based on the provided Widget Bundle Id. Widget Bundle represents a group(bundle) of widgets. Widgets are grouped into bundle by type or use case.   Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetsBundleControllerApi();
final String widgetsBundleId = widgetsBundleId_example; // String | A string value representing the widget bundle id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final bool inlineImages = true; // bool | Inline images as a data URL (Base64)

try {
    final response = api.getWidgetsBundleById(widgetsBundleId, inlineImages);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetsBundleControllerApi->getWidgetsBundleById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetsBundleId** | **String**| A string value representing the widget bundle id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **inlineImages** | **bool**| Inline images as a data URL (Base64) | [optional] 

### Return type

[**WidgetsBundle**](WidgetsBundle.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWidgetsBundles**
> PageDataWidgetsBundle getWidgetsBundles(pageSize, page, textSearch, sortProperty, sortOrder, tenantOnly, fullSearch, scadaFirst)

Get Widget Bundles (getWidgetsBundles)

Returns a page of Widget Bundle objects available for current user. Widget Bundle represents a group(bundle) of widgets. Widgets are grouped into bundle by type or use case.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetsBundleControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the widget bundle title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final bool tenantOnly = true; // bool | Optional boolean parameter to include only tenant-level bundles without system
final bool fullSearch = true; // bool | Optional boolean parameter indicating extended search of widget bundles by description and by name / description of related widget types
final bool scadaFirst = true; // bool | Optional boolean parameter indicating whether to fetch widgets bundles with SCADA symbols first. Works only when fullSearch parameter is enabled

try {
    final response = api.getWidgetsBundles(pageSize, page, textSearch, sortProperty, sortOrder, tenantOnly, fullSearch, scadaFirst);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetsBundleControllerApi->getWidgetsBundles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the widget bundle title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **tenantOnly** | **bool**| Optional boolean parameter to include only tenant-level bundles without system | [optional] 
 **fullSearch** | **bool**| Optional boolean parameter indicating extended search of widget bundles by description and by name / description of related widget types | [optional] 
 **scadaFirst** | **bool**| Optional boolean parameter indicating whether to fetch widgets bundles with SCADA symbols first. Works only when fullSearch parameter is enabled | [optional] 

### Return type

[**PageDataWidgetsBundle**](PageDataWidgetsBundle.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWidgetsBundlesList**
> BuiltList<WidgetsBundle> getWidgetsBundlesList(widgetsBundleIds)

Get Widgets Bundles By Ids (getWidgetsBundlesList)

Requested widgets bundles must be system level or owned by tenant of the user which is performing the request.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetsBundleControllerApi();
final BuiltList<String> widgetsBundleIds = ; // BuiltList<String> | A list of widgets bundle ids, separated by comma ','

try {
    final response = api.getWidgetsBundlesList(widgetsBundleIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetsBundleControllerApi->getWidgetsBundlesList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetsBundleIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of widgets bundle ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;WidgetsBundle&gt;**](WidgetsBundle.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveWidgetsBundle**
> WidgetsBundle saveWidgetsBundle(widgetsBundle)

Create Or Update Widget Bundle (saveWidgetsBundle)

Create or update the Widget Bundle. Widget Bundle represents a group(bundle) of widgets. Widgets are grouped into bundle by type or use case.  When creating the bundle, platform generates Widget Bundle Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Widget Bundle Id will be present in the response. Specify existing Widget Bundle id to update the Widget Bundle. Referencing non-existing Widget Bundle Id will cause 'Not Found' error.  Widget Bundle alias is unique in the scope of tenant. Special Tenant Id '13814000-1dd2-11b2-8080-808080808080' is automatically used if the create bundle request is sent by user with 'SYS_ADMIN' authority.Remove 'id', 'tenantId' from the request body example (below) to create new Widgets Bundle entity.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetsBundleControllerApi();
final WidgetsBundle widgetsBundle = ; // WidgetsBundle | 

try {
    final response = api.saveWidgetsBundle(widgetsBundle);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetsBundleControllerApi->saveWidgetsBundle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetsBundle** | [**WidgetsBundle**](WidgetsBundle.md)|  | 

### Return type

[**WidgetsBundle**](WidgetsBundle.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWidgetsBundleWidgetFqns**
> updateWidgetsBundleWidgetFqns(widgetsBundleId, requestBody)

Update widgets bundle widgets list from widget type FQNs list (updateWidgetsBundleWidgetFqns)

Updates widgets bundle widgets list from widget type FQNs list.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetsBundleControllerApi();
final String widgetsBundleId = widgetsBundleId_example; // String | A string value representing the widget bundle id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final BuiltList<String> requestBody = ; // BuiltList<String> | 

try {
    api.updateWidgetsBundleWidgetFqns(widgetsBundleId, requestBody);
} on DioException catch (e) {
    print('Exception when calling WidgetsBundleControllerApi->updateWidgetsBundleWidgetFqns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetsBundleId** | **String**| A string value representing the widget bundle id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **requestBody** | [**BuiltList&lt;String&gt;**](String.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWidgetsBundleWidgetTypes**
> updateWidgetsBundleWidgetTypes(widgetsBundleId, requestBody)

Update widgets bundle widgets types list (updateWidgetsBundleWidgetTypes)

Updates widgets bundle widgets list.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetsBundleControllerApi();
final String widgetsBundleId = widgetsBundleId_example; // String | A string value representing the widget bundle id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final BuiltList<String> requestBody = ; // BuiltList<String> | 

try {
    api.updateWidgetsBundleWidgetTypes(widgetsBundleId, requestBody);
} on DioException catch (e) {
    print('Exception when calling WidgetsBundleControllerApi->updateWidgetsBundleWidgetTypes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetsBundleId** | **String**| A string value representing the widget bundle id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **requestBody** | [**BuiltList&lt;String&gt;**](String.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

