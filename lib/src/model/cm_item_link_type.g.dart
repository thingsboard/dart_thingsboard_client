// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cm_item_link_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CMItemLinkType _$URL = const CMItemLinkType._('URL');
const CMItemLinkType _$DASHBOARD = const CMItemLinkType._('DASHBOARD');
const CMItemLinkType _$unknownDefaultOpenApi = const CMItemLinkType._(
  'unknownDefaultOpenApi',
);

CMItemLinkType _$valueOf(String name) {
  switch (name) {
    case 'URL':
      return _$URL;
    case 'DASHBOARD':
      return _$DASHBOARD;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<CMItemLinkType> _$values = BuiltSet<CMItemLinkType>(
  const <CMItemLinkType>[_$URL, _$DASHBOARD, _$unknownDefaultOpenApi],
);

class _$CMItemLinkTypeMeta {
  const _$CMItemLinkTypeMeta();
  CMItemLinkType get URL => _$URL;
  CMItemLinkType get DASHBOARD => _$DASHBOARD;
  CMItemLinkType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  CMItemLinkType valueOf(String name) => _$valueOf(name);
  BuiltSet<CMItemLinkType> get values => _$values;
}

mixin _$CMItemLinkTypeMixin {
  // ignore: non_constant_identifier_names
  _$CMItemLinkTypeMeta get CMItemLinkType => const _$CMItemLinkTypeMeta();
}

Serializer<CMItemLinkType> _$cMItemLinkTypeSerializer =
    _$CMItemLinkTypeSerializer();

class _$CMItemLinkTypeSerializer
    implements PrimitiveSerializer<CMItemLinkType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'URL': 'URL',
    'DASHBOARD': 'DASHBOARD',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'URL': 'URL',
    'DASHBOARD': 'DASHBOARD',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CMItemLinkType];
  @override
  final String wireName = 'CMItemLinkType';

  @override
  Object serialize(
    Serializers serializers,
    CMItemLinkType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CMItemLinkType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CMItemLinkType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
