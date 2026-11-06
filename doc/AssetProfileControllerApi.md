# thingsboard_client.api.AssetProfileControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAssetProfile**](AssetProfileControllerApi.md#deleteassetprofile) | **DELETE** /api/assetProfile/{assetProfileId} | Delete asset profile (deleteAssetProfile)
[**getAssetProfileById**](AssetProfileControllerApi.md#getassetprofilebyid) | **GET** /api/assetProfile/{assetProfileId} | Get Asset Profile (getAssetProfileById)
[**getAssetProfileInfoById**](AssetProfileControllerApi.md#getassetprofileinfobyid) | **GET** /api/assetProfileInfo/{assetProfileId} | Get Asset Profile Info (getAssetProfileInfoById)
[**getAssetProfileInfos**](AssetProfileControllerApi.md#getassetprofileinfos) | **GET** /api/assetProfileInfos | Get Asset Profile infos (getAssetProfileInfos)
[**getAssetProfileNames**](AssetProfileControllerApi.md#getassetprofilenames) | **GET** /api/assetProfile/names | Get Asset Profile names (getAssetProfileNames)
[**getAssetProfiles**](AssetProfileControllerApi.md#getassetprofiles) | **GET** /api/assetProfiles | Get Asset Profiles (getAssetProfiles)
[**getAssetProfilesByIds**](AssetProfileControllerApi.md#getassetprofilesbyids) | **GET** /api/assetProfileInfos/list | Get Asset Profiles By Ids (getAssetProfilesByIds)
[**getDefaultAssetProfileInfo**](AssetProfileControllerApi.md#getdefaultassetprofileinfo) | **GET** /api/assetProfileInfo/default | Get Default Asset Profile (getDefaultAssetProfileInfo)
[**saveAssetProfile**](AssetProfileControllerApi.md#saveassetprofile) | **POST** /api/assetProfile | Create Or Update Asset Profile (saveAssetProfile)
[**setDefaultAssetProfile**](AssetProfileControllerApi.md#setdefaultassetprofile) | **POST** /api/assetProfile/{assetProfileId}/default | Make Asset Profile Default (setDefaultAssetProfile)


# **deleteAssetProfile**
> deleteAssetProfile(assetProfileId)

Delete asset profile (deleteAssetProfile)

Deletes the asset profile. Referencing non-existing asset profile Id will cause an error. Can't delete the asset profile if it is referenced by existing assets.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAssetProfileControllerApi();
final String assetProfileId = assetProfileId_example; // String | A string value representing the asset profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteAssetProfile(assetProfileId);
} on DioException catch (e) {
    print('Exception when calling AssetProfileControllerApi->deleteAssetProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetProfileId** | **String**| A string value representing the asset profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetProfileById**
> AssetProfile getAssetProfileById(assetProfileId, inlineImages)

Get Asset Profile (getAssetProfileById)

Fetch the Asset Profile object based on the provided Asset Profile Id. The server checks that the asset profile is owned by the same tenant.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAssetProfileControllerApi();
final String assetProfileId = assetProfileId_example; // String | A string value representing the asset profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final bool inlineImages = true; // bool | Inline images as a data URL (Base64)

try {
    final response = api.getAssetProfileById(assetProfileId, inlineImages);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AssetProfileControllerApi->getAssetProfileById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetProfileId** | **String**| A string value representing the asset profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **inlineImages** | **bool**| Inline images as a data URL (Base64) | [optional] 

### Return type

[**AssetProfile**](AssetProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetProfileInfoById**
> AssetProfileInfo getAssetProfileInfoById(assetProfileId)

Get Asset Profile Info (getAssetProfileInfoById)

Fetch the Asset Profile Info object based on the provided Asset Profile Id. Asset Profile Info is a lightweight object that includes main information about Asset Profile.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAssetProfileControllerApi();
final String assetProfileId = assetProfileId_example; // String | A string value representing the asset profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getAssetProfileInfoById(assetProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AssetProfileControllerApi->getAssetProfileInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetProfileId** | **String**| A string value representing the asset profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**AssetProfileInfo**](AssetProfileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetProfileInfos**
> PageDataAssetProfileInfo getAssetProfileInfos(pageSize, page, textSearch, sortProperty, sortOrder)

Get Asset Profile infos (getAssetProfileInfos)

Returns a page of asset profile info objects owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details. Asset Profile Info is a lightweight object that includes main information about Asset Profile.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAssetProfileControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the asset profile name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAssetProfileInfos(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AssetProfileControllerApi->getAssetProfileInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the asset profile name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAssetProfileInfo**](PageDataAssetProfileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetProfileNames**
> BuiltList<EntityInfo> getAssetProfileNames(activeOnly)

Get Asset Profile names (getAssetProfileNames)

Returns a set of unique asset profile names owned by the tenant.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAssetProfileControllerApi();
final bool activeOnly = true; // bool | Flag indicating whether to retrieve exclusively the names of asset profiles that are referenced by tenant's assets.

try {
    final response = api.getAssetProfileNames(activeOnly);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AssetProfileControllerApi->getAssetProfileNames: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activeOnly** | **bool**| Flag indicating whether to retrieve exclusively the names of asset profiles that are referenced by tenant's assets. | [optional] [default to false]

### Return type

[**BuiltList&lt;EntityInfo&gt;**](EntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetProfiles**
> PageDataAssetProfile getAssetProfiles(pageSize, page, textSearch, sortProperty, sortOrder)

Get Asset Profiles (getAssetProfiles)

Returns a page of asset profile objects owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAssetProfileControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the asset profile name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAssetProfiles(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AssetProfileControllerApi->getAssetProfiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the asset profile name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataAssetProfile**](PageDataAssetProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAssetProfilesByIds**
> BuiltList<AssetProfileInfo> getAssetProfilesByIds(assetProfileIds)

Get Asset Profiles By Ids (getAssetProfilesByIds)

Requested asset profiles must be owned by tenant which is performing the request.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAssetProfileControllerApi();
final BuiltList<String> assetProfileIds = ; // BuiltList<String> | A list of asset profile ids, separated by comma ','

try {
    final response = api.getAssetProfilesByIds(assetProfileIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AssetProfileControllerApi->getAssetProfilesByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetProfileIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of asset profile ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;AssetProfileInfo&gt;**](AssetProfileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDefaultAssetProfileInfo**
> AssetProfileInfo getDefaultAssetProfileInfo()

Get Default Asset Profile (getDefaultAssetProfileInfo)

Fetch the Default Asset Profile Info object. Asset Profile Info is a lightweight object that includes main information about Asset Profile.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAssetProfileControllerApi();

try {
    final response = api.getDefaultAssetProfileInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling AssetProfileControllerApi->getDefaultAssetProfileInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AssetProfileInfo**](AssetProfileInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveAssetProfile**
> AssetProfile saveAssetProfile(assetProfile)

Create Or Update Asset Profile (saveAssetProfile)

Create or update the Asset Profile. When creating asset profile, platform generates asset profile id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created asset profile id will be present in the response. Specify existing asset profile id to update the asset profile. Referencing non-existing asset profile Id will cause 'Not Found' error.   Asset profile name is unique in the scope of tenant. Only one 'default' asset profile may exist in scope of tenant. Remove 'id', 'tenantId' from the request body example (below) to create new Asset Profile entity.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAssetProfileControllerApi();
final AssetProfile assetProfile = ; // AssetProfile | 

try {
    final response = api.saveAssetProfile(assetProfile);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AssetProfileControllerApi->saveAssetProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetProfile** | [**AssetProfile**](AssetProfile.md)|  | 

### Return type

[**AssetProfile**](AssetProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDefaultAssetProfile**
> AssetProfile setDefaultAssetProfile(assetProfileId)

Make Asset Profile Default (setDefaultAssetProfile)

Marks asset profile as default within a tenant scope.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getAssetProfileControllerApi();
final String assetProfileId = assetProfileId_example; // String | A string value representing the asset profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.setDefaultAssetProfile(assetProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling AssetProfileControllerApi->setDefaultAssetProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **assetProfileId** | **String**| A string value representing the asset profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**AssetProfile**](AssetProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

