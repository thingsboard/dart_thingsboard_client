// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/coap_device_type_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'efento_coap_device_type_configuration.g.dart';

/// EfentoCoapDeviceTypeConfiguration
///
/// Properties:
/// * [coapDeviceType] 
@BuiltValue()
abstract class EfentoCoapDeviceTypeConfiguration implements CoapDeviceTypeConfiguration, Built<EfentoCoapDeviceTypeConfiguration, EfentoCoapDeviceTypeConfigurationBuilder> {
  EfentoCoapDeviceTypeConfiguration._();

  factory EfentoCoapDeviceTypeConfiguration([void updates(EfentoCoapDeviceTypeConfigurationBuilder b)]) = _$EfentoCoapDeviceTypeConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EfentoCoapDeviceTypeConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EfentoCoapDeviceTypeConfiguration> get serializer => _$EfentoCoapDeviceTypeConfigurationSerializer();
}

class _$EfentoCoapDeviceTypeConfigurationSerializer implements PrimitiveSerializer<EfentoCoapDeviceTypeConfiguration> {
  @override
  final Iterable<Type> types = const [EfentoCoapDeviceTypeConfiguration, _$EfentoCoapDeviceTypeConfiguration];

  @override
  final String wireName = r'EfentoCoapDeviceTypeConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EfentoCoapDeviceTypeConfiguration object, {
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
    EfentoCoapDeviceTypeConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EfentoCoapDeviceTypeConfigurationBuilder result,
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
  EfentoCoapDeviceTypeConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EfentoCoapDeviceTypeConfigurationBuilder();
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


