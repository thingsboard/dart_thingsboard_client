// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_size.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PageSize _$A4 = const PageSize._('A4');
const PageSize _$LETTER = const PageSize._('LETTER');
const PageSize _$LEGAL = const PageSize._('LEGAL');
const PageSize _$A5 = const PageSize._('A5');
const PageSize _$A3 = const PageSize._('A3');
const PageSize _$TABLOID = const PageSize._('TABLOID');
const PageSize _$unknownDefaultOpenApi = const PageSize._(
  'unknownDefaultOpenApi',
);

PageSize _$valueOf(String name) {
  switch (name) {
    case 'A4':
      return _$A4;
    case 'LETTER':
      return _$LETTER;
    case 'LEGAL':
      return _$LEGAL;
    case 'A5':
      return _$A5;
    case 'A3':
      return _$A3;
    case 'TABLOID':
      return _$TABLOID;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PageSize> _$values = BuiltSet<PageSize>(const <PageSize>[
  _$A4,
  _$LETTER,
  _$LEGAL,
  _$A5,
  _$A3,
  _$TABLOID,
  _$unknownDefaultOpenApi,
]);

class _$PageSizeMeta {
  const _$PageSizeMeta();
  PageSize get A4 => _$A4;
  PageSize get LETTER => _$LETTER;
  PageSize get LEGAL => _$LEGAL;
  PageSize get A5 => _$A5;
  PageSize get A3 => _$A3;
  PageSize get TABLOID => _$TABLOID;
  PageSize get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PageSize valueOf(String name) => _$valueOf(name);
  BuiltSet<PageSize> get values => _$values;
}

mixin _$PageSizeMixin {
  // ignore: non_constant_identifier_names
  _$PageSizeMeta get PageSize => const _$PageSizeMeta();
}

Serializer<PageSize> _$pageSizeSerializer = _$PageSizeSerializer();

class _$PageSizeSerializer implements PrimitiveSerializer<PageSize> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'A4': 'A4',
    'LETTER': 'LETTER',
    'LEGAL': 'LEGAL',
    'A5': 'A5',
    'A3': 'A3',
    'TABLOID': 'TABLOID',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'A4': 'A4',
    'LETTER': 'LETTER',
    'LEGAL': 'LEGAL',
    'A5': 'A5',
    'A3': 'A3',
    'TABLOID': 'TABLOID',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PageSize];
  @override
  final String wireName = 'PageSize';

  @override
  Object serialize(
    Serializers serializers,
    PageSize object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PageSize deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PageSize.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
