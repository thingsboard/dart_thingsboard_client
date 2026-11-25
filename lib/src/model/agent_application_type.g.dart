// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_application_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentApplicationType _$GENERIC = const AgentApplicationType._('GENERIC');
const AgentApplicationType _$EDGE = const AgentApplicationType._('EDGE');
const AgentApplicationType _$GATEWAY = const AgentApplicationType._('GATEWAY');
const AgentApplicationType _$unknownDefaultOpenApi =
    const AgentApplicationType._('unknownDefaultOpenApi');

AgentApplicationType _$valueOf(String name) {
  switch (name) {
    case 'GENERIC':
      return _$GENERIC;
    case 'EDGE':
      return _$EDGE;
    case 'GATEWAY':
      return _$GATEWAY;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AgentApplicationType> _$values = BuiltSet<AgentApplicationType>(
  const <AgentApplicationType>[
    _$GENERIC,
    _$EDGE,
    _$GATEWAY,
    _$unknownDefaultOpenApi,
  ],
);

class _$AgentApplicationTypeMeta {
  const _$AgentApplicationTypeMeta();
  AgentApplicationType get GENERIC => _$GENERIC;
  AgentApplicationType get EDGE => _$EDGE;
  AgentApplicationType get GATEWAY => _$GATEWAY;
  AgentApplicationType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AgentApplicationType valueOf(String name) => _$valueOf(name);
  BuiltSet<AgentApplicationType> get values => _$values;
}

mixin _$AgentApplicationTypeMixin {
  // ignore: non_constant_identifier_names
  _$AgentApplicationTypeMeta get AgentApplicationType =>
      const _$AgentApplicationTypeMeta();
}

Serializer<AgentApplicationType> _$agentApplicationTypeSerializer =
    _$AgentApplicationTypeSerializer();

class _$AgentApplicationTypeSerializer
    implements PrimitiveSerializer<AgentApplicationType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'GENERIC': 'GENERIC',
    'EDGE': 'EDGE',
    'GATEWAY': 'GATEWAY',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GENERIC': 'GENERIC',
    'EDGE': 'EDGE',
    'GATEWAY': 'GATEWAY',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentApplicationType];
  @override
  final String wireName = 'AgentApplicationType';

  @override
  Object serialize(
    Serializers serializers,
    AgentApplicationType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AgentApplicationType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AgentApplicationType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
