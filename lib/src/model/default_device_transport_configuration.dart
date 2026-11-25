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

part 'default_device_transport_configuration.g.dart';

/// DefaultDeviceTransportConfiguration
///
/// Properties:
/// * [type]
@BuiltValue()
abstract class DefaultDeviceTransportConfiguration
    implements
        DeviceTransportConfiguration,
        Built<
          DefaultDeviceTransportConfiguration,
          DefaultDeviceTransportConfigurationBuilder
        > {
  DefaultDeviceTransportConfiguration._();

  factory DefaultDeviceTransportConfiguration([
    void updates(DefaultDeviceTransportConfigurationBuilder b),
  ]) = _$DefaultDeviceTransportConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DefaultDeviceTransportConfigurationBuilder b) =>
      b..type = r'DEFAULT';

  @BuiltValueSerializer(custom: true)
  static Serializer<DefaultDeviceTransportConfiguration> get serializer =>
      _$DefaultDeviceTransportConfigurationSerializer();
}

class _$DefaultDeviceTransportConfigurationSerializer
    implements PrimitiveSerializer<DefaultDeviceTransportConfiguration> {
  @override
  final Iterable<Type> types = const [
    DefaultDeviceTransportConfiguration,
    _$DefaultDeviceTransportConfiguration,
  ];

  @override
  final String wireName = r'DefaultDeviceTransportConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DefaultDeviceTransportConfiguration object, {
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
    DefaultDeviceTransportConfiguration object, {
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
    required DefaultDeviceTransportConfigurationBuilder result,
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
  DefaultDeviceTransportConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultDeviceTransportConfigurationBuilder();
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
