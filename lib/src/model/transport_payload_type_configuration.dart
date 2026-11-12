// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/json_transport_payload_configuration.dart';
import 'package:thingsboard_client/src/model/proto_transport_payload_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transport_payload_type_configuration.g.dart';

/// Configuration for transport payload type
///
/// Properties:
/// * [transportPayloadType]
@BuiltValue(instantiable: false)
abstract class TransportPayloadTypeConfiguration {
  @BuiltValueField(wireName: r'transportPayloadType')
  String get transportPayloadType;

  static const String discriminatorFieldName = r'transportPayloadType';

  static const Map<String, Type> discriminatorMapping = {
    r'JSON': JsonTransportPayloadConfiguration,
    r'PROTOBUF': ProtoTransportPayloadConfiguration,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<TransportPayloadTypeConfiguration> get serializer =>
      _$TransportPayloadTypeConfigurationSerializer();
}

extension TransportPayloadTypeConfigurationDiscriminatorExt
    on TransportPayloadTypeConfiguration {
  String? get discriminatorValue {
    if (this is JsonTransportPayloadConfiguration) {
      return r'JSON';
    }
    if (this is ProtoTransportPayloadConfiguration) {
      return r'PROTOBUF';
    }
    return null;
  }
}

extension TransportPayloadTypeConfigurationBuilderDiscriminatorExt
    on TransportPayloadTypeConfigurationBuilder {
  String? get discriminatorValue {
    if (this is JsonTransportPayloadConfigurationBuilder) {
      return r'JSON';
    }
    if (this is ProtoTransportPayloadConfigurationBuilder) {
      return r'PROTOBUF';
    }
    return null;
  }
}

class _$TransportPayloadTypeConfigurationSerializer
    implements PrimitiveSerializer<TransportPayloadTypeConfiguration> {
  @override
  final Iterable<Type> types = const [TransportPayloadTypeConfiguration];

  @override
  final String wireName = r'TransportPayloadTypeConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransportPayloadTypeConfiguration object, {
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
    TransportPayloadTypeConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is JsonTransportPayloadConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(JsonTransportPayloadConfiguration),
      )!;
    }
    if (object is ProtoTransportPayloadConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ProtoTransportPayloadConfiguration),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  TransportPayloadTypeConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(
          TransportPayloadTypeConfiguration.discriminatorFieldName,
        ) +
        1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'JSON':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(JsonTransportPayloadConfiguration),
            )
            as JsonTransportPayloadConfiguration;
      case r'PROTOBUF':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ProtoTransportPayloadConfiguration),
            )
            as ProtoTransportPayloadConfiguration;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($TransportPayloadTypeConfiguration),
            )
            as $TransportPayloadTypeConfiguration;
    }
  }
}

/// a concrete implementation of [TransportPayloadTypeConfiguration], since [TransportPayloadTypeConfiguration] is not instantiable
@BuiltValue(instantiable: true)
abstract class $TransportPayloadTypeConfiguration
    implements
        TransportPayloadTypeConfiguration,
        Built<
          $TransportPayloadTypeConfiguration,
          $TransportPayloadTypeConfigurationBuilder
        > {
  $TransportPayloadTypeConfiguration._();

  factory $TransportPayloadTypeConfiguration([
    void Function($TransportPayloadTypeConfigurationBuilder)? updates,
  ]) = _$$TransportPayloadTypeConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($TransportPayloadTypeConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$TransportPayloadTypeConfiguration> get serializer =>
      _$$TransportPayloadTypeConfigurationSerializer();
}

class _$$TransportPayloadTypeConfigurationSerializer
    implements PrimitiveSerializer<$TransportPayloadTypeConfiguration> {
  @override
  final Iterable<Type> types = const [
    $TransportPayloadTypeConfiguration,
    _$$TransportPayloadTypeConfiguration,
  ];

  @override
  final String wireName = r'$TransportPayloadTypeConfiguration';

  @override
  Object serialize(
    Serializers serializers,
    $TransportPayloadTypeConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(TransportPayloadTypeConfiguration),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TransportPayloadTypeConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'transportPayloadType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
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
  $TransportPayloadTypeConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $TransportPayloadTypeConfigurationBuilder();
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
