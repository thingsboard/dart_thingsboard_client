# thingsboard_client.api.DeviceControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignDeviceToTenant**](DeviceControllerApi.md#assigndevicetotenant) | **POST** /api/tenant/{tenantId}/device/{deviceId} | Assign device to tenant (assignDeviceToTenant)
[**claimDevice**](DeviceControllerApi.md#claimdevice) | **POST** /api/customer/device/{deviceName}/claim | Claim device (claimDevice)
[**countByDeviceGroupAndEmptyOtaPackage**](DeviceControllerApi.md#countbydevicegroupandemptyotapackage) | **GET** /api/devices/count/{otaPackageType}/{otaPackageId}/{entityGroupId} | Count devices by device profile  (countByDeviceProfileAndEmptyOtaPackage)
[**countByDeviceProfileAndEmptyOtaPackage**](DeviceControllerApi.md#countbydeviceprofileandemptyotapackage) | **GET** /api/devices/count/{otaPackageType}/{deviceProfileId} | Count devices by device profile  (countByDeviceProfileAndEmptyOtaPackage)
[**deleteDevice**](DeviceControllerApi.md#deletedevice) | **DELETE** /api/device/{deviceId} | Delete device (deleteDevice)
[**findDevicesByQuery**](DeviceControllerApi.md#finddevicesbyquery) | **POST** /api/devices | Find related devices (findDevicesByQuery)
[**getAllDeviceInfos**](DeviceControllerApi.md#getalldeviceinfos) | **GET** /api/deviceInfos/all | Get All Device Infos for current user (getAllDeviceInfos)
[**getCustomerDeviceInfos**](DeviceControllerApi.md#getcustomerdeviceinfos) | **GET** /api/customer/{customerId}/deviceInfos | Get Customer Device Infos (getCustomerDeviceInfos)
[**getCustomerDevices**](DeviceControllerApi.md#getcustomerdevices) | **GET** /api/customer/{customerId}/devices | Get Customer Devices (getCustomerDevices)
[**getDeviceById**](DeviceControllerApi.md#getdevicebyid) | **GET** /api/device/{deviceId} | Get Device (getDeviceById)
[**getDeviceCredentialsByDeviceId**](DeviceControllerApi.md#getdevicecredentialsbydeviceid) | **GET** /api/device/{deviceId}/credentials | Get Device Credentials (getDeviceCredentialsByDeviceId)
[**getDeviceInfoById**](DeviceControllerApi.md#getdeviceinfobyid) | **GET** /api/device/info/{deviceId} | Get Device (getDeviceInfoById)
[**getDeviceTypes**](DeviceControllerApi.md#getdevicetypes) | **GET** /api/device/types | Get Device Types (getDeviceTypes)
[**getDevicesByEntityGroupId**](DeviceControllerApi.md#getdevicesbyentitygroupid) | **GET** /api/entityGroup/{entityGroupId}/devices | Get devices by Entity Group Id (getDevicesByEntityGroupId)
[**getDevicesByIds**](DeviceControllerApi.md#getdevicesbyids) | **GET** /api/devices | Get Devices By Ids (getDevicesByIds)
[**getTenantDeviceByName**](DeviceControllerApi.md#gettenantdevicebyname) | **GET** /api/tenant/device | Get Tenant Device (getTenantDevice)
[**getTenantDevices**](DeviceControllerApi.md#gettenantdevices) | **GET** /api/tenant/devices | Get Tenant Devices (getTenantDevices)
[**getUserDevices**](DeviceControllerApi.md#getuserdevices) | **GET** /api/user/devices | Get Devices (getUserDevices)
[**processDevicesBulkImport**](DeviceControllerApi.md#processdevicesbulkimport) | **POST** /api/device/bulk_import | Import the bulk of devices (processDevicesBulkImport)
[**reClaimDevice**](DeviceControllerApi.md#reclaimdevice) | **DELETE** /api/customer/device/{deviceName}/claim | Reclaim device (reClaimDevice)
[**saveDevice**](DeviceControllerApi.md#savedevice) | **POST** /api/device | Create Or Update Device (saveDevice)
[**saveDeviceWithCredentials**](DeviceControllerApi.md#savedevicewithcredentials) | **POST** /api/device-with-credentials | Create Device (saveDevice) with credentials 
[**updateDeviceCredentials**](DeviceControllerApi.md#updatedevicecredentials) | **POST** /api/device/credentials | Update device credentials (updateDeviceCredentials)


# **assignDeviceToTenant**
> Device assignDeviceToTenant(tenantId, deviceId)

Assign device to tenant (assignDeviceToTenant)

Creates assignment of the device to tenant. Thereafter tenant will be able to reassign the device to a customer.  Available for users with 'TENANT_ADMIN' authority. Security check is performed to verify that the user has 'ASSIGN_TO_TENANT' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final String tenantId = tenantId_example; // String | A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.assignDeviceToTenant(tenantId, deviceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->assignDeviceToTenant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantId** | **String**| A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **deviceId** | **String**| A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Device**](Device.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **claimDevice**
> ClaimResult claimDevice(deviceName, subCustomerId, claimRequest)

Claim device (claimDevice)

Claiming makes it possible to assign a device to the specific customer using device/server side claiming data (in the form of secret key).To make this happen you have to provide unique device name and optional claiming data (it is needed only for device-side claiming).Once device is claimed, the customer becomes its owner and customer users may access device data as well as control the device.  In order to enable claiming devices feature a system parameter security.claim.allowClaimingByDefault should be set to true, otherwise a server-side claimingAllowed attribute with the value true is obligatory for provisioned devices.  See official documentation for more details regarding claiming.  Available for users with 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'CLAIM_DEVICES' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final String deviceName = deviceName_example; // String | Unique name of the device which is going to be claimed
final String subCustomerId = subCustomerId_example; // String | 
final ClaimRequest claimRequest = ; // ClaimRequest | 

try {
    final response = api.claimDevice(deviceName, subCustomerId, claimRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->claimDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceName** | **String**| Unique name of the device which is going to be claimed | 
 **subCustomerId** | **String**|  | [optional] 
 **claimRequest** | [**ClaimRequest**](ClaimRequest.md)|  | [optional] 

### Return type

[**ClaimResult**](ClaimResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **countByDeviceGroupAndEmptyOtaPackage**
> int countByDeviceGroupAndEmptyOtaPackage(otaPackageType, otaPackageId, entityGroupId)

Count devices by device profile  (countByDeviceProfileAndEmptyOtaPackage)

The platform gives an ability to load OTA (over-the-air) packages to devices. It can be done in two different ways: device scope or device profile scope.In the response you will find the number of devices with specified device profile, but without previously defined device scope OTA package. It can be useful when you want to define number of devices that will be affected with future OTA package  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final String otaPackageType = otaPackageType_example; // String | OTA package type
final String otaPackageId = otaPackageId_example; // String | 
final String entityGroupId = entityGroupId_example; // String | 

try {
    final response = api.countByDeviceGroupAndEmptyOtaPackage(otaPackageType, otaPackageId, entityGroupId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->countByDeviceGroupAndEmptyOtaPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **otaPackageType** | **String**| OTA package type | 
 **otaPackageId** | **String**|  | 
 **entityGroupId** | **String**|  | 

### Return type

**int**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **countByDeviceProfileAndEmptyOtaPackage**
> int countByDeviceProfileAndEmptyOtaPackage(otaPackageType, deviceProfileId)

Count devices by device profile  (countByDeviceProfileAndEmptyOtaPackage)

The platform gives an ability to load OTA (over-the-air) packages to devices. It can be done in two different ways: device scope or device profile scope.In the response you will find the number of devices with specified device profile, but without previously defined device scope OTA package. It can be useful when you want to define number of devices that will be affected with future OTA package  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final String otaPackageType = otaPackageType_example; // String | OTA package type
final String deviceProfileId = deviceProfileId_example; // String | Device Profile Id. I.g. '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.countByDeviceProfileAndEmptyOtaPackage(otaPackageType, deviceProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->countByDeviceProfileAndEmptyOtaPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **otaPackageType** | **String**| OTA package type | 
 **deviceProfileId** | **String**| Device Profile Id. I.g. '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

**int**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDevice**
> deleteDevice(deviceId)

Delete device (deleteDevice)

Deletes the device, it's credentials and all the relations (from and to the device). Referencing non-existing device Id will cause an error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'DELETE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteDevice(deviceId);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->deleteDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**| A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findDevicesByQuery**
> BuiltList<Device> findDevicesByQuery(deviceSearchQuery)

Find related devices (findDevicesByQuery)

Returns all devices that are related to the specific entity. The entity id, relation type, device types, depth of the search, and other query parameters defined using complex 'DeviceSearchQuery' object. See 'Model' tab of the Parameters for more info.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final DeviceSearchQuery deviceSearchQuery = ; // DeviceSearchQuery | 

try {
    final response = api.findDevicesByQuery(deviceSearchQuery);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->findDevicesByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceSearchQuery** | [**DeviceSearchQuery**](DeviceSearchQuery.md)|  | 

### Return type

[**BuiltList&lt;Device&gt;**](Device.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllDeviceInfos**
> PageDataDeviceInfo getAllDeviceInfos(pageSize, page, includeCustomers, deviceProfileId, active, textSearch, sortProperty, sortOrder)

Get All Device Infos for current user (getAllDeviceInfos)

Returns a page of device info objects owned by the tenant or the customer of a current user. Device Info is an extension of the default Device object that contains information about the owner name.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final bool includeCustomers = true; // bool | Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.
final String deviceProfileId = deviceProfileId_example; // String | A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final bool active = true; // bool | A boolean value representing the device active flag.
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the device name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAllDeviceInfos(pageSize, page, includeCustomers, deviceProfileId, active, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->getAllDeviceInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **includeCustomers** | **bool**| Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers. | [optional] 
 **deviceProfileId** | **String**| A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 
 **active** | **bool**| A boolean value representing the device active flag. | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the device name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataDeviceInfo**](PageDataDeviceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerDeviceInfos**
> PageDataDeviceInfo getCustomerDeviceInfos(customerId, pageSize, page, includeCustomers, deviceProfileId, active, textSearch, sortProperty, sortOrder)

Get Customer Device Infos (getCustomerDeviceInfos)

Returns a page of device info objects owned by the specified customer. Device Info is an extension of the default Device object that contains information about the owner name.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final bool includeCustomers = true; // bool | Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.
final String deviceProfileId = deviceProfileId_example; // String | A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final bool active = true; // bool | A boolean value representing the device active flag.
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the device name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getCustomerDeviceInfos(customerId, pageSize, page, includeCustomers, deviceProfileId, active, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->getCustomerDeviceInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **includeCustomers** | **bool**| Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers. | [optional] 
 **deviceProfileId** | **String**| A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | [optional] 
 **active** | **bool**| A boolean value representing the device active flag. | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the device name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataDeviceInfo**](PageDataDeviceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerDevices**
> PageDataDevice getCustomerDevices(customerId, pageSize, page, type, textSearch, sortProperty, sortOrder)

Get Customer Devices (getCustomerDevices)

Returns a page of devices objects assigned to customer. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final String customerId = customerId_example; // String | A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String type = type_example; // String | Device type as the name of the device profile
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the device name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getCustomerDevices(customerId, pageSize, page, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->getCustomerDevices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| A string value representing the customer id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **type** | **String**| Device type as the name of the device profile | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the device name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataDevice**](PageDataDevice.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceById**
> Device getDeviceById(deviceId)

Get Device (getDeviceById)

Fetch the Device object based on the provided Device Id.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getDeviceById(deviceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->getDeviceById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**| A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Device**](Device.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceCredentialsByDeviceId**
> DeviceCredentials getDeviceCredentialsByDeviceId(deviceId)

Get Device Credentials (getDeviceCredentialsByDeviceId)

If during device creation there wasn't specified any credentials, platform generates random 'ACCESS_TOKEN' credentials.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ_CREDENTIALS' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getDeviceCredentialsByDeviceId(deviceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->getDeviceCredentialsByDeviceId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**| A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**DeviceCredentials**](DeviceCredentials.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceInfoById**
> DeviceInfo getDeviceInfoById(deviceId)

Get Device (getDeviceInfoById)

Fetch the Device info object based on the provided Device Id. Device Info is an extension of the default Device object that contains information about the owner name.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final String deviceId = deviceId_example; // String | A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getDeviceInfoById(deviceId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->getDeviceInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceId** | **String**| A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**DeviceInfo**](DeviceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceTypes**
> BuiltList<EntitySubtype> getDeviceTypes()

Get Device Types (getDeviceTypes)

Deprecated. See 'getDeviceProfileNames' API from Device Profile Controller instead.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();

try {
    final response = api.getDeviceTypes();
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->getDeviceTypes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;EntitySubtype&gt;**](EntitySubtype.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevicesByEntityGroupId**
> PageDataDevice getDevicesByEntityGroupId(entityGroupId, pageSize, page, textSearch, sortProperty, sortOrder)

Get devices by Entity Group Id (getDevicesByEntityGroupId)

Returns a page of Device objects that belongs to specified Entity Group Id. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for specified group.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final String entityGroupId = entityGroupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the device name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getDevicesByEntityGroupId(entityGroupId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->getDevicesByEntityGroupId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityGroupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the device name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataDevice**](PageDataDevice.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevicesByIds**
> BuiltList<Device> getDevicesByIds(deviceIds)

Get Devices By Ids (getDevicesByIds)

Requested devices must be owned by tenant or assigned to customer which user is performing the request.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final BuiltList<String> deviceIds = ; // BuiltList<String> | A list of devices ids, separated by comma ','

try {
    final response = api.getDevicesByIds(deviceIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->getDevicesByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of devices ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;Device&gt;**](Device.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantDeviceByName**
> Device getTenantDeviceByName(deviceName)

Get Tenant Device (getTenantDevice)

Requested device must be owned by tenant that the user belongs to. Device name is an unique property of device. So it can be used to identify the device.  Available for users with 'TENANT_ADMIN' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final String deviceName = deviceName_example; // String | A string value representing the Device name.

try {
    final response = api.getTenantDeviceByName(deviceName);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->getTenantDeviceByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceName** | **String**| A string value representing the Device name. | 

### Return type

[**Device**](Device.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantDevices**
> PageDataDevice getTenantDevices(pageSize, page, type, textSearch, sortProperty, sortOrder)

Get Tenant Devices (getTenantDevices)

Returns a page of devices owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String type = type_example; // String | Device type as the name of the device profile
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the device name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantDevices(pageSize, page, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->getTenantDevices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **type** | **String**| Device type as the name of the device profile | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the device name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataDevice**](PageDataDevice.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserDevices**
> PageDataDevice getUserDevices(pageSize, page, type, textSearch, sortProperty, sortOrder)

Get Devices (getUserDevices)

Returns a page of devices that are available for the current user. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String type = type_example; // String | Device type as the name of the device profile
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the device name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getUserDevices(pageSize, page, type, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->getUserDevices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **type** | **String**| Device type as the name of the device profile | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the device name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataDevice**](PageDataDevice.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **processDevicesBulkImport**
> BulkImportResultDevice processDevicesBulkImport(bulkImportRequest)

Import the bulk of devices (processDevicesBulkImport)

There's an ability to import the bulk of devices using the only .csv file. Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final BulkImportRequest bulkImportRequest = ; // BulkImportRequest | 

try {
    final response = api.processDevicesBulkImport(bulkImportRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->processDevicesBulkImport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkImportRequest** | [**BulkImportRequest**](BulkImportRequest.md)|  | 

### Return type

[**BulkImportResultDevice**](BulkImportResultDevice.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reClaimDevice**
> String reClaimDevice(deviceName)

Reclaim device (reClaimDevice)

Reclaiming means the device will be unassigned from the customer and the device will be available for claiming again.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'CLAIM_DEVICES' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final String deviceName = deviceName_example; // String | Unique name of the device which is going to be reclaimed

try {
    final response = api.reClaimDevice(deviceName);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->reClaimDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceName** | **String**| Unique name of the device which is going to be reclaimed | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveDevice**
> Device saveDevice(device, accessToken, entityGroupId, entityGroupIds, nameConflictPolicy, uniquifySeparator, uniquifyStrategy)

Create Or Update Device (saveDevice)

Create or update the Device. When creating device, platform generates Device Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). Device credentials are also generated if not provided in the 'accessToken' request parameter. The newly created device id will be present in the response. Specify existing Device id to update the device. Referencing non-existing device Id will cause 'Not Found' error.  Device name is unique in the scope of tenant. Use unique identifiers like MAC or IMEI for the device names and non-unique 'label' field for user-friendly visualization purposes.Remove 'id', 'tenantId' and optionally 'customerId' from the request body example (below) to create new Device entity.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final Device device = ; // Device | A JSON value representing the device.
final String accessToken = accessToken_example; // String | Optional value of the device credentials to be used during device creation. If omitted, access token will be auto-generated.
final String entityGroupId = entityGroupId_example; // String | 
final BuiltList<String> entityGroupIds = ; // BuiltList<String> | A list of entity group ids, separated by comma ','
final NameConflictPolicy nameConflictPolicy = ; // NameConflictPolicy | Optional value of name conflict policy. Possible values: FAIL or UNIQUIFY.  If omitted, FAIL policy is applied. FAIL policy implies exception will be thrown if an entity with the same name already exists.  UNIQUIFY policy appends a suffix to the entity name, if a name conflict occurs.
final String uniquifySeparator = uniquifySeparator_example; // String | Optional value of name suffix separator used by UNIQUIFY policy. By default, underscore separator is used. For example, strategy is UNIQUIFY, separator is '-'; if a name conflict occurs for entity name 'test-name', created entity will have name like 'test-name-7fsh4f'.
final UniquifyStrategy uniquifyStrategy = ; // UniquifyStrategy | Optional value of uniquify strategy used by UNIQUIFY policy. Possible values: RANDOM or INCREMENTAL. By default, RANDOM strategy is used, which means random alphanumeric string will be added as a suffix to entity name. INCREMENTAL implies the first possible number starting from 1 will be added as a name suffix. For example, strategy is UNIQUIFY, uniquify strategy is INCREMENTAL; if a name conflict occurs for entity name 'test-name', created entity will have name like 'test-name-1.

try {
    final response = api.saveDevice(device, accessToken, entityGroupId, entityGroupIds, nameConflictPolicy, uniquifySeparator, uniquifyStrategy);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->saveDevice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **device** | [**Device**](Device.md)| A JSON value representing the device. | 
 **accessToken** | **String**| Optional value of the device credentials to be used during device creation. If omitted, access token will be auto-generated. | [optional] 
 **entityGroupId** | **String**|  | [optional] 
 **entityGroupIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of entity group ids, separated by comma ',' | [optional] 
 **nameConflictPolicy** | [**NameConflictPolicy**](.md)| Optional value of name conflict policy. Possible values: FAIL or UNIQUIFY.  If omitted, FAIL policy is applied. FAIL policy implies exception will be thrown if an entity with the same name already exists.  UNIQUIFY policy appends a suffix to the entity name, if a name conflict occurs. | [optional] [default to FAIL]
 **uniquifySeparator** | **String**| Optional value of name suffix separator used by UNIQUIFY policy. By default, underscore separator is used. For example, strategy is UNIQUIFY, separator is '-'; if a name conflict occurs for entity name 'test-name', created entity will have name like 'test-name-7fsh4f'. | [optional] [default to '_']
 **uniquifyStrategy** | [**UniquifyStrategy**](.md)| Optional value of uniquify strategy used by UNIQUIFY policy. Possible values: RANDOM or INCREMENTAL. By default, RANDOM strategy is used, which means random alphanumeric string will be added as a suffix to entity name. INCREMENTAL implies the first possible number starting from 1 will be added as a name suffix. For example, strategy is UNIQUIFY, uniquify strategy is INCREMENTAL; if a name conflict occurs for entity name 'test-name', created entity will have name like 'test-name-1. | [optional] [default to RANDOM]

### Return type

[**Device**](Device.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveDeviceWithCredentials**
> Device saveDeviceWithCredentials(saveDeviceWithCredentialsRequest, entityGroupId, entityGroupIds, nameConflictPolicy, uniquifySeparator, uniquifyStrategy)

Create Device (saveDevice) with credentials 

Create or update the Device. When creating device, platform generates Device Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). Requires to provide the Device Credentials object as well as an existing device profile ID or use \"default\". You may find the example of device with different type of credentials below:   - Credentials type: **\"Access token\"** with **device profile ID** below:   ```json {   \"device\": {     \"name\":\"Name_DeviceWithCredantial_AccessToken\",     \"label\":\"Label_DeviceWithCredantial_AccessToken\",     \"deviceProfileId\":{       \"id\":\"5636aba0-1022-11ee-9631-51fb57f69174\",       \"entityType\":\"DEVICE_PROFILE\"      }    },   \"credentials\": {     \"credentialsType\": \"ACCESS_TOKEN\",     \"credentialsId\": \"6hmxew8pmmzng4e3une2\"    } } ```  - Credentials type: **\"Access token\"** with  **device profile default** below:   ```json {   \"device\": {     \"name\":\"Name_DeviceWithCredantial_AccessToken_Default\",     \"label\":\"Label_DeviceWithCredantial_AccessToken_Default\",     \"type\": \"default\"    },   \"credentials\": {     \"credentialsType\": \"ACCESS_TOKEN\",     \"credentialsId\": \"6hmxew8pmmzng4e3une3\"    } } ```  - Credentials type: **\"X509\"** with **device profile ID** below:   Note: **credentialsId** -  format **Sha3Hash**, **certificateValue** - format **PEM** (with \"--BEGIN CERTIFICATE----\" and  -\"----END CERTIFICATE-\").  ```json {   \"device\": {     \"name\":\"Name_DeviceWithCredantial_X509_Certificate\",     \"label\":\"Label_DeviceWithCredantial_X509_Certificate\",     \"deviceProfileId\":{       \"id\":\"9d9588c0-06c9-11ee-b618-19be30fdeb60\",       \"entityType\":\"DEVICE_PROFILE\"      }    },   \"credentials\": {     \"credentialsType\": \"X509_CERTIFICATE\",     \"credentialsId\": \"84f5911765abba1f96bf4165604e9e90338fc6214081a8e623b6ff9669aedb27\",     \"credentialsValue\": \"-----BEGIN CERTIFICATE----- MIICMTCCAdegAwIBAgIUI9dBuwN6pTtK6uZ03rkiCwV4wEYwCgYIKoZIzj0EAwIwbjELMAkGA1UEBhMCVVMxETAPBgNVBAgMCE5ldyBZb3JrMRowGAYDVQQKDBFUaGluZ3NCb2FyZCwgSW5jLjEwMC4GA1UEAwwnZGV2aWNlQ2VydGlmaWNhdGVAWDUwOVByb3Zpc2lvblN0cmF0ZWd5MB4XDTIzMDMyOTE0NTYxN1oXDTI0MDMyODE0NTYxN1owbjELMAkGA1UEBhMCVVMxETAPBgNVBAgMCE5ldyBZb3JrMRowGAYDVQQKDBFUaGluZ3NCb2FyZCwgSW5jLjEwMC4GA1UEAwwnZGV2aWNlQ2VydGlmaWNhdGVAWDUwOVByb3Zpc2lvblN0cmF0ZWd5MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE9Zo791qKQiGNBm11r4ZGxh+w+ossZL3xc46ufq5QckQHP7zkD2XDAcmP5GvdkM1sBFN9AWaCkQfNnWmfERsOOKNTMFEwHQYDVR0OBBYEFFFc5uyCyglQoZiKhzXzMcQ3BKORMB8GA1UdIwQYMBaAFFFc5uyCyglQoZiKhzXzMcQ3BKORMA8GA1UdEwEB/wQFMAMBAf8wCgYIKoZIzj0EAwIDSAAwRQIhANbA9CuhoOifZMMmqkpuld+65CR+ItKdXeRAhLMZuccuAiB0FSQB34zMutXrZj1g8Gl5OkE7YryFHbei1z0SveHR8g== -----END CERTIFICATE-----\"    } } ```  - Credentials type: **\"MQTT_BASIC\"** with **device profile ID** below:   ```json {   \"device\": {     \"name\":\"Name_DeviceWithCredantial_MQTT_Basic\",     \"label\":\"Label_DeviceWithCredantial_MQTT_Basic\",     \"deviceProfileId\":{       \"id\":\"9d9588c0-06c9-11ee-b618-19be30fdeb60\",       \"entityType\":\"DEVICE_PROFILE\"      }    },   \"credentials\": {     \"credentialsType\": \"MQTT_BASIC\",     \"credentialsValue\": \"{\\\"clientId\\\":\\\"5euh5nzm34bjjh1efmlt\\\",\\\"userName\\\":\\\"onasd1lgwasmjl7v2v7h\\\",\\\"password\\\":\\\"b9xtm4ny8kt9zewaga5o\\\"}\"    } } ```  - You may find the example of **LwM2M** device and **RPK** credentials below:   Note: LwM2M device - only existing device profile ID (Transport configuration -> Transport type: \"LWM2M\".  ```json {   \"device\": {     \"name\":\"Name_LwRpk00000000\",     \"label\":\"Label_LwRpk00000000\",     \"deviceProfileId\":{       \"id\":\"a660bd50-10ef-11ee-8737-b5634e73c779\",       \"entityType\":\"DEVICE_PROFILE\"      }    },   \"credentials\": {     \"credentialsType\": \"LWM2M_CREDENTIALS\",     \"credentialsId\": \"LwRpk00000000\",     \"credentialsValue\":        \"{\\\"client\\\":{ \\\"endpoint\\\":\\\"LwRpk00000000\\\", \\\"securityConfigClientMode\\\":\\\"RPK\\\", \\\"key\\\":\\\"MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEUEBxNl/RcYJNm8mk91CyVXoIJiROYDlXcSSqK6e5bDHwOW4ZiN2lNnXalyF0Jxw8MbAytnDMERXyAja5VEMeVQ==\\\"   }, \\\"bootstrap\\\":{ \\\"bootstrapServer\\\":{ \\\"securityMode\\\":\\\"RPK\\\", \\\"clientPublicKeyOrId\\\":\\\"MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEUEBxNl/RcYJNm8mk91CyVXoIJiROYDlXcSSqK6e5bDHwOW4ZiN2lNnXalyF0Jxw8MbAytnDMERXyAja5VEMeVQ==\\\", \\\"clientSecretKey\\\":\\\"MIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0wawIBAQQgd9GAx7yZW37autew5KZykn4IgRpge/tZSjnudnZJnMahRANCAARQQHE2X9Fxgk2byaT3ULJVeggmJE5gOVdxJKorp7lsMfA5bhmI3aU2ddqXIXQnHDwxsDK2cMwRFfICNrlUQx5V\\\"}, \\\"lwm2mServer\\\":{ \\\"securityMode\\\":\\\"RPK\\\", \\\"clientPublicKeyOrId\\\":\\\"MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEUEBxNl/RcYJNm8mk91CyVXoIJiROYDlXcSSqK6e5bDHwOW4ZiN2lNnXalyF0Jxw8MbAytnDMERXyAja5VEMeVQ==\\\", \\\"clientSecretKey\\\":\\\"MIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0wawIBAQQgd9GAx7yZW37autew5KZykn4IgRpge/tZSjnudnZJnMahRANCAARQQHE2X9Fxgk2byaT3ULJVeggmJE5gOVdxJKorp7lsMfA5bhmI3aU2ddqXIXQnHDwxsDK2cMwRFfICNrlUQx5V\\\"}} }\"    } } ```  Remove 'id', 'tenantId' and optionally 'customerId' from the request body example (below) to create new Device entity.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final SaveDeviceWithCredentialsRequest saveDeviceWithCredentialsRequest = ; // SaveDeviceWithCredentialsRequest | 
final String entityGroupId = entityGroupId_example; // String | 
final BuiltList<String> entityGroupIds = ; // BuiltList<String> | A list of entity group ids, separated by comma ','
final NameConflictPolicy nameConflictPolicy = ; // NameConflictPolicy | Optional value of name conflict policy. Possible values: FAIL or UNIQUIFY.  If omitted, FAIL policy is applied. FAIL policy implies exception will be thrown if an entity with the same name already exists.  UNIQUIFY policy appends a suffix to the entity name, if a name conflict occurs.
final String uniquifySeparator = uniquifySeparator_example; // String | Optional value of name suffix separator used by UNIQUIFY policy. By default, underscore separator is used. For example, strategy is UNIQUIFY, separator is '-'; if a name conflict occurs for entity name 'test-name', created entity will have name like 'test-name-7fsh4f'.
final UniquifyStrategy uniquifyStrategy = ; // UniquifyStrategy | Optional value of uniquify strategy used by UNIQUIFY policy. Possible values: RANDOM or INCREMENTAL. By default, RANDOM strategy is used, which means random alphanumeric string will be added as a suffix to entity name. INCREMENTAL implies the first possible number starting from 1 will be added as a name suffix. For example, strategy is UNIQUIFY, uniquify strategy is INCREMENTAL; if a name conflict occurs for entity name 'test-name', created entity will have name like 'test-name-1.

try {
    final response = api.saveDeviceWithCredentials(saveDeviceWithCredentialsRequest, entityGroupId, entityGroupIds, nameConflictPolicy, uniquifySeparator, uniquifyStrategy);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->saveDeviceWithCredentials: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **saveDeviceWithCredentialsRequest** | [**SaveDeviceWithCredentialsRequest**](SaveDeviceWithCredentialsRequest.md)|  | 
 **entityGroupId** | **String**|  | [optional] 
 **entityGroupIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of entity group ids, separated by comma ',' | [optional] 
 **nameConflictPolicy** | [**NameConflictPolicy**](.md)| Optional value of name conflict policy. Possible values: FAIL or UNIQUIFY.  If omitted, FAIL policy is applied. FAIL policy implies exception will be thrown if an entity with the same name already exists.  UNIQUIFY policy appends a suffix to the entity name, if a name conflict occurs. | [optional] [default to FAIL]
 **uniquifySeparator** | **String**| Optional value of name suffix separator used by UNIQUIFY policy. By default, underscore separator is used. For example, strategy is UNIQUIFY, separator is '-'; if a name conflict occurs for entity name 'test-name', created entity will have name like 'test-name-7fsh4f'. | [optional] [default to '_']
 **uniquifyStrategy** | [**UniquifyStrategy**](.md)| Optional value of uniquify strategy used by UNIQUIFY policy. Possible values: RANDOM or INCREMENTAL. By default, RANDOM strategy is used, which means random alphanumeric string will be added as a suffix to entity name. INCREMENTAL implies the first possible number starting from 1 will be added as a name suffix. For example, strategy is UNIQUIFY, uniquify strategy is INCREMENTAL; if a name conflict occurs for entity name 'test-name', created entity will have name like 'test-name-1. | [optional] [default to RANDOM]

### Return type

[**Device**](Device.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeviceCredentials**
> DeviceCredentials updateDeviceCredentials(deviceCredentials)

Update device credentials (updateDeviceCredentials)

During device creation, platform generates random 'ACCESS_TOKEN' credentials. Use this method to update the device credentials. First use 'getDeviceCredentialsByDeviceId' to get the credentials id and value. Then use current method to update the credentials type and value. It is not possible to create multiple device credentials for the same device. The structure of device credentials id and value is simple for the 'ACCESS_TOKEN' but is much more complex for the 'MQTT_BASIC' or 'LWM2M_CREDENTIALS'. You may find the example of device with different type of credentials below:   - Credentials type: **\"Access token\"** with **device ID** and with **device ID** below:   ```json {   \"id\": {     \"id\":\"c886a090-168d-11ee-87c9-6f157dbc816a\"    },   \"deviceId\": {     \"id\":\"c5fb3ac0-168d-11ee-87c9-6f157dbc816a\",     \"entityType\":\"DEVICE\"    },   \"credentialsType\": \"ACCESS_TOKEN\",   \"credentialsId\": \"6hmxew8pmmzng4e3une4\" } ```  - Credentials type: **\"X509\"** with **device profile ID** below:   Note: **credentialsId** -  format **Sha3Hash**, **certificateValue** - format **PEM** (with \"--BEGIN CERTIFICATE----\" and  -\"----END CERTIFICATE-\").  ```json {   \"id\": {     \"id\":\"309bd9c0-14f4-11ee-9fc9-d9b7463abb63\"    },   \"deviceId\": {     \"id\":\"3092b200-14f4-11ee-9fc9-d9b7463abb63\",     \"entityType\":\"DEVICE\"    },   \"credentialsType\": \"X509_CERTIFICATE\",   \"credentialsId\": \"6b8adb49015500e51a527acd332b51684ab9b49b4ade03a9582a44c455e2e9b6\",   \"credentialsValue\": \"-----BEGIN CERTIFICATE----- MIICMTCCAdegAwIBAgIUUEKxS9hTz4l+oLUMF0LV6TC/gCIwCgYIKoZIzj0EAwIwbjELMAkGA1UEBhMCVVMxETAPBgNVBAgMCE5ldyBZb3JrMRowGAYDVQQKDBFUaGluZ3NCb2FyZCwgSW5jLjEwMC4GA1UEAwwnZGV2aWNlUHJvZmlsZUNlcnRAWDUwOVByb3Zpc2lvblN0cmF0ZWd5MB4XDTIzMDMyOTE0NTczNloXDTI0MDMyODE0NTczNlowbjELMAkGA1UEBhMCVVMxETAPBgNVBAgMCE5ldyBZb3JrMRowGAYDVQQKDBFUaGluZ3NCb2FyZCwgSW5jLjEwMC4GA1UEAwwnZGV2aWNlUHJvZmlsZUNlcnRAWDUwOVByb3Zpc2lvblN0cmF0ZWd5MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAECMlWO72krDoUL9FQjUmSCetkhaEGJUfQkdSfkLSNa0GyAEIMbfmzI4zITeapunu4rGet3EMyLydQzuQanBicp6NTMFEwHQYDVR0OBBYEFHpZ78tPnztNii4Da/yCw6mhEIL3MB8GA1UdIwQYMBaAFHpZ78tPnztNii4Da/yCw6mhEIL3MA8GA1UdEwEB/wQFMAMBAf8wCgYIKoZIzj0EAwIDSAAwRQIgJ7qyMFqNcwSYkH6o+UlQXzLWfwZbNjVk+aR7foAZNGsCIQDsd7v3WQIGHiArfZeDs1DLEDuV/2h6L+ZNoGNhEKL+1A== -----END CERTIFICATE-----\" } ```  - Credentials type: **\"MQTT_BASIC\"** with **device profile ID** below:   ```json {   \"id\": {     \"id\":\"d877ffb0-14f5-11ee-9fc9-d9b7463abb63\"    },   \"deviceId\": {     \"id\":\"d875dcd0-14f5-11ee-9fc9-d9b7463abb63\",     \"entityType\":\"DEVICE\"    },   \"credentialsType\": \"MQTT_BASIC\",   \"credentialsValue\": \"{\\\"clientId\\\":\\\"juy03yv4owqxcmqhqtvk\\\",\\\"userName\\\":\\\"ov19fxca0cyjn7lm7w7u\\\",\\\"password\\\":\\\"twy94he114dfi9usyk1o\\\"}\" } ```  - You may find the example of **LwM2M** device and **RPK** credentials below:   Note: LwM2M device - only existing device profile ID (Transport configuration -> Transport type: \"LWM2M\".  ```json {   \"id\": {     \"id\":\"e238d4d0-1689-11ee-98c6-1713c1be5a8e\"    },   \"deviceId\": {     \"id\":\"e232e160-1689-11ee-98c6-1713c1be5a8e\",     \"entityType\":\"DEVICE\"    },   \"credentialsType\": \"LWM2M_CREDENTIALS\",   \"credentialsId\": \"LwRpk00000000\",   \"credentialsValue\":        \"{\\\"client\\\":{ \\\"endpoint\\\":\\\"LwRpk00000000\\\", \\\"securityConfigClientMode\\\":\\\"RPK\\\", \\\"key\\\":\\\"MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEdvBZZ2vQRK9wgDhctj6B1c7bxR3Z0wYg1+YdoYFnVUKWb+rIfTTyYK9tmQJx5Vlb5fxdLnVv1RJOPiwsLIQbAA==\\\"   }, \\\"bootstrap\\\":{ \\\"bootstrapServer\\\":{ \\\"securityMode\\\":\\\"RPK\\\", \\\"clientPublicKeyOrId\\\":\\\"MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEUEBxNl/RcYJNm8mk91CyVXoIJiROYDlXcSSqK6e5bDHwOW4ZiN2lNnXalyF0Jxw8MbAytnDMERXyAja5VEMeVQ==\\\", \\\"clientSecretKey\\\":\\\"MIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0wawIBAQQgd9GAx7yZW37autew5KZykn4IgRpge/tZSjnudnZJnMahRANCAARQQHE2X9Fxgk2byaT3ULJVeggmJE5gOVdxJKorp7lsMfA5bhmI3aU2ddqXIXQnHDwxsDK2cMwRFfICNrlUQx5V\\\"}, \\\"lwm2mServer\\\":{ \\\"securityMode\\\":\\\"RPK\\\", \\\"clientPublicKeyOrId\\\":\\\"MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEUEBxNl/RcYJNm8mk91CyVXoIJiROYDlXcSSqK6e5bDHwOW4ZiN2lNnXalyF0Jxw8MbAytnDMERXyAja5VEMeVQ==\\\", \\\"clientSecretKey\\\":\\\"MIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0wawIBAQQgd9GAx7yZW37autew5KZykn4IgRpge/tZSjnudnZJnMahRANCAARQQHE2X9Fxgk2byaT3ULJVeggmJE5gOVdxJKorp7lsMfA5bhmI3aU2ddqXIXQnHDwxsDK2cMwRFfICNrlUQx5V\\\"}} }\" } ```  Update to real value:  - 'id' (this is id of Device Credentials ->  \"Get Device Credentials (getDeviceCredentialsByDeviceId)\",  - 'deviceId.id' (this is id of Device). Remove 'tenantId' and optionally 'customerId' from the request body example (below) to create new Device entity.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDeviceControllerApi();
final DeviceCredentials deviceCredentials = ; // DeviceCredentials | 

try {
    final response = api.updateDeviceCredentials(deviceCredentials);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DeviceControllerApi->updateDeviceCredentials: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceCredentials** | [**DeviceCredentials**](DeviceCredentials.md)|  | 

### Return type

[**DeviceCredentials**](DeviceCredentials.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

