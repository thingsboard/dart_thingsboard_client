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

part 'entities_limit_notification_rule_trigger_config.g.dart';

/// EntitiesLimitNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType]
/// * [entityTypes]
/// * [threshold]
@BuiltValue()
abstract class EntitiesLimitNotificationRuleTriggerConfig
    implements
        NotificationRuleTriggerConfig,
        Built<
          EntitiesLimitNotificationRuleTriggerConfig,
          EntitiesLimitNotificationRuleTriggerConfigBuilder
        > {
  @BuiltValueField(wireName: r'entityTypes')
  BuiltSet<EntityType>? get entityTypes;

  @BuiltValueField(wireName: r'threshold')
  double? get threshold;

  EntitiesLimitNotificationRuleTriggerConfig._();

  factory EntitiesLimitNotificationRuleTriggerConfig([
    void updates(EntitiesLimitNotificationRuleTriggerConfigBuilder b),
  ]) = _$EntitiesLimitNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntitiesLimitNotificationRuleTriggerConfigBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntitiesLimitNotificationRuleTriggerConfig>
  get serializer => _$EntitiesLimitNotificationRuleTriggerConfigSerializer();
}

class _$EntitiesLimitNotificationRuleTriggerConfigSerializer
    implements PrimitiveSerializer<EntitiesLimitNotificationRuleTriggerConfig> {
  @override
  final Iterable<Type> types = const [
    EntitiesLimitNotificationRuleTriggerConfig,
    _$EntitiesLimitNotificationRuleTriggerConfig,
  ];

  @override
  final String wireName = r'EntitiesLimitNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntitiesLimitNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.entityTypes != null) {
      yield r'entityTypes';
      yield serializers.serialize(
        object.entityTypes,
        specifiedType: const FullType(BuiltSet, [FullType(EntityType)]),
      );
    }
    if (object.threshold != null) {
      yield r'threshold';
      yield serializers.serialize(
        object.threshold,
        specifiedType: const FullType(double),
      );
    }
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EntitiesLimitNotificationRuleTriggerConfig object, {
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
    required EntitiesLimitNotificationRuleTriggerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(EntityType),
                    ]),
                  )
                  as BuiltSet<EntityType>?;
          if (valueDes == null) continue;
          result.entityTypes.replace(valueDes);
          break;
        case r'threshold':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.threshold = valueDes;
          break;
        case r'triggerType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NotificationRuleTriggerType),
                  )
                  as NotificationRuleTriggerType;
          result.triggerType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntitiesLimitNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntitiesLimitNotificationRuleTriggerConfigBuilder();
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
