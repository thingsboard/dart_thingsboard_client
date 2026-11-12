// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cm_scope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CMScope _$SYSTEM = const CMScope._('SYSTEM');
const CMScope _$TENANT = const CMScope._('TENANT');
const CMScope _$CUSTOMER = const CMScope._('CUSTOMER');
const CMScope _$unknownDefaultOpenApi = const CMScope._(
  'unknownDefaultOpenApi',
);

CMScope _$valueOf(String name) {
  switch (name) {
    case 'SYSTEM':
      return _$SYSTEM;
    case 'TENANT':
      return _$TENANT;
    case 'CUSTOMER':
      return _$CUSTOMER;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<CMScope> _$values = BuiltSet<CMScope>(const <CMScope>[
  _$SYSTEM,
  _$TENANT,
  _$CUSTOMER,
  _$unknownDefaultOpenApi,
]);

class _$CMScopeMeta {
  const _$CMScopeMeta();
  CMScope get SYSTEM => _$SYSTEM;
  CMScope get TENANT => _$TENANT;
  CMScope get CUSTOMER => _$CUSTOMER;
  CMScope get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  CMScope valueOf(String name) => _$valueOf(name);
  BuiltSet<CMScope> get values => _$values;
}

mixin _$CMScopeMixin {
  // ignore: non_constant_identifier_names
  _$CMScopeMeta get CMScope => const _$CMScopeMeta();
}

Serializer<CMScope> _$cMScopeSerializer = _$CMScopeSerializer();

class _$CMScopeSerializer implements PrimitiveSerializer<CMScope> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SYSTEM': 'SYSTEM',
    'TENANT': 'TENANT',
    'CUSTOMER': 'CUSTOMER',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SYSTEM': 'SYSTEM',
    'TENANT': 'TENANT',
    'CUSTOMER': 'CUSTOMER',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CMScope];
  @override
  final String wireName = 'CMScope';

  @override
  Object serialize(
    Serializers serializers,
    CMScope object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CMScope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CMScope.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
