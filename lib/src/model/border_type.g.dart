// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'border_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BorderType _$solid = const BorderType._('solid');
const BorderType _$dashed = const BorderType._('dashed');
const BorderType _$dotted = const BorderType._('dotted');
const BorderType _$unknownDefaultOpenApi = const BorderType._(
  'unknownDefaultOpenApi',
);

BorderType _$valueOf(String name) {
  switch (name) {
    case 'solid':
      return _$solid;
    case 'dashed':
      return _$dashed;
    case 'dotted':
      return _$dotted;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<BorderType> _$values = BuiltSet<BorderType>(const <BorderType>[
  _$solid,
  _$dashed,
  _$dotted,
  _$unknownDefaultOpenApi,
]);

class _$BorderTypeMeta {
  const _$BorderTypeMeta();
  BorderType get solid => _$solid;
  BorderType get dashed => _$dashed;
  BorderType get dotted => _$dotted;
  BorderType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  BorderType valueOf(String name) => _$valueOf(name);
  BuiltSet<BorderType> get values => _$values;
}

mixin _$BorderTypeMixin {
  // ignore: non_constant_identifier_names
  _$BorderTypeMeta get BorderType => const _$BorderTypeMeta();
}

Serializer<BorderType> _$borderTypeSerializer = _$BorderTypeSerializer();

class _$BorderTypeSerializer implements PrimitiveSerializer<BorderType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'solid': 'solid',
    'dashed': 'dashed',
    'dotted': 'dotted',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'solid': 'solid',
    'dashed': 'dashed',
    'dotted': 'dotted',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BorderType];
  @override
  final String wireName = 'BorderType';

  @override
  Object serialize(
    Serializers serializers,
    BorderType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BorderType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BorderType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
