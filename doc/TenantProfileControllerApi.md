# thingsboard_client.api.TenantProfileControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteTenantProfile**](TenantProfileControllerApi.md#deletetenantprofile) | **DELETE** /api/tenantProfile/{tenantProfileId} | Delete Tenant Profile (deleteTenantProfile)
[**getDefaultTenantProfileInfo**](TenantProfileControllerApi.md#getdefaulttenantprofileinfo) | **GET** /api/tenantProfileInfo/default | Get default Tenant Profile Info (getDefaultTenantProfileInfo)
[**getTenantProfileById**](TenantProfileControllerApi.md#gettenantprofilebyid) | **GET** /api/tenantProfile/{tenantProfileId} | Get Tenant Profile (getTenantProfileById)
[**getTenantProfileInfoById**](TenantProfileControllerApi.md#gettenantprofileinfobyid) | **GET** /api/tenantProfileInfo/{tenantProfileId} | Get Tenant Profile Info (getTenantProfileInfoById)
[**getTenantProfileInfos**](TenantProfileControllerApi.md#gettenantprofileinfos) | **GET** /api/tenantProfileInfos | Get Tenant Profiles Info (getTenantProfileInfos)
[**getTenantProfileList**](TenantProfileControllerApi.md#gettenantprofilelist) | **GET** /api/tenantProfiles/list | Get Tenant Profile list (getTenantProfileList)
[**getTenantProfiles**](TenantProfileControllerApi.md#gettenantprofiles) | **GET** /api/tenantProfiles | Get Tenant Profiles (getTenantProfiles)
[**saveTenantProfile**](TenantProfileControllerApi.md#savetenantprofile) | **POST** /api/tenantProfile | Create Or update Tenant Profile (saveTenantProfile)
[**setDefaultTenantProfile**](TenantProfileControllerApi.md#setdefaulttenantprofile) | **POST** /api/tenantProfile/{tenantProfileId}/default | Make tenant profile default (setDefaultTenantProfile)


# **deleteTenantProfile**
> deleteTenantProfile(tenantProfileId)

Delete Tenant Profile (deleteTenantProfile)

Deletes the tenant profile. Referencing non-existing tenant profile Id will cause an error. Referencing profile that is used by the tenants will cause an error.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantProfileControllerApi();
final String tenantProfileId = tenantProfileId_example; // String | A string value representing the tenant profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteTenantProfile(tenantProfileId);
} on DioException catch (e) {
    print('Exception when calling TenantProfileControllerApi->deleteTenantProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantProfileId** | **String**| A string value representing the tenant profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDefaultTenantProfileInfo**
> EntityInfo getDefaultTenantProfileInfo()

Get default Tenant Profile Info (getDefaultTenantProfileInfo)

Fetch the default Tenant Profile Info object based. Tenant Profile Info is a lightweight object that contains only id and name of the profile.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantProfileControllerApi();

try {
    final response = api.getDefaultTenantProfileInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantProfileControllerApi->getDefaultTenantProfileInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EntityInfo**](EntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantProfileById**
> TenantProfile getTenantProfileById(tenantProfileId)

Get Tenant Profile (getTenantProfileById)

Fetch the Tenant Profile object based on the provided Tenant Profile Id.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantProfileControllerApi();
final String tenantProfileId = tenantProfileId_example; // String | A string value representing the tenant profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getTenantProfileById(tenantProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantProfileControllerApi->getTenantProfileById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantProfileId** | **String**| A string value representing the tenant profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**TenantProfile**](TenantProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantProfileInfoById**
> EntityInfo getTenantProfileInfoById(tenantProfileId)

Get Tenant Profile Info (getTenantProfileInfoById)

Fetch the Tenant Profile Info object based on the provided Tenant Profile Id. Tenant Profile Info is a lightweight object that contains only id and name of the profile.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantProfileControllerApi();
final String tenantProfileId = tenantProfileId_example; // String | A string value representing the tenant profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getTenantProfileInfoById(tenantProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantProfileControllerApi->getTenantProfileInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantProfileId** | **String**| A string value representing the tenant profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**EntityInfo**](EntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantProfileInfos**
> PageDataEntityInfo getTenantProfileInfos(pageSize, page, textSearch, sortProperty, sortOrder)

Get Tenant Profiles Info (getTenantProfileInfos)

Returns a page of tenant profile info objects registered in the platform. Tenant Profile Info is a lightweight object that contains only id and name of the profile. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantProfileControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the tenant profile name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantProfileInfos(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantProfileControllerApi->getTenantProfileInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the tenant profile name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataEntityInfo**](PageDataEntityInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantProfileList**
> BuiltList<TenantProfile> getTenantProfileList(ids)

Get Tenant Profile list (getTenantProfileList)

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantProfileControllerApi();
final BuiltList<String> ids = ; // BuiltList<String> | Comma-separated list of tenant profile ids

try {
    final response = api.getTenantProfileList(ids);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantProfileControllerApi->getTenantProfileList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**BuiltList&lt;String&gt;**](String.md)| Comma-separated list of tenant profile ids | 

### Return type

[**BuiltList&lt;TenantProfile&gt;**](TenantProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTenantProfiles**
> PageDataTenantProfile getTenantProfiles(pageSize, page, textSearch, sortProperty, sortOrder)

Get Tenant Profiles (getTenantProfiles)

Returns a page of tenant profiles registered in the platform. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantProfileControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the tenant profile name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getTenantProfiles(pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantProfileControllerApi->getTenantProfiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the tenant profile name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataTenantProfile**](PageDataTenantProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveTenantProfile**
> TenantProfile saveTenantProfile(tenantProfile)

Create Or update Tenant Profile (saveTenantProfile)

Create or update the Tenant Profile. When creating tenant profile, platform generates Tenant Profile Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Tenant Profile Id will be present in the response. Specify existing Tenant Profile Id id to update the Tenant Profile. Referencing non-existing Tenant Profile Id will cause 'Not Found' error.   Update of the tenant profile configuration will cause immediate recalculation of API limits for all affected Tenants.   The **'profileData'** object is the part of Tenant Profile that defines API limits and Rate limits.   You have an ability to define maximum number of devices ('maxDevice'), assets ('maxAssets') and other entities. You may also define maximum number of messages to be processed per month ('maxTransportMessages', 'maxREExecutions', etc). The '*RateLimit' defines the rate limits using simple syntax. For example, '1000:1,20000:60' means up to 1000 events per second but no more than 20000 event per minute. Let's review the example of tenant profile data below:   ```json {   \"name\": \"Your name\",   \"description\": \"Your description\",   \"isolatedTbRuleEngine\": false,   \"profileData\": {     \"configuration\": {       \"type\": \"DEFAULT\",       \"maxDevices\": 0,       \"maxAssets\": 0,       \"maxCustomers\": 0,       \"maxUsers\": 0,       \"maxDashboards\": 0,       \"maxRuleChains\": 0,       \"maxResourcesInBytes\": 0,       \"maxOtaPackagesInBytes\": 0,       \"maxResourceSize\": 0,       \"transportTenantMsgRateLimit\": \"1000:1,20000:60\",       \"transportTenantTelemetryMsgRateLimit\": \"1000:1,20000:60\",       \"transportTenantTelemetryDataPointsRateLimit\": \"1000:1,20000:60\",       \"transportDeviceMsgRateLimit\": \"20:1,600:60\",       \"transportDeviceTelemetryMsgRateLimit\": \"20:1,600:60\",       \"transportDeviceTelemetryDataPointsRateLimit\": \"20:1,600:60\",       \"transportGatewayMsgRateLimit\": \"20:1,600:60\",       \"transportGatewayTelemetryMsgRateLimit\": \"20:1,600:60\",       \"transportGatewayTelemetryDataPointsRateLimit\": \"20:1,600:60\",       \"transportGatewayDeviceMsgRateLimit\": \"20:1,600:60\",       \"transportGatewayDeviceTelemetryMsgRateLimit\": \"20:1,600:60\",       \"transportGatewayDeviceTelemetryDataPointsRateLimit\": \"20:1,600:60\",       \"integrationMsgsPerTenantRateLimit\": \"20:1,600:60\",       \"integrationMsgsPerDeviceRateLimit\": \"20:1,600:60\",       \"integrationMsgsPerAssetRateLimit\": \"20:1,600:60\",       \"maxTransportMessages\": 10000000,       \"maxTransportDataPoints\": 10000000,       \"maxREExecutions\": 4000000,       \"maxJSExecutions\": 5000000,       \"maxDPStorageDays\": 0,       \"maxRuleNodeExecutionsPerMessage\": 50,       \"maxDebugModeDurationMinutes\": 15,       \"maxEmails\": 0,       \"maxSms\": 0,       \"maxCreatedAlarms\": 1000,       \"defaultStorageTtlDays\": 0,       \"alarmsTtlDays\": 0,       \"rpcTtlDays\": 0,       \"queueStatsTtlDays\": 0,       \"ruleEngineExceptionsTtlDays\": 0,       \"blobEntityTtlDays\": 0,       \"warnThreshold\": 0,       \"maxCalculatedFieldsPerEntity\": 100,       \"maxArgumentsPerCF\": 10,       \"minAllowedScheduledUpdateIntervalInSecForCF\": 10,       \"maxRelationLevelPerCfArgument\": 2,       \"maxRelatedEntitiesToReturnPerCfArgument\": 1000,       \"maxDataPointsPerRollingArg\": 1000,       \"maxStateSizeInKBytes\": 512,       \"maxSingleValueArgumentSizeInKBytes\": 32,      \"minAllowedDeduplicationIntervalInSecForCF\": 10,      \"minAllowedAggregationIntervalInSecForCF\": 60,      \"intermediateAggregationIntervalInSecForCF\": 300,      \"cfReevaluationCheckInterval\": 60,      \"alarmsReevaluationInterval\": 60    }   },   \"default\": false } ```Remove 'id', from the request body example (below) to create new Tenant Profile entity.  Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantProfileControllerApi();
final TenantProfile tenantProfile = ; // TenantProfile | 

try {
    final response = api.saveTenantProfile(tenantProfile);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantProfileControllerApi->saveTenantProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantProfile** | [**TenantProfile**](TenantProfile.md)|  | 

### Return type

[**TenantProfile**](TenantProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setDefaultTenantProfile**
> TenantProfile setDefaultTenantProfile(tenantProfileId)

Make tenant profile default (setDefaultTenantProfile)

Makes specified tenant profile to be default. Referencing non-existing tenant profile Id will cause an error.   Available for users with 'SYS_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getTenantProfileControllerApi();
final String tenantProfileId = tenantProfileId_example; // String | A string value representing the tenant profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.setDefaultTenantProfile(tenantProfileId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling TenantProfileControllerApi->setDefaultTenantProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenantProfileId** | **String**| A string value representing the tenant profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**TenantProfile**](TenantProfile.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

