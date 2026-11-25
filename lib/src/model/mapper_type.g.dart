// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapper_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MapperType _$BASIC = const MapperType._('BASIC');
const MapperType _$CUSTOM = const MapperType._('CUSTOM');
const MapperType _$GITHUB = const MapperType._('GITHUB');
const MapperType _$APPLE = const MapperType._('APPLE');
const MapperType _$unknownDefaultOpenApi = const MapperType._(
  'unknownDefaultOpenApi',
);

MapperType _$valueOf(String name) {
  switch (name) {
    case 'BASIC':
      return _$BASIC;
    case 'CUSTOM':
      return _$CUSTOM;
    case 'GITHUB':
      return _$GITHUB;
    case 'APPLE':
      return _$APPLE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<MapperType> _$values = BuiltSet<MapperType>(const <MapperType>[
  _$BASIC,
  _$CUSTOM,
  _$GITHUB,
  _$APPLE,
  _$unknownDefaultOpenApi,
]);

class _$MapperTypeMeta {
  const _$MapperTypeMeta();
  MapperType get BASIC => _$BASIC;
  MapperType get CUSTOM => _$CUSTOM;
  MapperType get GITHUB => _$GITHUB;
  MapperType get APPLE => _$APPLE;
  MapperType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  MapperType valueOf(String name) => _$valueOf(name);
  BuiltSet<MapperType> get values => _$values;
}

mixin _$MapperTypeMixin {
  // ignore: non_constant_identifier_names
  _$MapperTypeMeta get MapperType => const _$MapperTypeMeta();
}

Serializer<MapperType> _$mapperTypeSerializer = _$MapperTypeSerializer();

class _$MapperTypeSerializer implements PrimitiveSerializer<MapperType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'BASIC': 'BASIC',
    'CUSTOM': 'CUSTOM',
    'GITHUB': 'GITHUB',
    'APPLE': 'APPLE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'BASIC': 'BASIC',
    'CUSTOM': 'CUSTOM',
    'GITHUB': 'GITHUB',
    'APPLE': 'APPLE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MapperType];
  @override
  final String wireName = 'MapperType';

  @override
  Object serialize(
    Serializers serializers,
    MapperType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MapperType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MapperType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
