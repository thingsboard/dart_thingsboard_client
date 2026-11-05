// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_font_style.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TbFontStyle _$normal = const TbFontStyle._('normal');
const TbFontStyle _$italic = const TbFontStyle._('italic');
const TbFontStyle _$unknownDefaultOpenApi = const TbFontStyle._(
  'unknownDefaultOpenApi',
);

TbFontStyle _$valueOf(String name) {
  switch (name) {
    case 'normal':
      return _$normal;
    case 'italic':
      return _$italic;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TbFontStyle> _$values = BuiltSet<TbFontStyle>(
  const <TbFontStyle>[_$normal, _$italic, _$unknownDefaultOpenApi],
);

class _$TbFontStyleMeta {
  const _$TbFontStyleMeta();
  TbFontStyle get normal => _$normal;
  TbFontStyle get italic => _$italic;
  TbFontStyle get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  TbFontStyle valueOf(String name) => _$valueOf(name);
  BuiltSet<TbFontStyle> get values => _$values;
}

mixin _$TbFontStyleMixin {
  // ignore: non_constant_identifier_names
  _$TbFontStyleMeta get TbFontStyle => const _$TbFontStyleMeta();
}

Serializer<TbFontStyle> _$tbFontStyleSerializer = _$TbFontStyleSerializer();

class _$TbFontStyleSerializer implements PrimitiveSerializer<TbFontStyle> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'normal': 'normal',
    'italic': 'italic',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'normal': 'normal',
    'italic': 'italic',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TbFontStyle];
  @override
  final String wireName = 'TbFontStyle';

  @override
  Object serialize(
    Serializers serializers,
    TbFontStyle object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TbFontStyle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TbFontStyle.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
