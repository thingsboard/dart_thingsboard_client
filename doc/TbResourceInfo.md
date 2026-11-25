# thingsboard_client.model.TbResourceInfo

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**TbResourceId**](TbResourceId.md) | JSON object with the Resource Id. Specify this field to update the Resource. Referencing non-existing Resource Id will cause error. Omit this field to create new Resource. | [optional] 
**createdTime** | **int** | Timestamp of the resource creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. Tenant Id of the resource can't be changed. | [optional] 
**customerId** | [**CustomerId**](CustomerId.md) | JSON object with Customer Id. Customer Id of the resource can't be changed. | [optional] 
**title** | **String** | Resource title. | [optional] 
**resourceType** | [**ResourceType**](ResourceType.md) | Resource type. | [optional] 
**resourceSubType** | [**ResourceSubType**](ResourceSubType.md) | Resource sub type. | [optional] 
**resourceKey** | **String** | Resource key. | [optional] 
**publicResourceKey** | **String** | Public resource key. | [optional] 
**etag** | **String** | Resource etag. | [optional] 
**fileName** | **String** | Resource file name. | [optional] 
**descriptor** | [**JsonObject**](.md) | Resource descriptor. | [optional] 
**link** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**public** | **bool** |  | [optional] 
**publicLink** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


