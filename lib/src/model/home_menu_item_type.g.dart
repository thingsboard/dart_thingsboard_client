// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_menu_item_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const HomeMenuItemType _$DEFAULT = const HomeMenuItemType._('DEFAULT');
const HomeMenuItemType _$DASHBOARD = const HomeMenuItemType._('DASHBOARD');
const HomeMenuItemType _$unknownDefaultOpenApi = const HomeMenuItemType._(
  'unknownDefaultOpenApi',
);

HomeMenuItemType _$valueOf(String name) {
  switch (name) {
    case 'DEFAULT':
      return _$DEFAULT;
    case 'DASHBOARD':
      return _$DASHBOARD;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<HomeMenuItemType> _$values = BuiltSet<HomeMenuItemType>(
  const <HomeMenuItemType>[_$DEFAULT, _$DASHBOARD, _$unknownDefaultOpenApi],
);

class _$HomeMenuItemTypeMeta {
  const _$HomeMenuItemTypeMeta();
  HomeMenuItemType get DEFAULT => _$DEFAULT;
  HomeMenuItemType get DASHBOARD => _$DASHBOARD;
  HomeMenuItemType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  HomeMenuItemType valueOf(String name) => _$valueOf(name);
  BuiltSet<HomeMenuItemType> get values => _$values;
}

mixin _$HomeMenuItemTypeMixin {
  // ignore: non_constant_identifier_names
  _$HomeMenuItemTypeMeta get HomeMenuItemType => const _$HomeMenuItemTypeMeta();
}

Serializer<HomeMenuItemType> _$homeMenuItemTypeSerializer =
    _$HomeMenuItemTypeSerializer();

class _$HomeMenuItemTypeSerializer
    implements PrimitiveSerializer<HomeMenuItemType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DEFAULT': 'DEFAULT',
    'DASHBOARD': 'DASHBOARD',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DEFAULT': 'DEFAULT',
    'DASHBOARD': 'DASHBOARD',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[HomeMenuItemType];
  @override
  final String wireName = 'HomeMenuItemType';

  @override
  Object serialize(
    Serializers serializers,
    HomeMenuItemType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  HomeMenuItemType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => HomeMenuItemType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
