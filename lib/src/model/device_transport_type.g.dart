// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_transport_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeviceTransportType _$DEFAULT = const DeviceTransportType._('DEFAULT');
const DeviceTransportType _$MQTT = const DeviceTransportType._('MQTT');
const DeviceTransportType _$COAP = const DeviceTransportType._('COAP');
const DeviceTransportType _$LWM2M = const DeviceTransportType._('LWM2M');
const DeviceTransportType _$SNMP = const DeviceTransportType._('SNMP');
const DeviceTransportType _$unknownDefaultOpenApi = const DeviceTransportType._(
  'unknownDefaultOpenApi',
);

DeviceTransportType _$valueOf(String name) {
  switch (name) {
    case 'DEFAULT':
      return _$DEFAULT;
    case 'MQTT':
      return _$MQTT;
    case 'COAP':
      return _$COAP;
    case 'LWM2M':
      return _$LWM2M;
    case 'SNMP':
      return _$SNMP;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<DeviceTransportType> _$values = BuiltSet<DeviceTransportType>(
  const <DeviceTransportType>[
    _$DEFAULT,
    _$MQTT,
    _$COAP,
    _$LWM2M,
    _$SNMP,
    _$unknownDefaultOpenApi,
  ],
);

class _$DeviceTransportTypeMeta {
  const _$DeviceTransportTypeMeta();
  DeviceTransportType get DEFAULT => _$DEFAULT;
  DeviceTransportType get MQTT => _$MQTT;
  DeviceTransportType get COAP => _$COAP;
  DeviceTransportType get LWM2M => _$LWM2M;
  DeviceTransportType get SNMP => _$SNMP;
  DeviceTransportType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  DeviceTransportType valueOf(String name) => _$valueOf(name);
  BuiltSet<DeviceTransportType> get values => _$values;
}

mixin _$DeviceTransportTypeMixin {
  // ignore: non_constant_identifier_names
  _$DeviceTransportTypeMeta get DeviceTransportType =>
      const _$DeviceTransportTypeMeta();
}

Serializer<DeviceTransportType> _$deviceTransportTypeSerializer =
    _$DeviceTransportTypeSerializer();

class _$DeviceTransportTypeSerializer
    implements PrimitiveSerializer<DeviceTransportType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DEFAULT': 'DEFAULT',
    'MQTT': 'MQTT',
    'COAP': 'COAP',
    'LWM2M': 'LWM2M',
    'SNMP': 'SNMP',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DEFAULT': 'DEFAULT',
    'MQTT': 'MQTT',
    'COAP': 'COAP',
    'LWM2M': 'LWM2M',
    'SNMP': 'SNMP',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DeviceTransportType];
  @override
  final String wireName = 'DeviceTransportType';

  @override
  Object serialize(
    Serializers serializers,
    DeviceTransportType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeviceTransportType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeviceTransportType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
