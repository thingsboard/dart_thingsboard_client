// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resources_shortage_notification_rule_trigger_config.g.dart';

/// ResourcesShortageNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType]
/// * [cpuThreshold]
/// * [ramThreshold]
/// * [storageThreshold]
@BuiltValue()
abstract class ResourcesShortageNotificationRuleTriggerConfig
    implements
        NotificationRuleTriggerConfig,
        Built<
          ResourcesShortageNotificationRuleTriggerConfig,
          ResourcesShortageNotificationRuleTriggerConfigBuilder
        > {
  @BuiltValueField(wireName: r'ramThreshold')
  double? get ramThreshold;

  @BuiltValueField(wireName: r'cpuThreshold')
  double? get cpuThreshold;

  @BuiltValueField(wireName: r'storageThreshold')
  double? get storageThreshold;

  ResourcesShortageNotificationRuleTriggerConfig._();

  factory ResourcesShortageNotificationRuleTriggerConfig([
    void updates(ResourcesShortageNotificationRuleTriggerConfigBuilder b),
  ]) = _$ResourcesShortageNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    ResourcesShortageNotificationRuleTriggerConfigBuilder b,
  ) => b..triggerType = NotificationRuleTriggerType.RESOURCES_SHORTAGE;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResourcesShortageNotificationRuleTriggerConfig>
  get serializer =>
      _$ResourcesShortageNotificationRuleTriggerConfigSerializer();
}

class _$ResourcesShortageNotificationRuleTriggerConfigSerializer
    implements
        PrimitiveSerializer<ResourcesShortageNotificationRuleTriggerConfig> {
  @override
  final Iterable<Type> types = const [
    ResourcesShortageNotificationRuleTriggerConfig,
    _$ResourcesShortageNotificationRuleTriggerConfig,
  ];

  @override
  final String wireName = r'ResourcesShortageNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResourcesShortageNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ramThreshold != null) {
      yield r'ramThreshold';
      yield serializers.serialize(
        object.ramThreshold,
        specifiedType: const FullType(double),
      );
    }
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
    if (object.cpuThreshold != null) {
      yield r'cpuThreshold';
      yield serializers.serialize(
        object.cpuThreshold,
        specifiedType: const FullType(double),
      );
    }
    if (object.storageThreshold != null) {
      yield r'storageThreshold';
      yield serializers.serialize(
        object.storageThreshold,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResourcesShortageNotificationRuleTriggerConfig object, {
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
    required ResourcesShortageNotificationRuleTriggerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ramThreshold':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.ramThreshold = valueDes;
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
        case r'cpuThreshold':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.cpuThreshold = valueDes;
          break;
        case r'storageThreshold':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.storageThreshold = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResourcesShortageNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourcesShortageNotificationRuleTriggerConfigBuilder();
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
