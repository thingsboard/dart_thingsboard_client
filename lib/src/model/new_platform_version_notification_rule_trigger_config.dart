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

part 'new_platform_version_notification_rule_trigger_config.g.dart';

/// NewPlatformVersionNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType] 
@BuiltValue()
abstract class NewPlatformVersionNotificationRuleTriggerConfig implements NotificationRuleTriggerConfig, Built<NewPlatformVersionNotificationRuleTriggerConfig, NewPlatformVersionNotificationRuleTriggerConfigBuilder> {
  NewPlatformVersionNotificationRuleTriggerConfig._();

  factory NewPlatformVersionNotificationRuleTriggerConfig([void updates(NewPlatformVersionNotificationRuleTriggerConfigBuilder b)]) = _$NewPlatformVersionNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewPlatformVersionNotificationRuleTriggerConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewPlatformVersionNotificationRuleTriggerConfig> get serializer => _$NewPlatformVersionNotificationRuleTriggerConfigSerializer();
}

class _$NewPlatformVersionNotificationRuleTriggerConfigSerializer implements PrimitiveSerializer<NewPlatformVersionNotificationRuleTriggerConfig> {
  @override
  final Iterable<Type> types = const [NewPlatformVersionNotificationRuleTriggerConfig, _$NewPlatformVersionNotificationRuleTriggerConfig];

  @override
  final String wireName = r'NewPlatformVersionNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewPlatformVersionNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NewPlatformVersionNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NewPlatformVersionNotificationRuleTriggerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'triggerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationRuleTriggerType),
          ) as NotificationRuleTriggerType;
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
  NewPlatformVersionNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewPlatformVersionNotificationRuleTriggerConfigBuilder();
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


