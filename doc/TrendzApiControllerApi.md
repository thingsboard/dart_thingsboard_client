# thingsboard_client.api.TrendzApiControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTrendzSummary**](TrendzApiControllerApi.md#gettrendzsummary) | **GET** /api/trendz/summary | Get Trendz Summary (getTrendzSummary)
[**getTrendzUsage**](TrendzApiControllerApi.md#gettrendzusage) | **GET** /api/trendz/usage | Get Trendz Usage (getTrendzUsage)
[**getTrendzViewById**](TrendzApiControllerApi.md#gettrendzviewbyid) | **GET** /api/trendz/view/{viewId} | Get Trendz View by Id (getTrendzViewById)
[**getTrendzViews**](TrendzApiControllerApi.md#gettrendzviews) | **GET** /api/trendz/view/all | Get Trendz Views (getTrendzViews)


# **getTrendzSummary**
> TrendzSummary getTrendzSummary()

Get Trendz Summary (getTrendzSummary)

Fetch the Trendz summary object. Can only be used if Trendz is already synchronized and integration is enabled.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTrendzApiControllerApi();

try {
    final response = api.getTrendzSummary();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendzApiControllerApi->getTrendzSummary: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TrendzSummary**](TrendzSummary.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrendzUsage**
> TrendzUsage getTrendzUsage()

Get Trendz Usage (getTrendzUsage)

Fetch the Trendz usage object. Can only be used if Trendz is already synchronized and integration is enabled.   Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTrendzApiControllerApi();

try {
    final response = api.getTrendzUsage();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendzApiControllerApi->getTrendzUsage: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TrendzUsage**](TrendzUsage.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrendzViewById**
> TrendzViewConfig getTrendzViewById(viewId)

Get Trendz View by Id (getTrendzViewById)

Fetch the Trendz View object based on the provided Trendz View Id. Can only be used if Trendz is already synchronized and integration is enabled.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTrendzApiControllerApi();
final String viewId = viewId_example; // String | A string value representing the Trendz view id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getTrendzViewById(viewId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendzApiControllerApi->getTrendzViewById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **viewId** | **String**| A string value representing the Trendz view id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**TrendzViewConfig**](TrendzViewConfig.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrendzViews**
> PageDataTrendzViewConfigLite getTrendzViews(pageSize, page, textSearch, sortProperty, sortOrder)

Get Trendz Views (getTrendzViews)

Returns a page of Trendz views that are available for the current user. Can only be used if Trendz is already synchronized and integration is enabled. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTrendzApiControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the Trendz view name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTrendzViews(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendzApiControllerApi->getTrendzViews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the Trendz view name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataTrendzViewConfigLite**](PageDataTrendzViewConfigLite.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

