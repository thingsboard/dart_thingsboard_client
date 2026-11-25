# thingsboard_client.api.DashboardReportControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadDashboardReport**](DashboardReportControllerApi.md#downloaddashboardreport) | **POST** /api/report/{dashboardId}/download | Download dashboard report (downloadDashboardReport)
[**downloadTestReport**](DashboardReportControllerApi.md#downloadtestreport) | **POST** /api/report/test | Download test report (downloadTestReport)


# **downloadDashboardReport**
> Uint8List downloadDashboardReport(dashboardId, body)

Download dashboard report (downloadDashboardReport)

Generate and download a report from the specified dashboard. The request payload is a JSON object with params of report. For example:  ```json {     \"type\": \"pdf\",     \"timezone\": \"Europe/Kiev\",     \"timewindow\": {         \"displayValue\": \"\",         \"hideInterval\": false,         \"hideLastInterval\": false,         \"hideQuickInterval\": false,         \"hideAggregation\": false,         \"hideAggInterval\": false,         \"hideTimezone\": false,         \"selectedTab\": 0,         \"realtime\": {             \"realtimeType\": 0,             \"interval\": 1000,             \"timewindowMs\": 60000,             \"quickInterval\": \"CURRENT_DAY\"         },         \"history\": {             \"historyType\": 0,             \"interval\": 1000,             \"timewindowMs\": 60000,             \"fixedTimewindow\": {                 \"startTimeMs\": 1703687976592,                 \"endTimeMs\": 1703774376592             },             \"quickInterval\": \"CURRENT_DAY\"         },         \"aggregation\": {             \"type\": \"AVG\",             \"limit\": 25000         }     },     \"state\": null } ```   Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardReportControllerApi();
final String dashboardId = dashboardId_example; // String | A string value representing the dashboard id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final JsonObject body = ; // JsonObject | 

try {
    final response = api.downloadDashboardReport(dashboardId, body);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardReportControllerApi->downloadDashboardReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboardId** | **String**| A string value representing the dashboard id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **body** | **JsonObject**|  | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/pdf, image/jpeg, image/png, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadTestReport**
> Uint8List downloadTestReport(dashboardReportConfig, reportsServerEndpointUrl)

Download test report (downloadTestReport)

Generate and download test report.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getDashboardReportControllerApi();
final DashboardReportConfig dashboardReportConfig = ; // DashboardReportConfig | 
final String reportsServerEndpointUrl = http://localhost:8383; // String | A string value representing the report server endpoint.

try {
    final response = api.downloadTestReport(dashboardReportConfig, reportsServerEndpointUrl);
    print(response);
} on DioException catch (e) {
    print('Exception when calling DashboardReportControllerApi->downloadTestReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboardReportConfig** | [**DashboardReportConfig**](DashboardReportConfig.md)|  | 
 **reportsServerEndpointUrl** | **String**| A string value representing the report server endpoint. | [optional] 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/pdf, image/jpeg, image/png, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

