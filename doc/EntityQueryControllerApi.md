# thingsboard_client.api.EntityQueryControllerApi

## Load the API package
```dart
import 'package:thingsboard_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countAlarmsByQuery**](EntityQueryControllerApi.md#countalarmsbyquery) | **POST** /api/alarmsQuery/count | Count Alarms by Query (countAlarmsByQuery)
[**countEntitiesByQuery**](EntityQueryControllerApi.md#countentitiesbyquery) | **POST** /api/entitiesQuery/count | Count Entities by Query
[**findAlarmDataByQuery**](EntityQueryControllerApi.md#findalarmdatabyquery) | **POST** /api/alarmsQuery/find | Find Alarms by Query
[**findAvailableEntityKeysByQuery**](EntityQueryControllerApi.md#findavailableentitykeysbyquery) | **POST** /api/entitiesQuery/find/keys | Find Available Entity Keys by Query (deprecated)
[**findAvailableEntityKeysByQueryV2**](EntityQueryControllerApi.md#findavailableentitykeysbyqueryv2) | **POST** /api/v2/entitiesQuery/find/keys | Find Available Entity Keys By Query
[**findEntityDataByQuery**](EntityQueryControllerApi.md#findentitydatabyquery) | **POST** /api/entitiesQuery/find | Find Entity Data by Query
[**getEdqsState**](EntityQueryControllerApi.md#getedqsstate) | **GET** /api/edqs/state | getEdqsState
[**processSystemEdqsRequest**](EntityQueryControllerApi.md#processsystemedqsrequest) | **POST** /api/edqs/system/request | processSystemEdqsRequest


# **countAlarmsByQuery**
> int countAlarmsByQuery(alarmCountQuery)

Count Alarms by Query (countAlarmsByQuery)

Returns the number of alarms that match the query definition.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityQueryControllerApi();
final AlarmCountQuery alarmCountQuery = ; // AlarmCountQuery | 

try {
    final response = api.countAlarmsByQuery(alarmCountQuery);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityQueryControllerApi->countAlarmsByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmCountQuery** | [**AlarmCountQuery**](AlarmCountQuery.md)|  | 

### Return type

**int**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **countEntitiesByQuery**
> int countEntitiesByQuery(entityCountQuery)

Count Entities by Query

Allows to run complex queries to search the count of platform entities (devices, assets, customers, etc) based on the combination of main entity filter and multiple key filters. Returns the number of entities that match the query definition.  # Query Definition    Main **entity filter** is mandatory and defines generic search criteria. For example, \"find all devices with profile 'Moisture Sensor'\" or \"Find all devices related to asset 'Building A'\"  Optional **key filters** allow to filter results of the entity filter by complex criteria against main entity fields (name, label, type, etc), attributes and telemetry. For example, \"temperature > 20 or temperature< 10\" or \"name starts with 'T', and attribute 'model' is 'T1000', and time series field 'batteryLevel' > 40\".  Let's review the example:  ```json {   \"entityFilter\": {     \"type\": \"entityType\",     \"entityType\": \"DEVICE\"   },   \"keyFilters\": [     {       \"key\": {         \"type\": \"ATTRIBUTE\",         \"key\": \"active\"       },       \"valueType\": \"BOOLEAN\",       \"predicate\": {         \"operation\": \"EQUAL\",         \"value\": {           \"defaultValue\": true,           \"dynamicValue\": null         },         \"type\": \"BOOLEAN\"       }     }   ] } ```   Example mentioned above search all devices which have attribute 'active' set to 'true'. Now let's review available entity filters and key filters syntax:   # Entity Filters Entity Filter body depends on the 'type' parameter. Let's review available entity filter types. In fact, they do correspond to available dashboard aliases.  ## Single Entity  Allows to filter only one entity based on the id. For example, this entity filter selects certain device:  ```json {   \"type\": \"singleEntity\",   \"singleEntity\": {     \"id\": \"d521edb0-2a7a-11ec-94eb-213c95f54092\",     \"entityType\": \"DEVICE\"   } } ```  ## Group Entities Filter  Allows to filter multiple entities of the same type using the entity group type and id. For example, this entity filter selects all devices that belong to the group 'e52b0020-2a7a-11ec-94eb-213c95f54092':  ```json {   \"type\": \"entityGroup\",   \"groupType\": \"DEVICE\",   \"entityGroup\": \"e52b0020-2a7a-11ec-94eb-213c95f54092\" } ```  ## Entity List Filter  Allows to filter entities of the same type using their ids. For example, this entity filter selects two devices:  ```json {   \"type\": \"entityList\",   \"entityType\": \"DEVICE\",   \"entityList\": [     \"e6501f30-2a7a-11ec-94eb-213c95f54092\",     \"e6657bf0-2a7a-11ec-94eb-213c95f54092\"   ] } ```  ## Entity Name Filter  Allows to filter entities of the same type using the **'starts with'** expression over entity name. For example, this entity filter selects all devices which name starts with 'Air Quality':  ```json {   \"type\": \"entityName\",   \"entityType\": \"DEVICE\",   \"entityNameFilter\": \"Air Quality\" } ```  ## Entity Type Filter  Allows to filter entities based on their type (CUSTOMER, USER, DASHBOARD, ASSET, DEVICE, etc)For example, this entity filter selects all tenant customers:  ```json {   \"type\": \"entityType\",   \"entityType\": \"CUSTOMER\" } ```  ## Group List Filter  Return multiple groups of the same type using specified ids. For example, this entity filter selects 2 device groups (if they are present in the system) with ids 'e52b0020-2a7a-11ec-94eb-213c95f54092' and 'e52b0020-2a7a-11ec-94eb-213c95f54093':  ```json {   \"type\": \"entityGroupList\",   \"groupType\": \"DEVICE\",   \"entityGroupList\": [\"e52b0020-2a7a-11ec-94eb-213c95f54092\", \"e52b0020-2a7a-11ec-94eb-213c95f54093\"] } ```  ## Group Name Filter  Allows to filter entity groups based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all devices which name starts with 'CAT':  ```json {   \"type\": \"entityGroupName\",   \"groupType\": \"DEVICE\",   \"entityGroupNameFilter\": \"CAT\" } ```  ## Entities by Group Name Filter  Allows to filter entities that belong to group based on the entity type and the group name. Optional parameter 'ownerId' allows you to specify the owner of the group (Tenant or Customer, current user owner by default).For example, this entity filter selects all devices which belong to group 'Water Meters':  ```json {   \"type\": \"entitiesByGroupName\",   \"groupType\": \"DEVICE\",   \"entityGroupNameFilter\": \"Water Meters\" } ```   Other example, this entity filter selects all devices which belong to group 'Water Meters' which in turn belongs to (sub-)Customer with id 'e52b0020-2a7a-11ec-94eb-213c95f54093':   ```json {   \"type\": \"entitiesByGroupName\",   \"ownerId\": {\"entityType\": \"CUSTOMER\",\"id\":\"e52b0020-2a7a-11ec-94eb-213c95f54093\"},   \"groupType\": \"DEVICE\",   \"entityGroupNameFilter\": \"Water Meters\" } ```  ## Entity owner Filter  Allows to fetch owner (Tenant or Customer) of the specified entity. For example, this entity filter selects owner of the device with id 'e52b0020-2a7a-11ec-94eb-213c95f54093':  ```json {   \"type\": \"stateEntityOwner\",   \"singleEntity\": {     \"id\": \"d521edb0-2a7a-11ec-94eb-213c95f54092\",     \"entityType\": \"DEVICE\"   } } ```  ## Asset Type Filter  Allows to filter assets based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'charging station' assets which name starts with 'Tesla':  ```json {   \"type\": \"assetType\",   \"assetType\": \"charging station\",   \"assetNameFilter\": \"Tesla\" } ```  ## Device Type Filter  Allows to filter devices based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Temperature Sensor' devices which name starts with 'ABC':  ```json {   \"type\": \"deviceType\",   \"deviceType\": \"Temperature Sensor\",   \"deviceNameFilter\": \"ABC\" } ```  ## Edge Type Filter  Allows to filter edge instances based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Factory' edge instances which name starts with 'Nevada':  ```json {   \"type\": \"edgeType\",   \"edgeType\": \"Factory\",   \"edgeNameFilter\": \"Nevada\" } ```  ## Entity View Filter  Allows to filter entity views based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Concrete Mixer' entity views which name starts with 'CAT':  ```json {   \"type\": \"entityViewType\",   \"entityViewType\": \"Concrete Mixer\",   \"entityViewNameFilter\": \"CAT\" } ```  ## Api Usage Filter  Allows to query for Api Usage based on optional customer id. If the customer id is not set, returns current tenant API usage.For example, this entity filter selects the 'Api Usage' entity for customer with id 'e6501f30-2a7a-11ec-94eb-213c95f54092':  ```json {   \"type\": \"apiUsageState\",   \"customerId\": {     \"id\": \"d521edb0-2a7a-11ec-94eb-213c95f54092\",     \"entityType\": \"CUSTOMER\"   } } ```  ## Relations Query Filter  Allows to filter entities that are related to the provided root entity. Possible direction values are 'TO' and 'FROM'. The 'maxLevel' defines how many relation levels should the query search 'recursively'. Assuming the 'maxLevel' is > 1, the 'fetchLastLevelOnly' defines either to return all related entities or only entities that are on the last level of relations. The 'filter' object allows you to define the relation type and set of acceptable entity types to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only those who match the 'filters'.  For example, this entity filter selects all devices and assets which are related to the asset with id 'e51de0c0-2a7a-11ec-94eb-213c95f54092':  ```json {   \"type\": \"relationsQuery\",   \"rootEntity\": {     \"entityType\": \"ASSET\",     \"id\": \"e51de0c0-2a7a-11ec-94eb-213c95f54092\"   },   \"direction\": \"FROM\",   \"maxLevel\": 1,   \"fetchLastLevelOnly\": false,   \"filters\": [     {       \"relationType\": \"Contains\",       \"entityTypes\": [         \"DEVICE\",         \"ASSET\"       ]     }   ] } ```  ## Asset Search Query  Allows to filter assets that are related to the provided root entity. Filters related assets based on the relation type and set of asset types. Possible direction values are 'TO' and 'FROM'. The 'maxLevel' defines how many relation levels should the query search 'recursively'. Assuming the 'maxLevel' is > 1, the 'fetchLastLevelOnly' defines either to return all related entities or only entities that are on the last level of relations. The 'relationType' defines the type of the relation to search for. The 'assetTypes' defines the type of the asset to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only assets that match 'relationType' and 'assetTypes' conditions.  For example, this entity filter selects 'charging station' assets which are related to the asset with id 'e51de0c0-2a7a-11ec-94eb-213c95f54092' using 'Contains' relation:  ```json {   \"type\": \"assetSearchQuery\",   \"rootEntity\": {     \"entityType\": \"ASSET\",     \"id\": \"e51de0c0-2a7a-11ec-94eb-213c95f54092\"   },   \"direction\": \"FROM\",   \"maxLevel\": 1,   \"fetchLastLevelOnly\": false,   \"relationType\": \"Contains\",   \"assetTypes\": [     \"charging station\"   ] } ```  ## Device Search Query  Allows to filter devices that are related to the provided root entity. Filters related devices based on the relation type and set of device types. Possible direction values are 'TO' and 'FROM'. The 'maxLevel' defines how many relation levels should the query search 'recursively'. Assuming the 'maxLevel' is > 1, the 'fetchLastLevelOnly' defines either to return all related entities or only entities that are on the last level of relations. The 'relationType' defines the type of the relation to search for. The 'deviceTypes' defines the type of the device to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only devices that match 'relationType' and 'deviceTypes' conditions.  For example, this entity filter selects 'Charging port' and 'Air Quality Sensor' devices which are related to the asset with id 'e52b0020-2a7a-11ec-94eb-213c95f54092' using 'Contains' relation:  ```json {   \"type\": \"deviceSearchQuery\",   \"rootEntity\": {     \"entityType\": \"ASSET\",     \"id\": \"e52b0020-2a7a-11ec-94eb-213c95f54092\"   },   \"direction\": \"FROM\",   \"maxLevel\": 2,   \"fetchLastLevelOnly\": true,   \"relationType\": \"Contains\",   \"deviceTypes\": [     \"Air Quality Sensor\",     \"Charging port\"   ] } ```  ## Entity View Query  Allows to filter entity views that are related to the provided root entity. Filters related entity views based on the relation type and set of entity view types. Possible direction values are 'TO' and 'FROM'. The 'maxLevel' defines how many relation levels should the query search 'recursively'. Assuming the 'maxLevel' is > 1, the 'fetchLastLevelOnly' defines either to return all related entities or only entities that are on the last level of relations. The 'relationType' defines the type of the relation to search for. The 'entityViewTypes' defines the type of the entity view to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only devices that match 'relationType' and 'deviceTypes' conditions.  For example, this entity filter selects 'Concrete mixer' entity views which are related to the asset with id 'e52b0020-2a7a-11ec-94eb-213c95f54092' using 'Contains' relation:  ```json {   \"type\": \"entityViewSearchQuery\",   \"rootEntity\": {     \"entityType\": \"ASSET\",     \"id\": \"e52b0020-2a7a-11ec-94eb-213c95f54092\"   },   \"direction\": \"FROM\",   \"maxLevel\": 1,   \"fetchLastLevelOnly\": false,   \"relationType\": \"Contains\",   \"entityViewTypes\": [     \"Concrete mixer\"   ] } ```  ## Edge Search Query  Allows to filter edge instances that are related to the provided root entity. Filters related edge instances based on the relation type and set of edge types. Possible direction values are 'TO' and 'FROM'. The 'maxLevel' defines how many relation levels should the query search 'recursively'. Assuming the 'maxLevel' is > 1, the 'fetchLastLevelOnly' defines either to return all related entities or only entities that are on the last level of relations. The 'relationType' defines the type of the relation to search for. The 'deviceTypes' defines the type of the device to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only devices that match 'relationType' and 'deviceTypes' conditions.  For example, this entity filter selects 'Factory' edge instances which are related to the asset with id 'e52b0020-2a7a-11ec-94eb-213c95f54092' using 'Contains' relation:  ```json {   \"type\": \"deviceSearchQuery\",   \"rootEntity\": {     \"entityType\": \"ASSET\",     \"id\": \"e52b0020-2a7a-11ec-94eb-213c95f54092\"   },   \"direction\": \"FROM\",   \"maxLevel\": 2,   \"fetchLastLevelOnly\": true,   \"relationType\": \"Contains\",   \"edgeTypes\": [     \"Factory\"   ] } ```   # Key Filters Key Filter allows you to define complex logical expressions over entity field, attribute or latest time series value. The filter is defined using 'key', 'valueType' and 'predicate' objects. Single Entity Query may have zero, one or multiple predicates. If multiple filters are defined, they are evaluated using logical 'AND'. The example below checks that temperature of the entity is above 20 degrees:  ```json {   \"key\": {     \"type\": \"TIME_SERIES\",     \"key\": \"temperature\"   },   \"valueType\": \"NUMERIC\",   \"predicate\": {     \"operation\": \"GREATER\",     \"value\": {       \"defaultValue\": 20,       \"dynamicValue\": null     },     \"type\": \"NUMERIC\"   } } ```   Now let's review 'key', 'valueType' and 'predicate' objects in detail.  ## Filter Key  Filter Key defines either entity field, attribute or telemetry. It is a JSON object that consists the key name and type. The following filter key types are supported:    * 'CLIENT_ATTRIBUTE' - used for client attributes;   * 'SHARED_ATTRIBUTE' - used for shared attributes;   * 'SERVER_ATTRIBUTE' - used for server attributes;   * 'ATTRIBUTE' - used for any of the above;   * 'TIME_SERIES' - used for time series values;   * 'ENTITY_FIELD' - used for accessing entity fields like 'name', 'label', etc. The list of available fields depends on the entity type;   * 'ALARM_FIELD' - similar to entity field, but is used in alarm queries only;     Let's review the example:  ```json {   \"type\": \"TIME_SERIES\",   \"key\": \"temperature\" } ```  ## Value Type and Operations  Provides a hint about the data type of the entity field that is defined in the filter key. The value type impacts the list of possible operations that you may use in the corresponding predicate. For example, you may use 'STARTS_WITH' or 'END_WITH', but you can't use 'GREATER_OR_EQUAL' for string values.The following filter value types and corresponding predicate operations are supported:    * 'STRING' - used to filter any 'String' or 'JSON' values. Operations: EQUAL, NOT_EQUAL, STARTS_WITH, ENDS_WITH, CONTAINS, NOT_CONTAINS;   * 'NUMERIC' - used for 'Long' and 'Double' values. Operations: EQUAL, NOT_EQUAL, GREATER, LESS, GREATER_OR_EQUAL, LESS_OR_EQUAL;   * 'BOOLEAN' - used for boolean values. Operations: EQUAL, NOT_EQUAL;  * 'DATE_TIME' - similar to numeric, transforms value to milliseconds since epoch. Operations: EQUAL, NOT_EQUAL, GREATER, LESS, GREATER_OR_EQUAL, LESS_OR_EQUAL;    ## Filter Predicate  Filter Predicate defines the logical expression to evaluate. The list of available operations depends on the filter value type, see above. Platform supports 4 predicate types: 'STRING', 'NUMERIC', 'BOOLEAN' and 'COMPLEX'. The last one allows to combine multiple operations over one filter key.  Simple predicate example to check 'value < 100':   ```json {   \"operation\": \"LESS\",   \"value\": {     \"defaultValue\": 100,     \"dynamicValue\": null   },   \"type\": \"NUMERIC\" } ```  Complex predicate example, to check 'value < 10 or value > 20':   ```json {   \"type\": \"COMPLEX\",   \"operation\": \"OR\",   \"predicates\": [     {       \"operation\": \"LESS\",       \"value\": {         \"defaultValue\": 10,         \"dynamicValue\": null       },       \"type\": \"NUMERIC\"     },     {       \"operation\": \"GREATER\",       \"value\": {         \"defaultValue\": 20,         \"dynamicValue\": null       },       \"type\": \"NUMERIC\"     }   ] } ```  More complex predicate example, to check 'value < 10 or (value > 50 && value < 60)':   ```json {   \"type\": \"COMPLEX\",   \"operation\": \"OR\",   \"predicates\": [     {       \"operation\": \"LESS\",       \"value\": {         \"defaultValue\": 10,         \"dynamicValue\": null       },       \"type\": \"NUMERIC\"     },     {       \"type\": \"COMPLEX\",       \"operation\": \"AND\",       \"predicates\": [         {           \"operation\": \"GREATER\",           \"value\": {             \"defaultValue\": 50,             \"dynamicValue\": null           },           \"type\": \"NUMERIC\"         },         {           \"operation\": \"LESS\",           \"value\": {             \"defaultValue\": 60,             \"dynamicValue\": null           },           \"type\": \"NUMERIC\"         }       ]     }   ] } ```   You may also want to replace hardcoded values (for example, temperature > 20) with the more dynamic expression (for example, temperature > 'value of the tenant attribute with key 'temperatureThreshold'). It is possible to use 'dynamicValue' to define attribute of the tenant, customer or user that is performing the API call. See example below:   ```json {   \"operation\": \"GREATER\",   \"value\": {     \"defaultValue\": 0,     \"dynamicValue\": {       \"sourceType\": \"CURRENT_USER\",       \"sourceAttribute\": \"temperatureThreshold\"     }   },   \"type\": \"NUMERIC\" } ```   Note that you may use 'CURRENT_USER', 'CURRENT_CUSTOMER' and 'CURRENT_TENANT' as a 'sourceType'. The 'defaultValue' is used when the attribute with such a name is not defined for the chosen source.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityQueryControllerApi();
final EntityCountQuery entityCountQuery = ; // EntityCountQuery | 

try {
    final response = api.countEntitiesByQuery(entityCountQuery);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityQueryControllerApi->countEntitiesByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityCountQuery** | [**EntityCountQuery**](EntityCountQuery.md)|  | 

### Return type

**int**

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAlarmDataByQuery**
> PageDataAlarmData findAlarmDataByQuery(alarmDataQuery)

Find Alarms by Query

This method description defines how Alarm Data Query extends the Entity Data Query. See method 'Find Entity Data by Query' first to get the info about 'Entity Data Query'.   The platform will first search the entities that match the entity and key filters. Then, the platform will use 'Alarm Page Link' to filter the alarms related to those entities. Finally, platform fetch the properties of alarm that are defined in the **'alarmFields'** and combine them with the other entity, attribute and latest time series fields to return the result.    See example of the alarm query below. The query will search first 100 active alarms with type 'Temperature Alarm' or 'Fire Alarm' for any device with current temperature > 0. The query will return combination of the entity fields: name of the device, device model and latest temperature reading and alarms fields: createdTime, type, severity and status:   ```json {   \"entityFilter\": {     \"type\": \"entityType\",     \"resolveMultiple\": true,     \"entityType\": \"DEVICE\"   },   \"pageLink\": {     \"page\": 0,     \"pageSize\": 100,     \"textSearch\": null,     \"searchPropagatedAlarms\": false,     \"statusList\": [       \"ACTIVE\"     ],     \"severityList\": [       \"CRITICAL\",       \"MAJOR\"     ],     \"typeList\": [       \"Temperature Alarm\",       \"Fire Alarm\"     ],     \"sortOrder\": {       \"key\": {         \"key\": \"createdTime\",         \"type\": \"ALARM_FIELD\"       },       \"direction\": \"DESC\"     },     \"timeWindow\": 86400000   },   \"keyFilters\": [     {       \"key\": {         \"type\": \"TIME_SERIES\",         \"key\": \"temperature\"       },       \"valueType\": \"NUMERIC\",       \"predicate\": {         \"operation\": \"GREATER\",         \"value\": {           \"defaultValue\": 0,           \"dynamicValue\": null         },         \"type\": \"NUMERIC\"       }     }   ],   \"alarmFields\": [     {       \"type\": \"ALARM_FIELD\",       \"key\": \"createdTime\"     },     {       \"type\": \"ALARM_FIELD\",       \"key\": \"type\"     },     {       \"type\": \"ALARM_FIELD\",       \"key\": \"severity\"     },     {       \"type\": \"ALARM_FIELD\",       \"key\": \"status\"     }   ],   \"entityFields\": [     {       \"type\": \"ENTITY_FIELD\",       \"key\": \"name\"     }   ],   \"latestValues\": [     {       \"type\": \"ATTRIBUTE\",       \"key\": \"model\"     },     {       \"type\": \"TIME_SERIES\",       \"key\": \"temperature\"     }   ] } ```

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityQueryControllerApi();
final AlarmDataQuery alarmDataQuery = ; // AlarmDataQuery | 

try {
    final response = api.findAlarmDataByQuery(alarmDataQuery);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityQueryControllerApi->findAlarmDataByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alarmDataQuery** | [**AlarmDataQuery**](AlarmDataQuery.md)|  | 

### Return type

[**PageDataAlarmData**](PageDataAlarmData.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAvailableEntityKeysByQuery**
> AvailableEntityKeys findAvailableEntityKeysByQuery(timeseries, attributes, entityDataQuery, scope)

Find Available Entity Keys by Query (deprecated)

**Deprecated.** Use the V2 endpoint (`POST /api/v2/entitiesQuery/find/keys`) instead.  Returns unique time series and/or attribute key names from entities matching the query.  Executes the Entity Data Query to find up to 100 entities, then fetches and aggregates all distinct key names.  Primarily used for UI features like autocomplete suggestions.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityQueryControllerApi();
final bool timeseries = true; // bool | When true, includes unique time series key names in the response. When false, the 'timeseries' list will be empty.
final bool attributes = true; // bool | When true, includes unique attribute key names in the response. When false, the 'attribute' list will be empty. Use 'scope' parameter to filter by attribute scope.
final EntityDataQuery entityDataQuery = ; // EntityDataQuery | 
final String scope = scope_example; // String | Filters attribute keys by scope. Only applies when 'attributes' is true. If not specified, returns attribute keys from all scopes.

try {
    final response = api.findAvailableEntityKeysByQuery(timeseries, attributes, entityDataQuery, scope);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityQueryControllerApi->findAvailableEntityKeysByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timeseries** | **bool**| When true, includes unique time series key names in the response. When false, the 'timeseries' list will be empty. | 
 **attributes** | **bool**| When true, includes unique attribute key names in the response. When false, the 'attribute' list will be empty. Use 'scope' parameter to filter by attribute scope. | 
 **entityDataQuery** | [**EntityDataQuery**](EntityDataQuery.md)|  | 
 **scope** | **String**| Filters attribute keys by scope. Only applies when 'attributes' is true. If not specified, returns attribute keys from all scopes. | [optional] 

### Return type

[**AvailableEntityKeys**](AvailableEntityKeys.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAvailableEntityKeysByQueryV2**
> AvailableEntityKeysV2 findAvailableEntityKeysByQueryV2(entityDataQuery, includeTimeseries, includeAttributes, scopes, includeSamples)

Find Available Entity Keys By Query

Discovers unique time series and/or attribute key names available on entities that match the given query. Works in two steps: first, the request body (an Entity Data Query) is executed to find matching entities (page size is capped at 100); then, all distinct key names are collected from those entities.  Optionally, each key can include a sample — the most recent value (by timestamp) for that key across all matched entities.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority. Security check is performed to verify that the user has 'READ' permission for the entity (entities).

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityQueryControllerApi();
final EntityDataQuery entityDataQuery = ; // EntityDataQuery | 
final bool includeTimeseries = true; // bool | When true, includes unique time series keys in the response. When false, the 'timeseries' field is omitted. At least one of 'includeTimeseries' or 'includeAttributes' must be true.
final bool includeAttributes = true; // bool | When true, includes unique attribute keys in the response. When false, the 'attributes' field is omitted. At least one of 'includeTimeseries' or 'includeAttributes' must be true.
final String scopes = scopes_example; // String | Filters attribute keys by scope. Only applies when 'includeAttributes' is true. When not specified, scopes are auto-determined: all three scopes (server, client, shared) for device entities, server scope only for other entity types.
final bool includeSamples = true; // bool | When true, each key entry includes a 'sample' object with the most recent value and timestamp. When false, only key names are returned (sample is omitted from JSON).

try {
    final response = api.findAvailableEntityKeysByQueryV2(entityDataQuery, includeTimeseries, includeAttributes, scopes, includeSamples);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityQueryControllerApi->findAvailableEntityKeysByQueryV2: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityDataQuery** | [**EntityDataQuery**](EntityDataQuery.md)|  | 
 **includeTimeseries** | **bool**| When true, includes unique time series keys in the response. When false, the 'timeseries' field is omitted. At least one of 'includeTimeseries' or 'includeAttributes' must be true. | [optional] [default to true]
 **includeAttributes** | **bool**| When true, includes unique attribute keys in the response. When false, the 'attributes' field is omitted. At least one of 'includeTimeseries' or 'includeAttributes' must be true. | [optional] [default to true]
 **scopes** | **String**| Filters attribute keys by scope. Only applies when 'includeAttributes' is true. When not specified, scopes are auto-determined: all three scopes (server, client, shared) for device entities, server scope only for other entity types. | [optional] 
 **includeSamples** | **bool**| When true, each key entry includes a 'sample' object with the most recent value and timestamp. When false, only key names are returned (sample is omitted from JSON). | [optional] [default to false]

### Return type

[**AvailableEntityKeysV2**](AvailableEntityKeysV2.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findEntityDataByQuery**
> PageDataEntityData findEntityDataByQuery(entityDataQuery)

Find Entity Data by Query

Allows to run complex queries over platform entities (devices, assets, customers, etc) based on the combination of main entity filter and multiple key filters. Returns the paginated result of the query that contains requested entity fields and latest values of requested attributes and time series data.  # Query Definition    Main **entity filter** is mandatory and defines generic search criteria. For example, \"find all devices with profile 'Moisture Sensor'\" or \"Find all devices related to asset 'Building A'\"  Optional **key filters** allow to filter results of the **entity filter** by complex criteria against main entity fields (name, label, type, etc), attributes and telemetry. For example, \"temperature > 20 or temperature< 10\" or \"name starts with 'T', and attribute 'model' is 'T1000', and time series field 'batteryLevel' > 40\".  The **entity fields** and **latest values** contains list of entity fields and latest attribute/telemetry fields to fetch for each entity.  The **page link** contains information about the page to fetch and the sort ordering.  Let's review the example:  ```json {   \"entityFilter\": {     \"type\": \"entityType\",     \"resolveMultiple\": true,     \"entityType\": \"DEVICE\"   },   \"keyFilters\": [     {       \"key\": {         \"type\": \"TIME_SERIES\",         \"key\": \"temperature\"       },       \"valueType\": \"NUMERIC\",       \"predicate\": {         \"operation\": \"GREATER\",         \"value\": {           \"defaultValue\": 0,           \"dynamicValue\": {             \"sourceType\": \"CURRENT_USER\",             \"sourceAttribute\": \"temperatureThreshold\",             \"inherit\": false           }         },         \"type\": \"NUMERIC\"       }     }   ],   \"entityFields\": [     {       \"type\": \"ENTITY_FIELD\",       \"key\": \"name\"     },     {       \"type\": \"ENTITY_FIELD\",       \"key\": \"label\"     },     {       \"type\": \"ENTITY_FIELD\",       \"key\": \"additionalInfo\"     }   ],   \"latestValues\": [     {       \"type\": \"ATTRIBUTE\",       \"key\": \"model\"     },     {       \"type\": \"TIME_SERIES\",       \"key\": \"temperature\"     }   ],   \"pageLink\": {     \"page\": 0,     \"pageSize\": 10,     \"sortOrder\": {       \"key\": {         \"key\": \"name\",         \"type\": \"ENTITY_FIELD\"       },       \"direction\": \"ASC\"     }   } } ```   Example mentioned above search all devices which have attribute 'active' set to 'true'. Now let's review available entity filters and key filters syntax:   # Entity Filters Entity Filter body depends on the 'type' parameter. Let's review available entity filter types. In fact, they do correspond to available dashboard aliases.  ## Single Entity  Allows to filter only one entity based on the id. For example, this entity filter selects certain device:  ```json {   \"type\": \"singleEntity\",   \"singleEntity\": {     \"id\": \"d521edb0-2a7a-11ec-94eb-213c95f54092\",     \"entityType\": \"DEVICE\"   } } ```  ## Group Entities Filter  Allows to filter multiple entities of the same type using the entity group type and id. For example, this entity filter selects all devices that belong to the group 'e52b0020-2a7a-11ec-94eb-213c95f54092':  ```json {   \"type\": \"entityGroup\",   \"groupType\": \"DEVICE\",   \"entityGroup\": \"e52b0020-2a7a-11ec-94eb-213c95f54092\" } ```  ## Entity List Filter  Allows to filter entities of the same type using their ids. For example, this entity filter selects two devices:  ```json {   \"type\": \"entityList\",   \"entityType\": \"DEVICE\",   \"entityList\": [     \"e6501f30-2a7a-11ec-94eb-213c95f54092\",     \"e6657bf0-2a7a-11ec-94eb-213c95f54092\"   ] } ```  ## Entity Name Filter  Allows to filter entities of the same type using the **'starts with'** expression over entity name. For example, this entity filter selects all devices which name starts with 'Air Quality':  ```json {   \"type\": \"entityName\",   \"entityType\": \"DEVICE\",   \"entityNameFilter\": \"Air Quality\" } ```  ## Entity Type Filter  Allows to filter entities based on their type (CUSTOMER, USER, DASHBOARD, ASSET, DEVICE, etc)For example, this entity filter selects all tenant customers:  ```json {   \"type\": \"entityType\",   \"entityType\": \"CUSTOMER\" } ```  ## Group List Filter  Return multiple groups of the same type using specified ids. For example, this entity filter selects 2 device groups (if they are present in the system) with ids 'e52b0020-2a7a-11ec-94eb-213c95f54092' and 'e52b0020-2a7a-11ec-94eb-213c95f54093':  ```json {   \"type\": \"entityGroupList\",   \"groupType\": \"DEVICE\",   \"entityGroupList\": [\"e52b0020-2a7a-11ec-94eb-213c95f54092\", \"e52b0020-2a7a-11ec-94eb-213c95f54093\"] } ```  ## Group Name Filter  Allows to filter entity groups based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all devices which name starts with 'CAT':  ```json {   \"type\": \"entityGroupName\",   \"groupType\": \"DEVICE\",   \"entityGroupNameFilter\": \"CAT\" } ```  ## Entities by Group Name Filter  Allows to filter entities that belong to group based on the entity type and the group name. Optional parameter 'ownerId' allows you to specify the owner of the group (Tenant or Customer, current user owner by default).For example, this entity filter selects all devices which belong to group 'Water Meters':  ```json {   \"type\": \"entitiesByGroupName\",   \"groupType\": \"DEVICE\",   \"entityGroupNameFilter\": \"Water Meters\" } ```   Other example, this entity filter selects all devices which belong to group 'Water Meters' which in turn belongs to (sub-)Customer with id 'e52b0020-2a7a-11ec-94eb-213c95f54093':   ```json {   \"type\": \"entitiesByGroupName\",   \"ownerId\": {\"entityType\": \"CUSTOMER\",\"id\":\"e52b0020-2a7a-11ec-94eb-213c95f54093\"},   \"groupType\": \"DEVICE\",   \"entityGroupNameFilter\": \"Water Meters\" } ```  ## Entity owner Filter  Allows to fetch owner (Tenant or Customer) of the specified entity. For example, this entity filter selects owner of the device with id 'e52b0020-2a7a-11ec-94eb-213c95f54093':  ```json {   \"type\": \"stateEntityOwner\",   \"singleEntity\": {     \"id\": \"d521edb0-2a7a-11ec-94eb-213c95f54092\",     \"entityType\": \"DEVICE\"   } } ```  ## Asset Type Filter  Allows to filter assets based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'charging station' assets which name starts with 'Tesla':  ```json {   \"type\": \"assetType\",   \"assetType\": \"charging station\",   \"assetNameFilter\": \"Tesla\" } ```  ## Device Type Filter  Allows to filter devices based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Temperature Sensor' devices which name starts with 'ABC':  ```json {   \"type\": \"deviceType\",   \"deviceType\": \"Temperature Sensor\",   \"deviceNameFilter\": \"ABC\" } ```  ## Edge Type Filter  Allows to filter edge instances based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Factory' edge instances which name starts with 'Nevada':  ```json {   \"type\": \"edgeType\",   \"edgeType\": \"Factory\",   \"edgeNameFilter\": \"Nevada\" } ```  ## Entity View Filter  Allows to filter entity views based on their type and the **'starts with'** expression over their name. For example, this entity filter selects all 'Concrete Mixer' entity views which name starts with 'CAT':  ```json {   \"type\": \"entityViewType\",   \"entityViewType\": \"Concrete Mixer\",   \"entityViewNameFilter\": \"CAT\" } ```  ## Api Usage Filter  Allows to query for Api Usage based on optional customer id. If the customer id is not set, returns current tenant API usage.For example, this entity filter selects the 'Api Usage' entity for customer with id 'e6501f30-2a7a-11ec-94eb-213c95f54092':  ```json {   \"type\": \"apiUsageState\",   \"customerId\": {     \"id\": \"d521edb0-2a7a-11ec-94eb-213c95f54092\",     \"entityType\": \"CUSTOMER\"   } } ```  ## Relations Query Filter  Allows to filter entities that are related to the provided root entity. Possible direction values are 'TO' and 'FROM'. The 'maxLevel' defines how many relation levels should the query search 'recursively'. Assuming the 'maxLevel' is > 1, the 'fetchLastLevelOnly' defines either to return all related entities or only entities that are on the last level of relations. The 'filter' object allows you to define the relation type and set of acceptable entity types to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only those who match the 'filters'.  For example, this entity filter selects all devices and assets which are related to the asset with id 'e51de0c0-2a7a-11ec-94eb-213c95f54092':  ```json {   \"type\": \"relationsQuery\",   \"rootEntity\": {     \"entityType\": \"ASSET\",     \"id\": \"e51de0c0-2a7a-11ec-94eb-213c95f54092\"   },   \"direction\": \"FROM\",   \"maxLevel\": 1,   \"fetchLastLevelOnly\": false,   \"filters\": [     {       \"relationType\": \"Contains\",       \"entityTypes\": [         \"DEVICE\",         \"ASSET\"       ]     }   ] } ```  ## Asset Search Query  Allows to filter assets that are related to the provided root entity. Filters related assets based on the relation type and set of asset types. Possible direction values are 'TO' and 'FROM'. The 'maxLevel' defines how many relation levels should the query search 'recursively'. Assuming the 'maxLevel' is > 1, the 'fetchLastLevelOnly' defines either to return all related entities or only entities that are on the last level of relations. The 'relationType' defines the type of the relation to search for. The 'assetTypes' defines the type of the asset to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only assets that match 'relationType' and 'assetTypes' conditions.  For example, this entity filter selects 'charging station' assets which are related to the asset with id 'e51de0c0-2a7a-11ec-94eb-213c95f54092' using 'Contains' relation:  ```json {   \"type\": \"assetSearchQuery\",   \"rootEntity\": {     \"entityType\": \"ASSET\",     \"id\": \"e51de0c0-2a7a-11ec-94eb-213c95f54092\"   },   \"direction\": \"FROM\",   \"maxLevel\": 1,   \"fetchLastLevelOnly\": false,   \"relationType\": \"Contains\",   \"assetTypes\": [     \"charging station\"   ] } ```  ## Device Search Query  Allows to filter devices that are related to the provided root entity. Filters related devices based on the relation type and set of device types. Possible direction values are 'TO' and 'FROM'. The 'maxLevel' defines how many relation levels should the query search 'recursively'. Assuming the 'maxLevel' is > 1, the 'fetchLastLevelOnly' defines either to return all related entities or only entities that are on the last level of relations. The 'relationType' defines the type of the relation to search for. The 'deviceTypes' defines the type of the device to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only devices that match 'relationType' and 'deviceTypes' conditions.  For example, this entity filter selects 'Charging port' and 'Air Quality Sensor' devices which are related to the asset with id 'e52b0020-2a7a-11ec-94eb-213c95f54092' using 'Contains' relation:  ```json {   \"type\": \"deviceSearchQuery\",   \"rootEntity\": {     \"entityType\": \"ASSET\",     \"id\": \"e52b0020-2a7a-11ec-94eb-213c95f54092\"   },   \"direction\": \"FROM\",   \"maxLevel\": 2,   \"fetchLastLevelOnly\": true,   \"relationType\": \"Contains\",   \"deviceTypes\": [     \"Air Quality Sensor\",     \"Charging port\"   ] } ```  ## Entity View Query  Allows to filter entity views that are related to the provided root entity. Filters related entity views based on the relation type and set of entity view types. Possible direction values are 'TO' and 'FROM'. The 'maxLevel' defines how many relation levels should the query search 'recursively'. Assuming the 'maxLevel' is > 1, the 'fetchLastLevelOnly' defines either to return all related entities or only entities that are on the last level of relations. The 'relationType' defines the type of the relation to search for. The 'entityViewTypes' defines the type of the entity view to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only devices that match 'relationType' and 'deviceTypes' conditions.  For example, this entity filter selects 'Concrete mixer' entity views which are related to the asset with id 'e52b0020-2a7a-11ec-94eb-213c95f54092' using 'Contains' relation:  ```json {   \"type\": \"entityViewSearchQuery\",   \"rootEntity\": {     \"entityType\": \"ASSET\",     \"id\": \"e52b0020-2a7a-11ec-94eb-213c95f54092\"   },   \"direction\": \"FROM\",   \"maxLevel\": 1,   \"fetchLastLevelOnly\": false,   \"relationType\": \"Contains\",   \"entityViewTypes\": [     \"Concrete mixer\"   ] } ```  ## Edge Search Query  Allows to filter edge instances that are related to the provided root entity. Filters related edge instances based on the relation type and set of edge types. Possible direction values are 'TO' and 'FROM'. The 'maxLevel' defines how many relation levels should the query search 'recursively'. Assuming the 'maxLevel' is > 1, the 'fetchLastLevelOnly' defines either to return all related entities or only entities that are on the last level of relations. The 'relationType' defines the type of the relation to search for. The 'deviceTypes' defines the type of the device to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only devices that match 'relationType' and 'deviceTypes' conditions.  For example, this entity filter selects 'Factory' edge instances which are related to the asset with id 'e52b0020-2a7a-11ec-94eb-213c95f54092' using 'Contains' relation:  ```json {   \"type\": \"deviceSearchQuery\",   \"rootEntity\": {     \"entityType\": \"ASSET\",     \"id\": \"e52b0020-2a7a-11ec-94eb-213c95f54092\"   },   \"direction\": \"FROM\",   \"maxLevel\": 2,   \"fetchLastLevelOnly\": true,   \"relationType\": \"Contains\",   \"edgeTypes\": [     \"Factory\"   ] } ```   # Key Filters Key Filter allows you to define complex logical expressions over entity field, attribute or latest time series value. The filter is defined using 'key', 'valueType' and 'predicate' objects. Single Entity Query may have zero, one or multiple predicates. If multiple filters are defined, they are evaluated using logical 'AND'. The example below checks that temperature of the entity is above 20 degrees:  ```json {   \"key\": {     \"type\": \"TIME_SERIES\",     \"key\": \"temperature\"   },   \"valueType\": \"NUMERIC\",   \"predicate\": {     \"operation\": \"GREATER\",     \"value\": {       \"defaultValue\": 20,       \"dynamicValue\": null     },     \"type\": \"NUMERIC\"   } } ```   Now let's review 'key', 'valueType' and 'predicate' objects in detail.  ## Filter Key  Filter Key defines either entity field, attribute or telemetry. It is a JSON object that consists the key name and type. The following filter key types are supported:    * 'CLIENT_ATTRIBUTE' - used for client attributes;   * 'SHARED_ATTRIBUTE' - used for shared attributes;   * 'SERVER_ATTRIBUTE' - used for server attributes;   * 'ATTRIBUTE' - used for any of the above;   * 'TIME_SERIES' - used for time series values;   * 'ENTITY_FIELD' - used for accessing entity fields like 'name', 'label', etc. The list of available fields depends on the entity type;   * 'ALARM_FIELD' - similar to entity field, but is used in alarm queries only;     Let's review the example:  ```json {   \"type\": \"TIME_SERIES\",   \"key\": \"temperature\" } ```  ## Value Type and Operations  Provides a hint about the data type of the entity field that is defined in the filter key. The value type impacts the list of possible operations that you may use in the corresponding predicate. For example, you may use 'STARTS_WITH' or 'END_WITH', but you can't use 'GREATER_OR_EQUAL' for string values.The following filter value types and corresponding predicate operations are supported:    * 'STRING' - used to filter any 'String' or 'JSON' values. Operations: EQUAL, NOT_EQUAL, STARTS_WITH, ENDS_WITH, CONTAINS, NOT_CONTAINS;   * 'NUMERIC' - used for 'Long' and 'Double' values. Operations: EQUAL, NOT_EQUAL, GREATER, LESS, GREATER_OR_EQUAL, LESS_OR_EQUAL;   * 'BOOLEAN' - used for boolean values. Operations: EQUAL, NOT_EQUAL;  * 'DATE_TIME' - similar to numeric, transforms value to milliseconds since epoch. Operations: EQUAL, NOT_EQUAL, GREATER, LESS, GREATER_OR_EQUAL, LESS_OR_EQUAL;    ## Filter Predicate  Filter Predicate defines the logical expression to evaluate. The list of available operations depends on the filter value type, see above. Platform supports 4 predicate types: 'STRING', 'NUMERIC', 'BOOLEAN' and 'COMPLEX'. The last one allows to combine multiple operations over one filter key.  Simple predicate example to check 'value < 100':   ```json {   \"operation\": \"LESS\",   \"value\": {     \"defaultValue\": 100,     \"dynamicValue\": null   },   \"type\": \"NUMERIC\" } ```  Complex predicate example, to check 'value < 10 or value > 20':   ```json {   \"type\": \"COMPLEX\",   \"operation\": \"OR\",   \"predicates\": [     {       \"operation\": \"LESS\",       \"value\": {         \"defaultValue\": 10,         \"dynamicValue\": null       },       \"type\": \"NUMERIC\"     },     {       \"operation\": \"GREATER\",       \"value\": {         \"defaultValue\": 20,         \"dynamicValue\": null       },       \"type\": \"NUMERIC\"     }   ] } ```  More complex predicate example, to check 'value < 10 or (value > 50 && value < 60)':   ```json {   \"type\": \"COMPLEX\",   \"operation\": \"OR\",   \"predicates\": [     {       \"operation\": \"LESS\",       \"value\": {         \"defaultValue\": 10,         \"dynamicValue\": null       },       \"type\": \"NUMERIC\"     },     {       \"type\": \"COMPLEX\",       \"operation\": \"AND\",       \"predicates\": [         {           \"operation\": \"GREATER\",           \"value\": {             \"defaultValue\": 50,             \"dynamicValue\": null           },           \"type\": \"NUMERIC\"         },         {           \"operation\": \"LESS\",           \"value\": {             \"defaultValue\": 60,             \"dynamicValue\": null           },           \"type\": \"NUMERIC\"         }       ]     }   ] } ```   You may also want to replace hardcoded values (for example, temperature > 20) with the more dynamic expression (for example, temperature > 'value of the tenant attribute with key 'temperatureThreshold'). It is possible to use 'dynamicValue' to define attribute of the tenant, customer or user that is performing the API call. See example below:   ```json {   \"operation\": \"GREATER\",   \"value\": {     \"defaultValue\": 0,     \"dynamicValue\": {       \"sourceType\": \"CURRENT_USER\",       \"sourceAttribute\": \"temperatureThreshold\"     }   },   \"type\": \"NUMERIC\" } ```   Note that you may use 'CURRENT_USER', 'CURRENT_CUSTOMER' and 'CURRENT_TENANT' as a 'sourceType'. The 'defaultValue' is used when the attribute with such a name is not defined for the chosen source.  Available for users with 'TENANT_ADMIN' or 'CUSTOMER_USER' authority.

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityQueryControllerApi();
final EntityDataQuery entityDataQuery = ; // EntityDataQuery | 

try {
    final response = api.findEntityDataByQuery(entityDataQuery);
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityQueryControllerApi->findEntityDataByQuery: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityDataQuery** | [**EntityDataQuery**](EntityDataQuery.md)|  | 

### Return type

[**PageDataEntityData**](PageDataEntityData.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdqsState**
> EdqsState getEdqsState()

getEdqsState

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityQueryControllerApi();

try {
    final response = api.getEdqsState();
    print(response);
} on DioException catch (e) {
    print('Exception when calling EntityQueryControllerApi->getEdqsState: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EdqsState**](EdqsState.md)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **processSystemEdqsRequest**
> processSystemEdqsRequest(toCoreEdqsRequest)

processSystemEdqsRequest

### Example
```dart
import 'package:thingsboard_client/api.dart';
// TODO Configure API key authorization: ApiKeyForm
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ApiKeyForm').apiKeyPrefix = 'Bearer';

final api = ThingsboardClient().getEntityQueryControllerApi();
final ToCoreEdqsRequest toCoreEdqsRequest = ; // ToCoreEdqsRequest | 

try {
    api.processSystemEdqsRequest(toCoreEdqsRequest);
} on DioException catch (e) {
    print('Exception when calling EntityQueryControllerApi->processSystemEdqsRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **toCoreEdqsRequest** | [**ToCoreEdqsRequest**](ToCoreEdqsRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[ApiKeyForm](../README.md#ApiKeyForm), [HttpLoginForm](../README.md#HttpLoginForm)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

