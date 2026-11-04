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

part 'client_attributes_querying_snmp_communication_config.g.dart';

/// ClientAttributesQueryingSnmpCommunicationConfig
///
/// Properties:
/// * [spec] - Specification of the SNMP communication
/// * [mappings] 
/// * [queryingFrequencyMs] 
@BuiltValue()
abstract class ClientAttributesQueryingSnmpCommunicationConfig implements SnmpCommunicationConfig, Built<ClientAttributesQueryingSnmpCommunicationConfig, ClientAttributesQueryingSnmpCommunicationConfigBuilder> {
  @BuiltValueField(wireName: r'mappings')
  BuiltList<SnmpMapping>? get mappings;

  @BuiltValueField(wireName: r'queryingFrequencyMs')
  int? get queryingFrequencyMs;

  ClientAttributesQueryingSnmpCommunicationConfig._();

  factory ClientAttributesQueryingSnmpCommunicationConfig([void updates(ClientAttributesQueryingSnmpCommunicationConfigBuilder b)]) = _$ClientAttributesQueryingSnmpCommunicationConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClientAttributesQueryingSnmpCommunicationConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClientAttributesQueryingSnmpCommunicationConfig> get serializer => _$ClientAttributesQueryingSnmpCommunicationConfigSerializer();
}

class _$ClientAttributesQueryingSnmpCommunicationConfigSerializer implements PrimitiveSerializer<ClientAttributesQueryingSnmpCommunicationConfig> {
  @override
  final Iterable<Type> types = const [ClientAttributesQueryingSnmpCommunicationConfig, _$ClientAttributesQueryingSnmpCommunicationConfig];

  @override
  final String wireName = r'ClientAttributesQueryingSnmpCommunicationConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClientAttributesQueryingSnmpCommunicationConfig object, {
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
    ClientAttributesQueryingSnmpCommunicationConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClientAttributesQueryingSnmpCommunicationConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mappings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(SnmpMapping)]),
          ) as BuiltList<SnmpMapping>?;
          if (valueDes == null) continue;
          result.mappings.replace(valueDes);
          break;
        case r'spec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SnmpCommunicationSpec),
          ) as SnmpCommunicationSpec;
          result.spec = valueDes;
          break;
        case r'queryingFrequencyMs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
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
  ClientAttributesQueryingSnmpCommunicationConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientAttributesQueryingSnmpCommunicationConfigBuilder();
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


