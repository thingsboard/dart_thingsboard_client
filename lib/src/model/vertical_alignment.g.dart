// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vertical_alignment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VerticalAlignment _$bottom = const VerticalAlignment._('bottom');
const VerticalAlignment _$top = const VerticalAlignment._('top');
const VerticalAlignment _$middle = const VerticalAlignment._('middle');
const VerticalAlignment _$unknownDefaultOpenApi = const VerticalAlignment._(
  'unknownDefaultOpenApi',
);

VerticalAlignment _$valueOf(String name) {
  switch (name) {
    case 'bottom':
      return _$bottom;
    case 'top':
      return _$top;
    case 'middle':
      return _$middle;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<VerticalAlignment> _$values = BuiltSet<VerticalAlignment>(
  const <VerticalAlignment>[_$bottom, _$top, _$middle, _$unknownDefaultOpenApi],
);

class _$VerticalAlignmentMeta {
  const _$VerticalAlignmentMeta();
  VerticalAlignment get bottom => _$bottom;
  VerticalAlignment get top => _$top;
  VerticalAlignment get middle => _$middle;
  VerticalAlignment get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  VerticalAlignment valueOf(String name) => _$valueOf(name);
  BuiltSet<VerticalAlignment> get values => _$values;
}

mixin _$VerticalAlignmentMixin {
  // ignore: non_constant_identifier_names
  _$VerticalAlignmentMeta get VerticalAlignment =>
      const _$VerticalAlignmentMeta();
}

Serializer<VerticalAlignment> _$verticalAlignmentSerializer =
    _$VerticalAlignmentSerializer();

class _$VerticalAlignmentSerializer
    implements PrimitiveSerializer<VerticalAlignment> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'bottom': 'bottom',
    'top': 'top',
    'middle': 'middle',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'bottom': 'bottom',
    'top': 'top',
    'middle': 'middle',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[VerticalAlignment];
  @override
  final String wireName = 'VerticalAlignment';

  @override
  Object serialize(
    Serializers serializers,
    VerticalAlignment object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  VerticalAlignment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => VerticalAlignment.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
