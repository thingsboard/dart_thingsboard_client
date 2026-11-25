// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_alignment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ImageAlignment _$left = const ImageAlignment._('left');
const ImageAlignment _$center = const ImageAlignment._('center');
const ImageAlignment _$right = const ImageAlignment._('right');
const ImageAlignment _$unknownDefaultOpenApi = const ImageAlignment._(
  'unknownDefaultOpenApi',
);

ImageAlignment _$valueOf(String name) {
  switch (name) {
    case 'left':
      return _$left;
    case 'center':
      return _$center;
    case 'right':
      return _$right;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ImageAlignment> _$values = BuiltSet<ImageAlignment>(
  const <ImageAlignment>[_$left, _$center, _$right, _$unknownDefaultOpenApi],
);

class _$ImageAlignmentMeta {
  const _$ImageAlignmentMeta();
  ImageAlignment get left => _$left;
  ImageAlignment get center => _$center;
  ImageAlignment get right => _$right;
  ImageAlignment get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ImageAlignment valueOf(String name) => _$valueOf(name);
  BuiltSet<ImageAlignment> get values => _$values;
}

mixin _$ImageAlignmentMixin {
  // ignore: non_constant_identifier_names
  _$ImageAlignmentMeta get ImageAlignment => const _$ImageAlignmentMeta();
}

Serializer<ImageAlignment> _$imageAlignmentSerializer =
    _$ImageAlignmentSerializer();

class _$ImageAlignmentSerializer
    implements PrimitiveSerializer<ImageAlignment> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'left': 'left',
    'center': 'center',
    'right': 'right',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'left': 'left',
    'center': 'center',
    'right': 'right',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ImageAlignment];
  @override
  final String wireName = 'ImageAlignment';

  @override
  Object serialize(
    Serializers serializers,
    ImageAlignment object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ImageAlignment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ImageAlignment.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
