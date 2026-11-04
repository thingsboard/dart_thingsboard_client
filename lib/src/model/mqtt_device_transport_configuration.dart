// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_transport_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mqtt_device_transport_configuration.g.dart';

/// MqttDeviceTransportConfiguration
///
/// Properties:
/// * [type]
@BuiltValue()
abstract class MqttDeviceTransportConfiguration
    implements
        DeviceTransportConfiguration,
        Built<
          MqttDeviceTransportConfiguration,
          MqttDeviceTransportConfigurationBuilder
        > {
  MqttDeviceTransportConfiguration._();

  factory MqttDeviceTransportConfiguration([
    void updates(MqttDeviceTransportConfigurationBuilder b),
  ]) = _$MqttDeviceTransportConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MqttDeviceTransportConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MqttDeviceTransportConfiguration> get serializer =>
      _$MqttDeviceTransportConfigurationSerializer();
}

class _$MqttDeviceTransportConfigurationSerializer
    implements PrimitiveSerializer<MqttDeviceTransportConfiguration> {
  @override
  final Iterable<Type> types = const [
    MqttDeviceTransportConfiguration,
    _$MqttDeviceTransportConfiguration,
  ];

  @override
  final String wireName = r'MqttDeviceTransportConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MqttDeviceTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MqttDeviceTransportConfiguration object, {
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
    required MqttDeviceTransportConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MqttDeviceTransportConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MqttDeviceTransportConfigurationBuilder();
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
