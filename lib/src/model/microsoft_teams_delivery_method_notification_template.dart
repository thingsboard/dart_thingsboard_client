// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/delivery_method_notification_template.dart';
import 'package:thingsboard_client/src/model/button.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'microsoft_teams_delivery_method_notification_template.g.dart';

/// MicrosoftTeamsDeliveryMethodNotificationTemplate
///
/// Properties:
/// * [enabled] 
/// * [body] 
/// * [method] 
/// * [subject] 
/// * [themeColor] 
/// * [button] 
@BuiltValue()
abstract class MicrosoftTeamsDeliveryMethodNotificationTemplate implements DeliveryMethodNotificationTemplate, Built<MicrosoftTeamsDeliveryMethodNotificationTemplate, MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder> {
  @BuiltValueField(wireName: r'button')
  Button? get button;

  @BuiltValueField(wireName: r'themeColor')
  String? get themeColor;

  @BuiltValueField(wireName: r'subject')
  String? get subject;

  MicrosoftTeamsDeliveryMethodNotificationTemplate._();

  factory MicrosoftTeamsDeliveryMethodNotificationTemplate([void updates(MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder b)]) = _$MicrosoftTeamsDeliveryMethodNotificationTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MicrosoftTeamsDeliveryMethodNotificationTemplate> get serializer => _$MicrosoftTeamsDeliveryMethodNotificationTemplateSerializer();
}

class _$MicrosoftTeamsDeliveryMethodNotificationTemplateSerializer implements PrimitiveSerializer<MicrosoftTeamsDeliveryMethodNotificationTemplate> {
  @override
  final Iterable<Type> types = const [MicrosoftTeamsDeliveryMethodNotificationTemplate, _$MicrosoftTeamsDeliveryMethodNotificationTemplate];

  @override
  final String wireName = r'MicrosoftTeamsDeliveryMethodNotificationTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MicrosoftTeamsDeliveryMethodNotificationTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.button != null) {
      yield r'button';
      yield serializers.serialize(
        object.button,
        specifiedType: const FullType(Button),
      );
    }
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
    if (object.themeColor != null) {
      yield r'themeColor';
      yield serializers.serialize(
        object.themeColor,
        specifiedType: const FullType(String),
      );
    }
    if (object.subject != null) {
      yield r'subject';
      yield serializers.serialize(
        object.subject,
        specifiedType: const FullType(String),
      );
    }
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
    MicrosoftTeamsDeliveryMethodNotificationTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'button':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Button),
          ) as Button?;
          if (valueDes == null) continue;
          result.button.replace(valueDes);
          break;
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
        case r'themeColor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.themeColor = valueDes;
          break;
        case r'subject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MicrosoftTeamsDeliveryMethodNotificationTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder();
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


