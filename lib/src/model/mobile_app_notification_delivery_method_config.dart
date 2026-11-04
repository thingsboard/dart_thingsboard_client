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

part 'mobile_app_notification_delivery_method_config.g.dart';

/// MobileAppNotificationDeliveryMethodConfig
///
/// Properties:
/// * [method]
/// * [firebaseServiceAccountCredentialsFileName]
/// * [firebaseServiceAccountCredentials]
/// * [useSystemSettings]
@BuiltValue()
abstract class MobileAppNotificationDeliveryMethodConfig
    implements
        NotificationDeliveryMethodConfig,
        Built<
          MobileAppNotificationDeliveryMethodConfig,
          MobileAppNotificationDeliveryMethodConfigBuilder
        > {
  @BuiltValueField(wireName: r'useSystemSettings')
  bool? get useSystemSettings;

  @BuiltValueField(wireName: r'firebaseServiceAccountCredentialsFileName')
  String? get firebaseServiceAccountCredentialsFileName;

  @BuiltValueField(wireName: r'firebaseServiceAccountCredentials')
  String? get firebaseServiceAccountCredentials;

  MobileAppNotificationDeliveryMethodConfig._();

  factory MobileAppNotificationDeliveryMethodConfig([
    void updates(MobileAppNotificationDeliveryMethodConfigBuilder b),
  ]) = _$MobileAppNotificationDeliveryMethodConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MobileAppNotificationDeliveryMethodConfigBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MobileAppNotificationDeliveryMethodConfig> get serializer =>
      _$MobileAppNotificationDeliveryMethodConfigSerializer();
}

class _$MobileAppNotificationDeliveryMethodConfigSerializer
    implements PrimitiveSerializer<MobileAppNotificationDeliveryMethodConfig> {
  @override
  final Iterable<Type> types = const [
    MobileAppNotificationDeliveryMethodConfig,
    _$MobileAppNotificationDeliveryMethodConfig,
  ];

  @override
  final String wireName = r'MobileAppNotificationDeliveryMethodConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MobileAppNotificationDeliveryMethodConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.useSystemSettings != null) {
      yield r'useSystemSettings';
      yield serializers.serialize(
        object.useSystemSettings,
        specifiedType: const FullType(bool),
      );
    }
    if (object.firebaseServiceAccountCredentialsFileName != null) {
      yield r'firebaseServiceAccountCredentialsFileName';
      yield serializers.serialize(
        object.firebaseServiceAccountCredentialsFileName,
        specifiedType: const FullType(String),
      );
    }
    yield r'method';
    yield serializers.serialize(
      object.method,
      specifiedType: const FullType(String),
    );
    if (object.firebaseServiceAccountCredentials != null) {
      yield r'firebaseServiceAccountCredentials';
      yield serializers.serialize(
        object.firebaseServiceAccountCredentials,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MobileAppNotificationDeliveryMethodConfig object, {
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
    required MobileAppNotificationDeliveryMethodConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'useSystemSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.useSystemSettings = valueDes;
          break;
        case r'firebaseServiceAccountCredentialsFileName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.firebaseServiceAccountCredentialsFileName = valueDes;
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
        case r'firebaseServiceAccountCredentials':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.firebaseServiceAccountCredentials = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MobileAppNotificationDeliveryMethodConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MobileAppNotificationDeliveryMethodConfigBuilder();
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
