// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/mobile_app_notification_delivery_method_config.dart';
import 'package:thingsboard_client/src/model/slack_notification_delivery_method_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_delivery_method_config.g.dart';

/// NotificationDeliveryMethodConfig
///
/// Properties:
/// * [method] 
@BuiltValue(instantiable: false)
abstract class NotificationDeliveryMethodConfig  {
  @BuiltValueField(wireName: r'method')
  String get method;

  static const String discriminatorFieldName = r'method';

  static const Map<String, Type> discriminatorMapping = {
    r'MOBILE_APP': MobileAppNotificationDeliveryMethodConfig,
    r'SLACK': SlackNotificationDeliveryMethodConfig,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationDeliveryMethodConfig> get serializer => _$NotificationDeliveryMethodConfigSerializer();
}

extension NotificationDeliveryMethodConfigDiscriminatorExt on NotificationDeliveryMethodConfig {
    String? get discriminatorValue {
        if (this is MobileAppNotificationDeliveryMethodConfig) {
            return r'MOBILE_APP';
        }
        if (this is SlackNotificationDeliveryMethodConfig) {
            return r'SLACK';
        }
        return null;
    }
}
extension NotificationDeliveryMethodConfigBuilderDiscriminatorExt on NotificationDeliveryMethodConfigBuilder {
    String? get discriminatorValue {
        if (this is MobileAppNotificationDeliveryMethodConfigBuilder) {
            return r'MOBILE_APP';
        }
        if (this is SlackNotificationDeliveryMethodConfigBuilder) {
            return r'SLACK';
        }
        return null;
    }
}

class _$NotificationDeliveryMethodConfigSerializer implements PrimitiveSerializer<NotificationDeliveryMethodConfig> {
  @override
  final Iterable<Type> types = const [NotificationDeliveryMethodConfig];

  @override
  final String wireName = r'NotificationDeliveryMethodConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationDeliveryMethodConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationDeliveryMethodConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is MobileAppNotificationDeliveryMethodConfig) {
      return serializers.serialize(object, specifiedType: FullType(MobileAppNotificationDeliveryMethodConfig))!;
    }
    if (object is SlackNotificationDeliveryMethodConfig) {
      return serializers.serialize(object, specifiedType: FullType(SlackNotificationDeliveryMethodConfig))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  NotificationDeliveryMethodConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(NotificationDeliveryMethodConfig.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'MOBILE_APP':
        return serializers.deserialize(serialized, specifiedType: FullType(MobileAppNotificationDeliveryMethodConfig)) as MobileAppNotificationDeliveryMethodConfig;
      case r'SLACK':
        return serializers.deserialize(serialized, specifiedType: FullType(SlackNotificationDeliveryMethodConfig)) as SlackNotificationDeliveryMethodConfig;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($NotificationDeliveryMethodConfig)) as $NotificationDeliveryMethodConfig;
    }
  }
}


/// a concrete implementation of [NotificationDeliveryMethodConfig], since [NotificationDeliveryMethodConfig] is not instantiable
@BuiltValue(instantiable: true)
abstract class $NotificationDeliveryMethodConfig implements NotificationDeliveryMethodConfig, Built<$NotificationDeliveryMethodConfig, $NotificationDeliveryMethodConfigBuilder> {
  $NotificationDeliveryMethodConfig._();

  factory $NotificationDeliveryMethodConfig([void Function($NotificationDeliveryMethodConfigBuilder)? updates]) = _$$NotificationDeliveryMethodConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($NotificationDeliveryMethodConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$NotificationDeliveryMethodConfig> get serializer => _$$NotificationDeliveryMethodConfigSerializer();
}

class _$$NotificationDeliveryMethodConfigSerializer implements PrimitiveSerializer<$NotificationDeliveryMethodConfig> {
  @override
  final Iterable<Type> types = const [$NotificationDeliveryMethodConfig, _$$NotificationDeliveryMethodConfig];

  @override
  final String wireName = r'$NotificationDeliveryMethodConfig';

  @override
  Object serialize(
    Serializers serializers,
    $NotificationDeliveryMethodConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(NotificationDeliveryMethodConfig))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationDeliveryMethodConfigBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $NotificationDeliveryMethodConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $NotificationDeliveryMethodConfigBuilder();
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

