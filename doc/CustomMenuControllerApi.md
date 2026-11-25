# thingsboard_client.api.CustomMenuControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomMenu**](CustomMenuControllerApi.md#createcustommenu) | **POST** /api/customMenu | Create Custom Menu (createCustomMenu)
[**deleteCustomMenu**](CustomMenuControllerApi.md#deletecustommenu) | **DELETE** /api/customMenu/{customMenuId} | Delete custom menu (deleteCustomMenu)
[**getCustomMenu**](CustomMenuControllerApi.md#getcustommenu) | **GET** /api/customMenu | Get end-user Custom Menu configuration (getCustomMenu)
[**getCustomMenuAssigneeList**](CustomMenuControllerApi.md#getcustommenuassigneelist) | **GET** /api/customMenu/{customMenuId}/assigneeList | Get Custom Menu assignee list (getCustomMenuAssigneeList)
[**getCustomMenuConfig**](CustomMenuControllerApi.md#getcustommenuconfig) | **GET** /api/customMenu/{customMenuId}/config | Get Custom Menu configuration by id (getCustomMenuConfig)
[**getCustomMenuInfoById**](CustomMenuControllerApi.md#getcustommenuinfobyid) | **GET** /api/customMenu/{customMenuId}/info | Get Custom Menu Info (getCustomMenuInfoById)
[**getCustomMenuInfos**](CustomMenuControllerApi.md#getcustommenuinfos) | **GET** /api/customMenu/infos | Get all custom menus configured at user level (getCustomMenuInfos)
[**updateCustomMenuAssigneeList**](CustomMenuControllerApi.md#updatecustommenuassigneelist) | **PUT** /api/customMenu/{id}/assign/{assigneeType} | Update custom menu assignee list (updateCustomMenuAssigneeList)
[**updateCustomMenuConfig**](CustomMenuControllerApi.md#updatecustommenuconfig) | **PUT** /api/customMenu/{customMenuId}/config | Update Custom Menu configuration based on the provided Custom Menu Id (updateCustomMenuConfig)
[**updateCustomMenuName**](CustomMenuControllerApi.md#updatecustommenuname) | **PUT** /api/customMenu/{customMenuId}/name | Update Custom Menu name based on the provided Custom Menu Id (updateCustomMenuName)


# **createCustomMenu**
> CustomMenu createCustomMenu(customMenuInfo, assignToList, force)

Create Custom Menu (createCustomMenu)

The api is designed to create Custom Menu without configuration. Is not applicable for update.  Security check is performed to verify that the user has 'WRITE' permission for the custom menu with specified id.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomMenuControllerApi();
final CustomMenuInfo customMenuInfo = ; // CustomMenuInfo | 
final BuiltList<String> assignToList = ; // BuiltList<String> | A list of entity ids, separated by comma ','
final bool force = true; // bool | Use force if you want to create default menu that conflicts with the existing one (old one will be update NO_ASSIGN assignee type)

try {
    final response = api.createCustomMenu(customMenuInfo, assignToList, force);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CustomMenuControllerApi->createCustomMenu: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customMenuInfo** | [**CustomMenuInfo**](CustomMenuInfo.md)|  | 
 **assignToList** | [**BuiltList&lt;String&gt;**](String.md)| A list of entity ids, separated by comma ',' | [optional] 
 **force** | **bool**| Use force if you want to create default menu that conflicts with the existing one (old one will be update NO_ASSIGN assignee type) | [optional] 

### Return type

[**CustomMenu**](CustomMenu.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCustomMenu**
> CustomMenuDeleteResult deleteCustomMenu(customMenuId, force)

Delete custom menu (deleteCustomMenu)

Deletes the custom menu based on the provided Custom Menu Id. Referencing non-existing custom menu Id will cause an error. If the custom menu is assigned to the list of users or customers bad request is returned.To delete a custom menu that has assignee list set 'force' request param to true 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomMenuControllerApi();
final String customMenuId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the custom menu id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final bool force = true; // bool | Force set to true will unassign menu before deletion

try {
    final response = api.deleteCustomMenu(customMenuId, force);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CustomMenuControllerApi->deleteCustomMenu: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customMenuId** | **String**| A string value representing the custom menu id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **force** | **bool**| Force set to true will unassign menu before deletion | [optional] 

### Return type

[**CustomMenuDeleteResult**](CustomMenuDeleteResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomMenu**
> CustomMenuConfig getCustomMenu(ifNoneMatch)

Get end-user Custom Menu configuration (getCustomMenu)

Fetch the Custom Menu configuration object for the authorized user. The custom menu is configured in the white labeling parameters and has one of three user scopes:SYSTEM, TENANT, CUSTOMER and four assignee type: NO_ASSIGN, ALL, CUSTOMERS, USERS.There are three default (assignee type: ALL) menus configured on the system level for each scope and if no other menu is configured for user, system configuration of the corresponding scope will be applied.If a custom menu with assignee type ALL is configured on the tenant level, it overrides the menu configuration of the corresponding scope on the system level. If a custom menu with assignee type USER_GROUPS is configured on the tenant level, it overrides default tenant menu.If a custom menu with assignee type CUSTOMERS is configured on tenant level for specific customer, it will be applied to all customer users.If a custom menu with assignee type ALL is configured on the customer level, it overrides the menu assigned on tenant level.If a custom menu with assignee type USER_GROUPS is configured on the customer level, it overrides default customer menu.If a custom menu is assigned to specific user, it overrides all other configuration.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomMenuControllerApi();
final String ifNoneMatch = ifNoneMatch_example; // String | 

try {
    final response = api.getCustomMenu(ifNoneMatch);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CustomMenuControllerApi->getCustomMenu: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ifNoneMatch** | **String**|  | [optional] 

### Return type

[**CustomMenuConfig**](CustomMenuConfig.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomMenuAssigneeList**
> BuiltList<EntityInfo> getCustomMenuAssigneeList(customMenuId)

Get Custom Menu assignee list (getCustomMenuAssigneeList)

Fetch the list of Entity Info objects that represents users or customers, or empty list if custom menu is not assigned or has NO_ASSIGN/ALL assignee type.  Security check is performed to verify that the user has 'READ' permission for the custom menu with specified id.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomMenuControllerApi();
final String customMenuId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the custom menu id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getCustomMenuAssigneeList(customMenuId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CustomMenuControllerApi->getCustomMenuAssigneeList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customMenuId** | **String**| A string value representing the custom menu id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**BuiltList&lt;EntityInfo&gt;**](EntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomMenuConfig**
> CustomMenuConfig getCustomMenuConfig(customMenuId)

Get Custom Menu configuration by id (getCustomMenuConfig)

Fetch the Custom Menu configuration based on the provided Custom Menu Id.   Security check is performed to verify that the user has 'READ' permission for the custom menu with specified id.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomMenuControllerApi();
final String customMenuId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the custom menu id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getCustomMenuConfig(customMenuId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CustomMenuControllerApi->getCustomMenuConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customMenuId** | **String**| A string value representing the custom menu id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**CustomMenuConfig**](CustomMenuConfig.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomMenuInfoById**
> CustomMenuInfo getCustomMenuInfoById(customMenuId)

Get Custom Menu Info (getCustomMenuInfoById)

Fetch the Custom Menu Info object based on the provided Custom Menu Id.   Security check is performed to verify that the user has 'READ' permission for the custom menu with specified id.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomMenuControllerApi();
final String customMenuId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the custom menu id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getCustomMenuInfoById(customMenuId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CustomMenuControllerApi->getCustomMenuInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customMenuId** | **String**| A string value representing the custom menu id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**CustomMenuInfo**](CustomMenuInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomMenuInfos**
> PageDataCustomMenuInfo getCustomMenuInfos(pageSize, page, scope, assigneeType, textSearch, sortProperty, sortOrder)

Get all custom menus configured at user level (getCustomMenuInfos)

Returns a page of custom menu info objects owned by the tenant or the customer of a current user, scope and assigneeType request parameters can be used to filter the result.  Security check is performed to verify that the user has 'READ' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomMenuControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final CMScope scope = ; // CMScope | Custom menu scope.
final CMAssigneeType assigneeType = ; // CMAssigneeType | Custom menu assignee type.
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the custom menu name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getCustomMenuInfos(pageSize, page, scope, assigneeType, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CustomMenuControllerApi->getCustomMenuInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **scope** | [**CMScope**](.md)| Custom menu scope. | [optional] 
 **assigneeType** | [**CMAssigneeType**](.md)| Custom menu assignee type. | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the custom menu name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataCustomMenuInfo**](PageDataCustomMenuInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomMenuAssigneeList**
> updateCustomMenuAssigneeList(id, assigneeType, force, requestBody)

Update custom menu assignee list (updateCustomMenuAssigneeList)

The api designed to update the list of assignees or assignee type based on the provided Custom Menu Id. To change assignee type, put new assignee type in path parameter.  Security check is performed to verify that the user has 'WRITE' permission for the custom menu with specified id.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomMenuControllerApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final CMAssigneeType assigneeType = ; // CMAssigneeType | 
final bool force = true; // bool | Use force if you want to override default menu
final BuiltList<String> requestBody = ; // BuiltList<String> | 

try {
    api.updateCustomMenuAssigneeList(id, assigneeType, force, requestBody);
} on DioException catch (e) {
    print('Exception when calling CustomMenuControllerApi->updateCustomMenuAssigneeList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **assigneeType** | [**CMAssigneeType**](.md)|  | 
 **force** | **bool**| Use force if you want to override default menu | [optional] 
 **requestBody** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomMenuConfig**
> CustomMenu updateCustomMenuConfig(customMenuId, customMenuConfig)

Update Custom Menu configuration based on the provided Custom Menu Id (updateCustomMenuConfig)

  Security check is performed to verify that the user has 'WRITE' permission for the custom menu with specified id.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomMenuControllerApi();
final String customMenuId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the custom menu id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final CustomMenuConfig customMenuConfig = ; // CustomMenuConfig | 

try {
    final response = api.updateCustomMenuConfig(customMenuId, customMenuConfig);
    print(response);
} on DioException catch (e) {
    print('Exception when calling CustomMenuControllerApi->updateCustomMenuConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customMenuId** | **String**| A string value representing the custom menu id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **customMenuConfig** | [**CustomMenuConfig**](CustomMenuConfig.md)|  | 

### Return type

[**CustomMenu**](CustomMenu.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCustomMenuName**
> updateCustomMenuName(customMenuId, body)

Update Custom Menu name based on the provided Custom Menu Id (updateCustomMenuName)

  Security check is performed to verify that the user has 'WRITE' permission for the custom menu with specified id.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getCustomMenuControllerApi();
final String customMenuId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the custom menu id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String body = body_example; // String | 

try {
    api.updateCustomMenuName(customMenuId, body);
} on DioException catch (e) {
    print('Exception when calling CustomMenuControllerApi->updateCustomMenuName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customMenuId** | **String**| A string value representing the custom menu id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **body** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

