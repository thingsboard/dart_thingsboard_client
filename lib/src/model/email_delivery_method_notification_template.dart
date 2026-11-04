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

part 'email_delivery_method_notification_template.g.dart';

/// EmailDeliveryMethodNotificationTemplate
///
/// Properties:
/// * [enabled]
/// * [body]
/// * [method]
/// * [subject]
@BuiltValue()
abstract class EmailDeliveryMethodNotificationTemplate
    implements
        DeliveryMethodNotificationTemplate,
        Built<
          EmailDeliveryMethodNotificationTemplate,
          EmailDeliveryMethodNotificationTemplateBuilder
        > {
  @BuiltValueField(wireName: r'subject')
  String get subject;

  EmailDeliveryMethodNotificationTemplate._();

  factory EmailDeliveryMethodNotificationTemplate([
    void updates(EmailDeliveryMethodNotificationTemplateBuilder b),
  ]) = _$EmailDeliveryMethodNotificationTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EmailDeliveryMethodNotificationTemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EmailDeliveryMethodNotificationTemplate> get serializer =>
      _$EmailDeliveryMethodNotificationTemplateSerializer();
}

class _$EmailDeliveryMethodNotificationTemplateSerializer
    implements PrimitiveSerializer<EmailDeliveryMethodNotificationTemplate> {
  @override
  final Iterable<Type> types = const [
    EmailDeliveryMethodNotificationTemplate,
    _$EmailDeliveryMethodNotificationTemplate,
  ];

  @override
  final String wireName = r'EmailDeliveryMethodNotificationTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EmailDeliveryMethodNotificationTemplate object, {
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
    yield r'subject';
    yield serializers.serialize(
      object.subject,
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
    EmailDeliveryMethodNotificationTemplate object, {
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
    required EmailDeliveryMethodNotificationTemplateBuilder result,
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
        case r'subject':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.subject = valueDes;
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
  EmailDeliveryMethodNotificationTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EmailDeliveryMethodNotificationTemplateBuilder();
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
