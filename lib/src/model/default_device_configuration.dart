// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_profile_type.dart';
import 'package:thingsboard_client/src/model/device_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'default_device_configuration.g.dart';

/// Default device configuration
///
/// Properties:
/// * [type] - Device profile type
@BuiltValue()
abstract class DefaultDeviceConfiguration
    implements
        DeviceConfiguration,
        Built<DefaultDeviceConfiguration, DefaultDeviceConfigurationBuilder> {
  DefaultDeviceConfiguration._();

  factory DefaultDeviceConfiguration([
    void updates(DefaultDeviceConfigurationBuilder b),
  ]) = _$DefaultDeviceConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DefaultDeviceConfigurationBuilder b) =>
      b..type = DeviceProfileType.DEFAULT;

  @BuiltValueSerializer(custom: true)
  static Serializer<DefaultDeviceConfiguration> get serializer =>
      _$DefaultDeviceConfigurationSerializer();
}

class _$DefaultDeviceConfigurationSerializer
    implements PrimitiveSerializer<DefaultDeviceConfiguration> {
  @override
  final Iterable<Type> types = const [
    DefaultDeviceConfiguration,
    _$DefaultDeviceConfiguration,
  ];

  @override
  final String wireName = r'DefaultDeviceConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DefaultDeviceConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(DeviceProfileType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DefaultDeviceConfiguration object, {
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
    required DefaultDeviceConfigurationBuilder result,
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
                    specifiedType: const FullType(DeviceProfileType),
                  )
                  as DeviceProfileType;
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
  DefaultDeviceConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultDeviceConfigurationBuilder();
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
