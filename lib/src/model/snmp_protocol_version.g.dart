// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snmp_protocol_version.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SnmpProtocolVersion _$V1 = const SnmpProtocolVersion._('V1');
const SnmpProtocolVersion _$V2C = const SnmpProtocolVersion._('V2C');
const SnmpProtocolVersion _$V3 = const SnmpProtocolVersion._('V3');
const SnmpProtocolVersion _$unknownDefaultOpenApi = const SnmpProtocolVersion._(
  'unknownDefaultOpenApi',
);

SnmpProtocolVersion _$valueOf(String name) {
  switch (name) {
    case 'V1':
      return _$V1;
    case 'V2C':
      return _$V2C;
    case 'V3':
      return _$V3;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SnmpProtocolVersion> _$values = BuiltSet<SnmpProtocolVersion>(
  const <SnmpProtocolVersion>[_$V1, _$V2C, _$V3, _$unknownDefaultOpenApi],
);

class _$SnmpProtocolVersionMeta {
  const _$SnmpProtocolVersionMeta();
  SnmpProtocolVersion get V1 => _$V1;
  SnmpProtocolVersion get V2C => _$V2C;
  SnmpProtocolVersion get V3 => _$V3;
  SnmpProtocolVersion get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SnmpProtocolVersion valueOf(String name) => _$valueOf(name);
  BuiltSet<SnmpProtocolVersion> get values => _$values;
}

mixin _$SnmpProtocolVersionMixin {
  // ignore: non_constant_identifier_names
  _$SnmpProtocolVersionMeta get SnmpProtocolVersion =>
      const _$SnmpProtocolVersionMeta();
}

Serializer<SnmpProtocolVersion> _$snmpProtocolVersionSerializer =
    _$SnmpProtocolVersionSerializer();

class _$SnmpProtocolVersionSerializer
    implements PrimitiveSerializer<SnmpProtocolVersion> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'V1': 'V1',
    'V2C': 'V2C',
    'V3': 'V3',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'V1': 'V1',
    'V2C': 'V2C',
    'V3': 'V3',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SnmpProtocolVersion];
  @override
  final String wireName = 'SnmpProtocolVersion';

  @override
  Object serialize(
    Serializers serializers,
    SnmpProtocolVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SnmpProtocolVersion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SnmpProtocolVersion.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
