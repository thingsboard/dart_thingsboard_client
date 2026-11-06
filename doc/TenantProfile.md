# thingsboard_client.model.TenantProfile

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**TenantProfileId**](TenantProfileId.md) | JSON object with the tenant profile Id. Specify this field to update the tenant profile. Referencing non-existing tenant profile Id will cause error. Omit this field to create new tenant profile. | [optional] 
**createdTime** | **int** | Timestamp of the tenant profile creation, in milliseconds | [optional] 
**name** | **String** | Name of the tenant profile | [optional] 
**description** | **String** | Description of the tenant profile | [optional] 
**default_** | **bool** | Default Tenant profile to be used. | [optional] 
**isolatedTbRuleEngine** | **bool** | If enabled, will push all messages related to this tenant and processed by the rule engine into separate queue. Useful for complex microservices deployments, to isolate processing of the data for specific tenants | [optional] 
**profileData** | [**TenantProfileData**](TenantProfileData.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


