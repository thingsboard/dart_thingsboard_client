// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DataType _$BOOLEAN = const DataType._('BOOLEAN');
const DataType _$LONG = const DataType._('LONG');
const DataType _$DOUBLE = const DataType._('DOUBLE');
const DataType _$STRING = const DataType._('STRING');
const DataType _$JSON = const DataType._('JSON');
const DataType _$unknownDefaultOpenApi = const DataType._(
  'unknownDefaultOpenApi',
);

DataType _$valueOf(String name) {
  switch (name) {
    case 'BOOLEAN':
      return _$BOOLEAN;
    case 'LONG':
      return _$LONG;
    case 'DOUBLE':
      return _$DOUBLE;
    case 'STRING':
      return _$STRING;
    case 'JSON':
      return _$JSON;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<DataType> _$values = BuiltSet<DataType>(const <DataType>[
  _$BOOLEAN,
  _$LONG,
  _$DOUBLE,
  _$STRING,
  _$JSON,
  _$unknownDefaultOpenApi,
]);

class _$DataTypeMeta {
  const _$DataTypeMeta();
  DataType get BOOLEAN => _$BOOLEAN;
  DataType get LONG => _$LONG;
  DataType get DOUBLE => _$DOUBLE;
  DataType get STRING => _$STRING;
  DataType get JSON => _$JSON;
  DataType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  DataType valueOf(String name) => _$valueOf(name);
  BuiltSet<DataType> get values => _$values;
}

mixin _$DataTypeMixin {
  // ignore: non_constant_identifier_names
  _$DataTypeMeta get DataType => const _$DataTypeMeta();
}

Serializer<DataType> _$dataTypeSerializer = _$DataTypeSerializer();

class _$DataTypeSerializer implements PrimitiveSerializer<DataType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'BOOLEAN': 'BOOLEAN',
    'LONG': 'LONG',
    'DOUBLE': 'DOUBLE',
    'STRING': 'STRING',
    'JSON': 'JSON',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'BOOLEAN': 'BOOLEAN',
    'LONG': 'LONG',
    'DOUBLE': 'DOUBLE',
    'STRING': 'STRING',
    'JSON': 'JSON',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DataType];
  @override
  final String wireName = 'DataType';

  @override
  Object serialize(
    Serializers serializers,
    DataType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DataType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DataType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
