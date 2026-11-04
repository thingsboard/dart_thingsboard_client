// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/snmp_communication_config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/snmp_communication_spec.dart';
import 'package:thingsboard_client/src/model/snmp_mapping.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'telemetry_querying_snmp_communication_config.g.dart';

/// TelemetryQueryingSnmpCommunicationConfig
///
/// Properties:
/// * [spec] - Specification of the SNMP communication
/// * [mappings]
/// * [queryingFrequencyMs]
@BuiltValue()
abstract class TelemetryQueryingSnmpCommunicationConfig
    implements
        SnmpCommunicationConfig,
        Built<
          TelemetryQueryingSnmpCommunicationConfig,
          TelemetryQueryingSnmpCommunicationConfigBuilder
        > {
  @BuiltValueField(wireName: r'mappings')
  BuiltList<SnmpMapping>? get mappings;

  @BuiltValueField(wireName: r'queryingFrequencyMs')
  int? get queryingFrequencyMs;

  TelemetryQueryingSnmpCommunicationConfig._();

  factory TelemetryQueryingSnmpCommunicationConfig([
    void updates(TelemetryQueryingSnmpCommunicationConfigBuilder b),
  ]) = _$TelemetryQueryingSnmpCommunicationConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TelemetryQueryingSnmpCommunicationConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TelemetryQueryingSnmpCommunicationConfig> get serializer =>
      _$TelemetryQueryingSnmpCommunicationConfigSerializer();
}

class _$TelemetryQueryingSnmpCommunicationConfigSerializer
    implements PrimitiveSerializer<TelemetryQueryingSnmpCommunicationConfig> {
  @override
  final Iterable<Type> types = const [
    TelemetryQueryingSnmpCommunicationConfig,
    _$TelemetryQueryingSnmpCommunicationConfig,
  ];

  @override
  final String wireName = r'TelemetryQueryingSnmpCommunicationConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TelemetryQueryingSnmpCommunicationConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mappings != null) {
      yield r'mappings';
      yield serializers.serialize(
        object.mappings,
        specifiedType: const FullType(BuiltList, [FullType(SnmpMapping)]),
      );
    }
    yield r'spec';
    yield serializers.serialize(
      object.spec,
      specifiedType: const FullType(SnmpCommunicationSpec),
    );
    if (object.queryingFrequencyMs != null) {
      yield r'queryingFrequencyMs';
      yield serializers.serialize(
        object.queryingFrequencyMs,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TelemetryQueryingSnmpCommunicationConfig object, {
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
    required TelemetryQueryingSnmpCommunicationConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mappings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SnmpMapping),
                    ]),
                  )
                  as BuiltList<SnmpMapping>?;
          if (valueDes == null) continue;
          result.mappings.replace(valueDes);
          break;
        case r'spec':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(SnmpCommunicationSpec),
                  )
                  as SnmpCommunicationSpec;
          result.spec = valueDes;
          break;
        case r'queryingFrequencyMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.queryingFrequencyMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TelemetryQueryingSnmpCommunicationConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TelemetryQueryingSnmpCommunicationConfigBuilder();
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
