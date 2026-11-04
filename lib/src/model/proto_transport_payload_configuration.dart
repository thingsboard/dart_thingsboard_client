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

part 'proto_transport_payload_configuration.g.dart';

/// ProtoTransportPayloadConfiguration
///
/// Properties:
/// * [transportPayloadType]
/// * [deviceTelemetryProtoSchema]
/// * [deviceAttributesProtoSchema]
/// * [deviceRpcRequestProtoSchema]
/// * [deviceRpcResponseProtoSchema]
/// * [enableCompatibilityWithJsonPayloadFormat]
/// * [useJsonPayloadFormatForDefaultDownlinkTopics]
@BuiltValue()
abstract class ProtoTransportPayloadConfiguration
    implements
        TransportPayloadTypeConfiguration,
        Built<
          ProtoTransportPayloadConfiguration,
          ProtoTransportPayloadConfigurationBuilder
        > {
  @BuiltValueField(wireName: r'enableCompatibilityWithJsonPayloadFormat')
  bool? get enableCompatibilityWithJsonPayloadFormat;

  @BuiltValueField(wireName: r'deviceAttributesProtoSchema')
  String? get deviceAttributesProtoSchema;

  @BuiltValueField(wireName: r'deviceRpcRequestProtoSchema')
  String? get deviceRpcRequestProtoSchema;

  @BuiltValueField(wireName: r'deviceRpcResponseProtoSchema')
  String? get deviceRpcResponseProtoSchema;

  @BuiltValueField(wireName: r'useJsonPayloadFormatForDefaultDownlinkTopics')
  bool? get useJsonPayloadFormatForDefaultDownlinkTopics;

  @BuiltValueField(wireName: r'deviceTelemetryProtoSchema')
  String? get deviceTelemetryProtoSchema;

  ProtoTransportPayloadConfiguration._();

  factory ProtoTransportPayloadConfiguration([
    void updates(ProtoTransportPayloadConfigurationBuilder b),
  ]) = _$ProtoTransportPayloadConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProtoTransportPayloadConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProtoTransportPayloadConfiguration> get serializer =>
      _$ProtoTransportPayloadConfigurationSerializer();
}

class _$ProtoTransportPayloadConfigurationSerializer
    implements PrimitiveSerializer<ProtoTransportPayloadConfiguration> {
  @override
  final Iterable<Type> types = const [
    ProtoTransportPayloadConfiguration,
    _$ProtoTransportPayloadConfiguration,
  ];

  @override
  final String wireName = r'ProtoTransportPayloadConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProtoTransportPayloadConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.enableCompatibilityWithJsonPayloadFormat != null) {
      yield r'enableCompatibilityWithJsonPayloadFormat';
      yield serializers.serialize(
        object.enableCompatibilityWithJsonPayloadFormat,
        specifiedType: const FullType(bool),
      );
    }
    if (object.deviceAttributesProtoSchema != null) {
      yield r'deviceAttributesProtoSchema';
      yield serializers.serialize(
        object.deviceAttributesProtoSchema,
        specifiedType: const FullType(String),
      );
    }
    if (object.deviceRpcRequestProtoSchema != null) {
      yield r'deviceRpcRequestProtoSchema';
      yield serializers.serialize(
        object.deviceRpcRequestProtoSchema,
        specifiedType: const FullType(String),
      );
    }
    if (object.deviceRpcResponseProtoSchema != null) {
      yield r'deviceRpcResponseProtoSchema';
      yield serializers.serialize(
        object.deviceRpcResponseProtoSchema,
        specifiedType: const FullType(String),
      );
    }
    yield r'transportPayloadType';
    yield serializers.serialize(
      object.transportPayloadType,
      specifiedType: const FullType(String),
    );
    if (object.useJsonPayloadFormatForDefaultDownlinkTopics != null) {
      yield r'useJsonPayloadFormatForDefaultDownlinkTopics';
      yield serializers.serialize(
        object.useJsonPayloadFormatForDefaultDownlinkTopics,
        specifiedType: const FullType(bool),
      );
    }
    if (object.deviceTelemetryProtoSchema != null) {
      yield r'deviceTelemetryProtoSchema';
      yield serializers.serialize(
        object.deviceTelemetryProtoSchema,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProtoTransportPayloadConfiguration object, {
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
    required ProtoTransportPayloadConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'enableCompatibilityWithJsonPayloadFormat':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enableCompatibilityWithJsonPayloadFormat = valueDes;
          break;
        case r'deviceAttributesProtoSchema':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.deviceAttributesProtoSchema = valueDes;
          break;
        case r'deviceRpcRequestProtoSchema':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.deviceRpcRequestProtoSchema = valueDes;
          break;
        case r'deviceRpcResponseProtoSchema':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.deviceRpcResponseProtoSchema = valueDes;
          break;
        case r'transportPayloadType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.transportPayloadType = valueDes;
          break;
        case r'useJsonPayloadFormatForDefaultDownlinkTopics':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.useJsonPayloadFormatForDefaultDownlinkTopics = valueDes;
          break;
        case r'deviceTelemetryProtoSchema':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.deviceTelemetryProtoSchema = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProtoTransportPayloadConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProtoTransportPayloadConfigurationBuilder();
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
