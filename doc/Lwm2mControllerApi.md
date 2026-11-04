# thingsboard_client.api.Lwm2mControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLwm2mBootstrapSecurityInfo**](Lwm2mControllerApi.md#getlwm2mbootstrapsecurityinfo) | **GET** /api/lwm2m/deviceProfile/bootstrap/{isBootstrapServer} | Get Lwm2m Bootstrap SecurityInfo (getLwm2mBootstrapSecurityInfo)
[**saveLwm2mDeviceWithCredentials**](Lwm2mControllerApi.md#savelwm2mdevicewithcredentials) | **POST** /api/lwm2m/device-credentials | Save LwM2M device with credentials (saveLwm2mDeviceWithCredentials)


# **getLwm2mBootstrapSecurityInfo**
> LwM2MServerSecurityConfigDefault getLwm2mBootstrapSecurityInfo(isBootstrapServer)

Get Lwm2m Bootstrap SecurityInfo (getLwm2mBootstrapSecurityInfo)

Get the Lwm2m Bootstrap SecurityInfo object (of the current server) based on the provided isBootstrapServer parameter. If isBootstrapServer == true, get the parameters of the current Bootstrap Server. If isBootstrapServer == false, get the parameters of the current Lwm2m Server. Used for client settings when starting the client in Bootstrap mode.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getLwm2mControllerApi();
final bool isBootstrapServer = true; // bool | A Boolean value representing the Server SecurityInfo for future Bootstrap client mode settings. Values: 'true' for Bootstrap Server; 'false' for Lwm2m Server. 

try {
    final response = api.getLwm2mBootstrapSecurityInfo(isBootstrapServer);
    print(response);
} on DioException catch (e) {
    print('Exception when calling Lwm2mControllerApi->getLwm2mBootstrapSecurityInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isBootstrapServer** | **bool**| A Boolean value representing the Server SecurityInfo for future Bootstrap client mode settings. Values: 'true' for Bootstrap Server; 'false' for Lwm2m Server.  | 

### Return type

[**LwM2MServerSecurityConfigDefault**](LwM2MServerSecurityConfigDefault.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveLwm2mDeviceWithCredentials**
> Device saveLwm2mDeviceWithCredentials(requestBody, entityGroupId)

Save LwM2M device with credentials (saveLwm2mDeviceWithCredentials)

Deprecated.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getLwm2mControllerApi();
final BuiltMap<String, JsonObject?> requestBody = Object; // BuiltMap<String, JsonObject?> | 
final String entityGroupId = entityGroupId_example; // String | 

try {
    final response = api.saveLwm2mDeviceWithCredentials(requestBody, entityGroupId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling Lwm2mControllerApi->saveLwm2mDeviceWithCredentials: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**BuiltMap&lt;String, JsonObject?&gt;**](JsonObject.md)|  | 
 **entityGroupId** | **String**|  | [optional] 

### Return type

[**Device**](Device.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

