// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_font_weight.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TbFontWeight _$normal = const TbFontWeight._('normal');
const TbFontWeight _$bold = const TbFontWeight._('bold');
const TbFontWeight _$n500 = const TbFontWeight._('n500');
const TbFontWeight _$unknownDefaultOpenApi = const TbFontWeight._(
  'unknownDefaultOpenApi',
);

TbFontWeight _$valueOf(String name) {
  switch (name) {
    case 'normal':
      return _$normal;
    case 'bold':
      return _$bold;
    case 'n500':
      return _$n500;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TbFontWeight> _$values = BuiltSet<TbFontWeight>(
  const <TbFontWeight>[_$normal, _$bold, _$n500, _$unknownDefaultOpenApi],
);

class _$TbFontWeightMeta {
  const _$TbFontWeightMeta();
  TbFontWeight get normal => _$normal;
  TbFontWeight get bold => _$bold;
  TbFontWeight get n500 => _$n500;
  TbFontWeight get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  TbFontWeight valueOf(String name) => _$valueOf(name);
  BuiltSet<TbFontWeight> get values => _$values;
}

mixin _$TbFontWeightMixin {
  // ignore: non_constant_identifier_names
  _$TbFontWeightMeta get TbFontWeight => const _$TbFontWeightMeta();
}

Serializer<TbFontWeight> _$tbFontWeightSerializer = _$TbFontWeightSerializer();

class _$TbFontWeightSerializer implements PrimitiveSerializer<TbFontWeight> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'normal': 'normal',
    'bold': 'bold',
    'n500': '500',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'normal': 'normal',
    'bold': 'bold',
    '500': 'n500',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TbFontWeight];
  @override
  final String wireName = 'TbFontWeight';

  @override
  Object serialize(
    Serializers serializers,
    TbFontWeight object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TbFontWeight deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TbFontWeight.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
