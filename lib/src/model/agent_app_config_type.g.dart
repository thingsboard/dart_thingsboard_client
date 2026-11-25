// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_config_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentAppConfigType _$DOCKER_COMPOSE = const AgentAppConfigType._(
  'DOCKER_COMPOSE',
);
const AgentAppConfigType _$unknownDefaultOpenApi = const AgentAppConfigType._(
  'unknownDefaultOpenApi',
);

AgentAppConfigType _$valueOf(String name) {
  switch (name) {
    case 'DOCKER_COMPOSE':
      return _$DOCKER_COMPOSE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AgentAppConfigType> _$values = BuiltSet<AgentAppConfigType>(
  const <AgentAppConfigType>[_$DOCKER_COMPOSE, _$unknownDefaultOpenApi],
);

class _$AgentAppConfigTypeMeta {
  const _$AgentAppConfigTypeMeta();
  AgentAppConfigType get DOCKER_COMPOSE => _$DOCKER_COMPOSE;
  AgentAppConfigType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AgentAppConfigType valueOf(String name) => _$valueOf(name);
  BuiltSet<AgentAppConfigType> get values => _$values;
}

mixin _$AgentAppConfigTypeMixin {
  // ignore: non_constant_identifier_names
  _$AgentAppConfigTypeMeta get AgentAppConfigType =>
      const _$AgentAppConfigTypeMeta();
}

Serializer<AgentAppConfigType> _$agentAppConfigTypeSerializer =
    _$AgentAppConfigTypeSerializer();

class _$AgentAppConfigTypeSerializer
    implements PrimitiveSerializer<AgentAppConfigType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DOCKER_COMPOSE': 'DOCKER_COMPOSE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DOCKER_COMPOSE': 'DOCKER_COMPOSE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentAppConfigType];
  @override
  final String wireName = 'AgentAppConfigType';

  @override
  Object serialize(
    Serializers serializers,
    AgentAppConfigType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AgentAppConfigType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AgentAppConfigType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
