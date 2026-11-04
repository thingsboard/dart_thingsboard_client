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
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entities_by_group_name_filter.g.dart';

/// EntitiesByGroupNameFilter
///
/// Properties:
/// * [type]
/// * [groupType]
/// * [ownerId]
/// * [entityGroupNameFilter]
/// * [groupStateEntity]
/// * [stateEntityParamName]
@BuiltValue()
abstract class EntitiesByGroupNameFilter
    implements
        EntityFilter,
        Built<EntitiesByGroupNameFilter, EntitiesByGroupNameFilterBuilder> {
  @BuiltValueField(wireName: r'groupType')
  EntityType? get groupType;
  // enum groupTypeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  @BuiltValueField(wireName: r'groupStateEntity')
  bool? get groupStateEntity;

  @BuiltValueField(wireName: r'entityGroupNameFilter')
  String? get entityGroupNameFilter;

  @BuiltValueField(wireName: r'stateEntityParamName')
  String? get stateEntityParamName;

  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  EntitiesByGroupNameFilter._();

  factory EntitiesByGroupNameFilter([
    void updates(EntitiesByGroupNameFilterBuilder b),
  ]) = _$EntitiesByGroupNameFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntitiesByGroupNameFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntitiesByGroupNameFilter> get serializer =>
      _$EntitiesByGroupNameFilterSerializer();
}

class _$EntitiesByGroupNameFilterSerializer
    implements PrimitiveSerializer<EntitiesByGroupNameFilter> {
  @override
  final Iterable<Type> types = const [
    EntitiesByGroupNameFilter,
    _$EntitiesByGroupNameFilter,
  ];

  @override
  final String wireName = r'EntitiesByGroupNameFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntitiesByGroupNameFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entityGroupNameFilter != null) {
      yield r'entityGroupNameFilter';
      yield serializers.serialize(
        object.entityGroupNameFilter,
        specifiedType: const FullType(String),
      );
    }
    if (object.stateEntityParamName != null) {
      yield r'stateEntityParamName';
      yield serializers.serialize(
        object.stateEntityParamName,
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
    if (object.groupStateEntity != null) {
      yield r'groupStateEntity';
      yield serializers.serialize(
        object.groupStateEntity,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ownerId != null) {
      yield r'ownerId';
      yield serializers.serialize(
        object.ownerId,
        specifiedType: const FullType(EntityId),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EntitiesByGroupNameFilter object, {
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
    required EntitiesByGroupNameFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityGroupNameFilter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityGroupNameFilter = valueDes;
          break;
        case r'stateEntityParamName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.stateEntityParamName = valueDes;
          break;
        case r'groupType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityType),
                  )
                  as EntityType?;
          if (valueDes == null) continue;
          result.groupType = valueDes;
          break;
        case r'groupStateEntity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.groupStateEntity = valueDes;
          break;
        case r'ownerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.ownerId = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntitiesByGroupNameFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntitiesByGroupNameFilterBuilder();
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
