// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/mobile_app_delivery_method_notification_template.dart';
import 'package:thingsboard_client/src/model/email_delivery_method_notification_template.dart';
import 'package:thingsboard_client/src/model/web_delivery_method_notification_template.dart';
import 'package:thingsboard_client/src/model/sms_delivery_method_notification_template.dart';
import 'package:thingsboard_client/src/model/microsoft_teams_delivery_method_notification_template.dart';
import 'package:thingsboard_client/src/model/slack_delivery_method_notification_template.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delivery_method_notification_template.g.dart';

/// Base template for different delivery methods
///
/// Properties:
/// * [enabled]
/// * [body]
/// * [method]
@BuiltValue(instantiable: false)
abstract class DeliveryMethodNotificationTemplate {
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'body')
  String get body;

  @BuiltValueField(wireName: r'method')
  String get method;

  static const String discriminatorFieldName = r'method';

  static const Map<String, Type> discriminatorMapping = {
    r'EMAIL': EmailDeliveryMethodNotificationTemplate,
    r'MICROSOFT_TEAMS': MicrosoftTeamsDeliveryMethodNotificationTemplate,
    r'MOBILE_APP': MobileAppDeliveryMethodNotificationTemplate,
    r'SLACK': SlackDeliveryMethodNotificationTemplate,
    r'SMS': SmsDeliveryMethodNotificationTemplate,
    r'WEB': WebDeliveryMethodNotificationTemplate,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<DeliveryMethodNotificationTemplate> get serializer =>
      _$DeliveryMethodNotificationTemplateSerializer();
}

extension DeliveryMethodNotificationTemplateDiscriminatorExt
    on DeliveryMethodNotificationTemplate {
  String? get discriminatorValue {
    if (this is EmailDeliveryMethodNotificationTemplate) {
      return r'EMAIL';
    }
    if (this is MicrosoftTeamsDeliveryMethodNotificationTemplate) {
      return r'MICROSOFT_TEAMS';
    }
    if (this is MobileAppDeliveryMethodNotificationTemplate) {
      return r'MOBILE_APP';
    }
    if (this is SlackDeliveryMethodNotificationTemplate) {
      return r'SLACK';
    }
    if (this is SmsDeliveryMethodNotificationTemplate) {
      return r'SMS';
    }
    if (this is WebDeliveryMethodNotificationTemplate) {
      return r'WEB';
    }
    return null;
  }
}

extension DeliveryMethodNotificationTemplateBuilderDiscriminatorExt
    on DeliveryMethodNotificationTemplateBuilder {
  String? get discriminatorValue {
    if (this is EmailDeliveryMethodNotificationTemplateBuilder) {
      return r'EMAIL';
    }
    if (this is MicrosoftTeamsDeliveryMethodNotificationTemplateBuilder) {
      return r'MICROSOFT_TEAMS';
    }
    if (this is MobileAppDeliveryMethodNotificationTemplateBuilder) {
      return r'MOBILE_APP';
    }
    if (this is SlackDeliveryMethodNotificationTemplateBuilder) {
      return r'SLACK';
    }
    if (this is SmsDeliveryMethodNotificationTemplateBuilder) {
      return r'SMS';
    }
    if (this is WebDeliveryMethodNotificationTemplateBuilder) {
      return r'WEB';
    }
    return null;
  }
}

