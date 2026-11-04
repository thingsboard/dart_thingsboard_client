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

part 'entity_group_name_filter.g.dart';

/// EntityGroupNameFilter
///
/// Properties:
/// * [type] 
/// * [groupType] 
/// * [entityGroupNameFilter] 
@BuiltValue()
abstract class EntityGroupNameFilter implements EntityFilter, Built<EntityGroupNameFilter, EntityGroupNameFilterBuilder> {
  @BuiltValueField(wireName: r'groupType')
  EntityType? get groupType;
  // enum groupTypeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  @BuiltValueField(wireName: r'entityGroupNameFilter')
  String? get entityGroupNameFilter;

  EntityGroupNameFilter._();

  factory EntityGroupNameFilter([void updates(EntityGroupNameFilterBuilder b)]) = _$EntityGroupNameFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityGroupNameFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityGroupNameFilter> get serializer => _$EntityGroupNameFilterSerializer();
}

class _$EntityGroupNameFilterSerializer implements PrimitiveSerializer<EntityGroupNameFilter> {
  @override
  final Iterable<Type> types = const [EntityGroupNameFilter, _$EntityGroupNameFilter];

  @override
  final String wireName = r'EntityGroupNameFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityGroupNameFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.entityGroupNameFilter != null) {
      yield r'entityGroupNameFilter';
      yield serializers.serialize(
        object.entityGroupNameFilter,
        specifiedType: const FullType(String),
      );
    }
    if (object.groupType != null) {
      yield r'groupType';
      yield serializers.serialize(
        object.groupType,
        specifiedType: const FullType(EntityType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityGroupNameFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityGroupNameFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'entityGroupNameFilter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entityGroupNameFilter = valueDes;
          break;
        case r'groupType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityType),
          ) as EntityType?;
          if (valueDes == null) continue;
          result.groupType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityGroupNameFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityGroupNameFilterBuilder();
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


