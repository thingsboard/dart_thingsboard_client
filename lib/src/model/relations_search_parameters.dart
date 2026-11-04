// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/relation_type_group.dart';
import 'package:thingsboard_client/src/model/entity_search_direction.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'relations_search_parameters.g.dart';

/// RelationsSearchParameters
///
/// Properties:
/// * [rootId] - Root entity id to start search from.
/// * [rootType] - Type of the root entity.
/// * [direction] - Type of the root entity.
/// * [relationTypeGroup] - Type of the relation.
/// * [maxLevel] - Maximum level of the search depth.
/// * [fetchLastLevelOnly] - Fetch entities that match the last level of search. Useful to find Devices that are strictly 'maxLevel' relations away from the root entity.
@BuiltValue()
abstract class RelationsSearchParameters implements Built<RelationsSearchParameters, RelationsSearchParametersBuilder> {
  /// Root entity id to start search from.
  @BuiltValueField(wireName: r'rootId')
  String? get rootId;

  /// Type of the root entity.
  @BuiltValueField(wireName: r'rootType')
  EntityType? get rootType;
  // enum rootTypeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  /// Type of the root entity.
  @BuiltValueField(wireName: r'direction')
  EntitySearchDirection? get direction;
  // enum directionEnum {  FROM,  TO,  };

  /// Type of the relation.
  @BuiltValueField(wireName: r'relationTypeGroup')
  RelationTypeGroup? get relationTypeGroup;
  // enum relationTypeGroupEnum {  COMMON,  DASHBOARD,  FROM_ENTITY_GROUP,  RULE_CHAIN,  RULE_NODE,  EDGE,  EDGE_AUTO_ASSIGN_RULE_CHAIN,  AGENT,  };

  /// Maximum level of the search depth.
  @BuiltValueField(wireName: r'maxLevel')
  int? get maxLevel;

  /// Fetch entities that match the last level of search. Useful to find Devices that are strictly 'maxLevel' relations away from the root entity.
  @BuiltValueField(wireName: r'fetchLastLevelOnly')
  bool? get fetchLastLevelOnly;

  RelationsSearchParameters._();

  factory RelationsSearchParameters([void updates(RelationsSearchParametersBuilder b)]) = _$RelationsSearchParameters;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RelationsSearchParametersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RelationsSearchParameters> get serializer => _$RelationsSearchParametersSerializer();
}

class _$RelationsSearchParametersSerializer implements PrimitiveSerializer<RelationsSearchParameters> {
  @override
  final Iterable<Type> types = const [RelationsSearchParameters, _$RelationsSearchParameters];

  @override
  final String wireName = r'RelationsSearchParameters';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RelationsSearchParameters object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rootId != null) {
      yield r'rootId';
      yield serializers.serialize(
        object.rootId,
        specifiedType: const FullType(String),
      );
    }
    if (object.rootType != null) {
      yield r'rootType';
      yield serializers.serialize(
        object.rootType,
        specifiedType: const FullType(EntityType),
      );
    }
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType: const FullType(EntitySearchDirection),
      );
    }
    if (object.relationTypeGroup != null) {
      yield r'relationTypeGroup';
      yield serializers.serialize(
        object.relationTypeGroup,
        specifiedType: const FullType(RelationTypeGroup),
      );
    }
    if (object.maxLevel != null) {
      yield r'maxLevel';
      yield serializers.serialize(
        object.maxLevel,
        specifiedType: const FullType(int),
      );
    }
    if (object.fetchLastLevelOnly != null) {
      yield r'fetchLastLevelOnly';
      yield serializers.serialize(
        object.fetchLastLevelOnly,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RelationsSearchParameters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RelationsSearchParametersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rootId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rootId = valueDes;
          break;
        case r'rootType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityType),
          ) as EntityType?;
          if (valueDes == null) continue;
          result.rootType = valueDes;
          break;
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntitySearchDirection),
          ) as EntitySearchDirection?;
          if (valueDes == null) continue;
          result.direction = valueDes;
          break;
        case r'relationTypeGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RelationTypeGroup),
          ) as RelationTypeGroup?;
          if (valueDes == null) continue;
          result.relationTypeGroup = valueDes;
          break;
        case r'maxLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxLevel = valueDes;
          break;
        case r'fetchLastLevelOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.fetchLastLevelOnly = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RelationsSearchParameters deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RelationsSearchParametersBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


