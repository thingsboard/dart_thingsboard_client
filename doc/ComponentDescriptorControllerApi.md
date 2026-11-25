# thingsboard_client.api.ComponentDescriptorControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComponentDescriptorByClazz**](ComponentDescriptorControllerApi.md#getcomponentdescriptorbyclazz) | **GET** /api/component/{componentDescriptorClazz} | Get Component Descriptor (getComponentDescriptorByClazz)
[**getComponentDescriptorsByType**](ComponentDescriptorControllerApi.md#getcomponentdescriptorsbytype) | **GET** /api/components/{componentType} | Get Component Descriptors (getComponentDescriptorsByType)
[**getComponentDescriptorsByTypes**](ComponentDescriptorControllerApi.md#getcomponentdescriptorsbytypes) | **GET** /api/components | Get Component Descriptors (getComponentDescriptorsByTypes)


# **getComponentDescriptorByClazz**
> ComponentDescriptor getComponentDescriptorByClazz(componentDescriptorClazz)

Get Component Descriptor (getComponentDescriptorByClazz)

Gets the Component Descriptor object using class name from the path parameters. Each Component Descriptor represents configuration of specific rule node (e.g. 'Save Timeseries' or 'Send Email'.). The Component Descriptors are used by the rule chain Web UI to build the configuration forms for the rule nodes. The Component Descriptors are discovered at runtime by scanning the class path and searching for @RuleNode annotation. Once discovered, the up to date list of descriptors is persisted to the database.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getComponentDescriptorControllerApi();
final String componentDescriptorClazz = componentDescriptorClazz_example; // String | Component Descriptor class name

try {
    final response = api.getComponentDescriptorByClazz(componentDescriptorClazz);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ComponentDescriptorControllerApi->getComponentDescriptorByClazz: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **componentDescriptorClazz** | **String**| Component Descriptor class name | 

### Return type

[**ComponentDescriptor**](ComponentDescriptor.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComponentDescriptorsByType**
> BuiltList<ComponentDescriptor> getComponentDescriptorsByType(componentType, ruleChainType)

Get Component Descriptors (getComponentDescriptorsByType)

Gets the Component Descriptors using rule node type and optional rule chain type request parameters. Each Component Descriptor represents configuration of specific rule node (e.g. 'Save Timeseries' or 'Send Email'.). The Component Descriptors are used by the rule chain Web UI to build the configuration forms for the rule nodes. The Component Descriptors are discovered at runtime by scanning the class path and searching for @RuleNode annotation. Once discovered, the up to date list of descriptors is persisted to the database.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getComponentDescriptorControllerApi();
final String componentType = componentType_example; // String | Type of the Rule Node
final String ruleChainType = ruleChainType_example; // String | Type of the Rule Chain

try {
    final response = api.getComponentDescriptorsByType(componentType, ruleChainType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ComponentDescriptorControllerApi->getComponentDescriptorsByType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **componentType** | **String**| Type of the Rule Node | 
 **ruleChainType** | **String**| Type of the Rule Chain | [optional] 

### Return type

[**BuiltList&lt;ComponentDescriptor&gt;**](ComponentDescriptor.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getComponentDescriptorsByTypes**
> BuiltList<ComponentDescriptor> getComponentDescriptorsByTypes(componentTypes, ruleChainType)

Get Component Descriptors (getComponentDescriptorsByTypes)

Gets the Component Descriptors using coma separated list of rule node types and optional rule chain type request parameters. Each Component Descriptor represents configuration of specific rule node (e.g. 'Save Timeseries' or 'Send Email'.). The Component Descriptors are used by the rule chain Web UI to build the configuration forms for the rule nodes. The Component Descriptors are discovered at runtime by scanning the class path and searching for @RuleNode annotation. Once discovered, the up to date list of descriptors is persisted to the database.  Available for users with 'SYS_ADMIN' or 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getComponentDescriptorControllerApi();
final BuiltList<String> componentTypes = ; // BuiltList<String> | List of types of the Rule Nodes, (ENRICHMENT, FILTER, TRANSFORMATION, ACTION or EXTERNAL)
final String ruleChainType = ruleChainType_example; // String | Type of the Rule Chain

try {
    final response = api.getComponentDescriptorsByTypes(componentTypes, ruleChainType);
    print(response);
} on DioException catch (e) {
    print('Exception when calling ComponentDescriptorControllerApi->getComponentDescriptorsByTypes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **componentTypes** | [**BuiltList&lt;String&gt;**](String.md)| List of types of the Rule Nodes, (ENRICHMENT, FILTER, TRANSFORMATION, ACTION or EXTERNAL) | 
 **ruleChainType** | **String**| Type of the Rule Chain | [optional] 

### Return type

[**BuiltList&lt;ComponentDescriptor&gt;**](ComponentDescriptor.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

