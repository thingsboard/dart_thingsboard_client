# thingsboard_client.model.AgentAppTemplate

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tenantId** | [**TenantId**](TenantId.md) | JSON object with Tenant Id. | [optional] 
**appType** | [**AgentApplicationType**](AgentApplicationType.md) | Application type | 
**configType** | [**AgentAppConfigType**](AgentAppConfigType.md) | Config type (e.g. 'DOCKER_COMPOSE'); the compose body lives in the template's compose-template step, not here | [optional] 
**currentVersion** | **String** | Current template version | 
**nextVersion** | **String** | Next template version | [optional] 
**startSteps** | [**BuiltList&lt;AgentAppTemplateStartStepsInner&gt;**](AgentAppTemplateStartStepsInner.md) | Start steps | [optional] 
**upgradeSteps** | [**BuiltList&lt;AgentAppTemplateStartStepsInner&gt;**](AgentAppTemplateStartStepsInner.md) | Upgrade steps | [optional] 
**deleteSteps** | [**BuiltList&lt;AgentAppTemplateStartStepsInner&gt;**](AgentAppTemplateStartStepsInner.md) | Delete steps | [optional] 
**rollbackSteps** | [**BuiltList&lt;AgentAppTemplateStartStepsInner&gt;**](AgentAppTemplateStartStepsInner.md) | Rollback steps | [optional] 
**restartSteps** | [**BuiltList&lt;AgentAppTemplateStartStepsInner&gt;**](AgentAppTemplateStartStepsInner.md) | Restart steps | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


