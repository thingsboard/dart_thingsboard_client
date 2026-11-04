// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alias_entity_id.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/entity_search_direction.dart';
import 'package:thingsboard_client/src/model/relation_entity_type_filter.dart';
import 'package:thingsboard_client/src/model/entity_filter.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'relations_query_filter.g.dart';

/// RelationsQueryFilter
///
/// Properties:
/// * [type]
/// * [rootEntity]
/// * [multiRoot]
/// * [multiRootEntitiesType]
/// * [multiRootEntityIds]
/// * [direction]
/// * [filters]
/// * [maxLevel]
/// * [fetchLastLevelOnly]
/// * [negate]
/// * [rootStateEntity]
/// * [defaultStateEntity]
@BuiltValue()
abstract class RelationsQueryFilter
    implements
        EntityFilter,
        Built<RelationsQueryFilter, RelationsQueryFilterBuilder> {
  @BuiltValueField(wireName: r'multiRootEntityIds')
  BuiltSet<String>? get multiRootEntityIds;

  @BuiltValueField(wireName: r'maxLevel')
  int? get maxLevel;

  @BuiltValueField(wireName: r'fetchLastLevelOnly')
  bool? get fetchLastLevelOnly;

  @BuiltValueField(wireName: r'defaultStateEntity')
  AliasEntityId? get defaultStateEntity;

  @BuiltValueField(wireName: r'multiRoot')
  bool? get multiRoot;

  @BuiltValueField(wireName: r'multiRootEntitiesType')
  EntityType? get multiRootEntitiesType;
  // enum multiRootEntitiesTypeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  @BuiltValueField(wireName: r'negate')
  bool? get negate;

  @BuiltValueField(wireName: r'rootStateEntity')
  bool? get rootStateEntity;

  @BuiltValueField(wireName: r'filters')
  BuiltList<RelationEntityTypeFilter>? get filters;

  @BuiltValueField(wireName: r'rootEntity')
  AliasEntityId? get rootEntity;

  @BuiltValueField(wireName: r'direction')
  EntitySearchDirection? get direction;
  // enum directionEnum {  FROM,  TO,  };

  RelationsQueryFilter._();

  factory RelationsQueryFilter([void updates(RelationsQueryFilterBuilder b)]) =
      _$RelationsQueryFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RelationsQueryFilterBuilder b) =>
      b..type = r'relationsQuery';

  @BuiltValueSerializer(custom: true)
  static Serializer<RelationsQueryFilter> get serializer =>
      _$RelationsQueryFilterSerializer();
}

class _$RelationsQueryFilterSerializer
    implements PrimitiveSerializer<RelationsQueryFilter> {
  @override
  final Iterable<Type> types = const [
    RelationsQueryFilter,
    _$RelationsQueryFilter,
  ];

  @override
  final String wireName = r'RelationsQueryFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RelationsQueryFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.multiRootEntityIds != null) {
      yield r'multiRootEntityIds';
      yield serializers.serialize(
        object.multiRootEntityIds,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
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
    if (object.defaultStateEntity != null) {
      yield r'defaultStateEntity';
      yield serializers.serialize(
        object.defaultStateEntity,
        specifiedType: const FullType(AliasEntityId),
      );
    }
    if (object.multiRoot != null) {
      yield r'multiRoot';
      yield serializers.serialize(
        object.multiRoot,
        specifiedType: const FullType(bool),
      );
    }
    if (object.multiRootEntitiesType != null) {
      yield r'multiRootEntitiesType';
      yield serializers.serialize(
        object.multiRootEntitiesType,
        specifiedType: const FullType(EntityType),
      );
    }
    if (object.negate != null) {
      yield r'negate';
      yield serializers.serialize(
        object.negate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.rootStateEntity != null) {
      yield r'rootStateEntity';
      yield serializers.serialize(
        object.rootStateEntity,
        specifiedType: const FullType(bool),
      );
    }
    if (object.filters != null) {
      yield r'filters';
      yield serializers.serialize(
        object.filters,
        specifiedType: const FullType(BuiltList, [
          FullType(RelationEntityTypeFilter),
        ]),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.rootEntity != null) {
      yield r'rootEntity';
      yield serializers.serialize(
        object.rootEntity,
        specifiedType: const FullType(AliasEntityId),
      );
    }
    if (object.direction != null) {
      yield r'direction';
      yield serializers.serialize(
        object.direction,
        specifiedType: const FullType(EntitySearchDirection),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RelationsQueryFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RelationsQueryFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'multiRootEntityIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(String),
                    ]),
                  )
                  as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.multiRootEntityIds.replace(valueDes);
          break;
        case r'maxLevel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxLevel = valueDes;
          break;
        case r'fetchLastLevelOnly':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.fetchLastLevelOnly = valueDes;
          break;
        case r'defaultStateEntity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AliasEntityId),
                  )
                  as AliasEntityId?;
          if (valueDes == null) continue;
          result.defaultStateEntity.replace(valueDes);
          break;
        case r'multiRoot':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.multiRoot = valueDes;
          break;
        case r'multiRootEntitiesType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityType),
                  )
                  as EntityType?;
          if (valueDes == null) continue;
          result.multiRootEntitiesType = valueDes;
          break;
        case r'negate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.negate = valueDes;
          break;
        case r'rootStateEntity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.rootStateEntity = valueDes;
          break;
        case r'filters':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(RelationEntityTypeFilter),
                    ]),
                  )
                  as BuiltList<RelationEntityTypeFilter>?;
          if (valueDes == null) continue;
          result.filters.replace(valueDes);
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'rootEntity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AliasEntityId),
                  )
                  as AliasEntityId?;
          if (valueDes == null) continue;
          result.rootEntity.replace(valueDes);
          break;
        case r'direction':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      EntitySearchDirection,
                    ),
                  )
                  as EntitySearchDirection?;
          if (valueDes == null) continue;
          result.direction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RelationsQueryFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RelationsQueryFilterBuilder();
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
