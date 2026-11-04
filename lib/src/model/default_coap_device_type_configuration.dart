// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/coap_device_type_configuration.dart';
import 'package:thingsboard_client/src/model/transport_payload_type_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'default_coap_device_type_configuration.g.dart';

/// DefaultCoapDeviceTypeConfiguration
///
/// Properties:
/// * [coapDeviceType] 
/// * [transportPayloadTypeConfiguration] 
@BuiltValue()
abstract class DefaultCoapDeviceTypeConfiguration implements CoapDeviceTypeConfiguration, Built<DefaultCoapDeviceTypeConfiguration, DefaultCoapDeviceTypeConfigurationBuilder> {
  @BuiltValueField(wireName: r'transportPayloadTypeConfiguration')
  TransportPayloadTypeConfiguration? get transportPayloadTypeConfiguration;

  DefaultCoapDeviceTypeConfiguration._();

  factory DefaultCoapDeviceTypeConfiguration([void updates(DefaultCoapDeviceTypeConfigurationBuilder b)]) = _$DefaultCoapDeviceTypeConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DefaultCoapDeviceTypeConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DefaultCoapDeviceTypeConfiguration> get serializer => _$DefaultCoapDeviceTypeConfigurationSerializer();
}

class _$DefaultCoapDeviceTypeConfigurationSerializer implements PrimitiveSerializer<DefaultCoapDeviceTypeConfiguration> {
  @override
  final Iterable<Type> types = const [DefaultCoapDeviceTypeConfiguration, _$DefaultCoapDeviceTypeConfiguration];

  @override
  final String wireName = r'DefaultCoapDeviceTypeConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DefaultCoapDeviceTypeConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.transportPayloadTypeConfiguration != null) {
      yield r'transportPayloadTypeConfiguration';
      yield serializers.serialize(
        object.transportPayloadTypeConfiguration,
        specifiedType: const FullType(TransportPayloadTypeConfiguration),
      );
    }
    yield r'coapDeviceType';
    yield serializers.serialize(
      object.coapDeviceType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DefaultCoapDeviceTypeConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DefaultCoapDeviceTypeConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'transportPayloadTypeConfiguration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TransportPayloadTypeConfiguration),
          ) as TransportPayloadTypeConfiguration?;
          if (valueDes == null) continue;
          result.transportPayloadTypeConfiguration = valueDes;
          break;
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
  DefaultCoapDeviceTypeConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DefaultCoapDeviceTypeConfigurationBuilder();
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


