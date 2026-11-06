// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cm_item_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CMItemType _$LINK = const CMItemType._('LINK');
const CMItemType _$SECTION = const CMItemType._('SECTION');
const CMItemType _$unknownDefaultOpenApi = const CMItemType._(
  'unknownDefaultOpenApi',
);

CMItemType _$valueOf(String name) {
  switch (name) {
    case 'LINK':
      return _$LINK;
    case 'SECTION':
      return _$SECTION;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<CMItemType> _$values = BuiltSet<CMItemType>(const <CMItemType>[
  _$LINK,
  _$SECTION,
  _$unknownDefaultOpenApi,
]);

class _$CMItemTypeMeta {
  const _$CMItemTypeMeta();
  CMItemType get LINK => _$LINK;
  CMItemType get SECTION => _$SECTION;
  CMItemType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  CMItemType valueOf(String name) => _$valueOf(name);
  BuiltSet<CMItemType> get values => _$values;
}

mixin _$CMItemTypeMixin {
  // ignore: non_constant_identifier_names
  _$CMItemTypeMeta get CMItemType => const _$CMItemTypeMeta();
}

Serializer<CMItemType> _$cMItemTypeSerializer = _$CMItemTypeSerializer();

class _$CMItemTypeSerializer implements PrimitiveSerializer<CMItemType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LINK': 'LINK',
    'SECTION': 'SECTION',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LINK': 'LINK',
    'SECTION': 'SECTION',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CMItemType];
  @override
  final String wireName = 'CMItemType';

  @override
  Object serialize(
    Serializers serializers,
    CMItemType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CMItemType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CMItemType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
