// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_source_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DataSourceType _$device = const DataSourceType._('device');
const DataSourceType _$entity = const DataSourceType._('entity');
const DataSourceType _$entityCount = const DataSourceType._('entityCount');
const DataSourceType _$alarmCount = const DataSourceType._('alarmCount');
const DataSourceType _$unknownDefaultOpenApi = const DataSourceType._(
  'unknownDefaultOpenApi',
);

DataSourceType _$valueOf(String name) {
  switch (name) {
    case 'device':
      return _$device;
    case 'entity':
      return _$entity;
    case 'entityCount':
      return _$entityCount;
    case 'alarmCount':
      return _$alarmCount;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<DataSourceType> _$values = BuiltSet<DataSourceType>(
  const <DataSourceType>[
    _$device,
    _$entity,
    _$entityCount,
    _$alarmCount,
    _$unknownDefaultOpenApi,
  ],
);

class _$DataSourceTypeMeta {
  const _$DataSourceTypeMeta();
  DataSourceType get device => _$device;
  DataSourceType get entity => _$entity;
  DataSourceType get entityCount => _$entityCount;
  DataSourceType get alarmCount => _$alarmCount;
  DataSourceType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  DataSourceType valueOf(String name) => _$valueOf(name);
  BuiltSet<DataSourceType> get values => _$values;
}

mixin _$DataSourceTypeMixin {
  // ignore: non_constant_identifier_names
  _$DataSourceTypeMeta get DataSourceType => const _$DataSourceTypeMeta();
}

Serializer<DataSourceType> _$dataSourceTypeSerializer =
    _$DataSourceTypeSerializer();

class _$DataSourceTypeSerializer
    implements PrimitiveSerializer<DataSourceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'device': 'device',
    'entity': 'entity',
    'entityCount': 'entityCount',
    'alarmCount': 'alarmCount',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'device': 'device',
    'entity': 'entity',
    'entityCount': 'entityCount',
    'alarmCount': 'alarmCount',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DataSourceType];
  @override
  final String wireName = 'DataSourceType';

  @override
  Object serialize(
    Serializers serializers,
    DataSourceType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DataSourceType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DataSourceType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
