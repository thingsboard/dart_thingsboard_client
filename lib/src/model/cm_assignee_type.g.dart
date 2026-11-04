// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cm_assignee_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CMAssigneeType _$NO_ASSIGN = const CMAssigneeType._('NO_ASSIGN');
const CMAssigneeType _$ALL = const CMAssigneeType._('ALL');
const CMAssigneeType _$CUSTOMERS = const CMAssigneeType._('CUSTOMERS');
const CMAssigneeType _$USERS = const CMAssigneeType._('USERS');
const CMAssigneeType _$USER_GROUPS = const CMAssigneeType._('USER_GROUPS');
const CMAssigneeType _$unknownDefaultOpenApi = const CMAssigneeType._(
  'unknownDefaultOpenApi',
);

CMAssigneeType _$valueOf(String name) {
  switch (name) {
    case 'NO_ASSIGN':
      return _$NO_ASSIGN;
    case 'ALL':
      return _$ALL;
    case 'CUSTOMERS':
      return _$CUSTOMERS;
    case 'USERS':
      return _$USERS;
    case 'USER_GROUPS':
      return _$USER_GROUPS;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<CMAssigneeType> _$values =
    BuiltSet<CMAssigneeType>(const <CMAssigneeType>[
      _$NO_ASSIGN,
      _$ALL,
      _$CUSTOMERS,
      _$USERS,
      _$USER_GROUPS,
      _$unknownDefaultOpenApi,
    ]);

class _$CMAssigneeTypeMeta {
  const _$CMAssigneeTypeMeta();
  CMAssigneeType get NO_ASSIGN => _$NO_ASSIGN;
  CMAssigneeType get ALL => _$ALL;
  CMAssigneeType get CUSTOMERS => _$CUSTOMERS;
  CMAssigneeType get USERS => _$USERS;
  CMAssigneeType get USER_GROUPS => _$USER_GROUPS;
  CMAssigneeType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  CMAssigneeType valueOf(String name) => _$valueOf(name);
  BuiltSet<CMAssigneeType> get values => _$values;
}

mixin _$CMAssigneeTypeMixin {
  // ignore: non_constant_identifier_names
  _$CMAssigneeTypeMeta get CMAssigneeType => const _$CMAssigneeTypeMeta();
}

Serializer<CMAssigneeType> _$cMAssigneeTypeSerializer =
    _$CMAssigneeTypeSerializer();

class _$CMAssigneeTypeSerializer
    implements PrimitiveSerializer<CMAssigneeType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NO_ASSIGN': 'NO_ASSIGN',
    'ALL': 'ALL',
    'CUSTOMERS': 'CUSTOMERS',
    'USERS': 'USERS',
    'USER_GROUPS': 'USER_GROUPS',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NO_ASSIGN': 'NO_ASSIGN',
    'ALL': 'ALL',
    'CUSTOMERS': 'CUSTOMERS',
    'USERS': 'USERS',
    'USER_GROUPS': 'USER_GROUPS',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CMAssigneeType];
  @override
  final String wireName = 'CMAssigneeType';

  @override
  Object serialize(
    Serializers serializers,
    CMAssigneeType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CMAssigneeType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CMAssigneeType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
