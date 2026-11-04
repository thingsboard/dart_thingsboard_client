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

part 'to_device_rpc_request_snmp_communication_config.g.dart';

/// ToDeviceRpcRequestSnmpCommunicationConfig
///
/// Properties:
/// * [spec] - Specification of the SNMP communication
/// * [mappings]
@BuiltValue()
abstract class ToDeviceRpcRequestSnmpCommunicationConfig
    implements
        SnmpCommunicationConfig,
        Built<
          ToDeviceRpcRequestSnmpCommunicationConfig,
          ToDeviceRpcRequestSnmpCommunicationConfigBuilder
        > {
  @BuiltValueField(wireName: r'mappings')
  BuiltList<SnmpMapping>? get mappings;

  ToDeviceRpcRequestSnmpCommunicationConfig._();

  factory ToDeviceRpcRequestSnmpCommunicationConfig([
    void updates(ToDeviceRpcRequestSnmpCommunicationConfigBuilder b),
  ]) = _$ToDeviceRpcRequestSnmpCommunicationConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ToDeviceRpcRequestSnmpCommunicationConfigBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ToDeviceRpcRequestSnmpCommunicationConfig> get serializer =>
      _$ToDeviceRpcRequestSnmpCommunicationConfigSerializer();
}

class _$ToDeviceRpcRequestSnmpCommunicationConfigSerializer
    implements PrimitiveSerializer<ToDeviceRpcRequestSnmpCommunicationConfig> {
  @override
  final Iterable<Type> types = const [
    ToDeviceRpcRequestSnmpCommunicationConfig,
    _$ToDeviceRpcRequestSnmpCommunicationConfig,
  ];

  @override
  final String wireName = r'ToDeviceRpcRequestSnmpCommunicationConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ToDeviceRpcRequestSnmpCommunicationConfig object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ToDeviceRpcRequestSnmpCommunicationConfig object, {
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
    required ToDeviceRpcRequestSnmpCommunicationConfigBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ToDeviceRpcRequestSnmpCommunicationConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ToDeviceRpcRequestSnmpCommunicationConfigBuilder();
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
