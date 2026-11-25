# thingsboard_client.model.OAuth2ClientInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**OAuth2ClientId**](OAuth2ClientId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**title** | **String** | Oauth2 client registration title (e.g. My google) | [optional] 
**providerName** | **String** | Oauth2 client provider name (e.g. Google) | [optional] 
**platforms** | [**BuiltList&lt;PlatformType&gt;**](PlatformType.md) | List of platforms for which usage of the OAuth2 client is allowed (empty for all allowed) | [optional] 
**name** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


