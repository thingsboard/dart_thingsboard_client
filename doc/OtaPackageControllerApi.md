# thingsboard_client.api.OtaPackageControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteOtaPackage**](OtaPackageControllerApi.md#deleteotapackage) | **DELETE** /api/otaPackage/{otaPackageId} | Delete OTA Package (deleteOtaPackage)
[**downloadOtaPackage**](OtaPackageControllerApi.md#downloadotapackage) | **GET** /api/otaPackage/{otaPackageId}/download | Download OTA Package (downloadOtaPackage)
[**getGroupOtaPackages**](OtaPackageControllerApi.md#getgroupotapackages) | **GET** /api/otaPackages/group/{groupId}/{type} | Get group OTA Package Infos (getGroupOtaPackages)
[**getOtaPackageById**](OtaPackageControllerApi.md#getotapackagebyid) | **GET** /api/otaPackage/{otaPackageId} | Get OTA Package (getOtaPackageById)
[**getOtaPackageInfoById**](OtaPackageControllerApi.md#getotapackageinfobyid) | **GET** /api/otaPackage/info/{otaPackageId} | Get OTA Package Info (getOtaPackageInfoById)
[**getOtaPackages**](OtaPackageControllerApi.md#getotapackages) | **GET** /api/otaPackages | Get OTA Package Infos (getOtaPackages)
[**getOtaPackagesByDeviceProfileAndType**](OtaPackageControllerApi.md#getotapackagesbydeviceprofileandtype) | **GET** /api/otaPackages/{deviceProfileId}/{type} | Get OTA Package Infos by Device Profile and Type (getOtaPackagesByDeviceProfileAndType)
[**saveOtaPackageData**](OtaPackageControllerApi.md#saveotapackagedata) | **POST** /api/otaPackage/{otaPackageId} | Save OTA Package data (saveOtaPackageData)
[**saveOtaPackageInfo**](OtaPackageControllerApi.md#saveotapackageinfo) | **POST** /api/otaPackage | Create Or Update OTA Package Info (saveOtaPackageInfo)


# **deleteOtaPackage**
> deleteOtaPackage(otaPackageId)

Delete OTA Package (deleteOtaPackage)

Deletes the OTA Package. Referencing non-existing OTA Package Id will cause an error. Can't delete the OTA Package if it is referenced by existing devices or device profile.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOtaPackageControllerApi();
final String otaPackageId = otaPackageId_example; // String | A string value representing the ota package id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteOtaPackage(otaPackageId);
} on DioException catch (e) {
    print('Exception when calling OtaPackageControllerApi->deleteOtaPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **otaPackageId** | **String**| A string value representing the ota package id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadOtaPackage**
> Uint8List downloadOtaPackage(otaPackageId)

Download OTA Package (downloadOtaPackage)

Download OTA Package based on the provided OTA Package Id.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOtaPackageControllerApi();
final String otaPackageId = otaPackageId_example; // String | A string value representing the ota package id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.downloadOtaPackage(otaPackageId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OtaPackageControllerApi->downloadOtaPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **otaPackageId** | **String**| A string value representing the ota package id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupOtaPackages**
> PageDataOtaPackageInfo getGroupOtaPackages(groupId, type, pageSize, page, textSearch, sortProperty, sortOrder)

Get group OTA Package Infos (getGroupOtaPackages)

Returns a page of OTA Package Info objects owned by tenant, and by entity group. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details. OTA Package Info is a lightweight object that includes main information about the OTA Package excluding the heavyweight data.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOtaPackageControllerApi();
final String groupId = groupId_example; // String | A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String type = type_example; // String | OTA Package type.
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the ota package title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getGroupOtaPackages(groupId, type, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OtaPackageControllerApi->getGroupOtaPackages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **groupId** | **String**| A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **type** | **String**| OTA Package type. | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the ota package title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataOtaPackageInfo**](PageDataOtaPackageInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOtaPackageById**
> OtaPackage getOtaPackageById(otaPackageId)

Get OTA Package (getOtaPackageById)

Fetch the OTA Package object based on the provided OTA Package Id. The server checks that the OTA Package is owned by the same tenant. OTA Package is a heavyweight object that includes main information about the OTA Package and also data.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOtaPackageControllerApi();
final String otaPackageId = otaPackageId_example; // String | A string value representing the ota package id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getOtaPackageById(otaPackageId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OtaPackageControllerApi->getOtaPackageById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **otaPackageId** | **String**| A string value representing the ota package id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**OtaPackage**](OtaPackage.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOtaPackageInfoById**
> OtaPackageInfo getOtaPackageInfoById(otaPackageId)

Get OTA Package Info (getOtaPackageInfoById)

Fetch the OTA Package Info object based on the provided OTA Package Id. OTA Package Info is a lightweight object that includes main information about the OTA Package excluding the heavyweight data.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOtaPackageControllerApi();
final String otaPackageId = otaPackageId_example; // String | A string value representing the ota package id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getOtaPackageInfoById(otaPackageId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OtaPackageControllerApi->getOtaPackageInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **otaPackageId** | **String**| A string value representing the ota package id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**OtaPackageInfo**](OtaPackageInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOtaPackages**
> PageDataOtaPackageInfo getOtaPackages(pageSize, page, textSearch, sortProperty, sortOrder)

Get OTA Package Infos (getOtaPackages)

Returns a page of OTA Package Info objects owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details. OTA Package Info is a lightweight object that includes main information about the OTA Package excluding the heavyweight data.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOtaPackageControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the ota package title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getOtaPackages(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OtaPackageControllerApi->getOtaPackages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the ota package title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataOtaPackageInfo**](PageDataOtaPackageInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOtaPackagesByDeviceProfileAndType**
> PageDataOtaPackageInfo getOtaPackagesByDeviceProfileAndType(deviceProfileId, type, pageSize, page, textSearch, sortProperty, sortOrder)

Get OTA Package Infos by Device Profile and Type (getOtaPackagesByDeviceProfileAndType)

Returns a page of OTA Package Info objects owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details. OTA Package Info is a lightweight object that includes main information about the OTA Package excluding the heavyweight data.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOtaPackageControllerApi();
final String deviceProfileId = deviceProfileId_example; // String | A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String type = type_example; // String | OTA Package type.
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the ota package title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getOtaPackagesByDeviceProfileAndType(deviceProfileId, type, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OtaPackageControllerApi->getOtaPackagesByDeviceProfileAndType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceProfileId** | **String**| A string value representing the device profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **type** | **String**| OTA Package type. | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the ota package title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataOtaPackageInfo**](PageDataOtaPackageInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveOtaPackageData**
> OtaPackageInfo saveOtaPackageData(otaPackageId, checksumAlgorithm, file, checksum)

Save OTA Package data (saveOtaPackageData)

Update the OTA Package. Adds the date to the existing OTA Package Info  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOtaPackageControllerApi();
final String otaPackageId = otaPackageId_example; // String | A string value representing the ota package id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String checksumAlgorithm = checksumAlgorithm_example; // String | OTA Package checksum algorithm.
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | OTA Package data.
final String checksum = checksum_example; // String | OTA Package checksum. For example, '0xd87f7e0c'

try {
    final response = api.saveOtaPackageData(otaPackageId, checksumAlgorithm, file, checksum);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OtaPackageControllerApi->saveOtaPackageData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **otaPackageId** | **String**| A string value representing the ota package id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **checksumAlgorithm** | **String**| OTA Package checksum algorithm. | 
 **file** | **MultipartFile**| OTA Package data. | 
 **checksum** | **String**| OTA Package checksum. For example, '0xd87f7e0c' | [optional] 

### Return type

[**OtaPackageInfo**](OtaPackageInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveOtaPackageInfo**
> OtaPackageInfo saveOtaPackageInfo(saveOtaPackageInfoRequest)

Create Or Update OTA Package Info (saveOtaPackageInfo)

Create or update the OTA Package Info. When creating OTA Package Info, platform generates OTA Package id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created OTA Package id will be present in the response. Specify existing OTA Package id to update the OTA Package Info. Referencing non-existing OTA Package Id will cause 'Not Found' error.   OTA Package combination of the title with the version is unique in the scope of tenant.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getOtaPackageControllerApi();
final SaveOtaPackageInfoRequest saveOtaPackageInfoRequest = ; // SaveOtaPackageInfoRequest | 

try {
    final response = api.saveOtaPackageInfo(saveOtaPackageInfoRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling OtaPackageControllerApi->saveOtaPackageInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **saveOtaPackageInfoRequest** | [**SaveOtaPackageInfoRequest**](SaveOtaPackageInfoRequest.md)|  | 

### Return type

[**OtaPackageInfo**](OtaPackageInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

