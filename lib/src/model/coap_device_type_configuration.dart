// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/efento_coap_device_type_configuration.dart';
import 'package:thingsboard_client/src/model/default_coap_device_type_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coap_device_type_configuration.g.dart';

/// CoAP device type configuration
///
/// Properties:
/// * [coapDeviceType] 
@BuiltValue(instantiable: false)
abstract class CoapDeviceTypeConfiguration  {
  @BuiltValueField(wireName: r'coapDeviceType')
  String get coapDeviceType;

  static const String discriminatorFieldName = r'coapDeviceType';

  static const Map<String, Type> discriminatorMapping = {
    r'DEFAULT': DefaultCoapDeviceTypeConfiguration,
    r'EFENTO': EfentoCoapDeviceTypeConfiguration,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<CoapDeviceTypeConfiguration> get serializer => _$CoapDeviceTypeConfigurationSerializer();
}

extension CoapDeviceTypeConfigurationDiscriminatorExt on CoapDeviceTypeConfiguration {
    String? get discriminatorValue {
        if (this is DefaultCoapDeviceTypeConfiguration) {
            return r'DEFAULT';
        }
        if (this is EfentoCoapDeviceTypeConfiguration) {
            return r'EFENTO';
        }
        return null;
    }
}
extension CoapDeviceTypeConfigurationBuilderDiscriminatorExt on CoapDeviceTypeConfigurationBuilder {
    String? get discriminatorValue {
        if (this is DefaultCoapDeviceTypeConfigurationBuilder) {
            return r'DEFAULT';
        }
        if (this is EfentoCoapDeviceTypeConfigurationBuilder) {
            return r'EFENTO';
        }
        return null;
    }
}

class _$CoapDeviceTypeConfigurationSerializer implements PrimitiveSerializer<CoapDeviceTypeConfiguration> {
  @override
  final Iterable<Type> types = const [CoapDeviceTypeConfiguration];

  @override
  final String wireName = r'CoapDeviceTypeConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CoapDeviceTypeConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'coapDeviceType';
    yield serializers.serialize(
      object.coapDeviceType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CoapDeviceTypeConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is DefaultCoapDeviceTypeConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(DefaultCoapDeviceTypeConfiguration))!;
    }
    if (object is EfentoCoapDeviceTypeConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(EfentoCoapDeviceTypeConfiguration))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  CoapDeviceTypeConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(CoapDeviceTypeConfiguration.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'DEFAULT':
        return serializers.deserialize(serialized, specifiedType: FullType(DefaultCoapDeviceTypeConfiguration)) as DefaultCoapDeviceTypeConfiguration;
      case r'EFENTO':
        return serializers.deserialize(serialized, specifiedType: FullType(EfentoCoapDeviceTypeConfiguration)) as EfentoCoapDeviceTypeConfiguration;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($CoapDeviceTypeConfiguration)) as $CoapDeviceTypeConfiguration;
    }
  }
}


/// a concrete implementation of [CoapDeviceTypeConfiguration], since [CoapDeviceTypeConfiguration] is not instantiable
@BuiltValue(instantiable: true)
abstract class $CoapDeviceTypeConfiguration implements CoapDeviceTypeConfiguration, Built<$CoapDeviceTypeConfiguration, $CoapDeviceTypeConfigurationBuilder> {
  $CoapDeviceTypeConfiguration._();

  factory $CoapDeviceTypeConfiguration([void Function($CoapDeviceTypeConfigurationBuilder)? updates]) = _$$CoapDeviceTypeConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($CoapDeviceTypeConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$CoapDeviceTypeConfiguration> get serializer => _$$CoapDeviceTypeConfigurationSerializer();
}

class _$$CoapDeviceTypeConfigurationSerializer implements PrimitiveSerializer<$CoapDeviceTypeConfiguration> {
  @override
  final Iterable<Type> types = const [$CoapDeviceTypeConfiguration, _$$CoapDeviceTypeConfiguration];

  @override
  final String wireName = r'$CoapDeviceTypeConfiguration';

  @override
  Object serialize(
    Serializers serializers,
    $CoapDeviceTypeConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(CoapDeviceTypeConfiguration))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CoapDeviceTypeConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'coapDeviceType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.coapDeviceType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $CoapDeviceTypeConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $CoapDeviceTypeConfigurationBuilder();
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

