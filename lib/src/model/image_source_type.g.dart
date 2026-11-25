// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_source_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImageSourceType _$image = const ImageSourceType._('image');
const ImageSourceType _$entityKey = const ImageSourceType._('entityKey');
const ImageSourceType _$unknownDefaultOpenApi = const ImageSourceType._(
  'unknownDefaultOpenApi',
);

ImageSourceType _$valueOf(String name) {
  switch (name) {
    case 'image':
      return _$image;
    case 'entityKey':
      return _$entityKey;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ImageSourceType> _$values = BuiltSet<ImageSourceType>(
  const <ImageSourceType>[_$image, _$entityKey, _$unknownDefaultOpenApi],
);

class _$ImageSourceTypeMeta {
  const _$ImageSourceTypeMeta();
  ImageSourceType get image => _$image;
  ImageSourceType get entityKey => _$entityKey;
  ImageSourceType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ImageSourceType valueOf(String name) => _$valueOf(name);
  BuiltSet<ImageSourceType> get values => _$values;
}

mixin _$ImageSourceTypeMixin {
  // ignore: non_constant_identifier_names
  _$ImageSourceTypeMeta get ImageSourceType => const _$ImageSourceTypeMeta();
}

Serializer<ImageSourceType> _$imageSourceTypeSerializer =
    _$ImageSourceTypeSerializer();

class _$ImageSourceTypeSerializer
    implements PrimitiveSerializer<ImageSourceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'image': 'image',
    'entityKey': 'entityKey',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'image': 'image',
    'entityKey': 'entityKey',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ImageSourceType];
  @override
  final String wireName = 'ImageSourceType';

  @override
  Object serialize(
    Serializers serializers,
    ImageSourceType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ImageSourceType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ImageSourceType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
