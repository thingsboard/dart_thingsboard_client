# thingsboard_client.model.SolutionExportRequest

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**internalIds** | [**BuiltSet&lt;EntityId&gt;**](EntityId.md) | Set of internal entity IDs to export. The 'id' of each EntityId is the server-internal UUID. All listed entities must belong to the current tenant. Optional, but at least one of 'internalIds' or 'externalIds' must be non-empty. | [optional] 
**externalIds** | [**BuiltSet&lt;EntityId&gt;**](EntityId.md) | Set of external entity IDs to export. The 'id' of each EntityId is the external UUID (as stored in the 'externalId' field on the entity in the current tenant). The server looks up each entity by 'externalId' and 'entityType' within the current tenant. Optional, but at least one of 'internalIds' or 'externalIds' must be non-empty. | [optional] 
**settings** | [**EntityExportSettings**](EntityExportSettings.md) | Optional export settings controlling what additional data is included (relations, attributes, credentials, etc.). If not specified, default settings will be used that include all available data. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


