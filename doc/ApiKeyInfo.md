# thingsboard_client.model.ApiKeyInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**ApiKeyId**](ApiKeyId.md) | JSON object with the API Key Id. Specify this field to update the API Key. Referencing non-existing API Key Id will cause error. Omit this field to create new API Key. | [optional] 
**createdTime** | **int** | Entity creation timestamp in milliseconds since Unix epoch | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. Tenant Id of the API key cannot be changed. | [optional] 
**userId** | [**UserId**](UserId.md) | JSON object with User Id. User Id of the API key cannot be changed. | [optional] 
**expirationTime** | **int** | Expiration time of the API key. | [optional] 
**description** | **String** | API Key description. | 
**enabled** | **bool** | Enabled/disabled API key. | [optional] 
**expired** | **bool** | Indicates if the API key is expired based on current time. Returns false if expirationTime is 0 (no expiry). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


