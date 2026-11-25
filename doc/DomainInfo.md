# thingsboard_client.model.DomainInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**DomainId**](DomainId.md) |  | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id | [optional] 
**name** | **String** | Domain name. Cannot be empty | 
**oauth2Enabled** | **bool** | Whether OAuth2 settings are enabled or not | [optional] 
**propagateToEdge** | **bool** | Whether OAuth2 settings are enabled on Edge or not | [optional] 
**oauth2ClientInfos** | [**BuiltList&lt;OAuth2ClientInfo&gt;**](OAuth2ClientInfo.md) | List of available oauth2 clients | [optional] 
**ownerId** | [**EntityId**](EntityId.md) | JSON object with Customer or Tenant Id | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


