// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge_position.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BadgePosition _$RIGHT = const BadgePosition._('RIGHT');
const BadgePosition _$LEFT = const BadgePosition._('LEFT');
const BadgePosition _$unknownDefaultOpenApi = const BadgePosition._(
  'unknownDefaultOpenApi',
);

BadgePosition _$valueOf(String name) {
  switch (name) {
    case 'RIGHT':
      return _$RIGHT;
    case 'LEFT':
      return _$LEFT;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<BadgePosition> _$values = BuiltSet<BadgePosition>(
  const <BadgePosition>[_$RIGHT, _$LEFT, _$unknownDefaultOpenApi],
);

class _$BadgePositionMeta {
  const _$BadgePositionMeta();
  BadgePosition get RIGHT => _$RIGHT;
  BadgePosition get LEFT => _$LEFT;
  BadgePosition get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  BadgePosition valueOf(String name) => _$valueOf(name);
  BuiltSet<BadgePosition> get values => _$values;
}

mixin _$BadgePositionMixin {
  // ignore: non_constant_identifier_names
  _$BadgePositionMeta get BadgePosition => const _$BadgePositionMeta();
}

Serializer<BadgePosition> _$badgePositionSerializer =
    _$BadgePositionSerializer();

class _$BadgePositionSerializer implements PrimitiveSerializer<BadgePosition> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'RIGHT': 'RIGHT',
    'LEFT': 'LEFT',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RIGHT': 'RIGHT',
    'LEFT': 'LEFT',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BadgePosition];
  @override
  final String wireName = 'BadgePosition';

  @override
  Object serialize(
    Serializers serializers,
    BadgePosition object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BadgePosition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BadgePosition.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
