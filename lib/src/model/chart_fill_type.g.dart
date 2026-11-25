// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_fill_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChartFillType _$none = const ChartFillType._('none');
const ChartFillType _$opacity = const ChartFillType._('opacity');
const ChartFillType _$gradient = const ChartFillType._('gradient');
const ChartFillType _$unknownDefaultOpenApi = const ChartFillType._(
  'unknownDefaultOpenApi',
);

ChartFillType _$valueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'opacity':
      return _$opacity;
    case 'gradient':
      return _$gradient;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ChartFillType> _$values = BuiltSet<ChartFillType>(
  const <ChartFillType>[_$none, _$opacity, _$gradient, _$unknownDefaultOpenApi],
);

class _$ChartFillTypeMeta {
  const _$ChartFillTypeMeta();
  ChartFillType get none => _$none;
  ChartFillType get opacity => _$opacity;
  ChartFillType get gradient => _$gradient;
  ChartFillType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ChartFillType valueOf(String name) => _$valueOf(name);
  BuiltSet<ChartFillType> get values => _$values;
}

mixin _$ChartFillTypeMixin {
  // ignore: non_constant_identifier_names
  _$ChartFillTypeMeta get ChartFillType => const _$ChartFillTypeMeta();
}

Serializer<ChartFillType> _$chartFillTypeSerializer =
    _$ChartFillTypeSerializer();

class _$ChartFillTypeSerializer implements PrimitiveSerializer<ChartFillType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'opacity': 'opacity',
    'gradient': 'gradient',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'opacity': 'opacity',
    'gradient': 'gradient',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ChartFillType];
  @override
  final String wireName = 'ChartFillType';

  @override
  Object serialize(
    Serializers serializers,
    ChartFillType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChartFillType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChartFillType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
