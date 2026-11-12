// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_width_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImageWidthType _$fitWidth = const ImageWidthType._('fitWidth');
const ImageWidthType _$original = const ImageWidthType._('original');
const ImageWidthType _$custom = const ImageWidthType._('custom');
const ImageWidthType _$unknownDefaultOpenApi = const ImageWidthType._(
  'unknownDefaultOpenApi',
);

ImageWidthType _$valueOf(String name) {
  switch (name) {
    case 'fitWidth':
      return _$fitWidth;
    case 'original':
      return _$original;
    case 'custom':
      return _$custom;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ImageWidthType> _$values = BuiltSet<ImageWidthType>(
  const <ImageWidthType>[
    _$fitWidth,
    _$original,
    _$custom,
    _$unknownDefaultOpenApi,
  ],
);

class _$ImageWidthTypeMeta {
  const _$ImageWidthTypeMeta();
  ImageWidthType get fitWidth => _$fitWidth;
  ImageWidthType get original => _$original;
  ImageWidthType get custom => _$custom;
  ImageWidthType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ImageWidthType valueOf(String name) => _$valueOf(name);
  BuiltSet<ImageWidthType> get values => _$values;
}

mixin _$ImageWidthTypeMixin {
  // ignore: non_constant_identifier_names
  _$ImageWidthTypeMeta get ImageWidthType => const _$ImageWidthTypeMeta();
}

Serializer<ImageWidthType> _$imageWidthTypeSerializer =
    _$ImageWidthTypeSerializer();

class _$ImageWidthTypeSerializer
    implements PrimitiveSerializer<ImageWidthType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'fitWidth': 'fitWidth',
    'original': 'original',
    'custom': 'custom',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'fitWidth': 'fitWidth',
    'original': 'original',
    'custom': 'custom',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ImageWidthType];
  @override
  final String wireName = 'ImageWidthType';

  @override
  Object serialize(
    Serializers serializers,
    ImageWidthType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ImageWidthType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ImageWidthType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
