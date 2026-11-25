# thingsboard_client.api.EntityRelationControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteRelation**](EntityRelationControllerApi.md#deleterelation) | **DELETE** /api/v2/relation | Delete Relation (deleteRelation)
[**deleteRelations**](EntityRelationControllerApi.md#deleterelations) | **DELETE** /api/relations | Delete common relations (deleteRelations)
[**findEntityRelationInfosByFrom**](EntityRelationControllerApi.md#findentityrelationinfosbyfrom) | **GET** /api/relations/info/from/{fromType}/{fromId} | Get List of Relation Infos (findEntityRelationInfosByFrom)
[**findEntityRelationInfosByQuery**](EntityRelationControllerApi.md#findentityrelationinfosbyquery) | **POST** /api/relations/info | Find related entity infos (findEntityRelationInfosByQuery)
[**findEntityRelationInfosByTo**](EntityRelationControllerApi.md#findentityrelationinfosbyto) | **GET** /api/relations/info/to/{toType}/{toId} | Get List of Relation Infos (findEntityRelationInfosByTo)
[**findEntityRelationsByFrom**](EntityRelationControllerApi.md#findentityrelationsbyfrom) | **GET** /api/relations/from/{fromType}/{fromId} | Get List of Relations (findEntityRelationsByFrom)
[**findEntityRelationsByFromAndRelationType**](EntityRelationControllerApi.md#findentityrelationsbyfromandrelationtype) | **GET** /api/relations/from/{fromType}/{fromId}/{relationType} | Get List of Relations (findEntityRelationsByFromAndRelationType)
[**findEntityRelationsByQuery**](EntityRelationControllerApi.md#findentityrelationsbyquery) | **POST** /api/relations | Find related entities (findEntityRelationsByQuery)
[**findEntityRelationsByTo**](EntityRelationControllerApi.md#findentityrelationsbyto) | **GET** /api/relations/to/{toType}/{toId} | Get List of Relations (findEntityRelationsByTo)
[**findEntityRelationsByToAndRelationType**](EntityRelationControllerApi.md#findentityrelationsbytoandrelationtype) | **GET** /api/relations/to/{toType}/{toId}/{relationType} | Get List of Relations (findEntityRelationsByToAndRelationType)
[**getRelation**](EntityRelationControllerApi.md#getrelation) | **GET** /api/relation | Get Relation (getRelation)
[**saveRelation**](EntityRelationControllerApi.md#saverelation) | **POST** /api/v2/relation | Create Relation (saveRelation)


# **deleteRelation**
> EntityRelation deleteRelation(fromId, fromType, relationType, toId, toType, relationTypeGroup)

Delete Relation (deleteRelation)

Deletes a relation between two entities in the platform.   If the user has the authority of 'System Administrator', the server checks that 'from' and 'to' entities are owned by the sysadmin. If the user has the authority of 'Tenant Administrator', the server checks that 'from' and 'to' entities are owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the 'from' and 'to' entities are assigned to the same customer.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityRelationControllerApi();
final String fromId = fromId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String fromType = fromType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String relationType = relationType_example; // String | A string value representing relation type between entities. For example, 'Contains', 'Manages'. It can be any string value.
final String toId = toId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String toType = toType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String relationTypeGroup = relationTypeGroup_example; // String | A string value representing relation type group. For example, 'COMMON'

try {
    final response = api.deleteRelation(fromId, fromType, relationType, toId, toType, relationTypeGroup);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityRelationControllerApi->deleteRelation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **fromType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **relationType** | **String**| A string value representing relation type between entities. For example, 'Contains', 'Manages'. It can be any string value. | 
 **toId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **toType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **relationTypeGroup** | **String**| A string value representing relation type group. For example, 'COMMON' | [optional] 

### Return type

[**EntityRelation**](EntityRelation.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRelations**
> deleteRelations(entityId, entityType)

Delete common relations (deleteRelations)

Deletes all the relations ('from' and 'to' direction) for the specified entity and relation type group: 'COMMON'.   If the user has the authority of 'System Administrator', the server checks that the entity is owned by the sysadmin. If the user has the authority of 'Tenant Administrator', the server checks that the entity is owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the entity is assigned to the same customer.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityRelationControllerApi();
final String entityId = entityId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String entityType = entityType_example; // String | A string value representing the entity type. For example, 'DEVICE'

try {
    api.deleteRelations(entityId, entityType);
} on DioException catch (e) {
    print('Exception when calling EntityRelationControllerApi->deleteRelations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **entityType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEntityRelationInfosByFrom**
> BuiltList<EntityRelationInfo> findEntityRelationInfosByFrom(fromType, fromId, relationTypeGroup)

Get List of Relation Infos (findEntityRelationInfosByFrom)

Returns list of relation info objects for the specified entity by the 'from' direction.   If the user has the authority of 'System Administrator', the server checks that the entity is owned by the sysadmin. If the user has the authority of 'Tenant Administrator', the server checks that the entity is owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the entity is assigned to the same customer. Relation Info is an extension of the default Relation object that contains information about the 'from' and 'to' entity names. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityRelationControllerApi();
final String fromType = fromType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String fromId = fromId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String relationTypeGroup = relationTypeGroup_example; // String | A string value representing relation type group. For example, 'COMMON'

try {
    final response = api.findEntityRelationInfosByFrom(fromType, fromId, relationTypeGroup);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityRelationControllerApi->findEntityRelationInfosByFrom: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **fromId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **relationTypeGroup** | **String**| A string value representing relation type group. For example, 'COMMON' | [optional] 

### Return type

[**BuiltList&lt;EntityRelationInfo&gt;**](EntityRelationInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEntityRelationInfosByQuery**
> BuiltList<EntityRelationInfo> findEntityRelationInfosByQuery(entityRelationsQuery)

Find related entity infos (findEntityRelationInfosByQuery)

Returns all entity infos that are related to the specific entity. The entity id, relation type, entity types, depth of the search, and other query parameters defined using complex 'EntityRelationsQuery' object. See 'Model' tab of the Parameters for more info. Relation Info is an extension of the default Relation object that contains information about the 'from' and 'to' entity names. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityRelationControllerApi();
final EntityRelationsQuery entityRelationsQuery = ; // EntityRelationsQuery | 

try {
    final response = api.findEntityRelationInfosByQuery(entityRelationsQuery);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityRelationControllerApi->findEntityRelationInfosByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityRelationsQuery** | [**EntityRelationsQuery**](EntityRelationsQuery.md)|  | 

### Return type

[**BuiltList&lt;EntityRelationInfo&gt;**](EntityRelationInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEntityRelationInfosByTo**
> BuiltList<EntityRelationInfo> findEntityRelationInfosByTo(toType, toId, relationTypeGroup)

Get List of Relation Infos (findEntityRelationInfosByTo)

Returns list of relation info objects for the specified entity by the 'to' direction.   If the user has the authority of 'System Administrator', the server checks that the entity is owned by the sysadmin. If the user has the authority of 'Tenant Administrator', the server checks that the entity is owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the entity is assigned to the same customer. Relation Info is an extension of the default Relation object that contains information about the 'from' and 'to' entity names. 

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityRelationControllerApi();
final String toType = toType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String toId = toId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String relationTypeGroup = relationTypeGroup_example; // String | A string value representing relation type group. For example, 'COMMON'

try {
    final response = api.findEntityRelationInfosByTo(toType, toId, relationTypeGroup);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityRelationControllerApi->findEntityRelationInfosByTo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **toId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **relationTypeGroup** | **String**| A string value representing relation type group. For example, 'COMMON' | [optional] 

### Return type

[**BuiltList&lt;EntityRelationInfo&gt;**](EntityRelationInfo.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEntityRelationsByFrom**
> BuiltList<EntityRelation> findEntityRelationsByFrom(fromType, fromId, relationTypeGroup)

Get List of Relations (findEntityRelationsByFrom)

Returns list of relation objects for the specified entity by the 'from' direction.   If the user has the authority of 'System Administrator', the server checks that the entity is owned by the sysadmin. If the user has the authority of 'Tenant Administrator', the server checks that the entity is owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the entity is assigned to the same customer.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityRelationControllerApi();
final String fromType = fromType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String fromId = fromId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String relationTypeGroup = relationTypeGroup_example; // String | A string value representing relation type group. For example, 'COMMON'

try {
    final response = api.findEntityRelationsByFrom(fromType, fromId, relationTypeGroup);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityRelationControllerApi->findEntityRelationsByFrom: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **fromId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **relationTypeGroup** | **String**| A string value representing relation type group. For example, 'COMMON' | [optional] 

### Return type

[**BuiltList&lt;EntityRelation&gt;**](EntityRelation.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEntityRelationsByFromAndRelationType**
> BuiltList<EntityRelation> findEntityRelationsByFromAndRelationType(fromType, fromId, relationType, relationTypeGroup)

Get List of Relations (findEntityRelationsByFromAndRelationType)

Returns list of relation objects for the specified entity by the 'from' direction and relation type.   If the user has the authority of 'System Administrator', the server checks that the entity is owned by the sysadmin. If the user has the authority of 'Tenant Administrator', the server checks that the entity is owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the entity is assigned to the same customer.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityRelationControllerApi();
final String fromType = fromType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String fromId = fromId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String relationType = relationType_example; // String | A string value representing relation type between entities. For example, 'Contains', 'Manages'. It can be any string value.
final String relationTypeGroup = relationTypeGroup_example; // String | A string value representing relation type group. For example, 'COMMON'

try {
    final response = api.findEntityRelationsByFromAndRelationType(fromType, fromId, relationType, relationTypeGroup);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityRelationControllerApi->findEntityRelationsByFromAndRelationType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **fromId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **relationType** | **String**| A string value representing relation type between entities. For example, 'Contains', 'Manages'. It can be any string value. | 
 **relationTypeGroup** | **String**| A string value representing relation type group. For example, 'COMMON' | [optional] 

### Return type

[**BuiltList&lt;EntityRelation&gt;**](EntityRelation.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEntityRelationsByQuery**
> BuiltList<EntityRelation> findEntityRelationsByQuery(entityRelationsQuery)

Find related entities (findEntityRelationsByQuery)

Returns all entities that are related to the specific entity. The entity id, relation type, entity types, depth of the search, and other query parameters defined using complex 'EntityRelationsQuery' object. See 'Model' tab of the Parameters for more info.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityRelationControllerApi();
final EntityRelationsQuery entityRelationsQuery = ; // EntityRelationsQuery | 

try {
    final response = api.findEntityRelationsByQuery(entityRelationsQuery);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityRelationControllerApi->findEntityRelationsByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityRelationsQuery** | [**EntityRelationsQuery**](EntityRelationsQuery.md)|  | 

### Return type

[**BuiltList&lt;EntityRelation&gt;**](EntityRelation.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEntityRelationsByTo**
> BuiltList<EntityRelation> findEntityRelationsByTo(toType, toId, relationTypeGroup)

Get List of Relations (findEntityRelationsByTo)

Returns list of relation objects for the specified entity by the 'to' direction.   If the user has the authority of 'System Administrator', the server checks that the entity is owned by the sysadmin. If the user has the authority of 'Tenant Administrator', the server checks that the entity is owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the entity is assigned to the same customer.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityRelationControllerApi();
final String toType = toType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String toId = toId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String relationTypeGroup = relationTypeGroup_example; // String | A string value representing relation type group. For example, 'COMMON'

try {
    final response = api.findEntityRelationsByTo(toType, toId, relationTypeGroup);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityRelationControllerApi->findEntityRelationsByTo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **toId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **relationTypeGroup** | **String**| A string value representing relation type group. For example, 'COMMON' | [optional] 

### Return type

[**BuiltList&lt;EntityRelation&gt;**](EntityRelation.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEntityRelationsByToAndRelationType**
> BuiltList<EntityRelation> findEntityRelationsByToAndRelationType(toType, toId, relationType, relationTypeGroup)

Get List of Relations (findEntityRelationsByToAndRelationType)

Returns list of relation objects for the specified entity by the 'to' direction and relation type.   If the user has the authority of 'System Administrator', the server checks that the entity is owned by the sysadmin. If the user has the authority of 'Tenant Administrator', the server checks that the entity is owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the entity is assigned to the same customer.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityRelationControllerApi();
final String toType = toType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String toId = toId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String relationType = relationType_example; // String | A string value representing relation type between entities. For example, 'Contains', 'Manages'. It can be any string value.
final String relationTypeGroup = relationTypeGroup_example; // String | A string value representing relation type group. For example, 'COMMON'

try {
    final response = api.findEntityRelationsByToAndRelationType(toType, toId, relationType, relationTypeGroup);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityRelationControllerApi->findEntityRelationsByToAndRelationType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **toId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **relationType** | **String**| A string value representing relation type between entities. For example, 'Contains', 'Manages'. It can be any string value. | 
 **relationTypeGroup** | **String**| A string value representing relation type group. For example, 'COMMON' | [optional] 

### Return type

[**BuiltList&lt;EntityRelation&gt;**](EntityRelation.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRelation**
> EntityRelation getRelation(fromId, fromType, relationType, toId, toType, relationTypeGroup)

Get Relation (getRelation)

Returns relation object between two specified entities if present. Otherwise throws exception.   If the user has the authority of 'System Administrator', the server checks that 'from' and 'to' entities are owned by the sysadmin. If the user has the authority of 'Tenant Administrator', the server checks that 'from' and 'to' entities are owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the 'from' and 'to' entities are assigned to the same customer.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityRelationControllerApi();
final String fromId = fromId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String fromType = fromType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String relationType = relationType_example; // String | A string value representing relation type between entities. For example, 'Contains', 'Manages'. It can be any string value.
final String toId = toId_example; // String | A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
final String toType = toType_example; // String | A string value representing the entity type. For example, 'DEVICE'
final String relationTypeGroup = relationTypeGroup_example; // String | A string value representing relation type group. For example, 'COMMON'

try {
    final response = api.getRelation(fromId, fromType, relationType, toId, toType, relationTypeGroup);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityRelationControllerApi->getRelation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fromId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **fromType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **relationType** | **String**| A string value representing relation type between entities. For example, 'Contains', 'Manages'. It can be any string value. | 
 **toId** | **String**| A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9' | 
 **toType** | **String**| A string value representing the entity type. For example, 'DEVICE' | 
 **relationTypeGroup** | **String**| A string value representing relation type group. For example, 'COMMON' | [optional] 

### Return type

[**EntityRelation**](EntityRelation.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveRelation**
> EntityRelation saveRelation(entityRelation)

Create Relation (saveRelation)

Creates or updates a relation between two entities in the platform. Relations unique key is a combination of from/to entity id and relation type group and relation type.   If the user has the authority of 'System Administrator', the server checks that 'from' and 'to' entities are owned by the sysadmin. If the user has the authority of 'Tenant Administrator', the server checks that 'from' and 'to' entities are owned by the same tenant. If the user has the authority of 'Customer User', the server checks that the 'from' and 'to' entities are assigned to the same customer.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityRelationControllerApi();
final EntityRelation entityRelation = ; // EntityRelation | 

try {
    final response = api.saveRelation(entityRelation);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityRelationControllerApi->saveRelation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityRelation** | [**EntityRelation**](EntityRelation.md)|  | 

### Return type

[**EntityRelation**](EntityRelation.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

