// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_type_load_result.g.dart';

/// EntityTypeLoadResult
///
/// Properties:
/// * [entityType]
/// * [created]
/// * [updated]
/// * [deleted]
/// * [groupsCreated]
/// * [groupsUpdated]
/// * [groupsDeleted]
@BuiltValue()
abstract class EntityTypeLoadResult
    implements Built<EntityTypeLoadResult, EntityTypeLoadResultBuilder> {
  @BuiltValueField(wireName: r'entityType')
  EntityType? get entityType;
  // enum entityTypeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  @BuiltValueField(wireName: r'created')
  int? get created;

  @BuiltValueField(wireName: r'updated')
  int? get updated;

  @BuiltValueField(wireName: r'deleted')
  int? get deleted;

  @BuiltValueField(wireName: r'groupsCreated')
  int? get groupsCreated;

  @BuiltValueField(wireName: r'groupsUpdated')
  int? get groupsUpdated;

  @BuiltValueField(wireName: r'groupsDeleted')
  int? get groupsDeleted;

  EntityTypeLoadResult._();

  factory EntityTypeLoadResult([void updates(EntityTypeLoadResultBuilder b)]) =
      _$EntityTypeLoadResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityTypeLoadResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityTypeLoadResult> get serializer =>
      _$EntityTypeLoadResultSerializer();
}

class _$EntityTypeLoadResultSerializer
    implements PrimitiveSerializer<EntityTypeLoadResult> {
  @override
  final Iterable<Type> types = const [
    EntityTypeLoadResult,
    _$EntityTypeLoadResult,
  ];

  @override
  final String wireName = r'EntityTypeLoadResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityTypeLoadResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entityType != null) {
      yield r'entityType';
      yield serializers.serialize(
        object.entityType,
        specifiedType: const FullType(EntityType),
      );
    }
    if (object.created != null) {
      yield r'created';
      yield serializers.serialize(
        object.created,
        specifiedType: const FullType(int),
      );
    }
    if (object.updated != null) {
      yield r'updated';
      yield serializers.serialize(
        object.updated,
        specifiedType: const FullType(int),
      );
    }
    if (object.deleted != null) {
      yield r'deleted';
      yield serializers.serialize(
        object.deleted,
        specifiedType: const FullType(int),
      );
    }
    if (object.groupsCreated != null) {
      yield r'groupsCreated';
      yield serializers.serialize(
        object.groupsCreated,
        specifiedType: const FullType(int),
      );
    }
    if (object.groupsUpdated != null) {
      yield r'groupsUpdated';
      yield serializers.serialize(
        object.groupsUpdated,
        specifiedType: const FullType(int),
      );
    }
    if (object.groupsDeleted != null) {
      yield r'groupsDeleted';
      yield serializers.serialize(
        object.groupsDeleted,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityTypeLoadResult object, {
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
    required EntityTypeLoadResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityType),
                  )
                  as EntityType?;
          if (valueDes == null) continue;
          result.entityType = valueDes;
          break;
        case r'created':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.created = valueDes;
          break;
        case r'updated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.updated = valueDes;
          break;
        case r'deleted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.deleted = valueDes;
          break;
        case r'groupsCreated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.groupsCreated = valueDes;
          break;
        case r'groupsUpdated':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.groupsUpdated = valueDes;
          break;
        case r'groupsDeleted':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.groupsDeleted = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityTypeLoadResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityTypeLoadResultBuilder();
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
