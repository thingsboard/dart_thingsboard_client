# thingsboard_client.model.HomeMenuItem

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**MenuItemType**](MenuItemType.md) | Menu item type | 
**visible** | **bool** |  | [optional] 
**id** | **String** | Unique identifier for predefined menu items | [optional] 
**name** | **String** | Name of the menu item | [optional] 
**icon** | **String** | URL of the menu item icon. Overrides 'materialIcon' | [optional] 
**pages** | [**BuiltList&lt;DefaultMenuItem&gt;**](DefaultMenuItem.md) | List of child menu items | [optional] 
**homeType** | [**HomeMenuItemType**](HomeMenuItemType.md) | DEFAULT or DASHBOARD. DASHBOARD means default home page presentation changed to refer to dashboard | [optional] 
**dashboardId** | **String** | Id of the Dashboard to open, when user clicks the menu item | [optional] 
**hideDashboardToolbar** | **bool** | Hide the dashboard toolbar | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


