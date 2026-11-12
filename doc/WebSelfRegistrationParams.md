# thingsboard_client.model.WebSelfRegistrationParams

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**SelfRegistrationType**](SelfRegistrationType.md) |  | 
**enabled** | **bool** |  | [optional] 
**title** | **String** |  | [optional] 
**captcha** | [**CaptchaParams**](CaptchaParams.md) |  | [optional] 
**permissions** | [**BuiltList&lt;GroupPermission&gt;**](GroupPermission.md) |  | [optional] 
**notificationRecipient** | [**NotificationTargetId**](NotificationTargetId.md) |  | [optional] 
**signUpFields** | [**BuiltList&lt;SignUpField&gt;**](SignUpField.md) |  | [optional] 
**customerTitlePrefix** | **String** |  | [optional] 
**showPrivacyPolicy** | **bool** |  | [optional] 
**showTermsOfUse** | **bool** |  | [optional] 
**defaultDashboard** | [**DefaultDashboardParams**](DefaultDashboardParams.md) |  | [optional] 
**homeDashboard** | [**HomeDashboardParams**](HomeDashboardParams.md) |  | [optional] 
**customerGroupId** | [**EntityGroupId**](EntityGroupId.md) |  | [optional] 
**customMenuId** | [**CustomMenuId**](CustomMenuId.md) |  | [optional] 
**domainId** | [**DomainId**](DomainId.md) | Domain name for self registration URL. Typically this matches the domain name from the Login White Labeling page. | 
**privacyPolicy** | **String** | Privacy policy text. Supports HTML. | [optional] 
**termsOfUse** | **String** | Terms of User text. Supports HTML. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


