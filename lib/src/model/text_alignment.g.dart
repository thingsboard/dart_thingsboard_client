// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_alignment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TextAlignment _$center = const TextAlignment._('center');
const TextAlignment _$right = const TextAlignment._('right');
const TextAlignment _$left = const TextAlignment._('left');
const TextAlignment _$justify = const TextAlignment._('justify');
const TextAlignment _$unknownDefaultOpenApi = const TextAlignment._(
  'unknownDefaultOpenApi',
);

TextAlignment _$valueOf(String name) {
  switch (name) {
    case 'center':
      return _$center;
    case 'right':
      return _$right;
    case 'left':
      return _$left;
    case 'justify':
      return _$justify;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TextAlignment> _$values = BuiltSet<TextAlignment>(
  const <TextAlignment>[
    _$center,
    _$right,
    _$left,
    _$justify,
    _$unknownDefaultOpenApi,
  ],
);

class _$TextAlignmentMeta {
  const _$TextAlignmentMeta();
  TextAlignment get center => _$center;
  TextAlignment get right => _$right;
  TextAlignment get left => _$left;
  TextAlignment get justify => _$justify;
  TextAlignment get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  TextAlignment valueOf(String name) => _$valueOf(name);
  BuiltSet<TextAlignment> get values => _$values;
}

mixin _$TextAlignmentMixin {
  // ignore: non_constant_identifier_names
  _$TextAlignmentMeta get TextAlignment => const _$TextAlignmentMeta();
}

Serializer<TextAlignment> _$textAlignmentSerializer =
    _$TextAlignmentSerializer();

class _$TextAlignmentSerializer implements PrimitiveSerializer<TextAlignment> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'center': 'center',
    'right': 'right',
    'left': 'left',
    'justify': 'justify',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'center': 'center',
    'right': 'right',
    'left': 'left',
    'justify': 'justify',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TextAlignment];
  @override
  final String wireName = 'TextAlignment';

  @override
  Object serialize(
    Serializers serializers,
    TextAlignment object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TextAlignment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TextAlignment.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
