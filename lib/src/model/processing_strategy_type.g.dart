// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'processing_strategy_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProcessingStrategyType _$SKIP_ALL_FAILURES =
    const ProcessingStrategyType._('SKIP_ALL_FAILURES');
const ProcessingStrategyType _$SKIP_ALL_FAILURES_AND_TIMED_OUT =
    const ProcessingStrategyType._('SKIP_ALL_FAILURES_AND_TIMED_OUT');
const ProcessingStrategyType _$RETRY_ALL = const ProcessingStrategyType._(
  'RETRY_ALL',
);
const ProcessingStrategyType _$RETRY_FAILED = const ProcessingStrategyType._(
  'RETRY_FAILED',
);
const ProcessingStrategyType _$RETRY_TIMED_OUT = const ProcessingStrategyType._(
  'RETRY_TIMED_OUT',
);
const ProcessingStrategyType _$RETRY_FAILED_AND_TIMED_OUT =
    const ProcessingStrategyType._('RETRY_FAILED_AND_TIMED_OUT');
const ProcessingStrategyType _$unknownDefaultOpenApi =
    const ProcessingStrategyType._('unknownDefaultOpenApi');

ProcessingStrategyType _$valueOf(String name) {
  switch (name) {
    case 'SKIP_ALL_FAILURES':
      return _$SKIP_ALL_FAILURES;
    case 'SKIP_ALL_FAILURES_AND_TIMED_OUT':
      return _$SKIP_ALL_FAILURES_AND_TIMED_OUT;
    case 'RETRY_ALL':
      return _$RETRY_ALL;
    case 'RETRY_FAILED':
      return _$RETRY_FAILED;
    case 'RETRY_TIMED_OUT':
      return _$RETRY_TIMED_OUT;
    case 'RETRY_FAILED_AND_TIMED_OUT':
      return _$RETRY_FAILED_AND_TIMED_OUT;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ProcessingStrategyType> _$values =
    BuiltSet<ProcessingStrategyType>(const <ProcessingStrategyType>[
      _$SKIP_ALL_FAILURES,
      _$SKIP_ALL_FAILURES_AND_TIMED_OUT,
      _$RETRY_ALL,
      _$RETRY_FAILED,
      _$RETRY_TIMED_OUT,
      _$RETRY_FAILED_AND_TIMED_OUT,
      _$unknownDefaultOpenApi,
    ]);

class _$ProcessingStrategyTypeMeta {
  const _$ProcessingStrategyTypeMeta();
  ProcessingStrategyType get SKIP_ALL_FAILURES => _$SKIP_ALL_FAILURES;
  ProcessingStrategyType get SKIP_ALL_FAILURES_AND_TIMED_OUT =>
      _$SKIP_ALL_FAILURES_AND_TIMED_OUT;
  ProcessingStrategyType get RETRY_ALL => _$RETRY_ALL;
  ProcessingStrategyType get RETRY_FAILED => _$RETRY_FAILED;
  ProcessingStrategyType get RETRY_TIMED_OUT => _$RETRY_TIMED_OUT;
  ProcessingStrategyType get RETRY_FAILED_AND_TIMED_OUT =>
      _$RETRY_FAILED_AND_TIMED_OUT;
  ProcessingStrategyType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ProcessingStrategyType valueOf(String name) => _$valueOf(name);
  BuiltSet<ProcessingStrategyType> get values => _$values;
}

mixin _$ProcessingStrategyTypeMixin {
  // ignore: non_constant_identifier_names
  _$ProcessingStrategyTypeMeta get ProcessingStrategyType =>
      const _$ProcessingStrategyTypeMeta();
}

Serializer<ProcessingStrategyType> _$processingStrategyTypeSerializer =
    _$ProcessingStrategyTypeSerializer();

class _$ProcessingStrategyTypeSerializer
    implements PrimitiveSerializer<ProcessingStrategyType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SKIP_ALL_FAILURES': 'SKIP_ALL_FAILURES',
    'SKIP_ALL_FAILURES_AND_TIMED_OUT': 'SKIP_ALL_FAILURES_AND_TIMED_OUT',
    'RETRY_ALL': 'RETRY_ALL',
    'RETRY_FAILED': 'RETRY_FAILED',
    'RETRY_TIMED_OUT': 'RETRY_TIMED_OUT',
    'RETRY_FAILED_AND_TIMED_OUT': 'RETRY_FAILED_AND_TIMED_OUT',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SKIP_ALL_FAILURES': 'SKIP_ALL_FAILURES',
    'SKIP_ALL_FAILURES_AND_TIMED_OUT': 'SKIP_ALL_FAILURES_AND_TIMED_OUT',
    'RETRY_ALL': 'RETRY_ALL',
    'RETRY_FAILED': 'RETRY_FAILED',
    'RETRY_TIMED_OUT': 'RETRY_TIMED_OUT',
    'RETRY_FAILED_AND_TIMED_OUT': 'RETRY_FAILED_AND_TIMED_OUT',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ProcessingStrategyType];
  @override
  final String wireName = 'ProcessingStrategyType';

  @override
  Object serialize(
    Serializers serializers,
    ProcessingStrategyType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ProcessingStrategyType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ProcessingStrategyType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
