// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:thingsboard_client/src/api_util.dart';
import 'package:thingsboard_client/src/model/alarm_count_query.dart';
import 'package:thingsboard_client/src/model/alarm_data_query.dart';
import 'package:thingsboard_client/src/model/available_entity_keys.dart';
import 'package:thingsboard_client/src/model/available_entity_keys_v2.dart';
import 'package:thingsboard_client/src/model/edqs_state.dart';
import 'package:thingsboard_client/src/model/entity_count_query.dart';
import 'package:thingsboard_client/src/model/entity_data_query.dart';
import 'package:thingsboard_client/src/model/page_data_alarm_data.dart';
import 'package:thingsboard_client/src/model/page_data_entity_data.dart';
import 'package:thingsboard_client/src/model/to_core_edqs_request.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class EntityQueryControllerApi {
  final Dio _dio;

  final Serializers? _serializers;

  const EntityQueryControllerApi(this._dio, [this._serializers]);

  /// Count Alarms by Query (countAlarmsByQuery)
  /// Returns the number of alarms that match the query definition.
  ///
  /// Parameters:
  /// * [alarmCountQuery]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [int] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<int>> countAlarmsByQuery({
    required AlarmCountQuery alarmCountQuery,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerAlarmCountQuery);
    final _path = r'/api/alarmsQuery/count';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },
          {'type': 'http', 'scheme': 'loginPassword', 'name': 'HttpLoginForm'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(AlarmCountQuery);
      _bodyData = _serializers.serialize(alarmCountQuery, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    int? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as int;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<int>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Count Entities by Query
  /// Allows to run complex queries to search the count of platform entities (devices, assets, customers, etc) based on the combination of main entity filter and multiple key filters. Returns the number of entities that match the query definition.  # Query Definition    Main **entity filter** is mandatory and defines generic search criteria. For example, \&quot;find all devices with profile &#39;Moisture Sensor&#39;\&quot; or \&quot;Find all devices related to asset &#39;Building A&#39;\&quot;  Optional **key filters** allow to filter results of the entity filter by complex criteria against main entity fields (name, label, type, etc), attributes and telemetry. For example, \&quot;temperature &gt; 20 or temperature&lt; 10\&quot; or \&quot;name starts with &#39;T&#39;, and attribute &#39;model&#39; is &#39;T1000&#39;, and time series field &#39;batteryLevel&#39; &gt; 40\&quot;.  Let&#39;s review the example:  &#x60;&#x60;&#x60;json {   \&quot;entityFilter\&quot;: {     \&quot;type\&quot;: \&quot;entityType\&quot;,     \&quot;entityType\&quot;: \&quot;DEVICE\&quot;   },   \&quot;keyFilters\&quot;: [     {       \&quot;key\&quot;: {         \&quot;type\&quot;: \&quot;ATTRIBUTE\&quot;,         \&quot;key\&quot;: \&quot;active\&quot;       },       \&quot;valueType\&quot;: \&quot;BOOLEAN\&quot;,       \&quot;predicate\&quot;: {         \&quot;operation\&quot;: \&quot;EQUAL\&quot;,         \&quot;value\&quot;: {           \&quot;defaultValue\&quot;: true,           \&quot;dynamicValue\&quot;: null         },         \&quot;type\&quot;: \&quot;BOOLEAN\&quot;       }     }   ] } &#x60;&#x60;&#x60;   Example mentioned above search all devices which have attribute &#39;active&#39; set to &#39;true&#39;. Now let&#39;s review available entity filters and key filters syntax:   # Entity Filters Entity Filter body depends on the &#39;type&#39; parameter. Let&#39;s review available entity filter types. In fact, they do correspond to available dashboard aliases.  ## Single Entity  Allows to filter only one entity based on the id. For example, this entity filter selects certain device:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;singleEntity\&quot;,   \&quot;singleEntity\&quot;: {     \&quot;id\&quot;: \&quot;d521edb0-2a7a-11ec-94eb-213c95f54092\&quot;,     \&quot;entityType\&quot;: \&quot;DEVICE\&quot;   } } &#x60;&#x60;&#x60;  ## Group Entities Filter  Allows to filter multiple entities of the same type using the entity group type and id. For example, this entity filter selects all devices that belong to the group &#39;e52b0020-2a7a-11ec-94eb-213c95f54092&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityGroup\&quot;,   \&quot;groupType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityGroup\&quot;: \&quot;e52b0020-2a7a-11ec-94eb-213c95f54092\&quot; } &#x60;&#x60;&#x60;  ## Entity List Filter  Allows to filter entities of the same type using their ids. For example, this entity filter selects two devices:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityList\&quot;,   \&quot;entityType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityList\&quot;: [     \&quot;e6501f30-2a7a-11ec-94eb-213c95f54092\&quot;,     \&quot;e6657bf0-2a7a-11ec-94eb-213c95f54092\&quot;   ] } &#x60;&#x60;&#x60;  ## Entity Name Filter  Allows to filter entities of the same type using the **&#39;starts with&#39;** expression over entity name. For example, this entity filter selects all devices which name starts with &#39;Air Quality&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityName\&quot;,   \&quot;entityType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityNameFilter\&quot;: \&quot;Air Quality\&quot; } &#x60;&#x60;&#x60;  ## Entity Type Filter  Allows to filter entities based on their type (CUSTOMER, USER, DASHBOARD, ASSET, DEVICE, etc)For example, this entity filter selects all tenant customers:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityType\&quot;,   \&quot;entityType\&quot;: \&quot;CUSTOMER\&quot; } &#x60;&#x60;&#x60;  ## Group List Filter  Return multiple groups of the same type using specified ids. For example, this entity filter selects 2 device groups (if they are present in the system) with ids &#39;e52b0020-2a7a-11ec-94eb-213c95f54092&#39; and &#39;e52b0020-2a7a-11ec-94eb-213c95f54093&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityGroupList\&quot;,   \&quot;groupType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityGroupList\&quot;: [\&quot;e52b0020-2a7a-11ec-94eb-213c95f54092\&quot;, \&quot;e52b0020-2a7a-11ec-94eb-213c95f54093\&quot;] } &#x60;&#x60;&#x60;  ## Group Name Filter  Allows to filter entity groups based on their type and the **&#39;starts with&#39;** expression over their name. For example, this entity filter selects all devices which name starts with &#39;CAT&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityGroupName\&quot;,   \&quot;groupType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityGroupNameFilter\&quot;: \&quot;CAT\&quot; } &#x60;&#x60;&#x60;  ## Entities by Group Name Filter  Allows to filter entities that belong to group based on the entity type and the group name. Optional parameter &#39;ownerId&#39; allows you to specify the owner of the group (Tenant or Customer, current user owner by default).For example, this entity filter selects all devices which belong to group &#39;Water Meters&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entitiesByGroupName\&quot;,   \&quot;groupType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityGroupNameFilter\&quot;: \&quot;Water Meters\&quot; } &#x60;&#x60;&#x60;   Other example, this entity filter selects all devices which belong to group &#39;Water Meters&#39; which in turn belongs to (sub-)Customer with id &#39;e52b0020-2a7a-11ec-94eb-213c95f54093&#39;:   &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entitiesByGroupName\&quot;,   \&quot;ownerId\&quot;: {\&quot;entityType\&quot;: \&quot;CUSTOMER\&quot;,\&quot;id\&quot;:\&quot;e52b0020-2a7a-11ec-94eb-213c95f54093\&quot;},   \&quot;groupType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityGroupNameFilter\&quot;: \&quot;Water Meters\&quot; } &#x60;&#x60;&#x60;  ## Entity owner Filter  Allows to fetch owner (Tenant or Customer) of the specified entity. For example, this entity filter selects owner of the device with id &#39;e52b0020-2a7a-11ec-94eb-213c95f54093&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;stateEntityOwner\&quot;,   \&quot;singleEntity\&quot;: {     \&quot;id\&quot;: \&quot;d521edb0-2a7a-11ec-94eb-213c95f54092\&quot;,     \&quot;entityType\&quot;: \&quot;DEVICE\&quot;   } } &#x60;&#x60;&#x60;  ## Asset Type Filter  Allows to filter assets based on their type and the **&#39;starts with&#39;** expression over their name. For example, this entity filter selects all &#39;charging station&#39; assets which name starts with &#39;Tesla&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;assetType\&quot;,   \&quot;assetType\&quot;: \&quot;charging station\&quot;,   \&quot;assetNameFilter\&quot;: \&quot;Tesla\&quot; } &#x60;&#x60;&#x60;  ## Device Type Filter  Allows to filter devices based on their type and the **&#39;starts with&#39;** expression over their name. For example, this entity filter selects all &#39;Temperature Sensor&#39; devices which name starts with &#39;ABC&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;deviceType\&quot;,   \&quot;deviceType\&quot;: \&quot;Temperature Sensor\&quot;,   \&quot;deviceNameFilter\&quot;: \&quot;ABC\&quot; } &#x60;&#x60;&#x60;  ## Edge Type Filter  Allows to filter edge instances based on their type and the **&#39;starts with&#39;** expression over their name. For example, this entity filter selects all &#39;Factory&#39; edge instances which name starts with &#39;Nevada&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;edgeType\&quot;,   \&quot;edgeType\&quot;: \&quot;Factory\&quot;,   \&quot;edgeNameFilter\&quot;: \&quot;Nevada\&quot; } &#x60;&#x60;&#x60;  ## Entity View Filter  Allows to filter entity views based on their type and the **&#39;starts with&#39;** expression over their name. For example, this entity filter selects all &#39;Concrete Mixer&#39; entity views which name starts with &#39;CAT&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityViewType\&quot;,   \&quot;entityViewType\&quot;: \&quot;Concrete Mixer\&quot;,   \&quot;entityViewNameFilter\&quot;: \&quot;CAT\&quot; } &#x60;&#x60;&#x60;  ## Api Usage Filter  Allows to query for Api Usage based on optional customer id. If the customer id is not set, returns current tenant API usage.For example, this entity filter selects the &#39;Api Usage&#39; entity for customer with id &#39;e6501f30-2a7a-11ec-94eb-213c95f54092&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;apiUsageState\&quot;,   \&quot;customerId\&quot;: {     \&quot;id\&quot;: \&quot;d521edb0-2a7a-11ec-94eb-213c95f54092\&quot;,     \&quot;entityType\&quot;: \&quot;CUSTOMER\&quot;   } } &#x60;&#x60;&#x60;  ## Relations Query Filter  Allows to filter entities that are related to the provided root entity. Possible direction values are &#39;TO&#39; and &#39;FROM&#39;. The &#39;maxLevel&#39; defines how many relation levels should the query search &#39;recursively&#39;. Assuming the &#39;maxLevel&#39; is &gt; 1, the &#39;fetchLastLevelOnly&#39; defines either to return all related entities or only entities that are on the last level of relations. The &#39;filter&#39; object allows you to define the relation type and set of acceptable entity types to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only those who match the &#39;filters&#39;.  For example, this entity filter selects all devices and assets which are related to the asset with id &#39;e51de0c0-2a7a-11ec-94eb-213c95f54092&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;relationsQuery\&quot;,   \&quot;rootEntity\&quot;: {     \&quot;entityType\&quot;: \&quot;ASSET\&quot;,     \&quot;id\&quot;: \&quot;e51de0c0-2a7a-11ec-94eb-213c95f54092\&quot;   },   \&quot;direction\&quot;: \&quot;FROM\&quot;,   \&quot;maxLevel\&quot;: 1,   \&quot;fetchLastLevelOnly\&quot;: false,   \&quot;filters\&quot;: [     {       \&quot;relationType\&quot;: \&quot;Contains\&quot;,       \&quot;entityTypes\&quot;: [         \&quot;DEVICE\&quot;,         \&quot;ASSET\&quot;       ]     }   ] } &#x60;&#x60;&#x60;  ## Asset Search Query  Allows to filter assets that are related to the provided root entity. Filters related assets based on the relation type and set of asset types. Possible direction values are &#39;TO&#39; and &#39;FROM&#39;. The &#39;maxLevel&#39; defines how many relation levels should the query search &#39;recursively&#39;. Assuming the &#39;maxLevel&#39; is &gt; 1, the &#39;fetchLastLevelOnly&#39; defines either to return all related entities or only entities that are on the last level of relations. The &#39;relationType&#39; defines the type of the relation to search for. The &#39;assetTypes&#39; defines the type of the asset to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only assets that match &#39;relationType&#39; and &#39;assetTypes&#39; conditions.  For example, this entity filter selects &#39;charging station&#39; assets which are related to the asset with id &#39;e51de0c0-2a7a-11ec-94eb-213c95f54092&#39; using &#39;Contains&#39; relation:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;assetSearchQuery\&quot;,   \&quot;rootEntity\&quot;: {     \&quot;entityType\&quot;: \&quot;ASSET\&quot;,     \&quot;id\&quot;: \&quot;e51de0c0-2a7a-11ec-94eb-213c95f54092\&quot;   },   \&quot;direction\&quot;: \&quot;FROM\&quot;,   \&quot;maxLevel\&quot;: 1,   \&quot;fetchLastLevelOnly\&quot;: false,   \&quot;relationType\&quot;: \&quot;Contains\&quot;,   \&quot;assetTypes\&quot;: [     \&quot;charging station\&quot;   ] } &#x60;&#x60;&#x60;  ## Device Search Query  Allows to filter devices that are related to the provided root entity. Filters related devices based on the relation type and set of device types. Possible direction values are &#39;TO&#39; and &#39;FROM&#39;. The &#39;maxLevel&#39; defines how many relation levels should the query search &#39;recursively&#39;. Assuming the &#39;maxLevel&#39; is &gt; 1, the &#39;fetchLastLevelOnly&#39; defines either to return all related entities or only entities that are on the last level of relations. The &#39;relationType&#39; defines the type of the relation to search for. The &#39;deviceTypes&#39; defines the type of the device to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only devices that match &#39;relationType&#39; and &#39;deviceTypes&#39; conditions.  For example, this entity filter selects &#39;Charging port&#39; and &#39;Air Quality Sensor&#39; devices which are related to the asset with id &#39;e52b0020-2a7a-11ec-94eb-213c95f54092&#39; using &#39;Contains&#39; relation:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;deviceSearchQuery\&quot;,   \&quot;rootEntity\&quot;: {     \&quot;entityType\&quot;: \&quot;ASSET\&quot;,     \&quot;id\&quot;: \&quot;e52b0020-2a7a-11ec-94eb-213c95f54092\&quot;   },   \&quot;direction\&quot;: \&quot;FROM\&quot;,   \&quot;maxLevel\&quot;: 2,   \&quot;fetchLastLevelOnly\&quot;: true,   \&quot;relationType\&quot;: \&quot;Contains\&quot;,   \&quot;deviceTypes\&quot;: [     \&quot;Air Quality Sensor\&quot;,     \&quot;Charging port\&quot;   ] } &#x60;&#x60;&#x60;  ## Entity View Query  Allows to filter entity views that are related to the provided root entity. Filters related entity views based on the relation type and set of entity view types. Possible direction values are &#39;TO&#39; and &#39;FROM&#39;. The &#39;maxLevel&#39; defines how many relation levels should the query search &#39;recursively&#39;. Assuming the &#39;maxLevel&#39; is &gt; 1, the &#39;fetchLastLevelOnly&#39; defines either to return all related entities or only entities that are on the last level of relations. The &#39;relationType&#39; defines the type of the relation to search for. The &#39;entityViewTypes&#39; defines the type of the entity view to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only devices that match &#39;relationType&#39; and &#39;deviceTypes&#39; conditions.  For example, this entity filter selects &#39;Concrete mixer&#39; entity views which are related to the asset with id &#39;e52b0020-2a7a-11ec-94eb-213c95f54092&#39; using &#39;Contains&#39; relation:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityViewSearchQuery\&quot;,   \&quot;rootEntity\&quot;: {     \&quot;entityType\&quot;: \&quot;ASSET\&quot;,     \&quot;id\&quot;: \&quot;e52b0020-2a7a-11ec-94eb-213c95f54092\&quot;   },   \&quot;direction\&quot;: \&quot;FROM\&quot;,   \&quot;maxLevel\&quot;: 1,   \&quot;fetchLastLevelOnly\&quot;: false,   \&quot;relationType\&quot;: \&quot;Contains\&quot;,   \&quot;entityViewTypes\&quot;: [     \&quot;Concrete mixer\&quot;   ] } &#x60;&#x60;&#x60;  ## Edge Search Query  Allows to filter edge instances that are related to the provided root entity. Filters related edge instances based on the relation type and set of edge types. Possible direction values are &#39;TO&#39; and &#39;FROM&#39;. The &#39;maxLevel&#39; defines how many relation levels should the query search &#39;recursively&#39;. Assuming the &#39;maxLevel&#39; is &gt; 1, the &#39;fetchLastLevelOnly&#39; defines either to return all related entities or only entities that are on the last level of relations. The &#39;relationType&#39; defines the type of the relation to search for. The &#39;deviceTypes&#39; defines the type of the device to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only devices that match &#39;relationType&#39; and &#39;deviceTypes&#39; conditions.  For example, this entity filter selects &#39;Factory&#39; edge instances which are related to the asset with id &#39;e52b0020-2a7a-11ec-94eb-213c95f54092&#39; using &#39;Contains&#39; relation:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;deviceSearchQuery\&quot;,   \&quot;rootEntity\&quot;: {     \&quot;entityType\&quot;: \&quot;ASSET\&quot;,     \&quot;id\&quot;: \&quot;e52b0020-2a7a-11ec-94eb-213c95f54092\&quot;   },   \&quot;direction\&quot;: \&quot;FROM\&quot;,   \&quot;maxLevel\&quot;: 2,   \&quot;fetchLastLevelOnly\&quot;: true,   \&quot;relationType\&quot;: \&quot;Contains\&quot;,   \&quot;edgeTypes\&quot;: [     \&quot;Factory\&quot;   ] } &#x60;&#x60;&#x60;   # Key Filters Key Filter allows you to define complex logical expressions over entity field, attribute or latest time series value. The filter is defined using &#39;key&#39;, &#39;valueType&#39; and &#39;predicate&#39; objects. Single Entity Query may have zero, one or multiple predicates. If multiple filters are defined, they are evaluated using logical &#39;AND&#39;. The example below checks that temperature of the entity is above 20 degrees:  &#x60;&#x60;&#x60;json {   \&quot;key\&quot;: {     \&quot;type\&quot;: \&quot;TIME_SERIES\&quot;,     \&quot;key\&quot;: \&quot;temperature\&quot;   },   \&quot;valueType\&quot;: \&quot;NUMERIC\&quot;,   \&quot;predicate\&quot;: {     \&quot;operation\&quot;: \&quot;GREATER\&quot;,     \&quot;value\&quot;: {       \&quot;defaultValue\&quot;: 20,       \&quot;dynamicValue\&quot;: null     },     \&quot;type\&quot;: \&quot;NUMERIC\&quot;   } } &#x60;&#x60;&#x60;   Now let&#39;s review &#39;key&#39;, &#39;valueType&#39; and &#39;predicate&#39; objects in detail.  ## Filter Key  Filter Key defines either entity field, attribute or telemetry. It is a JSON object that consists the key name and type. The following filter key types are supported:    * &#39;CLIENT_ATTRIBUTE&#39; - used for client attributes;   * &#39;SHARED_ATTRIBUTE&#39; - used for shared attributes;   * &#39;SERVER_ATTRIBUTE&#39; - used for server attributes;   * &#39;ATTRIBUTE&#39; - used for any of the above;   * &#39;TIME_SERIES&#39; - used for time series values;   * &#39;ENTITY_FIELD&#39; - used for accessing entity fields like &#39;name&#39;, &#39;label&#39;, etc. The list of available fields depends on the entity type;   * &#39;ALARM_FIELD&#39; - similar to entity field, but is used in alarm queries only;     Let&#39;s review the example:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;TIME_SERIES\&quot;,   \&quot;key\&quot;: \&quot;temperature\&quot; } &#x60;&#x60;&#x60;  ## Value Type and Operations  Provides a hint about the data type of the entity field that is defined in the filter key. The value type impacts the list of possible operations that you may use in the corresponding predicate. For example, you may use &#39;STARTS_WITH&#39; or &#39;END_WITH&#39;, but you can&#39;t use &#39;GREATER_OR_EQUAL&#39; for string values.The following filter value types and corresponding predicate operations are supported:    * &#39;STRING&#39; - used to filter any &#39;String&#39; or &#39;JSON&#39; values. Operations: EQUAL, NOT_EQUAL, STARTS_WITH, ENDS_WITH, CONTAINS, NOT_CONTAINS;   * &#39;NUMERIC&#39; - used for &#39;Long&#39; and &#39;Double&#39; values. Operations: EQUAL, NOT_EQUAL, GREATER, LESS, GREATER_OR_EQUAL, LESS_OR_EQUAL;   * &#39;BOOLEAN&#39; - used for boolean values. Operations: EQUAL, NOT_EQUAL;  * &#39;DATE_TIME&#39; - similar to numeric, transforms value to milliseconds since epoch. Operations: EQUAL, NOT_EQUAL, GREATER, LESS, GREATER_OR_EQUAL, LESS_OR_EQUAL;    ## Filter Predicate  Filter Predicate defines the logical expression to evaluate. The list of available operations depends on the filter value type, see above. Platform supports 4 predicate types: &#39;STRING&#39;, &#39;NUMERIC&#39;, &#39;BOOLEAN&#39; and &#39;COMPLEX&#39;. The last one allows to combine multiple operations over one filter key.  Simple predicate example to check &#39;value &lt; 100&#39;:   &#x60;&#x60;&#x60;json {   \&quot;operation\&quot;: \&quot;LESS\&quot;,   \&quot;value\&quot;: {     \&quot;defaultValue\&quot;: 100,     \&quot;dynamicValue\&quot;: null   },   \&quot;type\&quot;: \&quot;NUMERIC\&quot; } &#x60;&#x60;&#x60;  Complex predicate example, to check &#39;value &lt; 10 or value &gt; 20&#39;:   &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;COMPLEX\&quot;,   \&quot;operation\&quot;: \&quot;OR\&quot;,   \&quot;predicates\&quot;: [     {       \&quot;operation\&quot;: \&quot;LESS\&quot;,       \&quot;value\&quot;: {         \&quot;defaultValue\&quot;: 10,         \&quot;dynamicValue\&quot;: null       },       \&quot;type\&quot;: \&quot;NUMERIC\&quot;     },     {       \&quot;operation\&quot;: \&quot;GREATER\&quot;,       \&quot;value\&quot;: {         \&quot;defaultValue\&quot;: 20,         \&quot;dynamicValue\&quot;: null       },       \&quot;type\&quot;: \&quot;NUMERIC\&quot;     }   ] } &#x60;&#x60;&#x60;  More complex predicate example, to check &#39;value &lt; 10 or (value &gt; 50 &amp;&amp; value &lt; 60)&#39;:   &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;COMPLEX\&quot;,   \&quot;operation\&quot;: \&quot;OR\&quot;,   \&quot;predicates\&quot;: [     {       \&quot;operation\&quot;: \&quot;LESS\&quot;,       \&quot;value\&quot;: {         \&quot;defaultValue\&quot;: 10,         \&quot;dynamicValue\&quot;: null       },       \&quot;type\&quot;: \&quot;NUMERIC\&quot;     },     {       \&quot;type\&quot;: \&quot;COMPLEX\&quot;,       \&quot;operation\&quot;: \&quot;AND\&quot;,       \&quot;predicates\&quot;: [         {           \&quot;operation\&quot;: \&quot;GREATER\&quot;,           \&quot;value\&quot;: {             \&quot;defaultValue\&quot;: 50,             \&quot;dynamicValue\&quot;: null           },           \&quot;type\&quot;: \&quot;NUMERIC\&quot;         },         {           \&quot;operation\&quot;: \&quot;LESS\&quot;,           \&quot;value\&quot;: {             \&quot;defaultValue\&quot;: 60,             \&quot;dynamicValue\&quot;: null           },           \&quot;type\&quot;: \&quot;NUMERIC\&quot;         }       ]     }   ] } &#x60;&#x60;&#x60;   You may also want to replace hardcoded values (for example, temperature &gt; 20) with the more dynamic expression (for example, temperature &gt; &#39;value of the tenant attribute with key &#39;temperatureThreshold&#39;). It is possible to use &#39;dynamicValue&#39; to define attribute of the tenant, customer or user that is performing the API call. See example below:   &#x60;&#x60;&#x60;json {   \&quot;operation\&quot;: \&quot;GREATER\&quot;,   \&quot;value\&quot;: {     \&quot;defaultValue\&quot;: 0,     \&quot;dynamicValue\&quot;: {       \&quot;sourceType\&quot;: \&quot;CURRENT_USER\&quot;,       \&quot;sourceAttribute\&quot;: \&quot;temperatureThreshold\&quot;     }   },   \&quot;type\&quot;: \&quot;NUMERIC\&quot; } &#x60;&#x60;&#x60;   Note that you may use &#39;CURRENT_USER&#39;, &#39;CURRENT_CUSTOMER&#39; and &#39;CURRENT_TENANT&#39; as a &#39;sourceType&#39;. The &#39;defaultValue&#39; is used when the attribute with such a name is not defined for the chosen source.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityCountQuery]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [int] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<int>> countEntitiesByQuery({
    required EntityCountQuery entityCountQuery,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerEntityCountQuery);
    final _path = r'/api/entitiesQuery/count';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },
          {'type': 'http', 'scheme': 'loginPassword', 'name': 'HttpLoginForm'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(EntityCountQuery);
      _bodyData = _serializers.serialize(
        entityCountQuery,
        specifiedType: _type,
      );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    int? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as int;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<int>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Find Alarms by Query
  /// This method description defines how Alarm Data Query extends the Entity Data Query. See method &#39;Find Entity Data by Query&#39; first to get the info about &#39;Entity Data Query&#39;.   The platform will first search the entities that match the entity and key filters. Then, the platform will use &#39;Alarm Page Link&#39; to filter the alarms related to those entities. Finally, platform fetch the properties of alarm that are defined in the **&#39;alarmFields&#39;** and combine them with the other entity, attribute and latest time series fields to return the result.    See example of the alarm query below. The query will search first 100 active alarms with type &#39;Temperature Alarm&#39; or &#39;Fire Alarm&#39; for any device with current temperature &gt; 0. The query will return combination of the entity fields: name of the device, device model and latest temperature reading and alarms fields: createdTime, type, severity and status:   &#x60;&#x60;&#x60;json {   \&quot;entityFilter\&quot;: {     \&quot;type\&quot;: \&quot;entityType\&quot;,     \&quot;resolveMultiple\&quot;: true,     \&quot;entityType\&quot;: \&quot;DEVICE\&quot;   },   \&quot;pageLink\&quot;: {     \&quot;page\&quot;: 0,     \&quot;pageSize\&quot;: 100,     \&quot;textSearch\&quot;: null,     \&quot;searchPropagatedAlarms\&quot;: false,     \&quot;statusList\&quot;: [       \&quot;ACTIVE\&quot;     ],     \&quot;severityList\&quot;: [       \&quot;CRITICAL\&quot;,       \&quot;MAJOR\&quot;     ],     \&quot;typeList\&quot;: [       \&quot;Temperature Alarm\&quot;,       \&quot;Fire Alarm\&quot;     ],     \&quot;sortOrder\&quot;: {       \&quot;key\&quot;: {         \&quot;key\&quot;: \&quot;createdTime\&quot;,         \&quot;type\&quot;: \&quot;ALARM_FIELD\&quot;       },       \&quot;direction\&quot;: \&quot;DESC\&quot;     },     \&quot;timeWindow\&quot;: 86400000   },   \&quot;keyFilters\&quot;: [     {       \&quot;key\&quot;: {         \&quot;type\&quot;: \&quot;TIME_SERIES\&quot;,         \&quot;key\&quot;: \&quot;temperature\&quot;       },       \&quot;valueType\&quot;: \&quot;NUMERIC\&quot;,       \&quot;predicate\&quot;: {         \&quot;operation\&quot;: \&quot;GREATER\&quot;,         \&quot;value\&quot;: {           \&quot;defaultValue\&quot;: 0,           \&quot;dynamicValue\&quot;: null         },         \&quot;type\&quot;: \&quot;NUMERIC\&quot;       }     }   ],   \&quot;alarmFields\&quot;: [     {       \&quot;type\&quot;: \&quot;ALARM_FIELD\&quot;,       \&quot;key\&quot;: \&quot;createdTime\&quot;     },     {       \&quot;type\&quot;: \&quot;ALARM_FIELD\&quot;,       \&quot;key\&quot;: \&quot;type\&quot;     },     {       \&quot;type\&quot;: \&quot;ALARM_FIELD\&quot;,       \&quot;key\&quot;: \&quot;severity\&quot;     },     {       \&quot;type\&quot;: \&quot;ALARM_FIELD\&quot;,       \&quot;key\&quot;: \&quot;status\&quot;     }   ],   \&quot;entityFields\&quot;: [     {       \&quot;type\&quot;: \&quot;ENTITY_FIELD\&quot;,       \&quot;key\&quot;: \&quot;name\&quot;     }   ],   \&quot;latestValues\&quot;: [     {       \&quot;type\&quot;: \&quot;ATTRIBUTE\&quot;,       \&quot;key\&quot;: \&quot;model\&quot;     },     {       \&quot;type\&quot;: \&quot;TIME_SERIES\&quot;,       \&quot;key\&quot;: \&quot;temperature\&quot;     }   ] } &#x60;&#x60;&#x60;
  ///
  /// Parameters:
  /// * [alarmDataQuery]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataAlarmData] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataAlarmData>> findAlarmDataByQuery({
    required AlarmDataQuery alarmDataQuery,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ??
        apiSerializers(registerAlarmDataQueryAndPageDataAlarmData);
    final _path = r'/api/alarmsQuery/find';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },
          {'type': 'http', 'scheme': 'loginPassword', 'name': 'HttpLoginForm'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(AlarmDataQuery);
      _bodyData = _serializers.serialize(alarmDataQuery, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PageDataAlarmData? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(PageDataAlarmData),
                )
                as PageDataAlarmData;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataAlarmData>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Find Available Entity Keys by Query (deprecated)
  /// **Deprecated.** Use the V2 endpoint (&#x60;POST /api/v2/entitiesQuery/find/keys&#x60;) instead.  Returns unique time series and/or attribute key names from entities matching the query.  Executes the Entity Data Query to find up to 100 entities, then fetches and aggregates all distinct key names.  Primarily used for UI features like autocomplete suggestions.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority. Security check is performed to verify that the user has &#39;READ&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [timeseries] - When true, includes unique time series key names in the response. When false, the 'timeseries' list will be empty.
  /// * [attributes] - When true, includes unique attribute key names in the response. When false, the 'attribute' list will be empty. Use 'scope' parameter to filter by attribute scope.
  /// * [entityDataQuery]
  /// * [scope] - Filters attribute keys by scope. Only applies when 'attributes' is true. If not specified, returns attribute keys from all scopes.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AvailableEntityKeys] as data
  /// Throws [DioException] if API call or serialization fails
  @Deprecated('This operation has been deprecated')
  Future<Response<AvailableEntityKeys>> findAvailableEntityKeysByQuery({
    required bool timeseries,
    required bool attributes,
    required EntityDataQuery entityDataQuery,
    String? scope,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ??
        apiSerializers(registerAvailableEntityKeysAndEntityDataQuery);
    final _path = r'/api/entitiesQuery/find/keys';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },
          {'type': 'http', 'scheme': 'loginPassword', 'name': 'HttpLoginForm'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'timeseries': encodeQueryParameter(
        _serializers,
        timeseries,
        const FullType(bool),
      ),
      r'attributes': encodeQueryParameter(
        _serializers,
        attributes,
        const FullType(bool),
      ),
      if (scope != null)
        r'scope': encodeQueryParameter(
          _serializers,
          scope,
          const FullType(String),
        ),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(EntityDataQuery);
      _bodyData = _serializers.serialize(entityDataQuery, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AvailableEntityKeys? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(AvailableEntityKeys),
                )
                as AvailableEntityKeys;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AvailableEntityKeys>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Find Available Entity Keys By Query
  /// Discovers unique time series and/or attribute key names available on entities that match the given query. Works in two steps: first, the request body (an Entity Data Query) is executed to find matching entities (page size is capped at 100); then, all distinct key names are collected from those entities.  Optionally, each key can include a sample — the most recent value (by timestamp) for that key across all matched entities.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority. Security check is performed to verify that the user has &#39;READ&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [entityDataQuery]
  /// * [includeTimeseries] - When true, includes unique time series keys in the response. When false, the 'timeseries' field is omitted. At least one of 'includeTimeseries' or 'includeAttributes' must be true.
  /// * [includeAttributes] - When true, includes unique attribute keys in the response. When false, the 'attributes' field is omitted. At least one of 'includeTimeseries' or 'includeAttributes' must be true.
  /// * [scopes] - Filters attribute keys by scope. Only applies when 'includeAttributes' is true. When not specified, scopes are auto-determined: all three scopes (server, client, shared) for device entities, server scope only for other entity types.
  /// * [includeSamples] - When true, each key entry includes a 'sample' object with the most recent value and timestamp. When false, only key names are returned (sample is omitted from JSON).
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AvailableEntityKeysV2] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AvailableEntityKeysV2>> findAvailableEntityKeysByQueryV2({
    required EntityDataQuery entityDataQuery,
    bool? includeTimeseries = true,
    bool? includeAttributes = true,
    String? scopes,
    bool? includeSamples = false,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ??
        apiSerializers(registerAvailableEntityKeysV2AndEntityDataQuery);
    final _path = r'/api/v2/entitiesQuery/find/keys';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },
          {'type': 'http', 'scheme': 'loginPassword', 'name': 'HttpLoginForm'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (includeTimeseries != null)
        r'includeTimeseries': encodeQueryParameter(
          _serializers,
          includeTimeseries,
          const FullType(bool),
        ),
      if (includeAttributes != null)
        r'includeAttributes': encodeQueryParameter(
          _serializers,
          includeAttributes,
          const FullType(bool),
        ),
      if (scopes != null)
        r'scopes': encodeQueryParameter(
          _serializers,
          scopes,
          const FullType(String),
        ),
      if (includeSamples != null)
        r'includeSamples': encodeQueryParameter(
          _serializers,
          includeSamples,
          const FullType(bool),
        ),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(EntityDataQuery);
      _bodyData = _serializers.serialize(entityDataQuery, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AvailableEntityKeysV2? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(AvailableEntityKeysV2),
                )
                as AvailableEntityKeysV2;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AvailableEntityKeysV2>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Find Entity Data by Query
  /// Allows to run complex queries over platform entities (devices, assets, customers, etc) based on the combination of main entity filter and multiple key filters. Returns the paginated result of the query that contains requested entity fields and latest values of requested attributes and time series data.  # Query Definition    Main **entity filter** is mandatory and defines generic search criteria. For example, \&quot;find all devices with profile &#39;Moisture Sensor&#39;\&quot; or \&quot;Find all devices related to asset &#39;Building A&#39;\&quot;  Optional **key filters** allow to filter results of the **entity filter** by complex criteria against main entity fields (name, label, type, etc), attributes and telemetry. For example, \&quot;temperature &gt; 20 or temperature&lt; 10\&quot; or \&quot;name starts with &#39;T&#39;, and attribute &#39;model&#39; is &#39;T1000&#39;, and time series field &#39;batteryLevel&#39; &gt; 40\&quot;.  The **entity fields** and **latest values** contains list of entity fields and latest attribute/telemetry fields to fetch for each entity.  The **page link** contains information about the page to fetch and the sort ordering.  Let&#39;s review the example:  &#x60;&#x60;&#x60;json {   \&quot;entityFilter\&quot;: {     \&quot;type\&quot;: \&quot;entityType\&quot;,     \&quot;resolveMultiple\&quot;: true,     \&quot;entityType\&quot;: \&quot;DEVICE\&quot;   },   \&quot;keyFilters\&quot;: [     {       \&quot;key\&quot;: {         \&quot;type\&quot;: \&quot;TIME_SERIES\&quot;,         \&quot;key\&quot;: \&quot;temperature\&quot;       },       \&quot;valueType\&quot;: \&quot;NUMERIC\&quot;,       \&quot;predicate\&quot;: {         \&quot;operation\&quot;: \&quot;GREATER\&quot;,         \&quot;value\&quot;: {           \&quot;defaultValue\&quot;: 0,           \&quot;dynamicValue\&quot;: {             \&quot;sourceType\&quot;: \&quot;CURRENT_USER\&quot;,             \&quot;sourceAttribute\&quot;: \&quot;temperatureThreshold\&quot;,             \&quot;inherit\&quot;: false           }         },         \&quot;type\&quot;: \&quot;NUMERIC\&quot;       }     }   ],   \&quot;entityFields\&quot;: [     {       \&quot;type\&quot;: \&quot;ENTITY_FIELD\&quot;,       \&quot;key\&quot;: \&quot;name\&quot;     },     {       \&quot;type\&quot;: \&quot;ENTITY_FIELD\&quot;,       \&quot;key\&quot;: \&quot;label\&quot;     },     {       \&quot;type\&quot;: \&quot;ENTITY_FIELD\&quot;,       \&quot;key\&quot;: \&quot;additionalInfo\&quot;     }   ],   \&quot;latestValues\&quot;: [     {       \&quot;type\&quot;: \&quot;ATTRIBUTE\&quot;,       \&quot;key\&quot;: \&quot;model\&quot;     },     {       \&quot;type\&quot;: \&quot;TIME_SERIES\&quot;,       \&quot;key\&quot;: \&quot;temperature\&quot;     }   ],   \&quot;pageLink\&quot;: {     \&quot;page\&quot;: 0,     \&quot;pageSize\&quot;: 10,     \&quot;sortOrder\&quot;: {       \&quot;key\&quot;: {         \&quot;key\&quot;: \&quot;name\&quot;,         \&quot;type\&quot;: \&quot;ENTITY_FIELD\&quot;       },       \&quot;direction\&quot;: \&quot;ASC\&quot;     }   } } &#x60;&#x60;&#x60;   Example mentioned above search all devices which have attribute &#39;active&#39; set to &#39;true&#39;. Now let&#39;s review available entity filters and key filters syntax:   # Entity Filters Entity Filter body depends on the &#39;type&#39; parameter. Let&#39;s review available entity filter types. In fact, they do correspond to available dashboard aliases.  ## Single Entity  Allows to filter only one entity based on the id. For example, this entity filter selects certain device:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;singleEntity\&quot;,   \&quot;singleEntity\&quot;: {     \&quot;id\&quot;: \&quot;d521edb0-2a7a-11ec-94eb-213c95f54092\&quot;,     \&quot;entityType\&quot;: \&quot;DEVICE\&quot;   } } &#x60;&#x60;&#x60;  ## Group Entities Filter  Allows to filter multiple entities of the same type using the entity group type and id. For example, this entity filter selects all devices that belong to the group &#39;e52b0020-2a7a-11ec-94eb-213c95f54092&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityGroup\&quot;,   \&quot;groupType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityGroup\&quot;: \&quot;e52b0020-2a7a-11ec-94eb-213c95f54092\&quot; } &#x60;&#x60;&#x60;  ## Entity List Filter  Allows to filter entities of the same type using their ids. For example, this entity filter selects two devices:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityList\&quot;,   \&quot;entityType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityList\&quot;: [     \&quot;e6501f30-2a7a-11ec-94eb-213c95f54092\&quot;,     \&quot;e6657bf0-2a7a-11ec-94eb-213c95f54092\&quot;   ] } &#x60;&#x60;&#x60;  ## Entity Name Filter  Allows to filter entities of the same type using the **&#39;starts with&#39;** expression over entity name. For example, this entity filter selects all devices which name starts with &#39;Air Quality&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityName\&quot;,   \&quot;entityType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityNameFilter\&quot;: \&quot;Air Quality\&quot; } &#x60;&#x60;&#x60;  ## Entity Type Filter  Allows to filter entities based on their type (CUSTOMER, USER, DASHBOARD, ASSET, DEVICE, etc)For example, this entity filter selects all tenant customers:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityType\&quot;,   \&quot;entityType\&quot;: \&quot;CUSTOMER\&quot; } &#x60;&#x60;&#x60;  ## Group List Filter  Return multiple groups of the same type using specified ids. For example, this entity filter selects 2 device groups (if they are present in the system) with ids &#39;e52b0020-2a7a-11ec-94eb-213c95f54092&#39; and &#39;e52b0020-2a7a-11ec-94eb-213c95f54093&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityGroupList\&quot;,   \&quot;groupType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityGroupList\&quot;: [\&quot;e52b0020-2a7a-11ec-94eb-213c95f54092\&quot;, \&quot;e52b0020-2a7a-11ec-94eb-213c95f54093\&quot;] } &#x60;&#x60;&#x60;  ## Group Name Filter  Allows to filter entity groups based on their type and the **&#39;starts with&#39;** expression over their name. For example, this entity filter selects all devices which name starts with &#39;CAT&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityGroupName\&quot;,   \&quot;groupType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityGroupNameFilter\&quot;: \&quot;CAT\&quot; } &#x60;&#x60;&#x60;  ## Entities by Group Name Filter  Allows to filter entities that belong to group based on the entity type and the group name. Optional parameter &#39;ownerId&#39; allows you to specify the owner of the group (Tenant or Customer, current user owner by default).For example, this entity filter selects all devices which belong to group &#39;Water Meters&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entitiesByGroupName\&quot;,   \&quot;groupType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityGroupNameFilter\&quot;: \&quot;Water Meters\&quot; } &#x60;&#x60;&#x60;   Other example, this entity filter selects all devices which belong to group &#39;Water Meters&#39; which in turn belongs to (sub-)Customer with id &#39;e52b0020-2a7a-11ec-94eb-213c95f54093&#39;:   &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entitiesByGroupName\&quot;,   \&quot;ownerId\&quot;: {\&quot;entityType\&quot;: \&quot;CUSTOMER\&quot;,\&quot;id\&quot;:\&quot;e52b0020-2a7a-11ec-94eb-213c95f54093\&quot;},   \&quot;groupType\&quot;: \&quot;DEVICE\&quot;,   \&quot;entityGroupNameFilter\&quot;: \&quot;Water Meters\&quot; } &#x60;&#x60;&#x60;  ## Entity owner Filter  Allows to fetch owner (Tenant or Customer) of the specified entity. For example, this entity filter selects owner of the device with id &#39;e52b0020-2a7a-11ec-94eb-213c95f54093&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;stateEntityOwner\&quot;,   \&quot;singleEntity\&quot;: {     \&quot;id\&quot;: \&quot;d521edb0-2a7a-11ec-94eb-213c95f54092\&quot;,     \&quot;entityType\&quot;: \&quot;DEVICE\&quot;   } } &#x60;&#x60;&#x60;  ## Asset Type Filter  Allows to filter assets based on their type and the **&#39;starts with&#39;** expression over their name. For example, this entity filter selects all &#39;charging station&#39; assets which name starts with &#39;Tesla&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;assetType\&quot;,   \&quot;assetType\&quot;: \&quot;charging station\&quot;,   \&quot;assetNameFilter\&quot;: \&quot;Tesla\&quot; } &#x60;&#x60;&#x60;  ## Device Type Filter  Allows to filter devices based on their type and the **&#39;starts with&#39;** expression over their name. For example, this entity filter selects all &#39;Temperature Sensor&#39; devices which name starts with &#39;ABC&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;deviceType\&quot;,   \&quot;deviceType\&quot;: \&quot;Temperature Sensor\&quot;,   \&quot;deviceNameFilter\&quot;: \&quot;ABC\&quot; } &#x60;&#x60;&#x60;  ## Edge Type Filter  Allows to filter edge instances based on their type and the **&#39;starts with&#39;** expression over their name. For example, this entity filter selects all &#39;Factory&#39; edge instances which name starts with &#39;Nevada&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;edgeType\&quot;,   \&quot;edgeType\&quot;: \&quot;Factory\&quot;,   \&quot;edgeNameFilter\&quot;: \&quot;Nevada\&quot; } &#x60;&#x60;&#x60;  ## Entity View Filter  Allows to filter entity views based on their type and the **&#39;starts with&#39;** expression over their name. For example, this entity filter selects all &#39;Concrete Mixer&#39; entity views which name starts with &#39;CAT&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityViewType\&quot;,   \&quot;entityViewType\&quot;: \&quot;Concrete Mixer\&quot;,   \&quot;entityViewNameFilter\&quot;: \&quot;CAT\&quot; } &#x60;&#x60;&#x60;  ## Api Usage Filter  Allows to query for Api Usage based on optional customer id. If the customer id is not set, returns current tenant API usage.For example, this entity filter selects the &#39;Api Usage&#39; entity for customer with id &#39;e6501f30-2a7a-11ec-94eb-213c95f54092&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;apiUsageState\&quot;,   \&quot;customerId\&quot;: {     \&quot;id\&quot;: \&quot;d521edb0-2a7a-11ec-94eb-213c95f54092\&quot;,     \&quot;entityType\&quot;: \&quot;CUSTOMER\&quot;   } } &#x60;&#x60;&#x60;  ## Relations Query Filter  Allows to filter entities that are related to the provided root entity. Possible direction values are &#39;TO&#39; and &#39;FROM&#39;. The &#39;maxLevel&#39; defines how many relation levels should the query search &#39;recursively&#39;. Assuming the &#39;maxLevel&#39; is &gt; 1, the &#39;fetchLastLevelOnly&#39; defines either to return all related entities or only entities that are on the last level of relations. The &#39;filter&#39; object allows you to define the relation type and set of acceptable entity types to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only those who match the &#39;filters&#39;.  For example, this entity filter selects all devices and assets which are related to the asset with id &#39;e51de0c0-2a7a-11ec-94eb-213c95f54092&#39;:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;relationsQuery\&quot;,   \&quot;rootEntity\&quot;: {     \&quot;entityType\&quot;: \&quot;ASSET\&quot;,     \&quot;id\&quot;: \&quot;e51de0c0-2a7a-11ec-94eb-213c95f54092\&quot;   },   \&quot;direction\&quot;: \&quot;FROM\&quot;,   \&quot;maxLevel\&quot;: 1,   \&quot;fetchLastLevelOnly\&quot;: false,   \&quot;filters\&quot;: [     {       \&quot;relationType\&quot;: \&quot;Contains\&quot;,       \&quot;entityTypes\&quot;: [         \&quot;DEVICE\&quot;,         \&quot;ASSET\&quot;       ]     }   ] } &#x60;&#x60;&#x60;  ## Asset Search Query  Allows to filter assets that are related to the provided root entity. Filters related assets based on the relation type and set of asset types. Possible direction values are &#39;TO&#39; and &#39;FROM&#39;. The &#39;maxLevel&#39; defines how many relation levels should the query search &#39;recursively&#39;. Assuming the &#39;maxLevel&#39; is &gt; 1, the &#39;fetchLastLevelOnly&#39; defines either to return all related entities or only entities that are on the last level of relations. The &#39;relationType&#39; defines the type of the relation to search for. The &#39;assetTypes&#39; defines the type of the asset to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only assets that match &#39;relationType&#39; and &#39;assetTypes&#39; conditions.  For example, this entity filter selects &#39;charging station&#39; assets which are related to the asset with id &#39;e51de0c0-2a7a-11ec-94eb-213c95f54092&#39; using &#39;Contains&#39; relation:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;assetSearchQuery\&quot;,   \&quot;rootEntity\&quot;: {     \&quot;entityType\&quot;: \&quot;ASSET\&quot;,     \&quot;id\&quot;: \&quot;e51de0c0-2a7a-11ec-94eb-213c95f54092\&quot;   },   \&quot;direction\&quot;: \&quot;FROM\&quot;,   \&quot;maxLevel\&quot;: 1,   \&quot;fetchLastLevelOnly\&quot;: false,   \&quot;relationType\&quot;: \&quot;Contains\&quot;,   \&quot;assetTypes\&quot;: [     \&quot;charging station\&quot;   ] } &#x60;&#x60;&#x60;  ## Device Search Query  Allows to filter devices that are related to the provided root entity. Filters related devices based on the relation type and set of device types. Possible direction values are &#39;TO&#39; and &#39;FROM&#39;. The &#39;maxLevel&#39; defines how many relation levels should the query search &#39;recursively&#39;. Assuming the &#39;maxLevel&#39; is &gt; 1, the &#39;fetchLastLevelOnly&#39; defines either to return all related entities or only entities that are on the last level of relations. The &#39;relationType&#39; defines the type of the relation to search for. The &#39;deviceTypes&#39; defines the type of the device to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only devices that match &#39;relationType&#39; and &#39;deviceTypes&#39; conditions.  For example, this entity filter selects &#39;Charging port&#39; and &#39;Air Quality Sensor&#39; devices which are related to the asset with id &#39;e52b0020-2a7a-11ec-94eb-213c95f54092&#39; using &#39;Contains&#39; relation:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;deviceSearchQuery\&quot;,   \&quot;rootEntity\&quot;: {     \&quot;entityType\&quot;: \&quot;ASSET\&quot;,     \&quot;id\&quot;: \&quot;e52b0020-2a7a-11ec-94eb-213c95f54092\&quot;   },   \&quot;direction\&quot;: \&quot;FROM\&quot;,   \&quot;maxLevel\&quot;: 2,   \&quot;fetchLastLevelOnly\&quot;: true,   \&quot;relationType\&quot;: \&quot;Contains\&quot;,   \&quot;deviceTypes\&quot;: [     \&quot;Air Quality Sensor\&quot;,     \&quot;Charging port\&quot;   ] } &#x60;&#x60;&#x60;  ## Entity View Query  Allows to filter entity views that are related to the provided root entity. Filters related entity views based on the relation type and set of entity view types. Possible direction values are &#39;TO&#39; and &#39;FROM&#39;. The &#39;maxLevel&#39; defines how many relation levels should the query search &#39;recursively&#39;. Assuming the &#39;maxLevel&#39; is &gt; 1, the &#39;fetchLastLevelOnly&#39; defines either to return all related entities or only entities that are on the last level of relations. The &#39;relationType&#39; defines the type of the relation to search for. The &#39;entityViewTypes&#39; defines the type of the entity view to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only devices that match &#39;relationType&#39; and &#39;deviceTypes&#39; conditions.  For example, this entity filter selects &#39;Concrete mixer&#39; entity views which are related to the asset with id &#39;e52b0020-2a7a-11ec-94eb-213c95f54092&#39; using &#39;Contains&#39; relation:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;entityViewSearchQuery\&quot;,   \&quot;rootEntity\&quot;: {     \&quot;entityType\&quot;: \&quot;ASSET\&quot;,     \&quot;id\&quot;: \&quot;e52b0020-2a7a-11ec-94eb-213c95f54092\&quot;   },   \&quot;direction\&quot;: \&quot;FROM\&quot;,   \&quot;maxLevel\&quot;: 1,   \&quot;fetchLastLevelOnly\&quot;: false,   \&quot;relationType\&quot;: \&quot;Contains\&quot;,   \&quot;entityViewTypes\&quot;: [     \&quot;Concrete mixer\&quot;   ] } &#x60;&#x60;&#x60;  ## Edge Search Query  Allows to filter edge instances that are related to the provided root entity. Filters related edge instances based on the relation type and set of edge types. Possible direction values are &#39;TO&#39; and &#39;FROM&#39;. The &#39;maxLevel&#39; defines how many relation levels should the query search &#39;recursively&#39;. Assuming the &#39;maxLevel&#39; is &gt; 1, the &#39;fetchLastLevelOnly&#39; defines either to return all related entities or only entities that are on the last level of relations. The &#39;relationType&#39; defines the type of the relation to search for. The &#39;deviceTypes&#39; defines the type of the device to search for. The relation query calculates all related entities, even if they are filtered using different relation types, and then extracts only devices that match &#39;relationType&#39; and &#39;deviceTypes&#39; conditions.  For example, this entity filter selects &#39;Factory&#39; edge instances which are related to the asset with id &#39;e52b0020-2a7a-11ec-94eb-213c95f54092&#39; using &#39;Contains&#39; relation:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;deviceSearchQuery\&quot;,   \&quot;rootEntity\&quot;: {     \&quot;entityType\&quot;: \&quot;ASSET\&quot;,     \&quot;id\&quot;: \&quot;e52b0020-2a7a-11ec-94eb-213c95f54092\&quot;   },   \&quot;direction\&quot;: \&quot;FROM\&quot;,   \&quot;maxLevel\&quot;: 2,   \&quot;fetchLastLevelOnly\&quot;: true,   \&quot;relationType\&quot;: \&quot;Contains\&quot;,   \&quot;edgeTypes\&quot;: [     \&quot;Factory\&quot;   ] } &#x60;&#x60;&#x60;   # Key Filters Key Filter allows you to define complex logical expressions over entity field, attribute or latest time series value. The filter is defined using &#39;key&#39;, &#39;valueType&#39; and &#39;predicate&#39; objects. Single Entity Query may have zero, one or multiple predicates. If multiple filters are defined, they are evaluated using logical &#39;AND&#39;. The example below checks that temperature of the entity is above 20 degrees:  &#x60;&#x60;&#x60;json {   \&quot;key\&quot;: {     \&quot;type\&quot;: \&quot;TIME_SERIES\&quot;,     \&quot;key\&quot;: \&quot;temperature\&quot;   },   \&quot;valueType\&quot;: \&quot;NUMERIC\&quot;,   \&quot;predicate\&quot;: {     \&quot;operation\&quot;: \&quot;GREATER\&quot;,     \&quot;value\&quot;: {       \&quot;defaultValue\&quot;: 20,       \&quot;dynamicValue\&quot;: null     },     \&quot;type\&quot;: \&quot;NUMERIC\&quot;   } } &#x60;&#x60;&#x60;   Now let&#39;s review &#39;key&#39;, &#39;valueType&#39; and &#39;predicate&#39; objects in detail.  ## Filter Key  Filter Key defines either entity field, attribute or telemetry. It is a JSON object that consists the key name and type. The following filter key types are supported:    * &#39;CLIENT_ATTRIBUTE&#39; - used for client attributes;   * &#39;SHARED_ATTRIBUTE&#39; - used for shared attributes;   * &#39;SERVER_ATTRIBUTE&#39; - used for server attributes;   * &#39;ATTRIBUTE&#39; - used for any of the above;   * &#39;TIME_SERIES&#39; - used for time series values;   * &#39;ENTITY_FIELD&#39; - used for accessing entity fields like &#39;name&#39;, &#39;label&#39;, etc. The list of available fields depends on the entity type;   * &#39;ALARM_FIELD&#39; - similar to entity field, but is used in alarm queries only;     Let&#39;s review the example:  &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;TIME_SERIES\&quot;,   \&quot;key\&quot;: \&quot;temperature\&quot; } &#x60;&#x60;&#x60;  ## Value Type and Operations  Provides a hint about the data type of the entity field that is defined in the filter key. The value type impacts the list of possible operations that you may use in the corresponding predicate. For example, you may use &#39;STARTS_WITH&#39; or &#39;END_WITH&#39;, but you can&#39;t use &#39;GREATER_OR_EQUAL&#39; for string values.The following filter value types and corresponding predicate operations are supported:    * &#39;STRING&#39; - used to filter any &#39;String&#39; or &#39;JSON&#39; values. Operations: EQUAL, NOT_EQUAL, STARTS_WITH, ENDS_WITH, CONTAINS, NOT_CONTAINS;   * &#39;NUMERIC&#39; - used for &#39;Long&#39; and &#39;Double&#39; values. Operations: EQUAL, NOT_EQUAL, GREATER, LESS, GREATER_OR_EQUAL, LESS_OR_EQUAL;   * &#39;BOOLEAN&#39; - used for boolean values. Operations: EQUAL, NOT_EQUAL;  * &#39;DATE_TIME&#39; - similar to numeric, transforms value to milliseconds since epoch. Operations: EQUAL, NOT_EQUAL, GREATER, LESS, GREATER_OR_EQUAL, LESS_OR_EQUAL;    ## Filter Predicate  Filter Predicate defines the logical expression to evaluate. The list of available operations depends on the filter value type, see above. Platform supports 4 predicate types: &#39;STRING&#39;, &#39;NUMERIC&#39;, &#39;BOOLEAN&#39; and &#39;COMPLEX&#39;. The last one allows to combine multiple operations over one filter key.  Simple predicate example to check &#39;value &lt; 100&#39;:   &#x60;&#x60;&#x60;json {   \&quot;operation\&quot;: \&quot;LESS\&quot;,   \&quot;value\&quot;: {     \&quot;defaultValue\&quot;: 100,     \&quot;dynamicValue\&quot;: null   },   \&quot;type\&quot;: \&quot;NUMERIC\&quot; } &#x60;&#x60;&#x60;  Complex predicate example, to check &#39;value &lt; 10 or value &gt; 20&#39;:   &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;COMPLEX\&quot;,   \&quot;operation\&quot;: \&quot;OR\&quot;,   \&quot;predicates\&quot;: [     {       \&quot;operation\&quot;: \&quot;LESS\&quot;,       \&quot;value\&quot;: {         \&quot;defaultValue\&quot;: 10,         \&quot;dynamicValue\&quot;: null       },       \&quot;type\&quot;: \&quot;NUMERIC\&quot;     },     {       \&quot;operation\&quot;: \&quot;GREATER\&quot;,       \&quot;value\&quot;: {         \&quot;defaultValue\&quot;: 20,         \&quot;dynamicValue\&quot;: null       },       \&quot;type\&quot;: \&quot;NUMERIC\&quot;     }   ] } &#x60;&#x60;&#x60;  More complex predicate example, to check &#39;value &lt; 10 or (value &gt; 50 &amp;&amp; value &lt; 60)&#39;:   &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;COMPLEX\&quot;,   \&quot;operation\&quot;: \&quot;OR\&quot;,   \&quot;predicates\&quot;: [     {       \&quot;operation\&quot;: \&quot;LESS\&quot;,       \&quot;value\&quot;: {         \&quot;defaultValue\&quot;: 10,         \&quot;dynamicValue\&quot;: null       },       \&quot;type\&quot;: \&quot;NUMERIC\&quot;     },     {       \&quot;type\&quot;: \&quot;COMPLEX\&quot;,       \&quot;operation\&quot;: \&quot;AND\&quot;,       \&quot;predicates\&quot;: [         {           \&quot;operation\&quot;: \&quot;GREATER\&quot;,           \&quot;value\&quot;: {             \&quot;defaultValue\&quot;: 50,             \&quot;dynamicValue\&quot;: null           },           \&quot;type\&quot;: \&quot;NUMERIC\&quot;         },         {           \&quot;operation\&quot;: \&quot;LESS\&quot;,           \&quot;value\&quot;: {             \&quot;defaultValue\&quot;: 60,             \&quot;dynamicValue\&quot;: null           },           \&quot;type\&quot;: \&quot;NUMERIC\&quot;         }       ]     }   ] } &#x60;&#x60;&#x60;   You may also want to replace hardcoded values (for example, temperature &gt; 20) with the more dynamic expression (for example, temperature &gt; &#39;value of the tenant attribute with key &#39;temperatureThreshold&#39;). It is possible to use &#39;dynamicValue&#39; to define attribute of the tenant, customer or user that is performing the API call. See example below:   &#x60;&#x60;&#x60;json {   \&quot;operation\&quot;: \&quot;GREATER\&quot;,   \&quot;value\&quot;: {     \&quot;defaultValue\&quot;: 0,     \&quot;dynamicValue\&quot;: {       \&quot;sourceType\&quot;: \&quot;CURRENT_USER\&quot;,       \&quot;sourceAttribute\&quot;: \&quot;temperatureThreshold\&quot;     }   },   \&quot;type\&quot;: \&quot;NUMERIC\&quot; } &#x60;&#x60;&#x60;   Note that you may use &#39;CURRENT_USER&#39;, &#39;CURRENT_CUSTOMER&#39; and &#39;CURRENT_TENANT&#39; as a &#39;sourceType&#39;. The &#39;defaultValue&#39; is used when the attribute with such a name is not defined for the chosen source.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityDataQuery]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataEntityData] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataEntityData>> findEntityDataByQuery({
    required EntityDataQuery entityDataQuery,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ??
        apiSerializers(registerEntityDataQueryAndPageDataEntityData);
    final _path = r'/api/entitiesQuery/find';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },
          {'type': 'http', 'scheme': 'loginPassword', 'name': 'HttpLoginForm'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(EntityDataQuery);
      _bodyData = _serializers.serialize(entityDataQuery, specifiedType: _type);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PageDataEntityData? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(PageDataEntityData),
                )
                as PageDataEntityData;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataEntityData>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// getEdqsState
  ///
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EdqsState] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EdqsState>> getEdqsState({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerEdqsState);
    final _path = r'/api/edqs/state';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },
          {'type': 'http', 'scheme': 'loginPassword', 'name': 'HttpLoginForm'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    EdqsState? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(EdqsState),
                )
                as EdqsState;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EdqsState>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// processSystemEdqsRequest
  ///
  ///
  /// Parameters:
  /// * [toCoreEdqsRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> processSystemEdqsRequest({
    required ToCoreEdqsRequest toCoreEdqsRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerToCoreEdqsRequest);
    final _path = r'/api/edqs/system/request';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },
          {'type': 'http', 'scheme': 'loginPassword', 'name': 'HttpLoginForm'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(ToCoreEdqsRequest);
      _bodyData = _serializers.serialize(
        toCoreEdqsRequest,
        specifiedType: _type,
      );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }
}
