// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snmp_communication_spec.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SnmpCommunicationSpec _$TELEMETRY_QUERYING =
    const SnmpCommunicationSpec._('TELEMETRY_QUERYING');
const SnmpCommunicationSpec _$CLIENT_ATTRIBUTES_QUERYING =
    const SnmpCommunicationSpec._('CLIENT_ATTRIBUTES_QUERYING');
const SnmpCommunicationSpec _$SHARED_ATTRIBUTES_SETTING =
    const SnmpCommunicationSpec._('SHARED_ATTRIBUTES_SETTING');
const SnmpCommunicationSpec _$TO_DEVICE_RPC_REQUEST =
    const SnmpCommunicationSpec._('TO_DEVICE_RPC_REQUEST');
const SnmpCommunicationSpec _$TO_SERVER_RPC_REQUEST =
    const SnmpCommunicationSpec._('TO_SERVER_RPC_REQUEST');
const SnmpCommunicationSpec _$unknownDefaultOpenApi =
    const SnmpCommunicationSpec._('unknownDefaultOpenApi');

SnmpCommunicationSpec _$valueOf(String name) {
  switch (name) {
    case 'TELEMETRY_QUERYING':
      return _$TELEMETRY_QUERYING;
    case 'CLIENT_ATTRIBUTES_QUERYING':
      return _$CLIENT_ATTRIBUTES_QUERYING;
    case 'SHARED_ATTRIBUTES_SETTING':
      return _$SHARED_ATTRIBUTES_SETTING;
    case 'TO_DEVICE_RPC_REQUEST':
      return _$TO_DEVICE_RPC_REQUEST;
    case 'TO_SERVER_RPC_REQUEST':
      return _$TO_SERVER_RPC_REQUEST;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SnmpCommunicationSpec> _$values =
    BuiltSet<SnmpCommunicationSpec>(const <SnmpCommunicationSpec>[
      _$TELEMETRY_QUERYING,
      _$CLIENT_ATTRIBUTES_QUERYING,
      _$SHARED_ATTRIBUTES_SETTING,
      _$TO_DEVICE_RPC_REQUEST,
      _$TO_SERVER_RPC_REQUEST,
      _$unknownDefaultOpenApi,
    ]);

class _$SnmpCommunicationSpecMeta {
  const _$SnmpCommunicationSpecMeta();
  SnmpCommunicationSpec get TELEMETRY_QUERYING => _$TELEMETRY_QUERYING;
  SnmpCommunicationSpec get CLIENT_ATTRIBUTES_QUERYING =>
      _$CLIENT_ATTRIBUTES_QUERYING;
  SnmpCommunicationSpec get SHARED_ATTRIBUTES_SETTING =>
      _$SHARED_ATTRIBUTES_SETTING;
  SnmpCommunicationSpec get TO_DEVICE_RPC_REQUEST => _$TO_DEVICE_RPC_REQUEST;
  SnmpCommunicationSpec get TO_SERVER_RPC_REQUEST => _$TO_SERVER_RPC_REQUEST;
  SnmpCommunicationSpec get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SnmpCommunicationSpec valueOf(String name) => _$valueOf(name);
  BuiltSet<SnmpCommunicationSpec> get values => _$values;
}

mixin _$SnmpCommunicationSpecMixin {
  // ignore: non_constant_identifier_names
  _$SnmpCommunicationSpecMeta get SnmpCommunicationSpec =>
      const _$SnmpCommunicationSpecMeta();
}

Serializer<SnmpCommunicationSpec> _$snmpCommunicationSpecSerializer =
    _$SnmpCommunicationSpecSerializer();

class _$SnmpCommunicationSpecSerializer
    implements PrimitiveSerializer<SnmpCommunicationSpec> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TELEMETRY_QUERYING': 'TELEMETRY_QUERYING',
    'CLIENT_ATTRIBUTES_QUERYING': 'CLIENT_ATTRIBUTES_QUERYING',
    'SHARED_ATTRIBUTES_SETTING': 'SHARED_ATTRIBUTES_SETTING',
    'TO_DEVICE_RPC_REQUEST': 'TO_DEVICE_RPC_REQUEST',
    'TO_SERVER_RPC_REQUEST': 'TO_SERVER_RPC_REQUEST',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TELEMETRY_QUERYING': 'TELEMETRY_QUERYING',
    'CLIENT_ATTRIBUTES_QUERYING': 'CLIENT_ATTRIBUTES_QUERYING',
    'SHARED_ATTRIBUTES_SETTING': 'SHARED_ATTRIBUTES_SETTING',
    'TO_DEVICE_RPC_REQUEST': 'TO_DEVICE_RPC_REQUEST',
    'TO_SERVER_RPC_REQUEST': 'TO_SERVER_RPC_REQUEST',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SnmpCommunicationSpec];
  @override
  final String wireName = 'SnmpCommunicationSpec';

  @override
  Object serialize(
    Serializers serializers,
    SnmpCommunicationSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SnmpCommunicationSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SnmpCommunicationSpec.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
