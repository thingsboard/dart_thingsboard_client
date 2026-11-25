// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_shape.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChartShape _$emptyCircle = const ChartShape._('emptyCircle');
const ChartShape _$circle = const ChartShape._('circle');
const ChartShape _$rect = const ChartShape._('rect');
const ChartShape _$roundRect = const ChartShape._('roundRect');
const ChartShape _$triangle = const ChartShape._('triangle');
const ChartShape _$diamond = const ChartShape._('diamond');
const ChartShape _$pin = const ChartShape._('pin');
const ChartShape _$arrow = const ChartShape._('arrow');
const ChartShape _$none = const ChartShape._('none');
const ChartShape _$unknownDefaultOpenApi = const ChartShape._(
  'unknownDefaultOpenApi',
);

ChartShape _$valueOf(String name) {
  switch (name) {
    case 'emptyCircle':
      return _$emptyCircle;
    case 'circle':
      return _$circle;
    case 'rect':
      return _$rect;
    case 'roundRect':
      return _$roundRect;
    case 'triangle':
      return _$triangle;
    case 'diamond':
      return _$diamond;
    case 'pin':
      return _$pin;
    case 'arrow':
      return _$arrow;
    case 'none':
      return _$none;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ChartShape> _$values = BuiltSet<ChartShape>(const <ChartShape>[
  _$emptyCircle,
  _$circle,
  _$rect,
  _$roundRect,
  _$triangle,
  _$diamond,
  _$pin,
  _$arrow,
  _$none,
  _$unknownDefaultOpenApi,
]);

class _$ChartShapeMeta {
  const _$ChartShapeMeta();
  ChartShape get emptyCircle => _$emptyCircle;
  ChartShape get circle => _$circle;
  ChartShape get rect => _$rect;
  ChartShape get roundRect => _$roundRect;
  ChartShape get triangle => _$triangle;
  ChartShape get diamond => _$diamond;
  ChartShape get pin => _$pin;
  ChartShape get arrow => _$arrow;
  ChartShape get none => _$none;
  ChartShape get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ChartShape valueOf(String name) => _$valueOf(name);
  BuiltSet<ChartShape> get values => _$values;
}

mixin _$ChartShapeMixin {
  // ignore: non_constant_identifier_names
  _$ChartShapeMeta get ChartShape => const _$ChartShapeMeta();
}

Serializer<ChartShape> _$chartShapeSerializer = _$ChartShapeSerializer();

class _$ChartShapeSerializer implements PrimitiveSerializer<ChartShape> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'emptyCircle': 'emptyCircle',
    'circle': 'circle',
    'rect': 'rect',
    'roundRect': 'roundRect',
    'triangle': 'triangle',
    'diamond': 'diamond',
    'pin': 'pin',
    'arrow': 'arrow',
    'none': 'none',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'emptyCircle': 'emptyCircle',
    'circle': 'circle',
    'rect': 'rect',
    'roundRect': 'roundRect',
    'triangle': 'triangle',
    'diamond': 'diamond',
    'pin': 'pin',
    'arrow': 'arrow',
    'none': 'none',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ChartShape];
  @override
  final String wireName = 'ChartShape';

  @override
  Object serialize(
    Serializers serializers,
    ChartShape object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChartShape deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChartShape.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
