// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/delivery_method_notification_template.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'slack_delivery_method_notification_template.g.dart';

/// SlackDeliveryMethodNotificationTemplate
///
/// Properties:
/// * [enabled]
/// * [body]
/// * [method]
@BuiltValue()
abstract class SlackDeliveryMethodNotificationTemplate
    implements
        DeliveryMethodNotificationTemplate,
        Built<
          SlackDeliveryMethodNotificationTemplate,
          SlackDeliveryMethodNotificationTemplateBuilder
        > {
  SlackDeliveryMethodNotificationTemplate._();

  factory SlackDeliveryMethodNotificationTemplate([
    void updates(SlackDeliveryMethodNotificationTemplateBuilder b),
  ]) = _$SlackDeliveryMethodNotificationTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SlackDeliveryMethodNotificationTemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SlackDeliveryMethodNotificationTemplate> get serializer =>
      _$SlackDeliveryMethodNotificationTemplateSerializer();
}

class _$SlackDeliveryMethodNotificationTemplateSerializer
    implements PrimitiveSerializer<SlackDeliveryMethodNotificationTemplate> {
  @override
  final Iterable<Type> types = const [
    SlackDeliveryMethodNotificationTemplate,
    _$SlackDeliveryMethodNotificationTemplate,
  ];

  @override
  final String wireName = r'SlackDeliveryMethodNotificationTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SlackDeliveryMethodNotificationTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(String),
    );
    yield r'body';
    yield serializers.serialize(
      object.body,
      specifiedType: const FullType(String),
    );
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SlackDeliveryMethodNotificationTemplate object, {
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
    required SlackDeliveryMethodNotificationTemplateBuilder result,
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
        case r'body':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.body = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SlackDeliveryMethodNotificationTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SlackDeliveryMethodNotificationTemplateBuilder();
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
