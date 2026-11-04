// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_profile_type.dart';
import 'package:thingsboard_client/src/model/default_device_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_configuration.g.dart';

/// Device configuration
///
/// Properties:
/// * [type] - Device profile type
@BuiltValue(instantiable: false)
abstract class DeviceConfiguration {
  /// Device profile type
  @BuiltValueField(wireName: r'type')
  DeviceProfileType get type;
  // enum typeEnum {  DEFAULT,  };

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'DEFAULT': DefaultDeviceConfiguration,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceConfiguration> get serializer =>
      _$DeviceConfigurationSerializer();
}

extension DeviceConfigurationDiscriminatorExt on DeviceConfiguration {
  String? get discriminatorValue {
    if (this is DefaultDeviceConfiguration) {
      return r'DEFAULT';
    }
    return null;
  }
}

extension DeviceConfigurationBuilderDiscriminatorExt
    on DeviceConfigurationBuilder {
  String? get discriminatorValue {
    if (this is DefaultDeviceConfigurationBuilder) {
      return r'DEFAULT';
    }
    return null;
  }
}

class _$DeviceConfigurationSerializer
    implements PrimitiveSerializer<DeviceConfiguration> {
  @override
  final Iterable<Type> types = const [DeviceConfiguration];

  @override
  final String wireName = r'DeviceConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceConfiguration object, {
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
    DeviceConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is DefaultDeviceConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(DefaultDeviceConfiguration),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  DeviceConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(DeviceConfiguration.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'DEFAULT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(DefaultDeviceConfiguration),
            )
            as DefaultDeviceConfiguration;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($DeviceConfiguration),
            )
            as $DeviceConfiguration;
    }
  }
}

/// a concrete implementation of [DeviceConfiguration], since [DeviceConfiguration] is not instantiable
@BuiltValue(instantiable: true)
abstract class $DeviceConfiguration
    implements
        DeviceConfiguration,
        Built<$DeviceConfiguration, $DeviceConfigurationBuilder> {
  $DeviceConfiguration._();

  factory $DeviceConfiguration([
    void Function($DeviceConfigurationBuilder)? updates,
  ]) = _$$DeviceConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($DeviceConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$DeviceConfiguration> get serializer =>
      _$$DeviceConfigurationSerializer();
}

class _$$DeviceConfigurationSerializer
    implements PrimitiveSerializer<$DeviceConfiguration> {
  @override
  final Iterable<Type> types = const [
    $DeviceConfiguration,
    _$$DeviceConfiguration,
  ];

  @override
  final String wireName = r'$DeviceConfiguration';

  @override
  Object serialize(
    Serializers serializers,
    $DeviceConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(DeviceConfiguration),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceConfigurationBuilder result,
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
  $DeviceConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $DeviceConfigurationBuilder();
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
