// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_filter.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_group_filter.g.dart';

/// EntityGroupFilter
///
/// Properties:
/// * [type] 
/// * [groupType] 
/// * [entityGroup] 
/// * [groupStateEntity] 
/// * [defaultStateGroupType] 
/// * [defaultStateEntityGroup] 
@BuiltValue()
abstract class EntityGroupFilter implements EntityFilter, Built<EntityGroupFilter, EntityGroupFilterBuilder> {
  @BuiltValueField(wireName: r'groupType')
  EntityType? get groupType;
  // enum groupTypeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  @BuiltValueField(wireName: r'groupStateEntity')
  bool? get groupStateEntity;

  @BuiltValueField(wireName: r'defaultStateGroupType')
  EntityType? get defaultStateGroupType;
  // enum defaultStateGroupTypeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  @BuiltValueField(wireName: r'defaultStateEntityGroup')
  String? get defaultStateEntityGroup;

  @BuiltValueField(wireName: r'entityGroup')
  String? get entityGroup;

  EntityGroupFilter._();

  factory EntityGroupFilter([void updates(EntityGroupFilterBuilder b)]) = _$EntityGroupFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityGroupFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityGroupFilter> get serializer => _$EntityGroupFilterSerializer();
}

class _$EntityGroupFilterSerializer implements PrimitiveSerializer<EntityGroupFilter> {
  @override
  final Iterable<Type> types = const [EntityGroupFilter, _$EntityGroupFilter];

  @override
  final String wireName = r'EntityGroupFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityGroupFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.groupType != null) {
      yield r'groupType';
      yield serializers.serialize(
        object.groupType,
        specifiedType: const FullType(EntityType),
      );
    }
    if (object.groupStateEntity != null) {
      yield r'groupStateEntity';
      yield serializers.serialize(
        object.groupStateEntity,
        specifiedType: const FullType(bool),
      );
    }
    if (object.defaultStateGroupType != null) {
      yield r'defaultStateGroupType';
      yield serializers.serialize(
        object.defaultStateGroupType,
        specifiedType: const FullType(EntityType),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.defaultStateEntityGroup != null) {
      yield r'defaultStateEntityGroup';
      yield serializers.serialize(
        object.defaultStateEntityGroup,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityGroup != null) {
      yield r'entityGroup';
      yield serializers.serialize(
        object.entityGroup,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityGroupFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityGroupFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'groupType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityType),
          ) as EntityType?;
          if (valueDes == null) continue;
          result.groupType = valueDes;
          break;
        case r'groupStateEntity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.groupStateEntity = valueDes;
          break;
        case r'defaultStateGroupType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityType),
          ) as EntityType?;
          if (valueDes == null) continue;
          result.defaultStateGroupType = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'defaultStateEntityGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.defaultStateEntityGroup = valueDes;
          break;
        case r'entityGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entityGroup = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityGroupFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityGroupFilterBuilder();
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


