# thingsboard_client.api.OwnerControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeOwnerToCustomer**](OwnerControllerApi.md#changeownertocustomer) | **POST** /api/owner/CUSTOMER/{ownerId}/{entityType}/{entityId} | Change owner to customer (changeOwnerToCustomer)
[**changeOwnerToTenant**](OwnerControllerApi.md#changeownertotenant) | **POST** /api/owner/TENANT/{ownerId}/{entityType}/{entityId} | Change owner to tenant (changeOwnerToTenant)


# **changeOwnerToCustomer**
> changeOwnerToCustomer(ownerId, entityType, entityId, requestBody)

Change owner to customer (changeOwnerToCustomer)

Tenant/Customer changes Owner to Customer or sub-Customer. Sub-Customer can`t perform this operation!   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOwnerControllerApi();
final String ownerId = ownerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final BuiltList<String> requestBody = ; // BuiltList<String> | 

try {
    api.changeOwnerToCustomer(ownerId, entityType, entityId, requestBody);
} on DioException catch (e) {
    print('Exception when calling OwnerControllerApi->changeOwnerToCustomer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **requestBody** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changeOwnerToTenant**
> changeOwnerToTenant(ownerId, entityType, entityId, requestBody)

Change owner to tenant (changeOwnerToTenant)

Tenant changes Owner from Customer or sub-Customer to Tenant.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOwnerControllerApi();
final String ownerId = ownerId_example; // String | A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final BuiltList<String> requestBody = ; // BuiltList<String> | 

try {
    api.changeOwnerToTenant(ownerId, entityType, entityId, requestBody);
} on DioException catch (e) {
    print('Exception when calling OwnerControllerApi->changeOwnerToTenant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerId** | **String**| A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **requestBody** | [**BuiltList&lt;String&gt;**](String.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

