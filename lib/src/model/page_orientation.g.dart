// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_orientation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PageOrientation _$PORTRAIT = const PageOrientation._('PORTRAIT');
const PageOrientation _$LANDSCAPE = const PageOrientation._('LANDSCAPE');
const PageOrientation _$unknownDefaultOpenApi = const PageOrientation._(
  'unknownDefaultOpenApi',
);

PageOrientation _$valueOf(String name) {
  switch (name) {
    case 'PORTRAIT':
      return _$PORTRAIT;
    case 'LANDSCAPE':
      return _$LANDSCAPE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PageOrientation> _$values = BuiltSet<PageOrientation>(
  const <PageOrientation>[_$PORTRAIT, _$LANDSCAPE, _$unknownDefaultOpenApi],
);

class _$PageOrientationMeta {
  const _$PageOrientationMeta();
  PageOrientation get PORTRAIT => _$PORTRAIT;
  PageOrientation get LANDSCAPE => _$LANDSCAPE;
  PageOrientation get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PageOrientation valueOf(String name) => _$valueOf(name);
  BuiltSet<PageOrientation> get values => _$values;
}

mixin _$PageOrientationMixin {
  // ignore: non_constant_identifier_names
  _$PageOrientationMeta get PageOrientation => const _$PageOrientationMeta();
}

Serializer<PageOrientation> _$pageOrientationSerializer =
    _$PageOrientationSerializer();

class _$PageOrientationSerializer
    implements PrimitiveSerializer<PageOrientation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PORTRAIT': 'PORTRAIT',
    'LANDSCAPE': 'LANDSCAPE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PORTRAIT': 'PORTRAIT',
    'LANDSCAPE': 'LANDSCAPE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PageOrientation];
  @override
  final String wireName = 'PageOrientation';

  @override
  Object serialize(
    Serializers serializers,
    PageOrientation object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PageOrientation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PageOrientation.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
