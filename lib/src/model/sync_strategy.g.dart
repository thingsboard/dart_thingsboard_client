// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_strategy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SyncStrategy _$MERGE = const SyncStrategy._('MERGE');
const SyncStrategy _$OVERWRITE = const SyncStrategy._('OVERWRITE');
const SyncStrategy _$unknownDefaultOpenApi = const SyncStrategy._(
  'unknownDefaultOpenApi',
);

SyncStrategy _$valueOf(String name) {
  switch (name) {
    case 'MERGE':
      return _$MERGE;
    case 'OVERWRITE':
      return _$OVERWRITE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SyncStrategy> _$values = BuiltSet<SyncStrategy>(
  const <SyncStrategy>[_$MERGE, _$OVERWRITE, _$unknownDefaultOpenApi],
);

class _$SyncStrategyMeta {
  const _$SyncStrategyMeta();
  SyncStrategy get MERGE => _$MERGE;
  SyncStrategy get OVERWRITE => _$OVERWRITE;
  SyncStrategy get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SyncStrategy valueOf(String name) => _$valueOf(name);
  BuiltSet<SyncStrategy> get values => _$values;
}

mixin _$SyncStrategyMixin {
  // ignore: non_constant_identifier_names
  _$SyncStrategyMeta get SyncStrategy => const _$SyncStrategyMeta();
}

Serializer<SyncStrategy> _$syncStrategySerializer = _$SyncStrategySerializer();

class _$SyncStrategySerializer implements PrimitiveSerializer<SyncStrategy> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MERGE': 'MERGE',
    'OVERWRITE': 'OVERWRITE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MERGE': 'MERGE',
    'OVERWRITE': 'OVERWRITE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SyncStrategy];
  @override
  final String wireName = 'SyncStrategy';

  @override
  Object serialize(
    Serializers serializers,
    SyncStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SyncStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SyncStrategy.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
