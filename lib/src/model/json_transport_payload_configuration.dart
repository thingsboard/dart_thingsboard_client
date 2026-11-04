// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/transport_payload_type_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'json_transport_payload_configuration.g.dart';

/// JsonTransportPayloadConfiguration
///
/// Properties:
/// * [transportPayloadType] 
@BuiltValue()
abstract class JsonTransportPayloadConfiguration implements TransportPayloadTypeConfiguration, Built<JsonTransportPayloadConfiguration, JsonTransportPayloadConfigurationBuilder> {
  JsonTransportPayloadConfiguration._();

  factory JsonTransportPayloadConfiguration([void updates(JsonTransportPayloadConfigurationBuilder b)]) = _$JsonTransportPayloadConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JsonTransportPayloadConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JsonTransportPayloadConfiguration> get serializer => _$JsonTransportPayloadConfigurationSerializer();
}

class _$JsonTransportPayloadConfigurationSerializer implements PrimitiveSerializer<JsonTransportPayloadConfiguration> {
  @override
  final Iterable<Type> types = const [JsonTransportPayloadConfiguration, _$JsonTransportPayloadConfiguration];

  @override
  final String wireName = r'JsonTransportPayloadConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JsonTransportPayloadConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'transportPayloadType';
    yield serializers.serialize(
      object.transportPayloadType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    JsonTransportPayloadConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JsonTransportPayloadConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'transportPayloadType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transportPayloadType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JsonTransportPayloadConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonTransportPayloadConfigurationBuilder();
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


