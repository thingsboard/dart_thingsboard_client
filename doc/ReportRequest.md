# thingsboard_client.model.ReportRequest

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reportTemplateId** | [**ReportTemplateId**](ReportTemplateId.md) | Json object representing the report template id. | [optional] 
**reportTemplateConfig** | [**ReportTemplateConfig**](ReportTemplateConfig.md) | Json object representing the report template config. | [optional] 
**timezone** | **String** | Timezone used for report generation. | [optional] 
**userId** | **String** | A string value representing the user id. | [optional] 
**makePublic** | **bool** | A boolean value indicating whether the generated report should be made public. | [optional] 
**originator** | [**EntityId**](EntityId.md) | Json object representing the originator id. | [optional] 
**targets** | **BuiltList&lt;String&gt;** |  | [optional] 
**notificationTemplateId** | [**NotificationTemplateId**](NotificationTemplateId.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


