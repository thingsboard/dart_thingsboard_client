# thingsboard_client.model.AdminSettings

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**AdminSettingsId**](AdminSettingsId.md) | The Id of the Administration Settings, auto-generated, UUID | [optional] 
**createdTime** | **int** | Timestamp of the settings creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**key** | **String** | The Administration Settings key, (e.g. 'general' or 'mail') | [optional] 
**jsonValue** | [**JsonObject**](.md) | JSON representation of the Administration Settings value | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


