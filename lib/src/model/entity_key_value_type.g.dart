// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_key_value_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EntityKeyValueType _$STRING = const EntityKeyValueType._('STRING');
const EntityKeyValueType _$NUMERIC = const EntityKeyValueType._('NUMERIC');
const EntityKeyValueType _$BOOLEAN = const EntityKeyValueType._('BOOLEAN');
const EntityKeyValueType _$DATE_TIME = const EntityKeyValueType._('DATE_TIME');
const EntityKeyValueType _$unknownDefaultOpenApi = const EntityKeyValueType._(
  'unknownDefaultOpenApi',
);

EntityKeyValueType _$valueOf(String name) {
  switch (name) {
    case 'STRING':
      return _$STRING;
    case 'NUMERIC':
      return _$NUMERIC;
    case 'BOOLEAN':
      return _$BOOLEAN;
    case 'DATE_TIME':
      return _$DATE_TIME;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<EntityKeyValueType> _$values = BuiltSet<EntityKeyValueType>(
  const <EntityKeyValueType>[
    _$STRING,
    _$NUMERIC,
    _$BOOLEAN,
    _$DATE_TIME,
    _$unknownDefaultOpenApi,
  ],
);

class _$EntityKeyValueTypeMeta {
  const _$EntityKeyValueTypeMeta();
  EntityKeyValueType get STRING => _$STRING;
  EntityKeyValueType get NUMERIC => _$NUMERIC;
  EntityKeyValueType get BOOLEAN => _$BOOLEAN;
  EntityKeyValueType get DATE_TIME => _$DATE_TIME;
  EntityKeyValueType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  EntityKeyValueType valueOf(String name) => _$valueOf(name);
  BuiltSet<EntityKeyValueType> get values => _$values;
}

mixin _$EntityKeyValueTypeMixin {
  // ignore: non_constant_identifier_names
  _$EntityKeyValueTypeMeta get EntityKeyValueType =>
      const _$EntityKeyValueTypeMeta();
}

Serializer<EntityKeyValueType> _$entityKeyValueTypeSerializer =
    _$EntityKeyValueTypeSerializer();

class _$EntityKeyValueTypeSerializer
    implements PrimitiveSerializer<EntityKeyValueType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'STRING': 'STRING',
    'NUMERIC': 'NUMERIC',
    'BOOLEAN': 'BOOLEAN',
    'DATE_TIME': 'DATE_TIME',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'STRING': 'STRING',
    'NUMERIC': 'NUMERIC',
    'BOOLEAN': 'BOOLEAN',
    'DATE_TIME': 'DATE_TIME',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EntityKeyValueType];
  @override
  final String wireName = 'EntityKeyValueType';

  @override
  Object serialize(
    Serializers serializers,
    EntityKeyValueType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EntityKeyValueType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EntityKeyValueType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
