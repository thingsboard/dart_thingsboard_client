// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_action_notification_rule_trigger_config.g.dart';

/// EntityActionNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType] 
/// * [entityTypes] 
/// * [created] 
/// * [updated] 
/// * [deleted] 
@BuiltValue()
abstract class EntityActionNotificationRuleTriggerConfig implements NotificationRuleTriggerConfig, Built<EntityActionNotificationRuleTriggerConfig, EntityActionNotificationRuleTriggerConfigBuilder> {
  @BuiltValueField(wireName: r'deleted')
  bool? get deleted;

  @BuiltValueField(wireName: r'created')
  bool? get created;

  @BuiltValueField(wireName: r'entityTypes')
  BuiltSet<EntityType>? get entityTypes;

  @BuiltValueField(wireName: r'updated')
  bool? get updated;

  EntityActionNotificationRuleTriggerConfig._();

  factory EntityActionNotificationRuleTriggerConfig([void updates(EntityActionNotificationRuleTriggerConfigBuilder b)]) = _$EntityActionNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityActionNotificationRuleTriggerConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityActionNotificationRuleTriggerConfig> get serializer => _$EntityActionNotificationRuleTriggerConfigSerializer();
}

class _$EntityActionNotificationRuleTriggerConfigSerializer implements PrimitiveSerializer<EntityActionNotificationRuleTriggerConfig> {
  @override
  final Iterable<Type> types = const [EntityActionNotificationRuleTriggerConfig, _$EntityActionNotificationRuleTriggerConfig];

  @override
  final String wireName = r'EntityActionNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityActionNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entityTypes != null) {
      yield r'entityTypes';
      yield serializers.serialize(
        object.entityTypes,
        specifiedType: const FullType(BuiltSet, [FullType(EntityType)]),
      );
    }
    if (object.deleted != null) {
      yield r'deleted';
      yield serializers.serialize(
        object.deleted,
        specifiedType: const FullType(bool),
      );
    }
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
    if (object.updated != null) {
      yield r'updated';
      yield serializers.serialize(
        object.updated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.created != null) {
      yield r'created';
      yield serializers.serialize(
        object.created,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityActionNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityActionNotificationRuleTriggerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(EntityType)]),
          ) as BuiltSet<EntityType>?;
          if (valueDes == null) continue;
          result.entityTypes.replace(valueDes);
          break;
        case r'deleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.deleted = valueDes;
          break;
        case r'triggerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationRuleTriggerType),
          ) as NotificationRuleTriggerType;
          result.triggerType = valueDes;
          break;
        case r'updated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.updated = valueDes;
          break;
        case r'created':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.created = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityActionNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityActionNotificationRuleTriggerConfigBuilder();
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


