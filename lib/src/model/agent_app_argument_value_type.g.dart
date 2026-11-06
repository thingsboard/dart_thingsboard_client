// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_argument_value_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentAppArgumentValueType _$ATTRIBUTE = const AgentAppArgumentValueType._(
  'ATTRIBUTE',
);
const AgentAppArgumentValueType _$LATEST_TELEMETRY =
    const AgentAppArgumentValueType._('LATEST_TELEMETRY');
const AgentAppArgumentValueType _$unknownDefaultOpenApi =
    const AgentAppArgumentValueType._('unknownDefaultOpenApi');

AgentAppArgumentValueType _$valueOf(String name) {
  switch (name) {
    case 'ATTRIBUTE':
      return _$ATTRIBUTE;
    case 'LATEST_TELEMETRY':
      return _$LATEST_TELEMETRY;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AgentAppArgumentValueType> _$values =
    BuiltSet<AgentAppArgumentValueType>(const <AgentAppArgumentValueType>[
      _$ATTRIBUTE,
      _$LATEST_TELEMETRY,
      _$unknownDefaultOpenApi,
    ]);

class _$AgentAppArgumentValueTypeMeta {
  const _$AgentAppArgumentValueTypeMeta();
  AgentAppArgumentValueType get ATTRIBUTE => _$ATTRIBUTE;
  AgentAppArgumentValueType get LATEST_TELEMETRY => _$LATEST_TELEMETRY;
  AgentAppArgumentValueType get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  AgentAppArgumentValueType valueOf(String name) => _$valueOf(name);
  BuiltSet<AgentAppArgumentValueType> get values => _$values;
}

mixin _$AgentAppArgumentValueTypeMixin {
  // ignore: non_constant_identifier_names
  _$AgentAppArgumentValueTypeMeta get AgentAppArgumentValueType =>
      const _$AgentAppArgumentValueTypeMeta();
}

Serializer<AgentAppArgumentValueType> _$agentAppArgumentValueTypeSerializer =
    _$AgentAppArgumentValueTypeSerializer();

class _$AgentAppArgumentValueTypeSerializer
    implements PrimitiveSerializer<AgentAppArgumentValueType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ATTRIBUTE': 'ATTRIBUTE',
    'LATEST_TELEMETRY': 'LATEST_TELEMETRY',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ATTRIBUTE': 'ATTRIBUTE',
    'LATEST_TELEMETRY': 'LATEST_TELEMETRY',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentAppArgumentValueType];
  @override
  final String wireName = 'AgentAppArgumentValueType';

  @override
  Object serialize(
    Serializers serializers,
    AgentAppArgumentValueType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AgentAppArgumentValueType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AgentAppArgumentValueType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
