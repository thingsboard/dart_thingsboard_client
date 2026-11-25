# thingsboard_client.model.AssetProfile

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**AssetProfileId**](AssetProfileId.md) | JSON object with the asset profile Id. Specify this field to update the asset profile. Referencing non-existing asset profile Id will cause error. Omit this field to create new asset profile. | [optional] 
**createdTime** | **int** | Timestamp of the profile creation, in milliseconds | [optional] 
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id that owns the profile. | [optional] 
**name** | **String** | Unique Asset Profile Name in scope of Tenant. | [optional] 
**description** | **String** | Asset Profile description.  | [optional] 
**image** | **String** | Either URL or Base64 data of the icon. Used in the mobile application to visualize set of asset profiles in the grid view.  | [optional] 
**defaultRuleChainId** | [**RuleChainId**](RuleChainId.md) | Reference to the rule chain. If present, the specified rule chain will be used to process all messages related to asset, including asset updates, telemetry, attribute updates, etc. Otherwise, the root rule chain will be used to process those messages. | [optional] 
**defaultDashboardId** | [**DashboardId**](DashboardId.md) | Reference to the dashboard. Used in the mobile application to open the default dashboard when user navigates to asset details. | [optional] 
**defaultQueueName** | **String** | Rule engine queue name. If present, the specified queue will be used to store all unprocessed messages related to asset, including asset updates, telemetry, attribute updates, etc. Otherwise, the 'Main' queue will be used to store those messages. | [optional] 
**defaultEdgeRuleChainId** | [**RuleChainId**](RuleChainId.md) | Reference to the edge rule chain. If present, the specified edge rule chain will be used on the edge to process all messages related to asset, including asset updates, telemetry, attribute updates, etc. Otherwise, the edge root rule chain will be used to process those messages. | [optional] 
**version** | **int** |  | [optional] 
**default_** | **bool** | Used to mark the default profile. Default profile is used when the asset profile is not specified during asset creation. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


