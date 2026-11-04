// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_argument_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentAppArgumentSource _$AGENT = const AgentAppArgumentSource._('AGENT');
const AgentAppArgumentSource _$OWNER = const AgentAppArgumentSource._('OWNER');
const AgentAppArgumentSource _$RELATED_ENTITY = const AgentAppArgumentSource._(
  'RELATED_ENTITY',
);
const AgentAppArgumentSource _$TENANT = const AgentAppArgumentSource._(
  'TENANT',
);
const AgentAppArgumentSource _$DEVICE = const AgentAppArgumentSource._(
  'DEVICE',
);
const AgentAppArgumentSource _$ASSET = const AgentAppArgumentSource._('ASSET');
const AgentAppArgumentSource _$CUSTOMER = const AgentAppArgumentSource._(
  'CUSTOMER',
);
const AgentAppArgumentSource _$EDGE = const AgentAppArgumentSource._('EDGE');
const AgentAppArgumentSource _$unknownDefaultOpenApi =
    const AgentAppArgumentSource._('unknownDefaultOpenApi');

AgentAppArgumentSource _$valueOf(String name) {
  switch (name) {
    case 'AGENT':
      return _$AGENT;
    case 'OWNER':
      return _$OWNER;
    case 'RELATED_ENTITY':
      return _$RELATED_ENTITY;
    case 'TENANT':
      return _$TENANT;
    case 'DEVICE':
      return _$DEVICE;
    case 'ASSET':
      return _$ASSET;
    case 'CUSTOMER':
      return _$CUSTOMER;
    case 'EDGE':
      return _$EDGE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AgentAppArgumentSource> _$values =
    BuiltSet<AgentAppArgumentSource>(const <AgentAppArgumentSource>[
      _$AGENT,
      _$OWNER,
      _$RELATED_ENTITY,
      _$TENANT,
      _$DEVICE,
      _$ASSET,
      _$CUSTOMER,
      _$EDGE,
      _$unknownDefaultOpenApi,
    ]);

class _$AgentAppArgumentSourceMeta {
  const _$AgentAppArgumentSourceMeta();
  AgentAppArgumentSource get AGENT => _$AGENT;
  AgentAppArgumentSource get OWNER => _$OWNER;
  AgentAppArgumentSource get RELATED_ENTITY => _$RELATED_ENTITY;
  AgentAppArgumentSource get TENANT => _$TENANT;
  AgentAppArgumentSource get DEVICE => _$DEVICE;
  AgentAppArgumentSource get ASSET => _$ASSET;
  AgentAppArgumentSource get CUSTOMER => _$CUSTOMER;
  AgentAppArgumentSource get EDGE => _$EDGE;
  AgentAppArgumentSource get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AgentAppArgumentSource valueOf(String name) => _$valueOf(name);
  BuiltSet<AgentAppArgumentSource> get values => _$values;
}

mixin _$AgentAppArgumentSourceMixin {
  // ignore: non_constant_identifier_names
  _$AgentAppArgumentSourceMeta get AgentAppArgumentSource =>
      const _$AgentAppArgumentSourceMeta();
}

Serializer<AgentAppArgumentSource> _$agentAppArgumentSourceSerializer =
    _$AgentAppArgumentSourceSerializer();

class _$AgentAppArgumentSourceSerializer
    implements PrimitiveSerializer<AgentAppArgumentSource> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'AGENT': 'AGENT',
    'OWNER': 'OWNER',
    'RELATED_ENTITY': 'RELATED_ENTITY',
    'TENANT': 'TENANT',
    'DEVICE': 'DEVICE',
    'ASSET': 'ASSET',
    'CUSTOMER': 'CUSTOMER',
    'EDGE': 'EDGE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'AGENT': 'AGENT',
    'OWNER': 'OWNER',
    'RELATED_ENTITY': 'RELATED_ENTITY',
    'TENANT': 'TENANT',
    'DEVICE': 'DEVICE',
    'ASSET': 'ASSET',
    'CUSTOMER': 'CUSTOMER',
    'EDGE': 'EDGE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentAppArgumentSource];
  @override
  final String wireName = 'AgentAppArgumentSource';

  @override
  Object serialize(
    Serializers serializers,
    AgentAppArgumentSource object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AgentAppArgumentSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AgentAppArgumentSource.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
