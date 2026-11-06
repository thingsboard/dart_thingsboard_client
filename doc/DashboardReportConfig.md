# thingsboard_client.model.DashboardReportConfig

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**baseUrl** | **String** | Base URL of ThingsBoard UI that should be accessible by Web Report Server. | 
**dashboardId** | **String** | A string value representing the dashboard id. | 
**state** | **String** | Target dashboard state for dashboard report generation. | [optional] 
**timezone** | **String** | Timezone in which target dashboard will be presented in dashboard report. | 
**useDashboardTimewindow** | **bool** | If set, timewindow configured in the target dashboard will be used during dashboard report generation. | [optional] 
**timewindow** | [**JsonObject**](.md) | Specific dashboard timewindow that will be used during dashboard report generation. | [optional] 
**namePattern** | **String** | If set, timewindow configured in the target dashboard will be used during dashboard report generation. | 
**type** | **String** | Dashboard report file type, can be PDF | PNG | JPEG. | [optional] 
**useCurrentUserCredentials** | **bool** | If set, credentials of user created this dashboard report configuration will be used to open dashboard UI during dashboard report generation. | [optional] 
**userId** | **String** | A string value representing the user id. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


