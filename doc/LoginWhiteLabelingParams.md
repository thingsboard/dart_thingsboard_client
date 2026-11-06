# thingsboard_client.model.LoginWhiteLabelingParams

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logoImageUrl** | **String** | Logo image URL | [optional] 
**logoImageHeight** | **int** | The height of a logo container. Logo image will be automatically scaled. | [optional] 
**collapsedLogoImageUrl** | **String** | Logo shown when side menu is collapsed | [optional] 
**appTitle** | **String** | White-labeled name of the platform | [optional] 
**favicon** | [**Favicon**](Favicon.md) | JSON object that contains website icon url and type | [optional] 
**paletteSettings** | [**PaletteSettings**](PaletteSettings.md) | Complex JSON that describes structure of the Angular Material Palette. See [theming](https://material.angular.io/guide/theming) for more details | [optional] 
**primaryColorPanels** | **bool** | Whether primary-color panels (top toolbar, side navigation, dialog and entity-details headers) use the primary palette color as background. When false, they render on a white background | [optional] 
**helpLinkBaseUrl** | **String** | Base URL for help link | [optional] 
**uiHelpBaseUrl** | **String** | Base URL for the repository with the UI help components (markdown) | [optional] 
**enableHelpLinks** | **bool** | Enable or Disable help links | [optional] 
**whiteLabelingEnabled** | **bool** | Enable white-labeling | [optional] 
**showNameVersion** | **bool** | Show platform name and version on UI and login screen | [optional] 
**platformName** | **String** | White-labeled platform name | [optional] 
**platformVersion** | **String** | White-labeled platform version | [optional] 
**customCss** | **String** | Custom CSS content | [optional] 
**hideConnectivityDialog** | **bool** | Hide device connectivity dialog | [optional] 
**overrideTrendzName** | **bool** | Override Trendz Add-on name | [optional] 
**pageBackgroundColor** | **String** | Login page background color | [optional] 
**darkForeground** | **bool** | Enable/Disable dark foreground | [optional] 
**domainId** | [**DomainId**](DomainId.md) | Domain id | [optional] 
**baseUrl** | **String** | Base URL for the activation link, etc | [optional] 
**prohibitDifferentUrl** | **bool** | Prohibit use of other URLs. It is recommended to enable this setting | [optional] 
**adminSettingsId** | **String** | Id of the settings object that store this parameters | [optional] 
**showNameBottom** | **bool** | Show platform name and version on login page | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


