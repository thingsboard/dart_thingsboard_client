# thingsboard_client.api.IntegrationControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignIntegrationToEdge**](IntegrationControllerApi.md#assignintegrationtoedge) | **POST** /api/edge/{edgeId}/integration/{integrationId} | Assign integration to edge (assignIntegrationToEdge)
[**checkIntegrationConnection**](IntegrationControllerApi.md#checkintegrationconnection) | **POST** /api/integration/check | Check integration connectivity (checkIntegrationConnection)
[**deleteIntegration**](IntegrationControllerApi.md#deleteintegration) | **DELETE** /api/integration/{integrationId} | Delete integration (deleteIntegration)
[**exportIntegrationPackage**](IntegrationControllerApi.md#exportintegrationpackage) | **GET** /api/integration/{integrationId}/export-package | Export integration as IoT Hub package
[**findAllRelatedEdgesMissingAttributes**](IntegrationControllerApi.md#findallrelatededgesmissingattributes) | **GET** /api/edge/integration/{integrationId}/allMissingAttributes | Find missing attributes for all related edges (findAllRelatedEdgesMissingAttributes)
[**findEdgeMissingAttributes**](IntegrationControllerApi.md#findedgemissingattributes) | **GET** /api/edge/integration/{edgeId}/missingAttributes | Find edge missing attributes for assigned integrations (findEdgeMissingAttributes)
[**getEdgeIntegrationInfos**](IntegrationControllerApi.md#getedgeintegrationinfos) | **GET** /api/edge/{edgeId}/integrationInfos | Get Edge Integrations (getEdgeIntegrationInfos)
[**getEdgeIntegrations**](IntegrationControllerApi.md#getedgeintegrations) | **GET** /api/edge/{edgeId}/integrations | Get Edge Integrations (getEdgeIntegrations)
[**getIntegrationById**](IntegrationControllerApi.md#getintegrationbyid) | **GET** /api/integration/{integrationId} | Get Integration (getIntegrationById)
[**getIntegrationByRoutingKey**](IntegrationControllerApi.md#getintegrationbyroutingkey) | **GET** /api/integration/routingKey/{routingKey} | Get Integration by Routing Key (getIntegrationByRoutingKey)
[**getIntegrationInfos**](IntegrationControllerApi.md#getintegrationinfos) | **GET** /api/integrationInfos | Get Integration Infos (getIntegrationInfos)
[**getIntegrations**](IntegrationControllerApi.md#getintegrations) | **GET** /api/integrations | Get Integrations (getIntegrations)
[**getIntegrationsByIds**](IntegrationControllerApi.md#getintegrationsbyids) | **GET** /api/integrations/list | Get Integrations By Ids (getIntegrationsByIds)
[**getIntegrationsConvertersInfo**](IntegrationControllerApi.md#getintegrationsconvertersinfo) | **GET** /api/integrations/converters/info | Get Integrations Converters info (getIntegrationsConvertersInfo)
[**saveIntegration**](IntegrationControllerApi.md#saveintegration) | **POST** /api/integration | Create Or Update Integration (saveIntegration)
[**unassignIntegrationFromEdge**](IntegrationControllerApi.md#unassignintegrationfromedge) | **DELETE** /api/edge/{edgeId}/integration/{integrationId} | Unassign integration from edge (unassignIntegrationFromEdge)


# **assignIntegrationToEdge**
> Integration assignIntegrationToEdge(edgeId, integrationId)

Assign integration to edge (assignIntegrationToEdge)

Creates assignment of an existing integration edge template to an instance of The Edge. Assignment works in async way - first, notification event pushed to edge service queue on platform. Second, remote edge service will receive a copy of assignment integration (Edge will receive this instantly, if it's currently connected, or once it's going to be connected to platform). Third, once integration will be delivered to edge service, it's going to start locally.   Only integration edge template can be assigned to edge.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final String edgeId = edgeId_example; // String | 
final String integrationId = integrationId_example; // String | 

try {
    final response = api.assignIntegrationToEdge(edgeId, integrationId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->assignIntegrationToEdge: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**|  | 
 **integrationId** | **String**|  | 

### Return type

[**Integration**](Integration.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkIntegrationConnection**
> checkIntegrationConnection(integration)

Check integration connectivity (checkIntegrationConnection)

Checks if the connection to the integration is established. Throws an error if the connection is not established. Example: Failed to connect to MQTT broker at host:port.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final Integration integration = ; // Integration | 

try {
    api.checkIntegrationConnection(integration);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->checkIntegrationConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration** | [**Integration**](Integration.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIntegration**
> deleteIntegration(integrationId)

Delete integration (deleteIntegration)

Deletes the integration and all the relations (from and to the integration). Referencing non-existing integration Id will cause an error.    Security check is performed to verify that the user has 'DELETE' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final String integrationId = integrationId_example; // String | A string value representing the integration id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    api.deleteIntegration(integrationId);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->deleteIntegration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationId** | **String**| A string value representing the integration id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportIntegrationPackage**
> Uint8List exportIntegrationPackage(integrationId)

Export integration as IoT Hub package

Returns a ZIP containing integration.json, uplink.json, optional downlink.json, and form.json. Sensitive fields are tokenized via @TemplateField annotations on the integration's runtime POJO.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final String integrationId = integrationId_example; // String | 

try {
    final response = api.exportIntegrationPackage(integrationId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->exportIntegrationPackage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationId** | **String**|  | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllRelatedEdgesMissingAttributes**
> String findAllRelatedEdgesMissingAttributes(integrationId)

Find missing attributes for all related edges (findAllRelatedEdgesMissingAttributes)

Returns list of attribute names of all related edges that are missing in the integration configuration.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final String integrationId = integrationId_example; // String | A string value representing the integration id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.findAllRelatedEdgesMissingAttributes(integrationId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->findAllRelatedEdgesMissingAttributes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationId** | **String**| A string value representing the integration id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEdgeMissingAttributes**
> String findEdgeMissingAttributes(edgeId, integrationIds)

Find edge missing attributes for assigned integrations (findEdgeMissingAttributes)

Returns list of edge attribute names that are missing in assigned integrations.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final BuiltList<String> integrationIds = ; // BuiltList<String> | A list of assigned integration ids, separated by comma ','

try {
    final response = api.findEdgeMissingAttributes(edgeId, integrationIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->findEdgeMissingAttributes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **integrationIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of assigned integration ids, separated by comma ',' | 

### Return type

**String**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgeIntegrationInfos**
> PageDataIntegrationInfo getEdgeIntegrationInfos(edgeId, pageSize, page, textSearch, sortProperty, sortOrder)

Get Edge Integrations (getEdgeIntegrationInfos)

Returns a page of Integrations assigned to the specified edge. The integration object contains information about the Integration, including the heavyweight configuration object. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the integration name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEdgeIntegrationInfos(edgeId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->getEdgeIntegrationInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the integration name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataIntegrationInfo**](PageDataIntegrationInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgeIntegrations**
> PageDataIntegration getEdgeIntegrations(edgeId, pageSize, page, textSearch, sortProperty, sortOrder)

Get Edge Integrations (getEdgeIntegrations)

Returns a page of Integrations assigned to the specified edge. The integration object contains information about the Integration, including the heavyweight configuration object. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final String edgeId = edgeId_example; // String | A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the integration name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getEdgeIntegrations(edgeId, pageSize, page, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->getEdgeIntegrations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**| A string value representing the edge id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the integration name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataIntegration**](PageDataIntegration.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIntegrationById**
> Integration getIntegrationById(integrationId)

Get Integration (getIntegrationById)

Fetch the Integration object based on the provided Integration Id. The server checks that the integration is owned by the same tenant.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final String integrationId = integrationId_example; // String | A string value representing the integration id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'

try {
    final response = api.getIntegrationById(integrationId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->getIntegrationById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationId** | **String**| A string value representing the integration id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 

### Return type

[**Integration**](Integration.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIntegrationByRoutingKey**
> Integration getIntegrationByRoutingKey(routingKey)

Get Integration by Routing Key (getIntegrationByRoutingKey)

Fetch the Integration object based on the provided routing key. The server checks that the integration is owned by the same tenant.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final String routingKey = routingKey_example; // String | A string value representing the integration routing key. For example, '542047e6-c1b2-112e-a87e-e49247c09d4b'

try {
    final response = api.getIntegrationByRoutingKey(routingKey);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->getIntegrationByRoutingKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **routingKey** | **String**| A string value representing the integration routing key. For example, '542047e6-c1b2-112e-a87e-e49247c09d4b' | 

### Return type

[**Integration**](Integration.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIntegrationInfos**
> PageDataIntegrationInfo getIntegrationInfos(pageSize, page, isEdgeTemplate, textSearch, sortProperty, sortOrder)

Get Integration Infos (getIntegrationInfos)

Returns a page of integration infos owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final bool isEdgeTemplate = true; // bool | Fetch edge template integrations
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the integration name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getIntegrationInfos(pageSize, page, isEdgeTemplate, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->getIntegrationInfos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **isEdgeTemplate** | **bool**| Fetch edge template integrations | [optional] [default to false]
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the integration name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataIntegrationInfo**](PageDataIntegrationInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIntegrations**
> PageDataIntegration getIntegrations(pageSize, page, isEdgeTemplate, textSearch, sortProperty, sortOrder)

Get Integrations (getIntegrations)

Returns a page of integrations owned by tenant. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final int pageSize = 56; // int | Maximum amount of entities in a one page
final int page = 56; // int | Sequence number of page starting from 0
final bool isEdgeTemplate = true; // bool | Fetch edge template integrations
final String textSearch = textSearch_example; // String | The case insensitive 'startsWith' filter based on the integration name.
final String sortProperty = sortProperty_example; // String | Property of entity to sort by
final String sortOrder = sortOrder_example; // String | Sort order. ASC (ASCENDING) or DESC (DESCENDING)

try {
    final response = api.getIntegrations(pageSize, page, isEdgeTemplate, textSearch, sortProperty, sortOrder);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->getIntegrations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Maximum amount of entities in a one page | 
 **page** | **int**| Sequence number of page starting from 0 | 
 **isEdgeTemplate** | **bool**| Fetch edge template integrations | [optional] [default to false]
 **textSearch** | **String**| The case insensitive 'startsWith' filter based on the integration name. | [optional] 
 **sortProperty** | **String**| Property of entity to sort by | [optional] 
 **sortOrder** | **String**| Sort order. ASC (ASCENDING) or DESC (DESCENDING) | [optional] 

### Return type

[**PageDataIntegration**](PageDataIntegration.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIntegrationsByIds**
> BuiltList<Integration> getIntegrationsByIds(integrationIds)

Get Integrations By Ids (getIntegrationsByIds)

Requested integrations must be owned by tenant which is performing the request.    Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final BuiltList<String> integrationIds = ; // BuiltList<String> | A list of integration ids, separated by comma ','

try {
    final response = api.getIntegrationsByIds(integrationIds);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->getIntegrationsByIds: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationIds** | [**BuiltList&lt;String&gt;**](String.md)| A list of integration ids, separated by comma ',' | 

### Return type

[**BuiltList&lt;Integration&gt;**](Integration.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIntegrationsConvertersInfo**
> BuiltMap<String, IntegrationConvertersInfo> getIntegrationsConvertersInfo()

Get Integrations Converters info (getIntegrationsConvertersInfo)

Returns a JSON object containing information about existing tenant converters and converters available in library.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();

try {
    final response = api.getIntegrationsConvertersInfo();
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->getIntegrationsConvertersInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltMap&lt;String, IntegrationConvertersInfo&gt;**](IntegrationConvertersInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveIntegration**
> Integration saveIntegration(integration)

Create Or Update Integration (saveIntegration)

Create or update the Integration. When creating integration, platform generates Integration Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created integration id will be present in the response. Specify existing Integration id to update the integration. Referencing non-existing integration Id will cause 'Not Found' error. Integration configuration is validated for each type of the integration before it can be created.   # Integration Configuration  Integration configuration (**'configuration'** field) is the JSON object representing the special configuration per integration type with the connectivity fields and other important parameters dependent on the specific integration type. Let's review the configuration object for the MQTT Integration type below.   ```json {    \"clientConfiguration\":{       \"host\":\"broker.hivemq.com\",       \"port\":1883,       \"cleanSession\":false,       \"ssl\":false,       \"connectTimeoutSec\":10,       \"clientId\":\"\",       \"maxBytesInMessage\":32368,       \"credentials\":{          \"type\":\"anonymous\"       }    },    \"downlinkTopicPattern\":\"${topic}\",    \"topicFilters\":[       {          \"filter\":\"tb/mqtt-integration-tutorial/sensors/+/temperature\",          \"qos\":0       }    ],    \"metadata\":{    } } ```  Remove 'id', 'tenantId' from the request body example (below) to create new Integration entity.   Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final Integration integration = ; // Integration | 

try {
    final response = api.saveIntegration(integration);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->saveIntegration: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration** | [**Integration**](Integration.md)|  | 

### Return type

[**Integration**](Integration.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unassignIntegrationFromEdge**
> Integration unassignIntegrationFromEdge(edgeId, integrationId)

Unassign integration from edge (unassignIntegrationFromEdge)

Clears assignment of the integration to the edge. Unassignment works in async way - first, 'unassign' notification event pushed to edge queue on platform. Second, remote edge service will receive an 'unassign' command to remove integration (Edge will receive this instantly, if it's currently connected, or once it's going to be connected to platform). Third, once 'unassign' command will be delivered to edge service, it's going to remove integration locally.  Available for users with 'TENANT_ADMIN' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getIntegrationControllerApi();
final String edgeId = edgeId_example; // String | 
final String integrationId = integrationId_example; // String | 

try {
    final response = api.unassignIntegrationFromEdge(edgeId, integrationId);
    print(response);
} on DioException catch (e) {
    print('Exception when calling IntegrationControllerApi->unassignIntegrationFromEdge: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edgeId** | **String**|  | 
 **integrationId** | **String**|  | 

### Return type

[**Integration**](Integration.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

