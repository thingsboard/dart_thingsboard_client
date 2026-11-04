// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'font_style.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FontStyle _$normal = const FontStyle._('normal');
const FontStyle _$italic = const FontStyle._('italic');
const FontStyle _$unknownDefaultOpenApi = const FontStyle._(
  'unknownDefaultOpenApi',
);

FontStyle _$valueOf(String name) {
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

final BuiltSet<FontStyle> _$values = BuiltSet<FontStyle>(const <FontStyle>[
  _$normal,
  _$italic,
  _$unknownDefaultOpenApi,
]);

class _$FontStyleMeta {
  const _$FontStyleMeta();
  FontStyle get normal => _$normal;
  FontStyle get italic => _$italic;
  FontStyle get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  FontStyle valueOf(String name) => _$valueOf(name);
  BuiltSet<FontStyle> get values => _$values;
}

mixin _$FontStyleMixin {
  // ignore: non_constant_identifier_names
  _$FontStyleMeta get FontStyle => const _$FontStyleMeta();
}

Serializer<FontStyle> _$fontStyleSerializer = _$FontStyleSerializer();

class _$FontStyleSerializer implements PrimitiveSerializer<FontStyle> {
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
  final Iterable<Type> types = const <Type>[FontStyle];
  @override
  final String wireName = 'FontStyle';

  @override
  Object serialize(
    Serializers serializers,
    FontStyle object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  FontStyle deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => FontStyle.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
