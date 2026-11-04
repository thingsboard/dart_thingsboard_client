# thingsboard_client.api.WidgetTypeControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteWidgetType**](WidgetTypeControllerApi.md#deletewidgettype) | **DELETE** /api/widgetType/{widgetTypeId} | Delete widget type (deleteWidgetType)
[**getBundleWidgetTypeFqns**](WidgetTypeControllerApi.md#getbundlewidgettypefqns) | **GET** /api/widgetTypeFqns | Get all Widget type fqns for specified Bundle (getBundleWidgetTypeFqns)
[**getBundleWidgetTypes**](WidgetTypeControllerApi.md#getbundlewidgettypes) | **GET** /api/widgetsBundle/{widgetsBundleId}/widgetTypes | Get all Widget types for specified Bundle (getBundleWidgetTypes)
[**getBundleWidgetTypesDetails**](WidgetTypeControllerApi.md#getbundlewidgettypesdetails) | **GET** /api/widgetTypesDetails | Get all Widget types details for specified Bundle (getBundleWidgetTypesDetails)
[**getBundleWidgetTypesInfos**](WidgetTypeControllerApi.md#getbundlewidgettypesinfos) | **GET** /api/widgetTypesInfos | Get Widget Type Info objects (getBundleWidgetTypesInfos)
[**getWidgetType**](WidgetTypeControllerApi.md#getwidgettype) | **GET** /api/widgetType | Get Widget Type (getWidgetType)
[**getWidgetTypeById**](WidgetTypeControllerApi.md#getwidgettypebyid) | **GET** /api/widgetType/{widgetTypeId} | Get Widget Type Details (getWidgetTypeById)
[**getWidgetTypeInfoById**](WidgetTypeControllerApi.md#getwidgettypeinfobyid) | **GET** /api/widgetTypeInfo/{widgetTypeId} | Get Widget Type Info (getWidgetTypeInfoById)
[**getWidgetTypes**](WidgetTypeControllerApi.md#getwidgettypes) | **GET** /api/widgetTypes | Get Widget Types (getWidgetTypes)
[**saveWidgetType**](WidgetTypeControllerApi.md#savewidgettype) | **POST** /api/widgetType | Create Or Update Widget Type (saveWidgetType)


# **deleteWidgetType**
> deleteWidgetType(widgetTypeId)

Delete widget type (deleteWidgetType)

Deletes the  Widget Type. Referencing non-existing Widget Type Id will cause an error.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetTypeControllerApi();
final String widgetTypeId = widgetTypeId_example; // String | A string value representing the widget type id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteWidgetType(widgetTypeId);
} on DioException catch (e) {
    print('Exception when calling WidgetTypeControllerApi->deleteWidgetType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetTypeId** | **String**| A string value representing the widget type id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBundleWidgetTypeFqns**
> BuiltList<String> getBundleWidgetTypeFqns(widgetsBundleId)

Get all Widget type fqns for specified Bundle (getBundleWidgetTypeFqns)

Returns an array of Widget Type fqns that belong to specified Widget Bundle.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetTypeControllerApi();
final String widgetsBundleId = widgetsBundleId_example; // String | Widget Bundle Id

try {
    final response = api.getBundleWidgetTypeFqns(widgetsBundleId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetTypeControllerApi->getBundleWidgetTypeFqns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetsBundleId** | **String**| Widget Bundle Id | 

### Return type

**BuiltList&lt;String&gt;**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBundleWidgetTypes**
> BuiltList<WidgetType> getBundleWidgetTypes(widgetsBundleId)

Get all Widget types for specified Bundle (getBundleWidgetTypes)

Returns an array of Widget Type objects that belong to specified Widget Bundle.Widget Type represents the template for widget creation. Widget Type and Widget are similar to class and object in OOP theory.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetTypeControllerApi();
final String widgetsBundleId = widgetsBundleId_example; // String | Widget Bundle Id

try {
    final response = api.getBundleWidgetTypes(widgetsBundleId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetTypeControllerApi->getBundleWidgetTypes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetsBundleId** | **String**| Widget Bundle Id | 

### Return type

[**BuiltList&lt;WidgetType&gt;**](WidgetType.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBundleWidgetTypesDetails**
> BuiltList<WidgetTypeDetails> getBundleWidgetTypesDetails(widgetsBundleId, includeResources)

Get all Widget types details for specified Bundle (getBundleWidgetTypesDetails)

Returns an array of Widget Type Details objects that belong to specified Widget Bundle.Widget Type Details extend Widget Type and add image and description properties. Those properties are useful to edit the Widget Type but they are not required for Dashboard rendering.    Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetTypeControllerApi();
final String widgetsBundleId = widgetsBundleId_example; // String | Widget Bundle Id
final bool includeResources = true; // bool | Export used resources and replace resource links with resource metadata

try {
    final response = api.getBundleWidgetTypesDetails(widgetsBundleId, includeResources);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetTypeControllerApi->getBundleWidgetTypesDetails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetsBundleId** | **String**| Widget Bundle Id | 
 **includeResources** | **bool**| Export used resources and replace resource links with resource metadata | [optional] 

### Return type

[**BuiltList&lt;WidgetTypeDetails&gt;**](WidgetTypeDetails.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBundleWidgetTypesInfos**
> PageDataWidgetTypeInfo getBundleWidgetTypesInfos(widgetsBundleId, pageSize, page, textSearch, sortProperty, sortOrder, fullSearch, deprecatedFilter, widgetTypeList)

Get Widget Type Info objects (getBundleWidgetTypesInfos)

Get the Widget Type Info objects based on the provided parameters. Widget Type Info is a lightweight object that represents Widget Type but does not contain the heavyweight widget descriptor JSON  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetTypeControllerApi();
final String widgetsBundleId = widgetsBundleId_example; // String | Widget Bundle Id
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the widget type name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final bool fullSearch = true; // bool | Optional boolean parameter indicating whether search widgets by description not only by name
final String deprecatedFilter = deprecatedFilter_example; // String | Optional string parameter indicating whether to include deprecated widgets
final BuiltList<String> widgetTypeList = ; // BuiltList<String> | A list of string values separated by comma ',' representing one of the widget type value

try {
    final response = api.getBundleWidgetTypesInfos(widgetsBundleId, pageSize, page, textSearch, sortProperty, sortOrder, fullSearch, deprecatedFilter, widgetTypeList);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetTypeControllerApi->getBundleWidgetTypesInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetsBundleId** | **String**| Widget Bundle Id | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the widget type name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **fullSearch** | **bool**| Optional boolean parameter indicating whether search widgets by description not only by name | [optional] 
 **deprecatedFilter** | **String**| Optional string parameter indicating whether to include deprecated widgets | [optional] 
 **widgetTypeList** | [**BuiltList&lt;String&gt;**](String.md)| A list of string values separated by comma ',' representing one of the widget type value | [optional] 

### Return type

[**PageDataWidgetTypeInfo**](PageDataWidgetTypeInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWidgetType**
> WidgetType getWidgetType(fqn)

Get Widget Type (getWidgetType)

Get the Widget Type by FQN. Widget Type represents the template for widget creation. Widget Type and Widget are similar to class and object in OOP theory.  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetTypeControllerApi();
final String fqn = fqn_example; // String | Widget Type fqn

try {
    final response = api.getWidgetType(fqn);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetTypeControllerApi->getWidgetType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fqn** | **String**| Widget Type fqn | 

### Return type

[**WidgetType**](WidgetType.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWidgetTypeById**
> WidgetTypeDetails getWidgetTypeById(widgetTypeId, includeResources)

Get Widget Type Details (getWidgetTypeById)

Get the Widget Type Details based on the provided Widget Type Id. Widget Type Details extend Widget Type and add image and description properties. Those properties are useful to edit the Widget Type but they are not required for Dashboard rendering.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetTypeControllerApi();
final String widgetTypeId = widgetTypeId_example; // String | A string value representing the widget type id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final bool includeResources = true; // bool | Export used resources and replace resource links with resource metadata

try {
    final response = api.getWidgetTypeById(widgetTypeId, includeResources);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetTypeControllerApi->getWidgetTypeById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetTypeId** | **String**| A string value representing the widget type id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **includeResources** | **bool**| Export used resources and replace resource links with resource metadata | [optional] 

### Return type

[**WidgetTypeDetails**](WidgetTypeDetails.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWidgetTypeInfoById**
> WidgetTypeInfo getWidgetTypeInfoById(widgetTypeId)

Get Widget Type Info (getWidgetTypeInfoById)

Get the Widget Type Info based on the provided Widget Type Id. Widget Type Details extend Widget Type and add image and description properties. Those properties are useful to edit the Widget Type but they are not required for Dashboard rendering.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetTypeControllerApi();
final String widgetTypeId = widgetTypeId_example; // String | A string value representing the widget type id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getWidgetTypeInfoById(widgetTypeId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetTypeControllerApi->getWidgetTypeInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetTypeId** | **String**| A string value representing the widget type id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**WidgetTypeInfo**](WidgetTypeInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWidgetTypes**
> PageDataWidgetTypeInfo getWidgetTypes(pageSize, page, textSearch, sortProperty, sortOrder, tenantOnly, fullSearch, deprecatedFilter, widgetTypeList, scadaFirst)

Get Widget Types (getWidgetTypes)

Returns a page of Widget Type objects available for current user. Widget Type represents the template for widget creation. Widget Type and Widget are similar to class and object in OOP theory. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetTypeControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the widget type name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final bool tenantOnly = true; // bool | Optional boolean parameter indicating whether only tenant widget types should be returned
final bool fullSearch = true; // bool | Optional boolean parameter indicating whether search widgets by description not only by name
final String deprecatedFilter = deprecatedFilter_example; // String | Optional string parameter indicating whether to include deprecated widgets
final BuiltList<String> widgetTypeList = ; // BuiltList<String> | A list of string values separated by comma ',' representing one of the widget type value
final bool scadaFirst = true; // bool | Optional boolean parameter indicating whether to fetch SCADA symbol widgets first

try {
    final response = api.getWidgetTypes(pageSize, page, textSearch, sortProperty, sortOrder, tenantOnly, fullSearch, deprecatedFilter, widgetTypeList, scadaFirst);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetTypeControllerApi->getWidgetTypes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the widget type name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **tenantOnly** | **bool**| Optional boolean parameter indicating whether only tenant widget types should be returned | [optional] 
 **fullSearch** | **bool**| Optional boolean parameter indicating whether search widgets by description not only by name | [optional] 
 **deprecatedFilter** | **String**| Optional string parameter indicating whether to include deprecated widgets | [optional] 
 **widgetTypeList** | [**BuiltList&lt;String&gt;**](String.md)| A list of string values separated by comma ',' representing one of the widget type value | [optional] 
 **scadaFirst** | **bool**| Optional boolean parameter indicating whether to fetch SCADA symbol widgets first | [optional] 

### Return type

[**PageDataWidgetTypeInfo**](PageDataWidgetTypeInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveWidgetType**
> WidgetTypeDetails saveWidgetType(widgetTypeDetails, updateExistingByFqn)

Create Or Update Widget Type (saveWidgetType)

Create or update the Widget Type. Widget Type represents the template for widget creation. Widget Type and Widget are similar to class and object in OOP theory. When creating the Widget Type, platform generates Widget Type Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Widget Type Id will be present in the response. Specify existing Widget Type id to update the Widget Type. Referencing non-existing Widget Type Id will cause 'Not Found' error.  Widget Type fqn is unique in the scope of System or Tenant. Special Tenant Id '13814000-1dd2-11b2-8080-808080808080' is automatically used if the create request is sent by user with 'SYS_ADMIN' authority.Remove 'id', 'tenantId' rom the request body example (below) to create new Widget Type entity.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getWidgetTypeControllerApi();
final WidgetTypeDetails widgetTypeDetails = ; // WidgetTypeDetails | 
final bool updateExistingByFqn = true; // bool | Optional boolean parameter indicating whether to update existing widget type by FQN if present instead of creating new one

try {
    final response = api.saveWidgetType(widgetTypeDetails, updateExistingByFqn);
    print(response);
} on DioException catch (e) {
    print('Exception when calling WidgetTypeControllerApi->saveWidgetType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **widgetTypeDetails** | [**WidgetTypeDetails**](WidgetTypeDetails.md)|  | 
 **updateExistingByFqn** | **bool**| Optional boolean parameter indicating whether to update existing widget type by FQN if present instead of creating new one | [optional] 

### Return type

[**WidgetTypeDetails**](WidgetTypeDetails.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

