# thingsboard_client.model.CustomMenuItem

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**MenuItemType**](MenuItemType.md) | Menu item type | 
**visible** | **bool** | Mark if menu item is visible for user | [optional] 
**name** | **String** | Name of the menu item | 
**icon** | **String** | URL of the menu item icon. Overrides 'materialIcon' | [optional] 
**menuItemType** | [**CMItemType**](CMItemType.md) | Type of menu item (LINK or SECTION). LINK type means item has no child items, SECTION type should have at least one child | 
**linkType** | [**CMItemLinkType**](CMItemLinkType.md) | Type of menu item (URL or DASHBOARD) | [optional] 
**dashboardId** | **String** | Id of the Dashboard to open, when user clicks the menu item | [optional] 
**hideDashboardToolbar** | **bool** | Hide the dashboard toolbar | [optional] 
**url** | **String** | URL to open in the iframe, when user clicks the menu item | [optional] 
**setAccessToken** | **bool** | Set the access token of the current user to a new dashboard | [optional] 
**pages** | [**BuiltList&lt;CustomMenuItem&gt;**](CustomMenuItem.md) | List of child menu items | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


