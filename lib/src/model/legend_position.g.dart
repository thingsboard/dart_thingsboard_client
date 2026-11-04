// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legend_position.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LegendPosition _$top = const LegendPosition._('top');
const LegendPosition _$bottom = const LegendPosition._('bottom');
const LegendPosition _$left = const LegendPosition._('left');
const LegendPosition _$right = const LegendPosition._('right');
const LegendPosition _$unknownDefaultOpenApi = const LegendPosition._(
  'unknownDefaultOpenApi',
);

LegendPosition _$valueOf(String name) {
  switch (name) {
    case 'top':
      return _$top;
    case 'bottom':
      return _$bottom;
    case 'left':
      return _$left;
    case 'right':
      return _$right;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<LegendPosition> _$values = BuiltSet<LegendPosition>(
  const <LegendPosition>[
    _$top,
    _$bottom,
    _$left,
    _$right,
    _$unknownDefaultOpenApi,
  ],
);

class _$LegendPositionMeta {
  const _$LegendPositionMeta();
  LegendPosition get top => _$top;
  LegendPosition get bottom => _$bottom;
  LegendPosition get left => _$left;
  LegendPosition get right => _$right;
  LegendPosition get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  LegendPosition valueOf(String name) => _$valueOf(name);
  BuiltSet<LegendPosition> get values => _$values;
}

mixin _$LegendPositionMixin {
  // ignore: non_constant_identifier_names
  _$LegendPositionMeta get LegendPosition => const _$LegendPositionMeta();
}

Serializer<LegendPosition> _$legendPositionSerializer =
    _$LegendPositionSerializer();

class _$LegendPositionSerializer
    implements PrimitiveSerializer<LegendPosition> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'top': 'top',
    'bottom': 'bottom',
    'left': 'left',
    'right': 'right',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'top': 'top',
    'bottom': 'bottom',
    'left': 'left',
    'right': 'right',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LegendPosition];
  @override
  final String wireName = 'LegendPosition';

  @override
  Object serialize(
    Serializers serializers,
    LegendPosition object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LegendPosition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LegendPosition.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
