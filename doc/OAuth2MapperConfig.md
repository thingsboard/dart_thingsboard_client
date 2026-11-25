# thingsboard_client.model.OAuth2MapperConfig

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowUserCreation** | **bool** | Whether user should be created if not yet present on the platform after successful authentication | [optional] 
**activateUser** | **bool** | Whether user credentials should be activated when user is created after successful authentication | [optional] 
**type** | [**MapperType**](MapperType.md) | Type of OAuth2 mapper. Depending on this param, different mapper config fields must be specified | 
**basic** | [**OAuth2BasicMapperConfig**](OAuth2BasicMapperConfig.md) | Mapper config for BASIC and GITHUB mapper types | [optional] 
**custom** | [**OAuth2CustomMapperConfig**](OAuth2CustomMapperConfig.md) | Mapper config for CUSTOM mapper type | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


