# thingsboard_client.model.HomeDashboard

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**DashboardId**](DashboardId.md) | JSON object with the dashboard Id. Specify existing dashboard Id to update the dashboard. Referencing non-existing dashboard id will cause error. Omit this field to create new dashboard. | [optional] 
**createdTime** | **int** | Timestamp of the dashboard creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. Tenant Id of the dashboard can't be changed. | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id.  | [optional] 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with Customer or Tenant Id | [optional] 
**title** | **String** | Title of the dashboard. | [optional] 
**name** | **String** | Same as title of the dashboard. Read-only field. Update the 'title' to change the 'name' of the dashboard. | [optional] 
**image** | **String** | Thumbnail picture for rendering of the dashboards in a grid view on mobile devices. | [optional] 
**assignedCustomers** | [**BuiltSet&lt;ShortCustomerInfo&gt;**](ShortCustomerInfo.md) | List of assigned customers with their info. | [optional] 
**mobileHide** | **bool** | Hide dashboard from mobile devices. Useful if the dashboard is not designed for small screens. | [optional] 
**mobileOrder** | **int** | Order on mobile devices. Useful to adjust sorting of the dashboards for mobile applications | [optional] 
**configuration** | [**JsonObject**](.md) | JSON object with main configuration of the dashboard: layouts, widgets, aliases, etc. The JSON structure of the dashboard configuration is quite complex. The easiest way to learn it is to export existing dashboard to JSON. | [optional] 
**resources** | [**BuiltList&lt;ResourceExportData&gt;**](ResourceExportData.md) |  | [optional] 
**version** | **int** |  | [optional] 
**hideDashboardToolbar** | **bool** | Hide dashboard toolbar flag. Useful for rendering dashboards on mobile. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


