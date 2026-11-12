// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/notification_delivery_method_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_settings.g.dart';

/// NotificationSettings
///
/// Properties:
/// * [deliveryMethodsConfigs]
@BuiltValue()
abstract class NotificationSettings
    implements Built<NotificationSettings, NotificationSettingsBuilder> {
  @BuiltValueField(wireName: r'deliveryMethodsConfigs')
  BuiltMap<String, NotificationDeliveryMethodConfig> get deliveryMethodsConfigs;

  NotificationSettings._();

  factory NotificationSettings([void updates(NotificationSettingsBuilder b)]) =
      _$NotificationSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationSettings> get serializer =>
      _$NotificationSettingsSerializer();
}

class _$NotificationSettingsSerializer
    implements PrimitiveSerializer<NotificationSettings> {
  @override
  final Iterable<Type> types = const [
    NotificationSettings,
    _$NotificationSettings,
  ];

  @override
  final String wireName = r'NotificationSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'deliveryMethodsConfigs';
    yield serializers.serialize(
      object.deliveryMethodsConfigs,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(NotificationDeliveryMethodConfig),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationSettings object, {
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
    required NotificationSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'deliveryMethodsConfigs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(NotificationDeliveryMethodConfig),
                    ]),
                  )
                  as BuiltMap<String, NotificationDeliveryMethodConfig>;
          result.deliveryMethodsConfigs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationSettingsBuilder();
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
