# thingsboard_client.api.TenantControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteTenant**](TenantControllerApi.md#deletetenant) | **DELETE** /api/tenant/{tenantId} | Delete Tenant (deleteTenant)
[**getTenantById**](TenantControllerApi.md#gettenantbyid) | **GET** /api/tenant/{tenantId} | Get Tenant (getTenantById)
[**getTenantInfoById**](TenantControllerApi.md#gettenantinfobyid) | **GET** /api/tenant/info/{tenantId} | Get Tenant Info (getTenantInfoById)
[**getTenantInfos**](TenantControllerApi.md#gettenantinfos) | **GET** /api/tenantInfos | Get Tenants Info (getTenants)
[**getTenants**](TenantControllerApi.md#gettenants) | **GET** /api/tenants | Get Tenants (getTenants)
[**getTenantsByIds**](TenantControllerApi.md#gettenantsbyids) | **GET** /api/tenants/list | Get Tenants By Ids (getTenantsByIds)
[**saveTenant**](TenantControllerApi.md#savetenant) | **POST** /api/tenant | Create Or update Tenant (saveTenant)


# **deleteTenant**
> deleteTenant(tenantId)

Delete Tenant (deleteTenant)

Deletes the tenant, it's customers, rule chains, devices and all other related entities. Referencing non-existing tenant Id will cause an error.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantControllerApi();
final String tenantId = tenantId_example; // String | A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteTenant(tenantId);
} on DioException catch (e) {
    print('Exception when calling TenantControllerApi->deleteTenant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **String**| A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantById**
> Tenant getTenantById(tenantId)

Get Tenant (getTenantById)

Fetch the Tenant object based on the provided Tenant Id.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantControllerApi();
final String tenantId = tenantId_example; // String | A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getTenantById(tenantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantControllerApi->getTenantById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **String**| A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Tenant**](Tenant.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantInfoById**
> TenantInfo getTenantInfoById(tenantId)

Get Tenant Info (getTenantInfoById)

Fetch the Tenant Info object based on the provided Tenant Id. The Tenant Info object extends regular Tenant object and includes Tenant Profile name.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantControllerApi();
final String tenantId = tenantId_example; // String | A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getTenantInfoById(tenantId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantControllerApi->getTenantInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **String**| A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**TenantInfo**](TenantInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantInfos**
> PageDataTenantInfo getTenantInfos(pageSize, page, textSearch, sortProperty, sortOrder)

Get Tenants Info (getTenants)

Returns a page of tenant info objects registered in the platform. The Tenant Info object extends regular Tenant object and includes Tenant Profile name. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the tenant name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantInfos(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantControllerApi->getTenantInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the tenant name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataTenantInfo**](PageDataTenantInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenants**
> PageDataTenant getTenants(pageSize, page, textSearch, sortProperty, sortOrder)

Get Tenants (getTenants)

Returns a page of tenants registered in the platform. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the tenant name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenants(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantControllerApi->getTenants: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the tenant name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataTenant**](PageDataTenant.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantsByIds**
> BuiltList<Tenant> getTenantsByIds(tenantIds)

Get Tenants By Ids (getTenantsByIds)

Fetch Tenant objects based on the provided ids.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantControllerApi();
final BuiltList<String> tenantIds = ; // BuiltList<String> | A list of tenant ids, separated by comma ','

try {
    final response = api.getTenantsByIds(tenantIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantControllerApi->getTenantsByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of tenant ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;Tenant&gt;**](Tenant.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveTenant**
> Tenant saveTenant(tenant)

Create Or update Tenant (saveTenant)

Create or update the Tenant. When creating tenant, platform generates Tenant Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). Default Rule Chain and Device profile are also generated for the new tenants automatically. The newly created Tenant Id will be present in the response. Specify existing Tenant Id id to update the Tenant. Referencing non-existing Tenant Id will cause 'Not Found' error.Remove 'id', 'tenantId' from the request body example (below) to create new Tenant entity.  Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantControllerApi();
final Tenant tenant = ; // Tenant | 

try {
    final response = api.saveTenant(tenant);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantControllerApi->saveTenant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant** | [**Tenant**](Tenant.md)|  | 

### Return type

[**Tenant**](Tenant.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

