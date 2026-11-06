# thingsboard_client.model.TbChatRequest

## Load the model package
```dart
import 'package:thingsboard_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**systemMessage** | **String** | A system-level instruction that frames the user's input, setting the persona, tone, and constraints for the generated response | [optional] 
**userMessage** | [**TbUserMessage**](TbUserMessage.md) | The actual user prompt that will be answered by the AI model | 
**chatModelConfig** | [**AiModelConfig**](AiModelConfig.md) | Configuration of the AI chat model that should execute the request | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


