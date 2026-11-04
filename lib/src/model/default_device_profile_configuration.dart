// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_profile_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'default_device_profile_configuration.g.dart';

/// Default device profile configuration
///
/// Properties:
/// * [type]
@BuiltValue()
abstract class DefaultDeviceProfileConfiguration
    implements
        DeviceProfileConfiguration,
        Built<
          DefaultDeviceProfileConfiguration,
          DefaultDeviceProfileConfigurationBuilder
        > {
  DefaultDeviceProfileConfiguration._();

  factory DefaultDeviceProfileConfiguration([
    void updates(DefaultDeviceProfileConfigurationBuilder b),
  ]) = _$DefaultDeviceProfileConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DefaultDeviceProfileConfigurationBuilder b) =>
      b..type = r'DEFAULT';

  @BuiltValueSerializer(custom: true)
  static Serializer<DefaultDeviceProfileConfiguration> get serializer =>
      _$DefaultDeviceProfileConfigurationSerializer();
}

class _$DefaultDeviceProfileConfigurationSerializer
    implements PrimitiveSerializer<DefaultDeviceProfileConfiguration> {
  @override
  final Iterable<Type> types = const [
    DefaultDeviceProfileConfiguration,
    _$DefaultDeviceProfileConfiguration,
  ];

  @override
  final String wireName = r'DefaultDeviceProfileConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DefaultDeviceProfileConfiguration object, {
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
    DefaultDeviceProfileConfiguration object, {
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
    required DefaultDeviceProfileConfigurationBuilder result,
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
  DefaultDeviceProfileConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultDeviceProfileConfigurationBuilder();
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
