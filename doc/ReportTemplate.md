# thingsboard_client.model.ReportTemplate

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**ReportTemplateId**](ReportTemplateId.md) | JSON object with the report template Id. Specify this field to update the report. Referencing non-existing report template Id will cause error. Omit this field to create new report template | [optional] 
**createdTime** | **int** | Timestamp of the report template creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. Tenant Id of the report template can't be changed. | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id. Optional: when omitted the Report Template is owned by the tenant. When the request is made by a Customer user, the value is forced to the user's own Customer Id. | [optional] 
**name** | **String** | Report name | 
**format** | [**TbReportFormat**](TbReportFormat.md) | Report format | 
**type** | [**ReportTemplateType**](ReportTemplateType.md) | Report template type | 
**description** | **String** | Description | [optional] 
**version** | **int** |  | [optional] 
**configuration** | [**ReportTemplateConfig**](ReportTemplateConfig.md) | a JSON value with report template configuration | 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with Customer or Tenant Id | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


