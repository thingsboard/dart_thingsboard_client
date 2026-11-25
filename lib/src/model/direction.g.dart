// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Direction _$ASC = const Direction._('ASC');
const Direction _$DESC = const Direction._('DESC');
const Direction _$unknownDefaultOpenApi = const Direction._(
  'unknownDefaultOpenApi',
);

Direction _$valueOf(String name) {
  switch (name) {
    case 'ASC':
      return _$ASC;
    case 'DESC':
      return _$DESC;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<Direction> _$values = BuiltSet<Direction>(const <Direction>[
  _$ASC,
  _$DESC,
  _$unknownDefaultOpenApi,
]);

class _$DirectionMeta {
  const _$DirectionMeta();
  Direction get ASC => _$ASC;
  Direction get DESC => _$DESC;
  Direction get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  Direction valueOf(String name) => _$valueOf(name);
  BuiltSet<Direction> get values => _$values;
}

mixin _$DirectionMixin {
  // ignore: non_constant_identifier_names
  _$DirectionMeta get Direction => const _$DirectionMeta();
}

Serializer<Direction> _$directionSerializer = _$DirectionSerializer();

class _$DirectionSerializer implements PrimitiveSerializer<Direction> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ASC': 'ASC',
    'DESC': 'DESC',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ASC': 'ASC',
    'DESC': 'DESC',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[Direction];
  @override
  final String wireName = 'Direction';

  @override
  Object serialize(
    Serializers serializers,
    Direction object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  Direction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => Direction.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
