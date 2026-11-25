# thingsboard_client.model.OAuth2Client

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**OAuth2ClientId**](OAuth2ClientId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**additionalInfo** | [**JsonObject**](.md) | Additional info of OAuth2 client. Must include: 'providerName' (string, name of the OAuth2 provider). | 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id | [optional] 
**title** | **String** | Oauth2 client title | 
**mapperConfig** | [**OAuth2MapperConfig**](OAuth2MapperConfig.md) | Config for mapping OAuth2 log in response to platform entities | 
**clientId** | **String** | OAuth2 client ID. Cannot be empty | 
**clientSecret** | **String** | OAuth2 client secret. Cannot be empty | 
**authorizationUri** | **String** | Authorization URI of the OAuth2 provider. Cannot be empty | 
**accessTokenUri** | **String** | Access token URI of the OAuth2 provider. Cannot be empty | 
**scope** | **BuiltList&lt;String&gt;** | OAuth scopes that will be requested from OAuth2 platform. Cannot be empty | 
**userInfoUri** | **String** | User info URI of the OAuth2 provider | [optional] 
**userNameAttributeName** | **String** | Name of the username attribute in OAuth2 provider response. Cannot be empty | 
**jwkSetUri** | **String** | JSON Web Key URI of the OAuth2 provider | [optional] 
**clientAuthenticationMethod** | **String** | Client authentication method to use: 'BASIC' or 'POST'. Cannot be empty | 
**loginButtonLabel** | **String** | OAuth2 provider label. Cannot be empty | 
**loginButtonIcon** | **String** | Log in button icon for OAuth2 provider | [optional] 
**platforms** | [**BuiltList&lt;PlatformType&gt;**](PlatformType.md) | List of platforms for which usage of the OAuth2 client is allowed (empty for all allowed) | [optional] 
**name** | **String** |  | [optional] 
**ownerId** | [**EntityId**](EntityId.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


