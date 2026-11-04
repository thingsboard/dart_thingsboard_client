# thingsboard_client.api.ReportTemplateControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteReportTemplate**](ReportTemplateControllerApi.md#deletereporttemplate) | **DELETE** /api/reportTemplate/{reportTemplateId} | Delete Report Template (deleteReportTemplate)
[**getAllReportTemplateInfos**](ReportTemplateControllerApi.md#getallreporttemplateinfos) | **GET** /api/reportTemplateInfos/all | Get All Report Templates for current user (getAllReportTemplateInfos)
[**getReportTemplateById**](ReportTemplateControllerApi.md#getreporttemplatebyid) | **GET** /api/reportTemplate/{reportTemplateId} | Get Report Template (getReportTemplateById)
[**getReportTemplateInfoById**](ReportTemplateControllerApi.md#getreporttemplateinfobyid) | **GET** /api/reportTemplate/info/{reportTemplateId} | Get Report Template Info (getReportTemplateInfoById)
[**getReportTemplatesByIds**](ReportTemplateControllerApi.md#getreporttemplatesbyids) | **GET** /api/reportTemplates | Get report templates by Report Template Ids (getReportTemplatesByIds)
[**saveReportTemplate**](ReportTemplateControllerApi.md#savereporttemplate) | **POST** /api/reportTemplate | Save Report Template (saveReportTemplate)


# **deleteReportTemplate**
> deleteReportTemplate(reportTemplateId)

Delete Report Template (deleteReportTemplate)

Deletes the report template. Referencing non-existing Report Template Id will cause 'Not Found' error.   Security check is performed to verify that the user has 'DELETE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportTemplateControllerApi();
final String reportTemplateId = reportTemplateId_example; // String | A string value representing the report template id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteReportTemplate(reportTemplateId);
} on DioException catch (e) {
    print('Exception when calling ReportTemplateControllerApi->deleteReportTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportTemplateId** | **String**| A string value representing the report template id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllReportTemplateInfos**
> PageDataReportTemplateInfo getAllReportTemplateInfos(pageSize, page, typeList, formatList, includeCustomers, textSearch, sortProperty, sortOrder)

Get All Report Templates for current user (getAllReportTemplateInfos)

Returns a page of report template info objects owned by the tenant or the customer of a current user. Report Templates allows you to create reports according to the report template configuration. Report service uses report template configuration to generate report. See the 'Model' tab of the Response Class for more details.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportTemplateControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final BuiltList<String> typeList = ; // BuiltList<String> | A list of string values separated by comma ',' representing one of the ReportTemplateType enumeration value.
final BuiltList<String> formatList = ; // BuiltList<String> | A list of string values separated by comma ',' representing one of the TbReportFormat enumeration value.
final bool includeCustomers = true; // bool | Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.
final String textSearch = textSearch_example; // String | The case insensitive 'substring' filter based on the report template name or customer title.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getAllReportTemplateInfos(pageSize, page, typeList, formatList, includeCustomers, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportTemplateControllerApi->getAllReportTemplateInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **typeList** | [**BuiltList&lt;String&gt;**](String.md)| A list of string values separated by comma ',' representing one of the ReportTemplateType enumeration value. | [optional] 
 **formatList** | [**BuiltList&lt;String&gt;**](String.md)| A list of string values separated by comma ',' representing one of the TbReportFormat enumeration value. | [optional] 
 **includeCustomers** | **bool**| Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers. | [optional] 
 **textSearch** | **String**| The case insensitive 'substring' filter based on the report template name or customer title. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataReportTemplateInfo**](PageDataReportTemplateInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportTemplateById**
> ReportTemplate getReportTemplateById(reportTemplateId)

Get Report Template (getReportTemplateById)

Fetch the ReportTemplate object based on the provided report template Id. Report Template extends Report Template Info object and adds 'configuration' - a JSON structure of report template configuration. See the 'Model' tab of the Response Class for more details. Referencing non-existing Report Template Id will cause 'Not Found' error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.   Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportTemplateControllerApi();
final String reportTemplateId = reportTemplateId_example; // String | A string value representing the report template id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getReportTemplateById(reportTemplateId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportTemplateControllerApi->getReportTemplateById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportTemplateId** | **String**| A string value representing the report template id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**ReportTemplate**](ReportTemplate.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportTemplateInfoById**
> ReportTemplateInfo getReportTemplateInfoById(reportTemplateId)

Get Report Template Info (getReportTemplateInfoById)

Fetch the ReportTemplateInfo object based on the provided report template Id. Report Templates allows you to create reports according to the report template configuration. Report service uses report template configuration to generate report. See the 'Model' tab of the Response Class for more details. Referencing non-existing Report Template Id will cause 'Not Found' error.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.   Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportTemplateControllerApi();
final String reportTemplateId = reportTemplateId_example; // String | A string value representing the report template id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getReportTemplateInfoById(reportTemplateId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportTemplateControllerApi->getReportTemplateInfoById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportTemplateId** | **String**| A string value representing the report template id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**ReportTemplateInfo**](ReportTemplateInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getReportTemplatesByIds**
> BuiltList<ReportTemplateInfo> getReportTemplatesByIds(reportTemplateIds)

Get report templates by Report Template Ids (getReportTemplatesByIds)

Returns a list of ReportTemplateInfo objects based on the provided ids. Filters the list based on the user permissions.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportTemplateControllerApi();
final BuiltList<String> reportTemplateIds = ; // BuiltList<String> | A list of report template ids, separated by comma ','

try {
    final response = api.getReportTemplatesByIds(reportTemplateIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportTemplateControllerApi->getReportTemplatesByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportTemplateIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of report template ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;ReportTemplateInfo&gt;**](ReportTemplateInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveReportTemplate**
> ReportTemplate saveReportTemplate(reportTemplate)

Save Report Template (saveReportTemplate)

Creates or Updates report template. Report Template extends Report Template Info object and adds 'configuration' - a JSON structure of report template configuration. See the 'Model' tab of the Response Class for more details. When creating report template, platform generates report template Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created report template id will be present in the response. Specify existing report template id to update the report template. Referencing non-existing report template Id will cause 'Not Found' error. Remove 'id', 'tenantId' and optionally 'customerId' from the request body example (below) to create new Report Template entity.   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.   Security check is performed to verify that the user has 'WRITE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getReportTemplateControllerApi();
final ReportTemplate reportTemplate = ; // ReportTemplate | 

try {
    final response = api.saveReportTemplate(reportTemplate);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ReportTemplateControllerApi->saveReportTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reportTemplate** | [**ReportTemplate**](ReportTemplate.md)|  | 

### Return type

[**ReportTemplate**](ReportTemplate.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

