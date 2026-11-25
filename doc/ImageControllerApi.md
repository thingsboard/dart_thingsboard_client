# thingsboard_client.api.ImageControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteImage**](ImageControllerApi.md#deleteimage) | **DELETE** /api/images/{type}/{key} | deleteImage
[**downloadImage**](ImageControllerApi.md#downloadimage) | **GET** /api/images/{type}/{key} | downloadImage
[**downloadImagePreview**](ImageControllerApi.md#downloadimagepreview) | **GET** /api/images/{type}/{key}/preview | downloadImagePreview
[**downloadLoginFavicon**](ImageControllerApi.md#downloadloginfavicon) | **GET** /api/noauth/whiteLabel/loginFavicon/{type}/{key} | downloadLoginFavicon
[**downloadLoginLogo**](ImageControllerApi.md#downloadloginlogo) | **GET** /api/noauth/whiteLabel/loginLogo/{type}/{key} | downloadLoginLogo
[**downloadPublicImage**](ImageControllerApi.md#downloadpublicimage) | **GET** /api/images/public/{publicResourceKey} | downloadPublicImage
[**exportImage**](ImageControllerApi.md#exportimage) | **GET** /api/images/{type}/{key}/export | exportImage
[**getImageInfo**](ImageControllerApi.md#getimageinfo) | **GET** /api/images/{type}/{key}/info | getImageInfo
[**getImages**](ImageControllerApi.md#getimages) | **GET** /api/images | getImages
[**importImage**](ImageControllerApi.md#importimage) | **PUT** /api/image/import | importImage
[**updateImage**](ImageControllerApi.md#updateimage) | **PUT** /api/images/{type}/{key} | updateImage
[**updateImageInfo**](ImageControllerApi.md#updateimageinfo) | **PUT** /api/images/{type}/{key}/info | updateImageInfo
[**updateImagePublicStatus**](ImageControllerApi.md#updateimagepublicstatus) | **PUT** /api/images/{type}/{key}/public/{isPublic} | updateImagePublicStatus
[**uploadImage**](ImageControllerApi.md#uploadimage) | **POST** /api/image | uploadImage


# **deleteImage**
> TbImageDeleteResult deleteImage(type, key, force)

deleteImage

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getImageControllerApi();
final String type = type_example; // String | Type of the image: tenant or system
final String key = key_example; // String | Image resource key, for example thermostats_dashboard_background.jpeg
final bool force = true; // bool | 

try {
    final response = api.deleteImage(type, key, force);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->deleteImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the image: tenant or system | 
 **key** | **String**| Image resource key, for example thermostats_dashboard_background.jpeg | 
 **force** | **bool**|  | [optional] 

### Return type

[**TbImageDeleteResult**](TbImageDeleteResult.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadImage**
> Uint8List downloadImage(type, key, ifNoneMatch, acceptEncoding)

downloadImage

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getImageControllerApi();
final String type = type_example; // String | Type of the image: tenant or system
final String key = key_example; // String | Image resource key, for example thermostats_dashboard_background.jpeg
final String ifNoneMatch = ifNoneMatch_example; // String | 
final String acceptEncoding = acceptEncoding_example; // String | 

try {
    final response = api.downloadImage(type, key, ifNoneMatch, acceptEncoding);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->downloadImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the image: tenant or system | 
 **key** | **String**| Image resource key, for example thermostats_dashboard_background.jpeg | 
 **ifNoneMatch** | **String**|  | [optional] 
 **acceptEncoding** | **String**|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadImagePreview**
> Uint8List downloadImagePreview(type, key, ifNoneMatch, acceptEncoding)

downloadImagePreview

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getImageControllerApi();
final String type = type_example; // String | Type of the image: tenant or system
final String key = key_example; // String | Image resource key, for example thermostats_dashboard_background.jpeg
final String ifNoneMatch = ifNoneMatch_example; // String | 
final String acceptEncoding = acceptEncoding_example; // String | 

try {
    final response = api.downloadImagePreview(type, key, ifNoneMatch, acceptEncoding);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->downloadImagePreview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the image: tenant or system | 
 **key** | **String**| Image resource key, for example thermostats_dashboard_background.jpeg | 
 **ifNoneMatch** | **String**|  | [optional] 
 **acceptEncoding** | **String**|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadLoginFavicon**
> Uint8List downloadLoginFavicon(type, key, ifNoneMatch, acceptEncoding)

downloadLoginFavicon

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getImageControllerApi();
final String type = type_example; // String | Type of the image: tenant or system
final String key = key_example; // String | Image resource key, for example thermostats_dashboard_background.jpeg
final String ifNoneMatch = ifNoneMatch_example; // String | 
final String acceptEncoding = acceptEncoding_example; // String | 

try {
    final response = api.downloadLoginFavicon(type, key, ifNoneMatch, acceptEncoding);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->downloadLoginFavicon: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the image: tenant or system | 
 **key** | **String**| Image resource key, for example thermostats_dashboard_background.jpeg | 
 **ifNoneMatch** | **String**|  | [optional] 
 **acceptEncoding** | **String**|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadLoginLogo**
> Uint8List downloadLoginLogo(type, key, ifNoneMatch, acceptEncoding)

downloadLoginLogo

### Example
```dart
import 'package:thingsboard_client/api.dart';

final api = ThingsboardClient().getImageControllerApi();
final String type = type_example; // String | Type of the image: tenant or system
final String key = key_example; // String | Image resource key, for example thermostats_dashboard_background.jpeg
final String ifNoneMatch = ifNoneMatch_example; // String | 
final String acceptEncoding = acceptEncoding_example; // String | 

try {
    final response = api.downloadLoginLogo(type, key, ifNoneMatch, acceptEncoding);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->downloadLoginLogo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the image: tenant or system | 
 **key** | **String**| Image resource key, for example thermostats_dashboard_background.jpeg | 
 **ifNoneMatch** | **String**|  | [optional] 
 **acceptEncoding** | **String**|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadPublicImage**
> Uint8List downloadPublicImage(publicResourceKey, ifNoneMatch, acceptEncoding)

downloadPublicImage

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getImageControllerApi();
final String publicResourceKey = publicResourceKey_example; // String | 
final String ifNoneMatch = ifNoneMatch_example; // String | 
final String acceptEncoding = acceptEncoding_example; // String | 

try {
    final response = api.downloadPublicImage(publicResourceKey, ifNoneMatch, acceptEncoding);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->downloadPublicImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicResourceKey** | **String**|  | 
 **ifNoneMatch** | **String**|  | [optional] 
 **acceptEncoding** | **String**|  | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/*, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportImage**
> ResourceExportData exportImage(type, key)

exportImage

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getImageControllerApi();
final String type = type_example; // String | Type of the image: tenant or system
final String key = key_example; // String | Image resource key, for example thermostats_dashboard_background.jpeg

try {
    final response = api.exportImage(type, key);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->exportImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the image: tenant or system | 
 **key** | **String**| Image resource key, for example thermostats_dashboard_background.jpeg | 

### Return type

[**ResourceExportData**](ResourceExportData.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getImageInfo**
> TbResourceInfo getImageInfo(type, key)

getImageInfo

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getImageControllerApi();
final String type = type_example; // String | Type of the image: tenant or system
final String key = key_example; // String | Image resource key, for example thermostats_dashboard_background.jpeg

try {
    final response = api.getImageInfo(type, key);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->getImageInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the image: tenant or system | 
 **key** | **String**| Image resource key, for example thermostats_dashboard_background.jpeg | 

### Return type

[**TbResourceInfo**](TbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getImages**
> PageDataTbResourceInfo getImages(pageSize, page, imageSubType, includeSystemImages, textSearch, sortProperty, sortOrder)

getImages

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getImageControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String imageSubType = imageSubType_example; // String | A string value representing resource sub-type.
final bool includeSystemImages = true; // bool | Use 'true' to include system images. Disabled by default. Ignored for requests by users with system administrator authority.
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the resource title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getImages(pageSize, page, imageSubType, includeSystemImages, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->getImages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **imageSubType** | **String**| A string value representing resource sub-type. | [optional] 
 **includeSystemImages** | **bool**| Use 'true' to include system images. Disabled by default. Ignored for requests by users with system administrator authority. | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the resource title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataTbResourceInfo**](PageDataTbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importImage**
> TbResourceInfo importImage(resourceExportData)

importImage

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getImageControllerApi();
final ResourceExportData resourceExportData = ; // ResourceExportData | 

try {
    final response = api.importImage(resourceExportData);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->importImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resourceExportData** | [**ResourceExportData**](ResourceExportData.md)|  | 

### Return type

[**TbResourceInfo**](TbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateImage**
> TbResourceInfo updateImage(type, key, file)

updateImage

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getImageControllerApi();
final String type = type_example; // String | Type of the image: tenant or system
final String key = key_example; // String | Image resource key, for example thermostats_dashboard_background.jpeg
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.updateImage(type, key, file);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->updateImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the image: tenant or system | 
 **key** | **String**| Image resource key, for example thermostats_dashboard_background.jpeg | 
 **file** | **MultipartFile**|  | 

### Return type

[**TbResourceInfo**](TbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateImageInfo**
> TbResourceInfo updateImageInfo(type, key, tbResourceInfo)

updateImageInfo

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getImageControllerApi();
final String type = type_example; // String | Type of the image: tenant or system
final String key = key_example; // String | Image resource key, for example thermostats_dashboard_background.jpeg
final TbResourceInfo tbResourceInfo = ; // TbResourceInfo | 

try {
    final response = api.updateImageInfo(type, key, tbResourceInfo);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->updateImageInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the image: tenant or system | 
 **key** | **String**| Image resource key, for example thermostats_dashboard_background.jpeg | 
 **tbResourceInfo** | [**TbResourceInfo**](TbResourceInfo.md)|  | 

### Return type

[**TbResourceInfo**](TbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateImagePublicStatus**
> TbResourceInfo updateImagePublicStatus(type, key, isPublic)

updateImagePublicStatus

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getImageControllerApi();
final String type = type_example; // String | Type of the image: tenant or system
final String key = key_example; // String | Image resource key, for example thermostats_dashboard_background.jpeg
final bool isPublic = true; // bool | 

try {
    final response = api.updateImagePublicStatus(type, key, isPublic);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->updateImagePublicStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the image: tenant or system | 
 **key** | **String**| Image resource key, for example thermostats_dashboard_background.jpeg | 
 **isPublic** | **bool**|  | 

### Return type

[**TbResourceInfo**](TbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadImage**
> TbResourceInfo uploadImage(file, title, imageSubType)

uploadImage

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getImageControllerApi();
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | 
final String title = title_example; // String | 
final String imageSubType = imageSubType_example; // String | 

try {
    final response = api.uploadImage(file, title, imageSubType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ImageControllerApi->uploadImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**|  | 
 **title** | **String**|  | [optional] 
 **imageSubType** | **String**|  | [optional] 

### Return type

[**TbResourceInfo**](TbResourceInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

