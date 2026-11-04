// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/shared_attributes_setting_snmp_communication_config.dart';
import 'package:thingsboard_client/src/model/telemetry_querying_snmp_communication_config.dart';
import 'package:thingsboard_client/src/model/client_attributes_querying_snmp_communication_config.dart';
import 'package:thingsboard_client/src/model/snmp_communication_spec.dart';
import 'package:thingsboard_client/src/model/to_server_rpc_request_snmp_communication_config.dart';
import 'package:thingsboard_client/src/model/to_device_rpc_request_snmp_communication_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'snmp_communication_config.g.dart';

/// SNMP communication configuration
///
/// Properties:
/// * [spec] - Specification of the SNMP communication
@BuiltValue(instantiable: false)
abstract class SnmpCommunicationConfig {
  /// Specification of the SNMP communication
  @BuiltValueField(wireName: r'spec')
  SnmpCommunicationSpec get spec;
  // enum specEnum {  TELEMETRY_QUERYING,  CLIENT_ATTRIBUTES_QUERYING,  SHARED_ATTRIBUTES_SETTING,  TO_DEVICE_RPC_REQUEST,  TO_SERVER_RPC_REQUEST,  };

  static const String discriminatorFieldName = r'spec';

  static const Map<String, Type> discriminatorMapping = {
    r'CLIENT_ATTRIBUTES_QUERYING':
        ClientAttributesQueryingSnmpCommunicationConfig,
    r'SHARED_ATTRIBUTES_SETTING':
        SharedAttributesSettingSnmpCommunicationConfig,
    r'TELEMETRY_QUERYING': TelemetryQueryingSnmpCommunicationConfig,
    r'TO_DEVICE_RPC_REQUEST': ToDeviceRpcRequestSnmpCommunicationConfig,
    r'TO_SERVER_RPC_REQUEST': ToServerRpcRequestSnmpCommunicationConfig,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<SnmpCommunicationConfig> get serializer =>
      _$SnmpCommunicationConfigSerializer();
}

extension SnmpCommunicationConfigDiscriminatorExt on SnmpCommunicationConfig {
  String? get discriminatorValue {
    if (this is ClientAttributesQueryingSnmpCommunicationConfig) {
      return r'CLIENT_ATTRIBUTES_QUERYING';
    }
    if (this is SharedAttributesSettingSnmpCommunicationConfig) {
      return r'SHARED_ATTRIBUTES_SETTING';
    }
    if (this is TelemetryQueryingSnmpCommunicationConfig) {
      return r'TELEMETRY_QUERYING';
    }
    if (this is ToDeviceRpcRequestSnmpCommunicationConfig) {
      return r'TO_DEVICE_RPC_REQUEST';
    }
    if (this is ToServerRpcRequestSnmpCommunicationConfig) {
      return r'TO_SERVER_RPC_REQUEST';
    }
    return null;
  }
}

extension SnmpCommunicationConfigBuilderDiscriminatorExt
    on SnmpCommunicationConfigBuilder {
  String? get discriminatorValue {
    if (this is ClientAttributesQueryingSnmpCommunicationConfigBuilder) {
      return r'CLIENT_ATTRIBUTES_QUERYING';
    }
    if (this is SharedAttributesSettingSnmpCommunicationConfigBuilder) {
      return r'SHARED_ATTRIBUTES_SETTING';
    }
    if (this is TelemetryQueryingSnmpCommunicationConfigBuilder) {
      return r'TELEMETRY_QUERYING';
    }
    if (this is ToDeviceRpcRequestSnmpCommunicationConfigBuilder) {
      return r'TO_DEVICE_RPC_REQUEST';
    }
    if (this is ToServerRpcRequestSnmpCommunicationConfigBuilder) {
      return r'TO_SERVER_RPC_REQUEST';
    }
    return null;
  }
}

class _$SnmpCommunicationConfigSerializer
    implements PrimitiveSerializer<SnmpCommunicationConfig> {
  @override
  final Iterable<Type> types = const [SnmpCommunicationConfig];

  @override
  final String wireName = r'SnmpCommunicationConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SnmpCommunicationConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'spec';
    yield serializers.serialize(
      object.spec,
      specifiedType: const FullType(SnmpCommunicationSpec),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SnmpCommunicationConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is ClientAttributesQueryingSnmpCommunicationConfig) {
      return serializers.serialize(
        object,
        specifiedType: FullType(
          ClientAttributesQueryingSnmpCommunicationConfig,
        ),
      )!;
    }
    if (object is SharedAttributesSettingSnmpCommunicationConfig) {
      return serializers.serialize(
        object,
        specifiedType: FullType(SharedAttributesSettingSnmpCommunicationConfig),
      )!;
    }
    if (object is TelemetryQueryingSnmpCommunicationConfig) {
      return serializers.serialize(
        object,
        specifiedType: FullType(TelemetryQueryingSnmpCommunicationConfig),
      )!;
    }
    if (object is ToDeviceRpcRequestSnmpCommunicationConfig) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ToDeviceRpcRequestSnmpCommunicationConfig),
      )!;
    }
    if (object is ToServerRpcRequestSnmpCommunicationConfig) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ToServerRpcRequestSnmpCommunicationConfig),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  SnmpCommunicationConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(SnmpCommunicationConfig.discriminatorFieldName) +
        1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'CLIENT_ATTRIBUTES_QUERYING':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                ClientAttributesQueryingSnmpCommunicationConfig,
              ),
            )
            as ClientAttributesQueryingSnmpCommunicationConfig;
      case r'SHARED_ATTRIBUTES_SETTING':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                SharedAttributesSettingSnmpCommunicationConfig,
              ),
            )
            as SharedAttributesSettingSnmpCommunicationConfig;
      case r'TELEMETRY_QUERYING':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(TelemetryQueryingSnmpCommunicationConfig),
            )
            as TelemetryQueryingSnmpCommunicationConfig;
      case r'TO_DEVICE_RPC_REQUEST':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                ToDeviceRpcRequestSnmpCommunicationConfig,
              ),
            )
            as ToDeviceRpcRequestSnmpCommunicationConfig;
      case r'TO_SERVER_RPC_REQUEST':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                ToServerRpcRequestSnmpCommunicationConfig,
              ),
            )
            as ToServerRpcRequestSnmpCommunicationConfig;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($SnmpCommunicationConfig),
            )
            as $SnmpCommunicationConfig;
    }
  }
}

/// a concrete implementation of [SnmpCommunicationConfig], since [SnmpCommunicationConfig] is not instantiable
@BuiltValue(instantiable: true)
abstract class $SnmpCommunicationConfig
    implements
        SnmpCommunicationConfig,
        Built<$SnmpCommunicationConfig, $SnmpCommunicationConfigBuilder> {
  $SnmpCommunicationConfig._();

  factory $SnmpCommunicationConfig([
    void Function($SnmpCommunicationConfigBuilder)? updates,
  ]) = _$$SnmpCommunicationConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($SnmpCommunicationConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$SnmpCommunicationConfig> get serializer =>
      _$$SnmpCommunicationConfigSerializer();
}

class _$$SnmpCommunicationConfigSerializer
    implements PrimitiveSerializer<$SnmpCommunicationConfig> {
  @override
  final Iterable<Type> types = const [
    $SnmpCommunicationConfig,
    _$$SnmpCommunicationConfig,
  ];

  @override
  final String wireName = r'$SnmpCommunicationConfig';

  @override
  Object serialize(
    Serializers serializers,
    $SnmpCommunicationConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(SnmpCommunicationConfig),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SnmpCommunicationConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  $SnmpCommunicationConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $SnmpCommunicationConfigBuilder();
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
