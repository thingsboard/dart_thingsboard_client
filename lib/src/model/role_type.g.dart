// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RoleType _$GENERIC = const RoleType._('GENERIC');
const RoleType _$GROUP = const RoleType._('GROUP');
const RoleType _$unknownDefaultOpenApi = const RoleType._(
  'unknownDefaultOpenApi',
);

RoleType _$valueOf(String name) {
  switch (name) {
    case 'GENERIC':
      return _$GENERIC;
    case 'GROUP':
      return _$GROUP;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<RoleType> _$values = BuiltSet<RoleType>(const <RoleType>[
  _$GENERIC,
  _$GROUP,
  _$unknownDefaultOpenApi,
]);

class _$RoleTypeMeta {
  const _$RoleTypeMeta();
  RoleType get GENERIC => _$GENERIC;
  RoleType get GROUP => _$GROUP;
  RoleType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  RoleType valueOf(String name) => _$valueOf(name);
  BuiltSet<RoleType> get values => _$values;
}

mixin _$RoleTypeMixin {
  // ignore: non_constant_identifier_names
  _$RoleTypeMeta get RoleType => const _$RoleTypeMeta();
}

Serializer<RoleType> _$roleTypeSerializer = _$RoleTypeSerializer();

class _$RoleTypeSerializer implements PrimitiveSerializer<RoleType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'GENERIC': 'GENERIC',
    'GROUP': 'GROUP',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'GENERIC': 'GENERIC',
    'GROUP': 'GROUP',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RoleType];
  @override
  final String wireName = 'RoleType';

  @override
  Object serialize(
    Serializers serializers,
    RoleType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RoleType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RoleType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
