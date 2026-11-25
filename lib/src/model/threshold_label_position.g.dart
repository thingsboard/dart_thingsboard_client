// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'threshold_label_position.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ThresholdLabelPosition _$start = const ThresholdLabelPosition._('start');
const ThresholdLabelPosition _$middle = const ThresholdLabelPosition._(
  'middle',
);
const ThresholdLabelPosition _$end = const ThresholdLabelPosition._('end');
const ThresholdLabelPosition _$insideStart = const ThresholdLabelPosition._(
  'insideStart',
);
const ThresholdLabelPosition _$insideStartTop = const ThresholdLabelPosition._(
  'insideStartTop',
);
const ThresholdLabelPosition _$insideStartBottom =
    const ThresholdLabelPosition._('insideStartBottom');
const ThresholdLabelPosition _$insideMiddle = const ThresholdLabelPosition._(
  'insideMiddle',
);
const ThresholdLabelPosition _$insideMiddleTop = const ThresholdLabelPosition._(
  'insideMiddleTop',
);
const ThresholdLabelPosition _$insideMiddleBottom =
    const ThresholdLabelPosition._('insideMiddleBottom');
const ThresholdLabelPosition _$insideEnd = const ThresholdLabelPosition._(
  'insideEnd',
);
const ThresholdLabelPosition _$insideEndTop = const ThresholdLabelPosition._(
  'insideEndTop',
);
const ThresholdLabelPosition _$insideEndBottom = const ThresholdLabelPosition._(
  'insideEndBottom',
);
const ThresholdLabelPosition _$unknownDefaultOpenApi =
    const ThresholdLabelPosition._('unknownDefaultOpenApi');

ThresholdLabelPosition _$valueOf(String name) {
  switch (name) {
    case 'start':
      return _$start;
    case 'middle':
      return _$middle;
    case 'end':
      return _$end;
    case 'insideStart':
      return _$insideStart;
    case 'insideStartTop':
      return _$insideStartTop;
    case 'insideStartBottom':
      return _$insideStartBottom;
    case 'insideMiddle':
      return _$insideMiddle;
    case 'insideMiddleTop':
      return _$insideMiddleTop;
    case 'insideMiddleBottom':
      return _$insideMiddleBottom;
    case 'insideEnd':
      return _$insideEnd;
    case 'insideEndTop':
      return _$insideEndTop;
    case 'insideEndBottom':
      return _$insideEndBottom;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ThresholdLabelPosition> _$values =
    BuiltSet<ThresholdLabelPosition>(const <ThresholdLabelPosition>[
      _$start,
      _$middle,
      _$end,
      _$insideStart,
      _$insideStartTop,
      _$insideStartBottom,
      _$insideMiddle,
      _$insideMiddleTop,
      _$insideMiddleBottom,
      _$insideEnd,
      _$insideEndTop,
      _$insideEndBottom,
      _$unknownDefaultOpenApi,
    ]);

class _$ThresholdLabelPositionMeta {
  const _$ThresholdLabelPositionMeta();
  ThresholdLabelPosition get start => _$start;
  ThresholdLabelPosition get middle => _$middle;
  ThresholdLabelPosition get end => _$end;
  ThresholdLabelPosition get insideStart => _$insideStart;
  ThresholdLabelPosition get insideStartTop => _$insideStartTop;
  ThresholdLabelPosition get insideStartBottom => _$insideStartBottom;
  ThresholdLabelPosition get insideMiddle => _$insideMiddle;
  ThresholdLabelPosition get insideMiddleTop => _$insideMiddleTop;
  ThresholdLabelPosition get insideMiddleBottom => _$insideMiddleBottom;
  ThresholdLabelPosition get insideEnd => _$insideEnd;
  ThresholdLabelPosition get insideEndTop => _$insideEndTop;
  ThresholdLabelPosition get insideEndBottom => _$insideEndBottom;
  ThresholdLabelPosition get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ThresholdLabelPosition valueOf(String name) => _$valueOf(name);
  BuiltSet<ThresholdLabelPosition> get values => _$values;
}

mixin _$ThresholdLabelPositionMixin {
  // ignore: non_constant_identifier_names
  _$ThresholdLabelPositionMeta get ThresholdLabelPosition =>
      const _$ThresholdLabelPositionMeta();
}

Serializer<ThresholdLabelPosition> _$thresholdLabelPositionSerializer =
    _$ThresholdLabelPositionSerializer();

class _$ThresholdLabelPositionSerializer
    implements PrimitiveSerializer<ThresholdLabelPosition> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'start': 'start',
    'middle': 'middle',
    'end': 'end',
    'insideStart': 'insideStart',
    'insideStartTop': 'insideStartTop',
    'insideStartBottom': 'insideStartBottom',
    'insideMiddle': 'insideMiddle',
    'insideMiddleTop': 'insideMiddleTop',
    'insideMiddleBottom': 'insideMiddleBottom',
    'insideEnd': 'insideEnd',
    'insideEndTop': 'insideEndTop',
    'insideEndBottom': 'insideEndBottom',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'start': 'start',
    'middle': 'middle',
    'end': 'end',
    'insideStart': 'insideStart',
    'insideStartTop': 'insideStartTop',
    'insideStartBottom': 'insideStartBottom',
    'insideMiddle': 'insideMiddle',
    'insideMiddleTop': 'insideMiddleTop',
    'insideMiddleBottom': 'insideMiddleBottom',
    'insideEnd': 'insideEnd',
    'insideEndTop': 'insideEndTop',
    'insideEndBottom': 'insideEndBottom',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ThresholdLabelPosition];
  @override
  final String wireName = 'ThresholdLabelPosition';

  @override
  Object serialize(
    Serializers serializers,
    ThresholdLabelPosition object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ThresholdLabelPosition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ThresholdLabelPosition.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
