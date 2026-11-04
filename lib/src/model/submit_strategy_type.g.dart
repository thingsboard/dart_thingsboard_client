// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_strategy_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SubmitStrategyType _$BURST = const SubmitStrategyType._('BURST');
const SubmitStrategyType _$BATCH = const SubmitStrategyType._('BATCH');
const SubmitStrategyType _$SEQUENTIAL_BY_ORIGINATOR =
    const SubmitStrategyType._('SEQUENTIAL_BY_ORIGINATOR');
const SubmitStrategyType _$SEQUENTIAL_BY_TENANT = const SubmitStrategyType._(
  'SEQUENTIAL_BY_TENANT',
);
const SubmitStrategyType _$SEQUENTIAL = const SubmitStrategyType._(
  'SEQUENTIAL',
);
const SubmitStrategyType _$unknownDefaultOpenApi = const SubmitStrategyType._(
  'unknownDefaultOpenApi',
);

SubmitStrategyType _$valueOf(String name) {
  switch (name) {
    case 'BURST':
      return _$BURST;
    case 'BATCH':
      return _$BATCH;
    case 'SEQUENTIAL_BY_ORIGINATOR':
      return _$SEQUENTIAL_BY_ORIGINATOR;
    case 'SEQUENTIAL_BY_TENANT':
      return _$SEQUENTIAL_BY_TENANT;
    case 'SEQUENTIAL':
      return _$SEQUENTIAL;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SubmitStrategyType> _$values =
    BuiltSet<SubmitStrategyType>(const <SubmitStrategyType>[
      _$BURST,
      _$BATCH,
      _$SEQUENTIAL_BY_ORIGINATOR,
      _$SEQUENTIAL_BY_TENANT,
      _$SEQUENTIAL,
      _$unknownDefaultOpenApi,
    ]);

class _$SubmitStrategyTypeMeta {
  const _$SubmitStrategyTypeMeta();
  SubmitStrategyType get BURST => _$BURST;
  SubmitStrategyType get BATCH => _$BATCH;
  SubmitStrategyType get SEQUENTIAL_BY_ORIGINATOR => _$SEQUENTIAL_BY_ORIGINATOR;
  SubmitStrategyType get SEQUENTIAL_BY_TENANT => _$SEQUENTIAL_BY_TENANT;
  SubmitStrategyType get SEQUENTIAL => _$SEQUENTIAL;
  SubmitStrategyType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SubmitStrategyType valueOf(String name) => _$valueOf(name);
  BuiltSet<SubmitStrategyType> get values => _$values;
}

mixin _$SubmitStrategyTypeMixin {
  // ignore: non_constant_identifier_names
  _$SubmitStrategyTypeMeta get SubmitStrategyType =>
      const _$SubmitStrategyTypeMeta();
}

Serializer<SubmitStrategyType> _$submitStrategyTypeSerializer =
    _$SubmitStrategyTypeSerializer();

class _$SubmitStrategyTypeSerializer
    implements PrimitiveSerializer<SubmitStrategyType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'BURST': 'BURST',
    'BATCH': 'BATCH',
    'SEQUENTIAL_BY_ORIGINATOR': 'SEQUENTIAL_BY_ORIGINATOR',
    'SEQUENTIAL_BY_TENANT': 'SEQUENTIAL_BY_TENANT',
    'SEQUENTIAL': 'SEQUENTIAL',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'BURST': 'BURST',
    'BATCH': 'BATCH',
    'SEQUENTIAL_BY_ORIGINATOR': 'SEQUENTIAL_BY_ORIGINATOR',
    'SEQUENTIAL_BY_TENANT': 'SEQUENTIAL_BY_TENANT',
    'SEQUENTIAL': 'SEQUENTIAL',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SubmitStrategyType];
  @override
  final String wireName = 'SubmitStrategyType';

  @override
  Object serialize(
    Serializers serializers,
    SubmitStrategyType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SubmitStrategyType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SubmitStrategyType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
