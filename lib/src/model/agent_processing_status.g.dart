// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_processing_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentProcessingStatus _$PENDING = const AgentProcessingStatus._(
  'PENDING',
);
const AgentProcessingStatus _$QUEUED = const AgentProcessingStatus._('QUEUED');
const AgentProcessingStatus _$PROCESSING = const AgentProcessingStatus._(
  'PROCESSING',
);
const AgentProcessingStatus _$FINISHED = const AgentProcessingStatus._(
  'FINISHED',
);
const AgentProcessingStatus _$ERROR = const AgentProcessingStatus._('ERROR');
const AgentProcessingStatus _$START_FAILED = const AgentProcessingStatus._(
  'START_FAILED',
);
const AgentProcessingStatus _$unknownDefaultOpenApi =
    const AgentProcessingStatus._('unknownDefaultOpenApi');

AgentProcessingStatus _$valueOf(String name) {
  switch (name) {
    case 'PENDING':
      return _$PENDING;
    case 'QUEUED':
      return _$QUEUED;
    case 'PROCESSING':
      return _$PROCESSING;
    case 'FINISHED':
      return _$FINISHED;
    case 'ERROR':
      return _$ERROR;
    case 'START_FAILED':
      return _$START_FAILED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AgentProcessingStatus> _$values =
    BuiltSet<AgentProcessingStatus>(const <AgentProcessingStatus>[
      _$PENDING,
      _$QUEUED,
      _$PROCESSING,
      _$FINISHED,
      _$ERROR,
      _$START_FAILED,
      _$unknownDefaultOpenApi,
    ]);

class _$AgentProcessingStatusMeta {
  const _$AgentProcessingStatusMeta();
  AgentProcessingStatus get PENDING => _$PENDING;
  AgentProcessingStatus get QUEUED => _$QUEUED;
  AgentProcessingStatus get PROCESSING => _$PROCESSING;
  AgentProcessingStatus get FINISHED => _$FINISHED;
  AgentProcessingStatus get ERROR => _$ERROR;
  AgentProcessingStatus get START_FAILED => _$START_FAILED;
  AgentProcessingStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AgentProcessingStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<AgentProcessingStatus> get values => _$values;
}

mixin _$AgentProcessingStatusMixin {
  // ignore: non_constant_identifier_names
  _$AgentProcessingStatusMeta get AgentProcessingStatus =>
      const _$AgentProcessingStatusMeta();
}

Serializer<AgentProcessingStatus> _$agentProcessingStatusSerializer =
    _$AgentProcessingStatusSerializer();

class _$AgentProcessingStatusSerializer
    implements PrimitiveSerializer<AgentProcessingStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PENDING': 'PENDING',
    'QUEUED': 'QUEUED',
    'PROCESSING': 'PROCESSING',
    'FINISHED': 'FINISHED',
    'ERROR': 'ERROR',
    'START_FAILED': 'START_FAILED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PENDING': 'PENDING',
    'QUEUED': 'QUEUED',
    'PROCESSING': 'PROCESSING',
    'FINISHED': 'FINISHED',
    'ERROR': 'ERROR',
    'START_FAILED': 'START_FAILED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentProcessingStatus];
  @override
  final String wireName = 'AgentProcessingStatus';

  @override
  Object serialize(
    Serializers serializers,
    AgentProcessingStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AgentProcessingStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AgentProcessingStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
