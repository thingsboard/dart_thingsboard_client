// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_step_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentAppStepType _$COMPOSE_TEMPLATE = const AgentAppStepType._(
  'COMPOSE_TEMPLATE',
);
const AgentAppStepType _$COMPOSE = const AgentAppStepType._('COMPOSE');
const AgentAppStepType _$COMPOSE_START = const AgentAppStepType._(
  'COMPOSE_START',
);
const AgentAppStepType _$COMPOSE_DOWN = const AgentAppStepType._(
  'COMPOSE_DOWN',
);
const AgentAppStepType _$ROLLBACK = const AgentAppStepType._('ROLLBACK');
const AgentAppStepType _$BACKUP_VOLUME = const AgentAppStepType._(
  'BACKUP_VOLUME',
);
const AgentAppStepType _$BACKUP_VOLUME_REMOVE = const AgentAppStepType._(
  'BACKUP_VOLUME_REMOVE',
);
const AgentAppStepType _$COMPOSE_RESTART = const AgentAppStepType._(
  'COMPOSE_RESTART',
);
const AgentAppStepType _$RUN_JOB = const AgentAppStepType._('RUN_JOB');
const AgentAppStepType _$AGENT_PREPARE = const AgentAppStepType._(
  'AGENT_PREPARE',
);
const AgentAppStepType _$AGENT_FINALIZE = const AgentAppStepType._(
  'AGENT_FINALIZE',
);
const AgentAppStepType _$unknownDefaultOpenApi = const AgentAppStepType._(
  'unknownDefaultOpenApi',
);

AgentAppStepType _$valueOf(String name) {
  switch (name) {
    case 'COMPOSE_TEMPLATE':
      return _$COMPOSE_TEMPLATE;
    case 'COMPOSE':
      return _$COMPOSE;
    case 'COMPOSE_START':
      return _$COMPOSE_START;
    case 'COMPOSE_DOWN':
      return _$COMPOSE_DOWN;
    case 'ROLLBACK':
      return _$ROLLBACK;
    case 'BACKUP_VOLUME':
      return _$BACKUP_VOLUME;
    case 'BACKUP_VOLUME_REMOVE':
      return _$BACKUP_VOLUME_REMOVE;
    case 'COMPOSE_RESTART':
      return _$COMPOSE_RESTART;
    case 'RUN_JOB':
      return _$RUN_JOB;
    case 'AGENT_PREPARE':
      return _$AGENT_PREPARE;
    case 'AGENT_FINALIZE':
      return _$AGENT_FINALIZE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AgentAppStepType> _$values =
    BuiltSet<AgentAppStepType>(const <AgentAppStepType>[
      _$COMPOSE_TEMPLATE,
      _$COMPOSE,
      _$COMPOSE_START,
      _$COMPOSE_DOWN,
      _$ROLLBACK,
      _$BACKUP_VOLUME,
      _$BACKUP_VOLUME_REMOVE,
      _$COMPOSE_RESTART,
      _$RUN_JOB,
      _$AGENT_PREPARE,
      _$AGENT_FINALIZE,
      _$unknownDefaultOpenApi,
    ]);

class _$AgentAppStepTypeMeta {
  const _$AgentAppStepTypeMeta();
  AgentAppStepType get COMPOSE_TEMPLATE => _$COMPOSE_TEMPLATE;
  AgentAppStepType get COMPOSE => _$COMPOSE;
  AgentAppStepType get COMPOSE_START => _$COMPOSE_START;
  AgentAppStepType get COMPOSE_DOWN => _$COMPOSE_DOWN;
  AgentAppStepType get ROLLBACK => _$ROLLBACK;
  AgentAppStepType get BACKUP_VOLUME => _$BACKUP_VOLUME;
  AgentAppStepType get BACKUP_VOLUME_REMOVE => _$BACKUP_VOLUME_REMOVE;
  AgentAppStepType get COMPOSE_RESTART => _$COMPOSE_RESTART;
  AgentAppStepType get RUN_JOB => _$RUN_JOB;
  AgentAppStepType get AGENT_PREPARE => _$AGENT_PREPARE;
  AgentAppStepType get AGENT_FINALIZE => _$AGENT_FINALIZE;
  AgentAppStepType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AgentAppStepType valueOf(String name) => _$valueOf(name);
  BuiltSet<AgentAppStepType> get values => _$values;
}

mixin _$AgentAppStepTypeMixin {
  // ignore: non_constant_identifier_names
  _$AgentAppStepTypeMeta get AgentAppStepType => const _$AgentAppStepTypeMeta();
}

Serializer<AgentAppStepType> _$agentAppStepTypeSerializer =
    _$AgentAppStepTypeSerializer();

class _$AgentAppStepTypeSerializer
    implements PrimitiveSerializer<AgentAppStepType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'COMPOSE_TEMPLATE': 'COMPOSE_TEMPLATE',
    'COMPOSE': 'COMPOSE',
    'COMPOSE_START': 'COMPOSE_START',
    'COMPOSE_DOWN': 'COMPOSE_DOWN',
    'ROLLBACK': 'ROLLBACK',
    'BACKUP_VOLUME': 'BACKUP_VOLUME',
    'BACKUP_VOLUME_REMOVE': 'BACKUP_VOLUME_REMOVE',
    'COMPOSE_RESTART': 'COMPOSE_RESTART',
    'RUN_JOB': 'RUN_JOB',
    'AGENT_PREPARE': 'AGENT_PREPARE',
    'AGENT_FINALIZE': 'AGENT_FINALIZE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'COMPOSE_TEMPLATE': 'COMPOSE_TEMPLATE',
    'COMPOSE': 'COMPOSE',
    'COMPOSE_START': 'COMPOSE_START',
    'COMPOSE_DOWN': 'COMPOSE_DOWN',
    'ROLLBACK': 'ROLLBACK',
    'BACKUP_VOLUME': 'BACKUP_VOLUME',
    'BACKUP_VOLUME_REMOVE': 'BACKUP_VOLUME_REMOVE',
    'COMPOSE_RESTART': 'COMPOSE_RESTART',
    'RUN_JOB': 'RUN_JOB',
    'AGENT_PREPARE': 'AGENT_PREPARE',
    'AGENT_FINALIZE': 'AGENT_FINALIZE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentAppStepType];
  @override
  final String wireName = 'AgentAppStepType';

  @override
  Object serialize(
    Serializers serializers,
    AgentAppStepType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AgentAppStepType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AgentAppStepType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
