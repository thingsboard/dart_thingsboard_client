// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_event_action_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentAppEventActionType _$INSTALL = const AgentAppEventActionType._(
  'INSTALL',
);
const AgentAppEventActionType _$UPDATE = const AgentAppEventActionType._(
  'UPDATE',
);
const AgentAppEventActionType _$DELETE = const AgentAppEventActionType._(
  'DELETE',
);
const AgentAppEventActionType _$RESTART = const AgentAppEventActionType._(
  'RESTART',
);
const AgentAppEventActionType _$ROLLBACK = const AgentAppEventActionType._(
  'ROLLBACK',
);
const AgentAppEventActionType _$UPGRADE = const AgentAppEventActionType._(
  'UPGRADE',
);
const AgentAppEventActionType _$AGENT_UPGRADE = const AgentAppEventActionType._(
  'AGENT_UPGRADE',
);
const AgentAppEventActionType _$unknownDefaultOpenApi =
    const AgentAppEventActionType._('unknownDefaultOpenApi');

AgentAppEventActionType _$valueOf(String name) {
  switch (name) {
    case 'INSTALL':
      return _$INSTALL;
    case 'UPDATE':
      return _$UPDATE;
    case 'DELETE':
      return _$DELETE;
    case 'RESTART':
      return _$RESTART;
    case 'ROLLBACK':
      return _$ROLLBACK;
    case 'UPGRADE':
      return _$UPGRADE;
    case 'AGENT_UPGRADE':
      return _$AGENT_UPGRADE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AgentAppEventActionType> _$values =
    BuiltSet<AgentAppEventActionType>(const <AgentAppEventActionType>[
      _$INSTALL,
      _$UPDATE,
      _$DELETE,
      _$RESTART,
      _$ROLLBACK,
      _$UPGRADE,
      _$AGENT_UPGRADE,
      _$unknownDefaultOpenApi,
    ]);

class _$AgentAppEventActionTypeMeta {
  const _$AgentAppEventActionTypeMeta();
  AgentAppEventActionType get INSTALL => _$INSTALL;
  AgentAppEventActionType get UPDATE => _$UPDATE;
  AgentAppEventActionType get DELETE => _$DELETE;
  AgentAppEventActionType get RESTART => _$RESTART;
  AgentAppEventActionType get ROLLBACK => _$ROLLBACK;
  AgentAppEventActionType get UPGRADE => _$UPGRADE;
  AgentAppEventActionType get AGENT_UPGRADE => _$AGENT_UPGRADE;
  AgentAppEventActionType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AgentAppEventActionType valueOf(String name) => _$valueOf(name);
  BuiltSet<AgentAppEventActionType> get values => _$values;
}

mixin _$AgentAppEventActionTypeMixin {
  // ignore: non_constant_identifier_names
  _$AgentAppEventActionTypeMeta get AgentAppEventActionType =>
      const _$AgentAppEventActionTypeMeta();
}

Serializer<AgentAppEventActionType> _$agentAppEventActionTypeSerializer =
    _$AgentAppEventActionTypeSerializer();

class _$AgentAppEventActionTypeSerializer
    implements PrimitiveSerializer<AgentAppEventActionType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'INSTALL': 'INSTALL',
    'UPDATE': 'UPDATE',
    'DELETE': 'DELETE',
    'RESTART': 'RESTART',
    'ROLLBACK': 'ROLLBACK',
    'UPGRADE': 'UPGRADE',
    'AGENT_UPGRADE': 'AGENT_UPGRADE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'INSTALL': 'INSTALL',
    'UPDATE': 'UPDATE',
    'DELETE': 'DELETE',
    'RESTART': 'RESTART',
    'ROLLBACK': 'ROLLBACK',
    'UPGRADE': 'UPGRADE',
    'AGENT_UPGRADE': 'AGENT_UPGRADE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentAppEventActionType];
  @override
  final String wireName = 'AgentAppEventActionType';

  @override
  Object serialize(
    Serializers serializers,
    AgentAppEventActionType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AgentAppEventActionType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AgentAppEventActionType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
