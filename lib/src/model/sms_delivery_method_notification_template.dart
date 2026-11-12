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

part 'sms_delivery_method_notification_template.g.dart';

/// SmsDeliveryMethodNotificationTemplate
///
/// Properties:
/// * [enabled]
/// * [body]
/// * [method]
@BuiltValue()
abstract class SmsDeliveryMethodNotificationTemplate
    implements
        DeliveryMethodNotificationTemplate,
        Built<
          SmsDeliveryMethodNotificationTemplate,
          SmsDeliveryMethodNotificationTemplateBuilder
        > {
  SmsDeliveryMethodNotificationTemplate._();

  factory SmsDeliveryMethodNotificationTemplate([
    void updates(SmsDeliveryMethodNotificationTemplateBuilder b),
  ]) = _$SmsDeliveryMethodNotificationTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SmsDeliveryMethodNotificationTemplateBuilder b) =>
      b..method = r'SMS';

  @BuiltValueSerializer(custom: true)
  static Serializer<SmsDeliveryMethodNotificationTemplate> get serializer =>
      _$SmsDeliveryMethodNotificationTemplateSerializer();
}

class _$SmsDeliveryMethodNotificationTemplateSerializer
    implements PrimitiveSerializer<SmsDeliveryMethodNotificationTemplate> {
  @override
  final Iterable<Type> types = const [
    SmsDeliveryMethodNotificationTemplate,
    _$SmsDeliveryMethodNotificationTemplate,
  ];

  @override
  final String wireName = r'SmsDeliveryMethodNotificationTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SmsDeliveryMethodNotificationTemplate object, {
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
    SmsDeliveryMethodNotificationTemplate object, {
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
    required SmsDeliveryMethodNotificationTemplateBuilder result,
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
  SmsDeliveryMethodNotificationTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SmsDeliveryMethodNotificationTemplateBuilder();
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