class _$DeliveryMethodNotificationTemplateSerializer
    implements PrimitiveSerializer<DeliveryMethodNotificationTemplate> {
  @override
  final Iterable<Type> types = const [DeliveryMethodNotificationTemplate];

  @override
  final String wireName = r'DeliveryMethodNotificationTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeliveryMethodNotificationTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'body';
    yield serializers.serialize(
      object.body,
      specifiedType: const FullType(String),
    );
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeliveryMethodNotificationTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is EmailDeliveryMethodNotificationTemplate) {
      return serializers.serialize(
        object,
        specifiedType: FullType(EmailDeliveryMethodNotificationTemplate),
      )!;
    }
    if (object is MicrosoftTeamsDeliveryMethodNotificationTemplate) {
      return serializers.serialize(
        object,
        specifiedType: FullType(
          MicrosoftTeamsDeliveryMethodNotificationTemplate,
        ),
      )!;
    }
    if (object is MobileAppDeliveryMethodNotificationTemplate) {
      return serializers.serialize(
        object,
        specifiedType: FullType(MobileAppDeliveryMethodNotificationTemplate),
      )!;
    }
    if (object is SlackDeliveryMethodNotificationTemplate) {
      return serializers.serialize(
        object,
        specifiedType: FullType(SlackDeliveryMethodNotificationTemplate),
      )!;
    }
    if (object is SmsDeliveryMethodNotificationTemplate) {
      return serializers.serialize(
        object,
        specifiedType: FullType(SmsDeliveryMethodNotificationTemplate),
      )!;
    }
    if (object is WebDeliveryMethodNotificationTemplate) {
      return serializers.serialize(
        object,
        specifiedType: FullType(WebDeliveryMethodNotificationTemplate),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  DeliveryMethodNotificationTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(
          DeliveryMethodNotificationTemplate.discriminatorFieldName,
        ) +
        1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'EMAIL':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(EmailDeliveryMethodNotificationTemplate),
            )
            as EmailDeliveryMethodNotificationTemplate;
      case r'MICROSOFT_TEAMS':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                MicrosoftTeamsDeliveryMethodNotificationTemplate,
              ),
            )
            as MicrosoftTeamsDeliveryMethodNotificationTemplate;
      case r'MOBILE_APP':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                MobileAppDeliveryMethodNotificationTemplate,
              ),
            )
            as MobileAppDeliveryMethodNotificationTemplate;
      case r'SLACK':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(SlackDeliveryMethodNotificationTemplate),
            )
            as SlackDeliveryMethodNotificationTemplate;
      case r'SMS':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(SmsDeliveryMethodNotificationTemplate),
            )
            as SmsDeliveryMethodNotificationTemplate;
      case r'WEB':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(WebDeliveryMethodNotificationTemplate),
            )
            as WebDeliveryMethodNotificationTemplate;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($DeliveryMethodNotificationTemplate),
            )
            as $DeliveryMethodNotificationTemplate;
    }
  }
}

/// a concrete implementation of [DeliveryMethodNotificationTemplate], since [DeliveryMethodNotificationTemplate] is not instantiable
@BuiltValue(instantiable: true)
abstract class $DeliveryMethodNotificationTemplate
    implements
        DeliveryMethodNotificationTemplate,
        Built<
          $DeliveryMethodNotificationTemplate,
          $DeliveryMethodNotificationTemplateBuilder
        > {
  $DeliveryMethodNotificationTemplate._();

  factory $DeliveryMethodNotificationTemplate([
    void Function($DeliveryMethodNotificationTemplateBuilder)? updates,
  ]) = _$$DeliveryMethodNotificationTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($DeliveryMethodNotificationTemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$DeliveryMethodNotificationTemplate> get serializer =>
      _$$DeliveryMethodNotificationTemplateSerializer();
}

class _$$DeliveryMethodNotificationTemplateSerializer
    implements PrimitiveSerializer<$DeliveryMethodNotificationTemplate> {
  @override
  final Iterable<Type> types = const [
    $DeliveryMethodNotificationTemplate,
    _$$DeliveryMethodNotificationTemplate,
  ];

  @override
  final String wireName = r'$DeliveryMethodNotificationTemplate';

  @override
  Object serialize(
    Serializers serializers,
    $DeliveryMethodNotificationTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(DeliveryMethodNotificationTemplate),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeliveryMethodNotificationTemplateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'body':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.body = valueDes;
          break;
        case r'method':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.method = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $DeliveryMethodNotificationTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $DeliveryMethodNotificationTemplateBuilder();
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
