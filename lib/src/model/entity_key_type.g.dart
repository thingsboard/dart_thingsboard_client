// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_key_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EntityKeyType _$ATTRIBUTE = const EntityKeyType._('ATTRIBUTE');
const EntityKeyType _$CLIENT_ATTRIBUTE = const EntityKeyType._(
  'CLIENT_ATTRIBUTE',
);
const EntityKeyType _$SHARED_ATTRIBUTE = const EntityKeyType._(
  'SHARED_ATTRIBUTE',
);
const EntityKeyType _$SERVER_ATTRIBUTE = const EntityKeyType._(
  'SERVER_ATTRIBUTE',
);
const EntityKeyType _$TIME_SERIES = const EntityKeyType._('TIME_SERIES');
const EntityKeyType _$ENTITY_FIELD = const EntityKeyType._('ENTITY_FIELD');
const EntityKeyType _$ALARM_FIELD = const EntityKeyType._('ALARM_FIELD');
const EntityKeyType _$unknownDefaultOpenApi = const EntityKeyType._(
  'unknownDefaultOpenApi',
);

EntityKeyType _$valueOf(String name) {
  switch (name) {
    case 'ATTRIBUTE':
      return _$ATTRIBUTE;
    case 'CLIENT_ATTRIBUTE':
      return _$CLIENT_ATTRIBUTE;
    case 'SHARED_ATTRIBUTE':
      return _$SHARED_ATTRIBUTE;
    case 'SERVER_ATTRIBUTE':
      return _$SERVER_ATTRIBUTE;
    case 'TIME_SERIES':
      return _$TIME_SERIES;
    case 'ENTITY_FIELD':
      return _$ENTITY_FIELD;
    case 'ALARM_FIELD':
      return _$ALARM_FIELD;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<EntityKeyType> _$values =
    BuiltSet<EntityKeyType>(const <EntityKeyType>[
      _$ATTRIBUTE,
      _$CLIENT_ATTRIBUTE,
      _$SHARED_ATTRIBUTE,
      _$SERVER_ATTRIBUTE,
      _$TIME_SERIES,
      _$ENTITY_FIELD,
      _$ALARM_FIELD,
      _$unknownDefaultOpenApi,
    ]);

class _$EntityKeyTypeMeta {
  const _$EntityKeyTypeMeta();
  EntityKeyType get ATTRIBUTE => _$ATTRIBUTE;
  EntityKeyType get CLIENT_ATTRIBUTE => _$CLIENT_ATTRIBUTE;
  EntityKeyType get SHARED_ATTRIBUTE => _$SHARED_ATTRIBUTE;
  EntityKeyType get SERVER_ATTRIBUTE => _$SERVER_ATTRIBUTE;
  EntityKeyType get TIME_SERIES => _$TIME_SERIES;
  EntityKeyType get ENTITY_FIELD => _$ENTITY_FIELD;
  EntityKeyType get ALARM_FIELD => _$ALARM_FIELD;
  EntityKeyType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  EntityKeyType valueOf(String name) => _$valueOf(name);
  BuiltSet<EntityKeyType> get values => _$values;
}

mixin _$EntityKeyTypeMixin {
  // ignore: non_constant_identifier_names
  _$EntityKeyTypeMeta get EntityKeyType => const _$EntityKeyTypeMeta();
}

Serializer<EntityKeyType> _$entityKeyTypeSerializer =
    _$EntityKeyTypeSerializer();

class _$EntityKeyTypeSerializer implements PrimitiveSerializer<EntityKeyType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ATTRIBUTE': 'ATTRIBUTE',
    'CLIENT_ATTRIBUTE': 'CLIENT_ATTRIBUTE',
    'SHARED_ATTRIBUTE': 'SHARED_ATTRIBUTE',
    'SERVER_ATTRIBUTE': 'SERVER_ATTRIBUTE',
    'TIME_SERIES': 'TIME_SERIES',
    'ENTITY_FIELD': 'ENTITY_FIELD',
    'ALARM_FIELD': 'ALARM_FIELD',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ATTRIBUTE': 'ATTRIBUTE',
    'CLIENT_ATTRIBUTE': 'CLIENT_ATTRIBUTE',
    'SHARED_ATTRIBUTE': 'SHARED_ATTRIBUTE',
    'SERVER_ATTRIBUTE': 'SERVER_ATTRIBUTE',
    'TIME_SERIES': 'TIME_SERIES',
    'ENTITY_FIELD': 'ENTITY_FIELD',
    'ALARM_FIELD': 'ALARM_FIELD',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EntityKeyType];
  @override
  final String wireName = 'EntityKeyType';

  @override
  Object serialize(
    Serializers serializers,
    EntityKeyType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EntityKeyType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EntityKeyType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
