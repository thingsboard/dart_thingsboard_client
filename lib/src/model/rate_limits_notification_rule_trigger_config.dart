// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/limited_api.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rate_limits_notification_rule_trigger_config.g.dart';

/// RateLimitsNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType]
/// * [apis]
@BuiltValue()
abstract class RateLimitsNotificationRuleTriggerConfig
    implements
        NotificationRuleTriggerConfig,
        Built<
          RateLimitsNotificationRuleTriggerConfig,
          RateLimitsNotificationRuleTriggerConfigBuilder
        > {
  @BuiltValueField(wireName: r'apis')
  BuiltSet<LimitedApi>? get apis;

  RateLimitsNotificationRuleTriggerConfig._();

  factory RateLimitsNotificationRuleTriggerConfig([
    void updates(RateLimitsNotificationRuleTriggerConfigBuilder b),
  ]) = _$RateLimitsNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RateLimitsNotificationRuleTriggerConfigBuilder b) =>
      b..triggerType = NotificationRuleTriggerType.RATE_LIMITS;

  @BuiltValueSerializer(custom: true)
  static Serializer<RateLimitsNotificationRuleTriggerConfig> get serializer =>
      _$RateLimitsNotificationRuleTriggerConfigSerializer();
}

class _$RateLimitsNotificationRuleTriggerConfigSerializer
    implements PrimitiveSerializer<RateLimitsNotificationRuleTriggerConfig> {
  @override
  final Iterable<Type> types = const [
    RateLimitsNotificationRuleTriggerConfig,
    _$RateLimitsNotificationRuleTriggerConfig,
  ];

  @override
  final String wireName = r'RateLimitsNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RateLimitsNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apis != null) {
      yield r'apis';
      yield serializers.serialize(
        object.apis,
        specifiedType: const FullType(BuiltSet, [FullType(LimitedApi)]),
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
    RateLimitsNotificationRuleTriggerConfig object, {
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
    required RateLimitsNotificationRuleTriggerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apis':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(LimitedApi),
                    ]),
                  )
                  as BuiltSet<LimitedApi>?;
          if (valueDes == null) continue;
          result.apis.replace(valueDes);
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
  RateLimitsNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RateLimitsNotificationRuleTriggerConfigBuilder();
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
