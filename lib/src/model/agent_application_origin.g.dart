// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_application_origin.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentApplicationOrigin _$INSTALLED = const AgentApplicationOrigin._(
  'INSTALLED',
);
const AgentApplicationOrigin _$DISCOVERED = const AgentApplicationOrigin._(
  'DISCOVERED',
);
const AgentApplicationOrigin _$AUTO_PROVISIONED =
    const AgentApplicationOrigin._('AUTO_PROVISIONED');
const AgentApplicationOrigin _$unknownDefaultOpenApi =
    const AgentApplicationOrigin._('unknownDefaultOpenApi');

AgentApplicationOrigin _$valueOf(String name) {
  switch (name) {
    case 'INSTALLED':
      return _$INSTALLED;
    case 'DISCOVERED':
      return _$DISCOVERED;
    case 'AUTO_PROVISIONED':
      return _$AUTO_PROVISIONED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AgentApplicationOrigin> _$values =
    BuiltSet<AgentApplicationOrigin>(const <AgentApplicationOrigin>[
      _$INSTALLED,
      _$DISCOVERED,
      _$AUTO_PROVISIONED,
      _$unknownDefaultOpenApi,
    ]);

class _$AgentApplicationOriginMeta {
  const _$AgentApplicationOriginMeta();
  AgentApplicationOrigin get INSTALLED => _$INSTALLED;
  AgentApplicationOrigin get DISCOVERED => _$DISCOVERED;
  AgentApplicationOrigin get AUTO_PROVISIONED => _$AUTO_PROVISIONED;
  AgentApplicationOrigin get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AgentApplicationOrigin valueOf(String name) => _$valueOf(name);
  BuiltSet<AgentApplicationOrigin> get values => _$values;
}

mixin _$AgentApplicationOriginMixin {
  // ignore: non_constant_identifier_names
  _$AgentApplicationOriginMeta get AgentApplicationOrigin =>
      const _$AgentApplicationOriginMeta();
}

Serializer<AgentApplicationOrigin> _$agentApplicationOriginSerializer =
    _$AgentApplicationOriginSerializer();

class _$AgentApplicationOriginSerializer
    implements PrimitiveSerializer<AgentApplicationOrigin> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'INSTALLED': 'INSTALLED',
    'DISCOVERED': 'DISCOVERED',
    'AUTO_PROVISIONED': 'AUTO_PROVISIONED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'INSTALLED': 'INSTALLED',
    'DISCOVERED': 'DISCOVERED',
    'AUTO_PROVISIONED': 'AUTO_PROVISIONED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentApplicationOrigin];
  @override
  final String wireName = 'AgentApplicationOrigin';

  @override
  Object serialize(
    Serializers serializers,
    AgentApplicationOrigin object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AgentApplicationOrigin deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AgentApplicationOrigin.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
