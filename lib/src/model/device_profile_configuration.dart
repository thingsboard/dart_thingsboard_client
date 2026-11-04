// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/default_device_profile_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_profile_configuration.g.dart';

/// Device profile configuration
///
/// Properties:
/// * [type] 
@BuiltValue(instantiable: false)
abstract class DeviceProfileConfiguration  {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'DEFAULT': DefaultDeviceProfileConfiguration,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceProfileConfiguration> get serializer => _$DeviceProfileConfigurationSerializer();
}

extension DeviceProfileConfigurationDiscriminatorExt on DeviceProfileConfiguration {
    String? get discriminatorValue {
        if (this is DefaultDeviceProfileConfiguration) {
            return r'DEFAULT';
        }
        return null;
    }
}
extension DeviceProfileConfigurationBuilderDiscriminatorExt on DeviceProfileConfigurationBuilder {
    String? get discriminatorValue {
        if (this is DefaultDeviceProfileConfigurationBuilder) {
            return r'DEFAULT';
        }
        return null;
    }
}

class _$DeviceProfileConfigurationSerializer implements PrimitiveSerializer<DeviceProfileConfiguration> {
  @override
  final Iterable<Type> types = const [DeviceProfileConfiguration];

  @override
  final String wireName = r'DeviceProfileConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceProfileConfiguration object, {
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
    DeviceProfileConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is DefaultDeviceProfileConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(DefaultDeviceProfileConfiguration))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  DeviceProfileConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(DeviceProfileConfiguration.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'DEFAULT':
        return serializers.deserialize(serialized, specifiedType: FullType(DefaultDeviceProfileConfiguration)) as DefaultDeviceProfileConfiguration;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($DeviceProfileConfiguration)) as $DeviceProfileConfiguration;
    }
  }
}


/// a concrete implementation of [DeviceProfileConfiguration], since [DeviceProfileConfiguration] is not instantiable
@BuiltValue(instantiable: true)
abstract class $DeviceProfileConfiguration implements DeviceProfileConfiguration, Built<$DeviceProfileConfiguration, $DeviceProfileConfigurationBuilder> {
  $DeviceProfileConfiguration._();

  factory $DeviceProfileConfiguration([void Function($DeviceProfileConfigurationBuilder)? updates]) = _$$DeviceProfileConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($DeviceProfileConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$DeviceProfileConfiguration> get serializer => _$$DeviceProfileConfigurationSerializer();
}

class _$$DeviceProfileConfigurationSerializer implements PrimitiveSerializer<$DeviceProfileConfiguration> {
  @override
  final Iterable<Type> types = const [$DeviceProfileConfiguration, _$$DeviceProfileConfiguration];

  @override
  final String wireName = r'$DeviceProfileConfiguration';

  @override
  Object serialize(
    Serializers serializers,
    $DeviceProfileConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(DeviceProfileConfiguration))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceProfileConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  $DeviceProfileConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $DeviceProfileConfigurationBuilder();
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

