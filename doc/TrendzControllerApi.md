# thingsboard_client.api.TrendzControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connectToTrendz**](TrendzControllerApi.md#connecttotrendz) | **POST** /api/trendz/connect | Connect to Trendz (connectToTrendz)
[**getTrendzConfig**](TrendzControllerApi.md#gettrendzconfig) | **GET** /api/trendz/config | Get Trendz configuration (getTrendzConfig)
[**getTrendzSyncResult**](TrendzControllerApi.md#gettrendzsyncresult) | **GET** /api/trendz/sync | Get Trendz synchronization result (getTrendzSyncResult)
[**performTrendzHealthcheck**](TrendzControllerApi.md#performtrendzhealthcheck) | **GET** /api/trendz/healthcheck | Perform Trendz healthcheck (performTrendzHealthcheck)
[**publicConnectToTrendz**](TrendzControllerApi.md#publicconnecttotrendz) | **POST** /api/trendz/public/connect | Public connect to Trendz (publicConnectToTrendz)
[**saveTrendzConfig**](TrendzControllerApi.md#savetrendzconfig) | **POST** /api/trendz/config | Save Trendz configuration (saveTrendzConfig)


# **connectToTrendz**
> TrendzSynchronizationResult connectToTrendz()

Connect to Trendz (connectToTrendz)

Initiates synchronization with Trendz (Connect button action). Uses Trendz configuration from settings or falls back to environment variables. Generates API key, saves configuration, checks Trendz version, and performs initial sync.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTrendzControllerApi();

try {
    final response = api.connectToTrendz();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendzControllerApi->connectToTrendz: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TrendzSynchronizationResult**](TrendzSynchronizationResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrendzConfig**
> TrendzConfiguration getTrendzConfig()

Get Trendz configuration (getTrendzConfig)

Retrieves Trendz configuration (URLs). Returns trendzUrl and tbUrl.  Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTrendzControllerApi();

try {
    final response = api.getTrendzConfig();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendzControllerApi->getTrendzConfig: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TrendzConfiguration**](TrendzConfiguration.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTrendzSyncResult**
> TrendzSynchronizationResult getTrendzSyncResult()

Get Trendz synchronization result (getTrendzSyncResult)

Retrieves Trendz synchronization result and status. Returns trendzVersion, updatedTs, resultType, and status.  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTrendzControllerApi();

try {
    final response = api.getTrendzSyncResult();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendzControllerApi->getTrendzSyncResult: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TrendzSynchronizationResult**](TrendzSynchronizationResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **performTrendzHealthcheck**
> TrendzHealthcheckResult performTrendzHealthcheck()

Perform Trendz healthcheck (performTrendzHealthcheck)

Performs healthcheck for Trendz integration. Returns version, type, status, and message. Can only be performed if Trendz is already synchronized and integration is enabled.  Available for any authorized user. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTrendzControllerApi();

try {
    final response = api.performTrendzHealthcheck();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendzControllerApi->performTrendzHealthcheck: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TrendzHealthcheckResult**](TrendzHealthcheckResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **publicConnectToTrendz**
> publicConnectToTrendz()

Public connect to Trendz (publicConnectToTrendz)

Initiates synchronization with Trendz if Trendz is not synced yet. Uses Trendz configuration from settings or falls back to environment variables. Generates API key, saves configuration, checks Trendz version, and performs initial sync.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTrendzControllerApi();

try {
    api.publicConnectToTrendz();
} on DioException catch (e) {
    print('Exception when calling TrendzControllerApi->publicConnectToTrendz: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveTrendzConfig**
> TrendzConfiguration saveTrendzConfig(trendzConfiguration)

Save Trendz configuration (saveTrendzConfig)

Saves Trendz configuration (URLs only, without triggering synchronization). Request body example: ```json {   \"trendzUrl\": \"https://trendz.domain.com\",   \"tbUrl\": \"https://thingsboard.domain.com\" } ```  Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTrendzControllerApi();
final TrendzConfiguration trendzConfiguration = ; // TrendzConfiguration | 

try {
    final response = api.saveTrendzConfig(trendzConfiguration);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TrendzControllerApi->saveTrendzConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trendzConfiguration** | [**TrendzConfiguration**](TrendzConfiguration.md)|  | 

### Return type

[**TrendzConfiguration**](TrendzConfiguration.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

