# thingsboard_client.api.ReportControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createReport**](ReportControllerApi.md#createreport) | **POST** /api/v2/report | createReport
[**deleteReport**](ReportControllerApi.md#deletereport) | **DELETE** /api/v2/report/{reportId} | Delete Report (deleteReport)
[**downloadReport**](ReportControllerApi.md#downloadreport) | **GET** /api/v2/report/{reportId}/download | downloadReport
[**downloadReportByPublicKey**](ReportControllerApi.md#downloadreportbypublickey) | **GET** /api/v2/report/public/{publicKey}/download | Download report by public key (downloadReportByPublicKey)
[**getReportById**](ReportControllerApi.md#getreportbyid) | **GET** /api/v2/report/{reportId} | Get Report (getReportById)
[**getReportInfos**](ReportControllerApi.md#getreportinfos) | **GET** /api/v2/reportInfos/all | getReportInfos
[**getReportInfosByIds**](ReportControllerApi.md#getreportinfosbyids) | **GET** /api/v2/reportInfos | getReportInfosByIds
[**getReports**](ReportControllerApi.md#getreports) | **GET** /api/v2/reports | getReports
[**requestReport**](ReportControllerApi.md#requestreport) | **POST** /api/v2/report/request | requestReport
[**testReportAndDownload**](ReportControllerApi.md#testreportanddownload) | **POST** /api/v2/report/test | Download test report (testReportAndDownload)
[**updateReportPublicStatus**](ReportControllerApi.md#updatereportpublicstatus) | **PUT** /api/v2/report/{reportId}/public/{isPublic} | Update Report public status (updateReportPublicStatus)


# **createReport**
> Report createReport(createReportRequest)

createReport

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportControllerApi();
final CreateReportRequest createReportRequest = ; // CreateReportRequest | 

try {
    final response = api.createReport(createReportRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportControllerApi->createReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createReportRequest** | [**CreateReportRequest**](CreateReportRequest.md)|  | [optional] 

### Return type

[**Report**](Report.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteReport**
> deleteReport(reportId)

Delete Report (deleteReport)

Deletes the report. Referencing non-existing Report Id will cause 'Not Found' error.   Security check is performed to verify that the user has 'DELETE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportControllerApi();
final String reportId = reportId_example; // String | A string value representing the report id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteReport(reportId);
} on DioException catch (e) {
    print('Exception when calling ReportControllerApi->deleteReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportId** | **String**| A string value representing the report id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadReport**
> Uint8List downloadReport(reportId)

downloadReport

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportControllerApi();
final String reportId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.downloadReport(reportId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportControllerApi->downloadReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportId** | **String**|  | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadReportByPublicKey**
> Uint8List downloadReportByPublicKey(publicKey)

Download report by public key (downloadReportByPublicKey)

Downloads the report identified by its public key. This endpoint is intentionally public: it requires no authentication and is accessible to anyone in possession of the report's random public key. It only returns data for reports that have been explicitly made public (see updateReportPublicStatus).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportControllerApi();
final String publicKey = publicKey_example; // String | The random public key of the report

try {
    final response = api.downloadReportByPublicKey(publicKey);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportControllerApi->downloadReportByPublicKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicKey** | **String**| The random public key of the report | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportById**
> Report getReportById(reportId)

Get Report (getReportById)

Fetch the Report object based on the provided report Id. The platform uses Report to store generated reports information.Referencing non-existing Report Id will cause 'Not Found' error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.   Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportControllerApi();
final String reportId = reportId_example; // String | A string value representing the report id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getReportById(reportId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportControllerApi->getReportById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportId** | **String**| A string value representing the report id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Report**](Report.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportInfos**
> PageDataReportInfo getReportInfos(pageSize, page, reportTemplateId, userId, includeCustomers, textSearch, sortProperty, sortOrder)

getReportInfos

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String reportTemplateId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Report template id
final String userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The user used for report generation.
final bool includeCustomers = true; // bool | Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filter based on report's name or customer title
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getReportInfos(pageSize, page, reportTemplateId, userId, includeCustomers, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportControllerApi->getReportInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **reportTemplateId** | **String**| Report template id | [optional] 
 **userId** | **String**| The user used for report generation. | [optional] 
 **includeCustomers** | **bool**| Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers. | [optional] 
 **textSearch** | **String**| Case-insensitive 'substring' filter based on report's name or customer title | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataReportInfo**](PageDataReportInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportInfosByIds**
> BuiltList<ReportInfo> getReportInfosByIds(strReportIds)

getReportInfosByIds

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportControllerApi();
final BuiltList<String> strReportIds = ; // BuiltList<String> | A list of report ids, separated by comma ','

try {
    final response = api.getReportInfosByIds(strReportIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportControllerApi->getReportInfosByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **strReportIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of report ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;ReportInfo&gt;**](ReportInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReports**
> PageDataReport getReports(pageSize, page, textSearch, sortProperty, sortOrder, includeCustomers)

getReports

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | Case-insensitive 'substring' filter based on report's name or customer title
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)
final bool includeCustomers = true; // bool | Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.

try {
    final response = api.getReports(pageSize, page, textSearch, sortProperty, sortOrder, includeCustomers);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportControllerApi->getReports: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| Case-insensitive 'substring' filter based on report's name or customer title | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 
 **includeCustomers** | **bool**| Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers. | [optional] 

### Return type

[**PageDataReport**](PageDataReport.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestReport**
> Job requestReport(reportRequest)

requestReport

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportControllerApi();
final ReportRequest reportRequest = ; // ReportRequest | 

try {
    final response = api.requestReport(reportRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportControllerApi->requestReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportRequest** | [**ReportRequest**](ReportRequest.md)|  | 

### Return type

[**Job**](Job.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testReportAndDownload**
> Uint8List testReportAndDownload(reportRequest)

Download test report (testReportAndDownload)

Generate and download test report.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportControllerApi();
final ReportRequest reportRequest = ; // ReportRequest | 

try {
    final response = api.testReportAndDownload(reportRequest);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportControllerApi->testReportAndDownload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportRequest** | [**ReportRequest**](ReportRequest.md)|  | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateReportPublicStatus**
> Report updateReportPublicStatus(reportId, isPublic)

Update Report public status (updateReportPublicStatus)

Updates the public status of the report. When public, the report can be downloaded without authentication via the public link.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportControllerApi();
final String reportId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | A string value representing the report id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final bool isPublic = true; // bool | Whether the report should be publicly downloadable without authentication

try {
    final response = api.updateReportPublicStatus(reportId, isPublic);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportControllerApi->updateReportPublicStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportId** | **String**| A string value representing the report id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **isPublic** | **bool**| Whether the report should be publicly downloadable without authentication | 

### Return type

[**Report**](Report.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

