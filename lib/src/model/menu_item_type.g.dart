// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MenuItemType _$HOME = const MenuItemType._('HOME');
const MenuItemType _$DEFAULT = const MenuItemType._('DEFAULT');
const MenuItemType _$CUSTOM = const MenuItemType._('CUSTOM');
const MenuItemType _$unknownDefaultOpenApi = const MenuItemType._(
  'unknownDefaultOpenApi',
);

MenuItemType _$valueOf(String name) {
  switch (name) {
    case 'HOME':
      return _$HOME;
    case 'DEFAULT':
      return _$DEFAULT;
    case 'CUSTOM':
      return _$CUSTOM;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<MenuItemType> _$values = BuiltSet<MenuItemType>(
  const <MenuItemType>[_$HOME, _$DEFAULT, _$CUSTOM, _$unknownDefaultOpenApi],
);

class _$MenuItemTypeMeta {
  const _$MenuItemTypeMeta();
  MenuItemType get HOME => _$HOME;
  MenuItemType get DEFAULT => _$DEFAULT;
  MenuItemType get CUSTOM => _$CUSTOM;
  MenuItemType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  MenuItemType valueOf(String name) => _$valueOf(name);
  BuiltSet<MenuItemType> get values => _$values;
}

mixin _$MenuItemTypeMixin {
  // ignore: non_constant_identifier_names
  _$MenuItemTypeMeta get MenuItemType => const _$MenuItemTypeMeta();
}

Serializer<MenuItemType> _$menuItemTypeSerializer = _$MenuItemTypeSerializer();

class _$MenuItemTypeSerializer implements PrimitiveSerializer<MenuItemType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'HOME': 'HOME',
    'DEFAULT': 'DEFAULT',
    'CUSTOM': 'CUSTOM',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'HOME': 'HOME',
    'DEFAULT': 'DEFAULT',
    'CUSTOM': 'CUSTOM',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MenuItemType];
  @override
  final String wireName = 'MenuItemType';

  @override
  Object serialize(
    Serializers serializers,
    MenuItemType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MenuItemType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MenuItemType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
