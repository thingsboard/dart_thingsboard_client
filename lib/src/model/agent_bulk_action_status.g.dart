// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_bulk_action_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentBulkActionStatus _$QUEUED = const AgentBulkActionStatus._('QUEUED');
const AgentBulkActionStatus _$IN_PROGRESS = const AgentBulkActionStatus._(
  'IN_PROGRESS',
);
const AgentBulkActionStatus _$STARTED = const AgentBulkActionStatus._(
  'STARTED',
);
const AgentBulkActionStatus _$START_FAILED = const AgentBulkActionStatus._(
  'START_FAILED',
);
const AgentBulkActionStatus _$unknownDefaultOpenApi =
    const AgentBulkActionStatus._('unknownDefaultOpenApi');

AgentBulkActionStatus _$valueOf(String name) {
  switch (name) {
    case 'QUEUED':
      return _$QUEUED;
    case 'IN_PROGRESS':
      return _$IN_PROGRESS;
    case 'STARTED':
      return _$STARTED;
    case 'START_FAILED':
      return _$START_FAILED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AgentBulkActionStatus> _$values =
    BuiltSet<AgentBulkActionStatus>(const <AgentBulkActionStatus>[
      _$QUEUED,
      _$IN_PROGRESS,
      _$STARTED,
      _$START_FAILED,
      _$unknownDefaultOpenApi,
    ]);

class _$AgentBulkActionStatusMeta {
  const _$AgentBulkActionStatusMeta();
  AgentBulkActionStatus get QUEUED => _$QUEUED;
  AgentBulkActionStatus get IN_PROGRESS => _$IN_PROGRESS;
  AgentBulkActionStatus get STARTED => _$STARTED;
  AgentBulkActionStatus get START_FAILED => _$START_FAILED;
  AgentBulkActionStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AgentBulkActionStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<AgentBulkActionStatus> get values => _$values;
}

mixin _$AgentBulkActionStatusMixin {
  // ignore: non_constant_identifier_names
  _$AgentBulkActionStatusMeta get AgentBulkActionStatus =>
      const _$AgentBulkActionStatusMeta();
}

Serializer<AgentBulkActionStatus> _$agentBulkActionStatusSerializer =
    _$AgentBulkActionStatusSerializer();

class _$AgentBulkActionStatusSerializer
    implements PrimitiveSerializer<AgentBulkActionStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'QUEUED': 'QUEUED',
    'IN_PROGRESS': 'IN_PROGRESS',
    'STARTED': 'STARTED',
    'START_FAILED': 'START_FAILED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'QUEUED': 'QUEUED',
    'IN_PROGRESS': 'IN_PROGRESS',
    'STARTED': 'STARTED',
    'START_FAILED': 'START_FAILED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentBulkActionStatus];
  @override
  final String wireName = 'AgentBulkActionStatus';

  @override
  Object serialize(
    Serializers serializers,
    AgentBulkActionStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AgentBulkActionStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AgentBulkActionStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
