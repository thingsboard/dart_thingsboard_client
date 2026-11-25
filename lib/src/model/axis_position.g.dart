// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'axis_position.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AxisPosition _$left = const AxisPosition._('left');
const AxisPosition _$right = const AxisPosition._('right');
const AxisPosition _$top = const AxisPosition._('top');
const AxisPosition _$bottom = const AxisPosition._('bottom');
const AxisPosition _$unknownDefaultOpenApi = const AxisPosition._(
  'unknownDefaultOpenApi',
);

AxisPosition _$valueOf(String name) {
  switch (name) {
    case 'left':
      return _$left;
    case 'right':
      return _$right;
    case 'top':
      return _$top;
    case 'bottom':
      return _$bottom;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AxisPosition> _$values = BuiltSet<AxisPosition>(
  const <AxisPosition>[
    _$left,
    _$right,
    _$top,
    _$bottom,
    _$unknownDefaultOpenApi,
  ],
);

class _$AxisPositionMeta {
  const _$AxisPositionMeta();
  AxisPosition get left => _$left;
  AxisPosition get right => _$right;
  AxisPosition get top => _$top;
  AxisPosition get bottom => _$bottom;
  AxisPosition get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AxisPosition valueOf(String name) => _$valueOf(name);
  BuiltSet<AxisPosition> get values => _$values;
}

mixin _$AxisPositionMixin {
  // ignore: non_constant_identifier_names
  _$AxisPositionMeta get AxisPosition => const _$AxisPositionMeta();
}

Serializer<AxisPosition> _$axisPositionSerializer = _$AxisPositionSerializer();

class _$AxisPositionSerializer implements PrimitiveSerializer<AxisPosition> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'left': 'left',
    'right': 'right',
    'top': 'top',
    'bottom': 'bottom',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'left': 'left',
    'right': 'right',
    'top': 'top',
    'bottom': 'bottom',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AxisPosition];
  @override
  final String wireName = 'AxisPosition';

  @override
  Object serialize(
    Serializers serializers,
    AxisPosition object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AxisPosition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AxisPosition.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
