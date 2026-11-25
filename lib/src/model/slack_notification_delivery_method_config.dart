// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/notification_delivery_method_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'slack_notification_delivery_method_config.g.dart';

/// SlackNotificationDeliveryMethodConfig
///
/// Properties:
/// * [method]
/// * [botToken]
@BuiltValue()
abstract class SlackNotificationDeliveryMethodConfig
    implements
        NotificationDeliveryMethodConfig,
        Built<
          SlackNotificationDeliveryMethodConfig,
          SlackNotificationDeliveryMethodConfigBuilder
        > {
  @BuiltValueField(wireName: r'botToken')
  String get botToken;

  SlackNotificationDeliveryMethodConfig._();

  factory SlackNotificationDeliveryMethodConfig([
    void updates(SlackNotificationDeliveryMethodConfigBuilder b),
  ]) = _$SlackNotificationDeliveryMethodConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SlackNotificationDeliveryMethodConfigBuilder b) =>
      b..method = r'SLACK';

  @BuiltValueSerializer(custom: true)
  static Serializer<SlackNotificationDeliveryMethodConfig> get serializer =>
      _$SlackNotificationDeliveryMethodConfigSerializer();
}

class _$SlackNotificationDeliveryMethodConfigSerializer
    implements PrimitiveSerializer<SlackNotificationDeliveryMethodConfig> {
  @override
  final Iterable<Type> types = const [
    SlackNotificationDeliveryMethodConfig,
    _$SlackNotificationDeliveryMethodConfig,
  ];

  @override
  final String wireName = r'SlackNotificationDeliveryMethodConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SlackNotificationDeliveryMethodConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(String),
    );
    yield r'botToken';
    yield serializers.serialize(
      object.botToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SlackNotificationDeliveryMethodConfig object, {
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
    required SlackNotificationDeliveryMethodConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.method = valueDes;
          break;
        case r'botToken':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.botToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SlackNotificationDeliveryMethodConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SlackNotificationDeliveryMethodConfigBuilder();
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
