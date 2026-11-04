// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'font_weight.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FontWeight _$normal = const FontWeight._('normal');
const FontWeight _$bold = const FontWeight._('bold');
const FontWeight _$n500 = const FontWeight._('n500');
const FontWeight _$unknownDefaultOpenApi = const FontWeight._(
  'unknownDefaultOpenApi',
);

FontWeight _$valueOf(String name) {
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

final BuiltSet<FontWeight> _$values = BuiltSet<FontWeight>(const <FontWeight>[
  _$normal,
  _$bold,
  _$n500,
  _$unknownDefaultOpenApi,
]);

class _$FontWeightMeta {
  const _$FontWeightMeta();
  FontWeight get normal => _$normal;
  FontWeight get bold => _$bold;
  FontWeight get n500 => _$n500;
  FontWeight get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  FontWeight valueOf(String name) => _$valueOf(name);
  BuiltSet<FontWeight> get values => _$values;
}

mixin _$FontWeightMixin {
  // ignore: non_constant_identifier_names
  _$FontWeightMeta get FontWeight => const _$FontWeightMeta();
}

Serializer<FontWeight> _$fontWeightSerializer = _$FontWeightSerializer();

class _$FontWeightSerializer implements PrimitiveSerializer<FontWeight> {
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
  final Iterable<Type> types = const <Type>[FontWeight];
  @override
  final String wireName = 'FontWeight';

  @override
  Object serialize(
    Serializers serializers,
    FontWeight object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FontWeight deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FontWeight.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
