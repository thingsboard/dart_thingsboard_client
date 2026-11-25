# thingsboard_client.api.DashboardControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDashboard**](DashboardControllerApi.md#deletedashboard) | **DELETE** /api/dashboard/{dashboardId} | Delete the Dashboard (deleteDashboard)
[**exportGroupDashboards**](DashboardControllerApi.md#exportgroupdashboards) | **GET** /api/entityGroup/{entityGroupId}/dashboards/export | Export Dashboards (exportGroupDashboards)
[**getAllDashboards**](DashboardControllerApi.md#getalldashboards) | **GET** /api/dashboards/all | Get All Dashboards for current user (getAllDashboards)
[**getCustomerDashboards**](DashboardControllerApi.md#getcustomerdashboards) | **GET** /api/customer/{customerId}/dashboards | Get Customer Dashboards (getCustomerDashboards)
[**getCustomerHomeDashboardInfo**](DashboardControllerApi.md#getcustomerhomedashboardinfo) | **GET** /api/customer/dashboard/home/info | Get Customer Home Dashboard Info (getCustomerHomeDashboardInfo)
[**getDashboardById**](DashboardControllerApi.md#getdashboardbyid) | **GET** /api/dashboard/{dashboardId} | Get Dashboard (getDashboardById)
[**getDashboardInfoById**](DashboardControllerApi.md#getdashboardinfobyid) | **GET** /api/dashboard/info/{dashboardId} | Get Dashboard Info (getDashboardInfoById)
[**getDashboardsByEntityGroupId**](DashboardControllerApi.md#getdashboardsbyentitygroupid) | **GET** /api/entityGroup/{entityGroupId}/dashboards | Get dashboards by Entity Group Id (getDashboardsByEntityGroupId)
[**getDashboardsByIds**](DashboardControllerApi.md#getdashboardsbyids) | **GET** /api/dashboards | Get dashboards by Dashboard Ids (getDashboardsByIds)
[**getHomeDashboard**](DashboardControllerApi.md#gethomedashboard) | **GET** /api/dashboard/home | Get Home Dashboard (getHomeDashboard)
[**getHomeDashboardInfo**](DashboardControllerApi.md#gethomedashboardinfo) | **GET** /api/dashboard/home/info | Get Home Dashboard Info (getHomeDashboardInfo)
[**getMaxDatapointsLimit**](DashboardControllerApi.md#getmaxdatapointslimit) | **GET** /api/dashboard/maxDatapointsLimit | Get max data points limit (getMaxDatapointsLimit)
[**getServerTime**](DashboardControllerApi.md#getservertime) | **GET** /api/dashboard/serverTime | Get server time (getServerTime)
[**getTenantDashboards**](DashboardControllerApi.md#gettenantdashboards) | **GET** /api/tenant/dashboards | Get Tenant Dashboards (getTenantDashboards)
[**getTenantDashboardsByTenantId**](DashboardControllerApi.md#gettenantdashboardsbytenantid) | **GET** /api/tenant/{tenantId}/dashboards | Get Tenant Dashboards by System Administrator (getTenantDashboardsByTenantId)
[**getTenantHomeDashboardInfo**](DashboardControllerApi.md#gettenanthomedashboardinfo) | **GET** /api/tenant/dashboard/home/info | Get Tenant Home Dashboard Info (getTenantHomeDashboardInfo)
[**getUserDashboards**](DashboardControllerApi.md#getuserdashboards) | **GET** /api/user/dashboards | Get Dashboards (getUserDashboards)
[**importGroupDashboards**](DashboardControllerApi.md#importgroupdashboards) | **POST** /api/entityGroup/{entityGroupId}/dashboards/import | Import Dashboards (importGroupDashboards)
[**saveDashboard**](DashboardControllerApi.md#savedashboard) | **POST** /api/dashboard | Create Or Update Dashboard (saveDashboard)
[**setCustomerHomeDashboardInfo**](DashboardControllerApi.md#setcustomerhomedashboardinfo) | **POST** /api/customer/dashboard/home/info | Update Customer Home Dashboard Info (setCustomerHomeDashboardInfo)
[**setTenantHomeDashboardInfo**](DashboardControllerApi.md#settenanthomedashboardinfo) | **POST** /api/tenant/dashboard/home/info | Update Tenant Home Dashboard Info (getTenantHomeDashboardInfo)


# **deleteDashboard**
> deleteDashboard(dashboardId)

Delete the Dashboard (deleteDashboard)

Delete the Dashboard. Only users with 'TENANT_ADMIN') authority may delete the dashboards.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final String dashboardId = dashboardId_example; // String | A string value representing the dashboard id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteDashboard(dashboardId);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->deleteDashboard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboardId** | **String**| A string value representing the dashboard id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportGroupDashboards**
> BuiltList<Dashboard> exportGroupDashboards(entityGroupId, limit, acceptEncoding)

Export Dashboards (exportGroupDashboards)

Export the dashboards that belong to specified group id.The Dashboard object is a heavyweight object that contains information about the dashboard (e.g. title, image, assigned customers) and also configuration JSON (e.g. layouts, widgets, entity aliases).  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int limit = 56; // int | Limit of the entities to export
final String acceptEncoding = acceptEncoding_example; // String | 

try {
    final response = api.exportGroupDashboards(entityGroupId, limit, acceptEncoding);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->exportGroupDashboards: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **limit** | **int**| Limit of the entities to export | 
 **acceptEncoding** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;Dashboard&gt;**](Dashboard.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllDashboards**
> PageDataDashboardInfo getAllDashboards(pageSize, page, includeCustomers, textSearch, sortProperty, sortOrder)

Get All Dashboards for current user (getAllDashboards)

Returns a page of dashboard info objects owned by the tenant or the customer of a current user. The Dashboard Info object contains lightweight information about the dashboard (e.g. title, image, assigned customers) but does not contain the heavyweight configuration JSON. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final bool includeCustomers = true; // bool | Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the dashboard title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAllDashboards(pageSize, page, includeCustomers, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getAllDashboards: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **includeCustomers** | **bool**| Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers. | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the dashboard title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataDashboardInfo**](PageDataDashboardInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerDashboards**
> PageDataDashboardInfo getCustomerDashboards(customerId, pageSize, page, includeCustomers, textSearch, sortProperty, sortOrder)

Get Customer Dashboards (getCustomerDashboards)

Returns a page of dashboard info objects owned by the specified customer. The Dashboard Info object contains lightweight information about the dashboard (e.g. title, image, assigned customers) but does not contain the heavyweight configuration JSON. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final bool includeCustomers = true; // bool | Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the dashboard title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getCustomerDashboards(customerId, pageSize, page, includeCustomers, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getCustomerDashboards: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **includeCustomers** | **bool**| Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers. | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the dashboard title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataDashboardInfo**](PageDataDashboardInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerHomeDashboardInfo**
> HomeDashboardInfo getCustomerHomeDashboardInfo()

Get Customer Home Dashboard Info (getCustomerHomeDashboardInfo)

Returns the home dashboard info object that is configured as 'homeDashboardId' parameter in the 'additionalInfo' of the corresponding customer.   Available for users with 'CUSTOMER_USER' authority.  Security check is performed to verify that the user has 'READ' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();

try {
    final response = api.getCustomerHomeDashboardInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getCustomerHomeDashboardInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HomeDashboardInfo**](HomeDashboardInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDashboardById**
> Dashboard getDashboardById(dashboardId, includeResources, acceptEncoding)

Get Dashboard (getDashboardById)

Get the dashboard based on 'dashboardId' parameter. The Dashboard object is a heavyweight object that contains information about the dashboard (e.g. title, image, assigned customers) and also configuration JSON (e.g. layouts, widgets, entity aliases).  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final String dashboardId = dashboardId_example; // String | A string value representing the dashboard id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final bool includeResources = true; // bool | Export used resources and replace resource links with resource metadata
final String acceptEncoding = acceptEncoding_example; // String | 

try {
    final response = api.getDashboardById(dashboardId, includeResources, acceptEncoding);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getDashboardById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboardId** | **String**| A string value representing the dashboard id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **includeResources** | **bool**| Export used resources and replace resource links with resource metadata | [optional] 
 **acceptEncoding** | **String**|  | [optional] 

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDashboardInfoById**
> DashboardInfo getDashboardInfoById(dashboardId)

Get Dashboard Info (getDashboardInfoById)

Get the information about the dashboard based on 'dashboardId' parameter. The Dashboard Info object contains lightweight information about the dashboard (e.g. title, image, assigned customers) but does not contain the heavyweight configuration JSON.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final String dashboardId = dashboardId_example; // String | A string value representing the dashboard id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getDashboardInfoById(dashboardId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getDashboardInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboardId** | **String**| A string value representing the dashboard id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**DashboardInfo**](DashboardInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDashboardsByEntityGroupId**
> PageDataDashboardInfo getDashboardsByEntityGroupId(entityGroupId, pageSize, page, textSearch, sortProperty, sortOrder)

Get dashboards by Entity Group Id (getDashboardsByEntityGroupId)

Returns a page of Dashboard objects that belongs to specified Entity Group Id. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the dashboard title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getDashboardsByEntityGroupId(entityGroupId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getDashboardsByEntityGroupId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the dashboard title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataDashboardInfo**](PageDataDashboardInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDashboardsByIds**
> BuiltList<DashboardInfo> getDashboardsByIds(dashboardIds)

Get dashboards by Dashboard Ids (getDashboardsByIds)

Returns a list of DashboardInfo objects based on the provided ids. Filters the list based on the user permissions.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final BuiltList<String> dashboardIds = ; // BuiltList<String> | A list of dashboard ids, separated by comma ','

try {
    final response = api.getDashboardsByIds(dashboardIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getDashboardsByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboardIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of dashboard ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;DashboardInfo&gt;**](DashboardInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHomeDashboard**
> HomeDashboard getHomeDashboard(acceptEncoding)

Get Home Dashboard (getHomeDashboard)

Returns the home dashboard object that is configured as 'homeDashboardId' parameter in the 'additionalInfo' of the User. If 'homeDashboardId' parameter is not set on the User level and the User has authority 'CUSTOMER_USER', check the same parameter for the corresponding Customer. If 'homeDashboardId' parameter is not set on the User and Customer levels then checks the same parameter for the Tenant that owns the user. The Dashboard object is a heavyweight object that contains information about the dashboard (e.g. title, image, assigned customers) and also configuration JSON (e.g. layouts, widgets, entity aliases).  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final String acceptEncoding = acceptEncoding_example; // String | 

try {
    final response = api.getHomeDashboard(acceptEncoding);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getHomeDashboard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acceptEncoding** | **String**|  | [optional] 

### Return type

[**HomeDashboard**](HomeDashboard.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHomeDashboardInfo**
> HomeDashboardInfo getHomeDashboardInfo()

Get Home Dashboard Info (getHomeDashboardInfo)

Returns the home dashboard info object that is configured as 'homeDashboardId' parameter in the 'additionalInfo' of the User. If 'homeDashboardId' parameter is not set on the User level and the User has authority 'CUSTOMER_USER', check the same parameter for the corresponding Customer. If 'homeDashboardId' parameter is not set on the User and Customer levels then checks the same parameter for the Tenant that owns the user.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();

try {
    final response = api.getHomeDashboardInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getHomeDashboardInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HomeDashboardInfo**](HomeDashboardInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMaxDatapointsLimit**
> int getMaxDatapointsLimit()

Get max data points limit (getMaxDatapointsLimit)

Get the maximum number of data points that dashboard may request from the server per in a single subscription command. This value impacts the time window behavior. It impacts 'Max values' parameter in case user selects 'None' as 'Data aggregation function'. It also impacts the 'Grouping interval' in case of any other 'Data aggregation function' is selected. The actual value of the limit is configurable in the system configuration file.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();

try {
    final response = api.getMaxDatapointsLimit();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getMaxDatapointsLimit: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**int**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServerTime**
> int getServerTime()

Get server time (getServerTime)

Get the server time (milliseconds since January 1, 1970 UTC). Used to adjust view of the dashboards according to the difference between browser and server time.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();

try {
    final response = api.getServerTime();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getServerTime: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**int**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantDashboards**
> PageDataDashboardInfo getTenantDashboards(pageSize, page, mobile, textSearch, sortProperty, sortOrder)

Get Tenant Dashboards (getTenantDashboards)

Returns a page of dashboard info objects owned by the tenant of a current user. The Dashboard Info object contains lightweight information about the dashboard (e.g. title, image, assigned customers) but does not contain the heavyweight configuration JSON. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final bool mobile = true; // bool | Exclude dashboards that are hidden for mobile
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the dashboard title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantDashboards(pageSize, page, mobile, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getTenantDashboards: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **mobile** | **bool**| Exclude dashboards that are hidden for mobile | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the dashboard title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataDashboardInfo**](PageDataDashboardInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantDashboardsByTenantId**
> PageDataDashboardInfo getTenantDashboardsByTenantId(tenantId, pageSize, page, textSearch, sortProperty, sortOrder)

Get Tenant Dashboards by System Administrator (getTenantDashboardsByTenantId)

Returns a page of dashboard info objects owned by tenant. The Dashboard Info object contains lightweight information about the dashboard (e.g. title, image, assigned customers) but does not contain the heavyweight configuration JSON. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final String tenantId = tenantId_example; // String | A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the dashboard title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantDashboardsByTenantId(tenantId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getTenantDashboardsByTenantId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **String**| A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the dashboard title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataDashboardInfo**](PageDataDashboardInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantHomeDashboardInfo**
> HomeDashboardInfo getTenantHomeDashboardInfo()

Get Tenant Home Dashboard Info (getTenantHomeDashboardInfo)

Returns the home dashboard info object that is configured as 'homeDashboardId' parameter in the 'additionalInfo' of the corresponding tenant.   Available for users with 'TENANT_ADMIN' authority.  Security check is performed to verify that the user has 'READ' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();

try {
    final response = api.getTenantHomeDashboardInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getTenantHomeDashboardInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HomeDashboardInfo**](HomeDashboardInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserDashboards**
> PageDataDashboardInfo getUserDashboards(pageSize, page, mobile, textSearch, sortProperty, sortOrder, operation, userId)

Get Dashboards (getUserDashboards)

Returns a page of Dashboard Info objects available for specified or current user. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details. The Dashboard Info object contains lightweight information about the dashboard (e.g. title, image, assigned customers) but does not contain the heavyweight configuration JSON.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final bool mobile = true; // bool | Exclude dashboards that are hidden for mobile
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the dashboard title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final String operation = operation_example; // String | Filter by allowed operations for the current user
final String userId = userId_example; // String | A string value representing the user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getUserDashboards(pageSize, page, mobile, textSearch, sortProperty, sortOrder, operation, userId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->getUserDashboards: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **mobile** | **bool**| Exclude dashboards that are hidden for mobile | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the dashboard title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **operation** | **String**| Filter by allowed operations for the current user | [optional] 
 **userId** | **String**| A string value representing the user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 

### Return type

[**PageDataDashboardInfo**](PageDataDashboardInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importGroupDashboards**
> importGroupDashboards(entityGroupId, dashboard, overwrite)

Import Dashboards (importGroupDashboards)

Import the dashboards to specified group.The Dashboard object is a heavyweight object that contains information about the dashboard (e.g. title, image, assigned customers) and also configuration JSON (e.g. layouts, widgets, entity aliases).  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final BuiltList<Dashboard> dashboard = ; // BuiltList<Dashboard> | 
final bool overwrite = true; // bool | Overwrite dashboards with the same name

try {
    api.importGroupDashboards(entityGroupId, dashboard, overwrite);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->importGroupDashboards: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **dashboard** | [**BuiltList&lt;Dashboard&gt;**](Dashboard.md)|  | 
 **overwrite** | **bool**| Overwrite dashboards with the same name | [optional] [default to false]

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveDashboard**
> Dashboard saveDashboard(dashboard, entityGroupId, entityGroupIds, acceptEncoding)

Create Or Update Dashboard (saveDashboard)

Create or update the Dashboard. When creating dashboard, platform generates Dashboard Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Dashboard id will be present in the response. Specify existing Dashboard id to update the dashboard. Referencing non-existing dashboard Id will cause 'Not Found' error. Only users with 'TENANT_ADMIN') authority may create the dashboards.Remove 'id', 'tenantId' and optionally 'customerId' from the request body example (below) to create new Dashboard entity.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final Dashboard dashboard = ; // Dashboard | A JSON value representing the dashboard.
final String entityGroupId = entityGroupId_example; // String | 
final BuiltList<String> entityGroupIds = ; // BuiltList<String> | A list of entity group ids, separated by comma ','
final String acceptEncoding = acceptEncoding_example; // String | 

try {
    final response = api.saveDashboard(dashboard, entityGroupId, entityGroupIds, acceptEncoding);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->saveDashboard: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboard** | [**Dashboard**](Dashboard.md)| A JSON value representing the dashboard. | 
 **entityGroupId** | **String**|  | [optional] 
 **entityGroupIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of entity group ids, separated by comma ',' | [optional] 
 **acceptEncoding** | **String**|  | [optional] 

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setCustomerHomeDashboardInfo**
> setCustomerHomeDashboardInfo(homeDashboardInfo)

Update Customer Home Dashboard Info (setCustomerHomeDashboardInfo)

Update the home dashboard assignment for the current customer.   Available for users with 'CUSTOMER_USER' authority.  Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final HomeDashboardInfo homeDashboardInfo = ; // HomeDashboardInfo | 

try {
    api.setCustomerHomeDashboardInfo(homeDashboardInfo);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->setCustomerHomeDashboardInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **homeDashboardInfo** | [**HomeDashboardInfo**](HomeDashboardInfo.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setTenantHomeDashboardInfo**
> setTenantHomeDashboardInfo(homeDashboardInfo)

Update Tenant Home Dashboard Info (getTenantHomeDashboardInfo)

Update the home dashboard assignment for the current tenant.   Available for users with 'TENANT_ADMIN' authority.  Security check is performed to verify that the user has 'WRITE' permission for the white labeling resource.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardControllerApi();
final HomeDashboardInfo homeDashboardInfo = ; // HomeDashboardInfo | 

try {
    api.setTenantHomeDashboardInfo(homeDashboardInfo);
} on DioException catch (e) {
    print('Exception when calling DashboardControllerApi->setTenantHomeDashboardInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **homeDashboardInfo** | [**HomeDashboardInfo**](HomeDashboardInfo.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

