// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/delivery_method_notification_template.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'web_delivery_method_notification_template.g.dart';

/// WebDeliveryMethodNotificationTemplate
///
/// Properties:
/// * [enabled] 
/// * [body] 
/// * [method] 
/// * [subject] - Subject line for the web notification
/// * [additionalConfig] - Additional JSON configuration for web buttons/actions
@BuiltValue()
abstract class WebDeliveryMethodNotificationTemplate implements DeliveryMethodNotificationTemplate, Built<WebDeliveryMethodNotificationTemplate, WebDeliveryMethodNotificationTemplateBuilder> {
  /// Subject line for the web notification
  @BuiltValueField(wireName: r'subject')
  String get subject;

  /// Additional JSON configuration for web buttons/actions
  @BuiltValueField(wireName: r'additionalConfig')
  JsonObject? get additionalConfig;

  WebDeliveryMethodNotificationTemplate._();

  factory WebDeliveryMethodNotificationTemplate([void updates(WebDeliveryMethodNotificationTemplateBuilder b)]) = _$WebDeliveryMethodNotificationTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WebDeliveryMethodNotificationTemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WebDeliveryMethodNotificationTemplate> get serializer => _$WebDeliveryMethodNotificationTemplateSerializer();
}

class _$WebDeliveryMethodNotificationTemplateSerializer implements PrimitiveSerializer<WebDeliveryMethodNotificationTemplate> {
  @override
  final Iterable<Type> types = const [WebDeliveryMethodNotificationTemplate, _$WebDeliveryMethodNotificationTemplate];

  @override
  final String wireName = r'WebDeliveryMethodNotificationTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WebDeliveryMethodNotificationTemplate object, {
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
    if (object.additionalConfig != null) {
      yield r'additionalConfig';
      yield serializers.serialize(
        object.additionalConfig,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WebDeliveryMethodNotificationTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WebDeliveryMethodNotificationTemplateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.method = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.body = valueDes;
          break;
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subject = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'additionalConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.additionalConfig = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WebDeliveryMethodNotificationTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WebDeliveryMethodNotificationTemplateBuilder();
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


