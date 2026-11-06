# thingsboard_client.api.DeviceGroupOtaPackageControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDeviceGroupOtaPackage**](DeviceGroupOtaPackageControllerApi.md#deletedevicegroupotapackage) | **DELETE** /api/deviceGroupOtaPackage/{id} | deleteDeviceGroupOtaPackage
[**getFirmwareById**](DeviceGroupOtaPackageControllerApi.md#getfirmwarebyid) | **GET** /api/deviceGroupOtaPackage/{groupId}/{firmwareType} | getFirmwareById
[**saveDeviceGroupOtaPackage**](DeviceGroupOtaPackageControllerApi.md#savedevicegroupotapackage) | **POST** /api/deviceGroupOtaPackage | saveDeviceGroupOtaPackage


# **deleteDeviceGroupOtaPackage**
> deleteDeviceGroupOtaPackage(id)

deleteDeviceGroupOtaPackage

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceGroupOtaPackageControllerApi();
final String id = id_example; // String | 

try {
    api.deleteDeviceGroupOtaPackage(id);
} on DioException catch (e) {
    print('Exception when calling DeviceGroupOtaPackageControllerApi->deleteDeviceGroupOtaPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFirmwareById**
> DeviceGroupOtaPackage getFirmwareById(groupId, firmwareType)

getFirmwareById

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceGroupOtaPackageControllerApi();
final String groupId = groupId_example; // String | 
final String firmwareType = firmwareType_example; // String | 

try {
    final response = api.getFirmwareById(groupId, firmwareType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceGroupOtaPackageControllerApi->getFirmwareById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**|  | 
 **firmwareType** | **String**|  | 

### Return type

[**DeviceGroupOtaPackage**](DeviceGroupOtaPackage.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveDeviceGroupOtaPackage**
> DeviceGroupOtaPackage saveDeviceGroupOtaPackage(deviceGroupOtaPackage)

saveDeviceGroupOtaPackage

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceGroupOtaPackageControllerApi();
final DeviceGroupOtaPackage deviceGroupOtaPackage = ; // DeviceGroupOtaPackage | 

try {
    final response = api.saveDeviceGroupOtaPackage(deviceGroupOtaPackage);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceGroupOtaPackageControllerApi->saveDeviceGroupOtaPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceGroupOtaPackage** | [**DeviceGroupOtaPackage**](DeviceGroupOtaPackage.md)|  | 

### Return type

[**DeviceGroupOtaPackage**](DeviceGroupOtaPackage.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

