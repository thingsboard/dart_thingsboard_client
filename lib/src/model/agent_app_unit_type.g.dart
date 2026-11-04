// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_unit_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentAppUnitType _$CONTAINER = const AgentAppUnitType._('CONTAINER');
const AgentAppUnitType _$VOLUME = const AgentAppUnitType._('VOLUME');
const AgentAppUnitType _$NETWORK = const AgentAppUnitType._('NETWORK');
const AgentAppUnitType _$unknownDefaultOpenApi = const AgentAppUnitType._(
  'unknownDefaultOpenApi',
);

AgentAppUnitType _$valueOf(String name) {
  switch (name) {
    case 'CONTAINER':
      return _$CONTAINER;
    case 'VOLUME':
      return _$VOLUME;
    case 'NETWORK':
      return _$NETWORK;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AgentAppUnitType> _$values = BuiltSet<AgentAppUnitType>(
  const <AgentAppUnitType>[
    _$CONTAINER,
    _$VOLUME,
    _$NETWORK,
    _$unknownDefaultOpenApi,
  ],
);

class _$AgentAppUnitTypeMeta {
  const _$AgentAppUnitTypeMeta();
  AgentAppUnitType get CONTAINER => _$CONTAINER;
  AgentAppUnitType get VOLUME => _$VOLUME;
  AgentAppUnitType get NETWORK => _$NETWORK;
  AgentAppUnitType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AgentAppUnitType valueOf(String name) => _$valueOf(name);
  BuiltSet<AgentAppUnitType> get values => _$values;
}

mixin _$AgentAppUnitTypeMixin {
  // ignore: non_constant_identifier_names
  _$AgentAppUnitTypeMeta get AgentAppUnitType => const _$AgentAppUnitTypeMeta();
}

Serializer<AgentAppUnitType> _$agentAppUnitTypeSerializer =
    _$AgentAppUnitTypeSerializer();

class _$AgentAppUnitTypeSerializer
    implements PrimitiveSerializer<AgentAppUnitType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CONTAINER': 'CONTAINER',
    'VOLUME': 'VOLUME',
    'NETWORK': 'NETWORK',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CONTAINER': 'CONTAINER',
    'VOLUME': 'VOLUME',
    'NETWORK': 'NETWORK',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentAppUnitType];
  @override
  final String wireName = 'AgentAppUnitType';

  @override
  Object serialize(
    Serializers serializers,
    AgentAppUnitType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AgentAppUnitType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AgentAppUnitType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
