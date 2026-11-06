// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_conflict_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NameConflictPolicy _$FAIL = const NameConflictPolicy._('FAIL');
const NameConflictPolicy _$UNIQUIFY = const NameConflictPolicy._('UNIQUIFY');
const NameConflictPolicy _$unknownDefaultOpenApi = const NameConflictPolicy._(
  'unknownDefaultOpenApi',
);

NameConflictPolicy _$valueOf(String name) {
  switch (name) {
    case 'FAIL':
      return _$FAIL;
    case 'UNIQUIFY':
      return _$UNIQUIFY;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<NameConflictPolicy> _$values = BuiltSet<NameConflictPolicy>(
  const <NameConflictPolicy>[_$FAIL, _$UNIQUIFY, _$unknownDefaultOpenApi],
);

class _$NameConflictPolicyMeta {
  const _$NameConflictPolicyMeta();
  NameConflictPolicy get FAIL => _$FAIL;
  NameConflictPolicy get UNIQUIFY => _$UNIQUIFY;
  NameConflictPolicy get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  NameConflictPolicy valueOf(String name) => _$valueOf(name);
  BuiltSet<NameConflictPolicy> get values => _$values;
}

mixin _$NameConflictPolicyMixin {
  // ignore: non_constant_identifier_names
  _$NameConflictPolicyMeta get NameConflictPolicy =>
      const _$NameConflictPolicyMeta();
}

Serializer<NameConflictPolicy> _$nameConflictPolicySerializer =
    _$NameConflictPolicySerializer();

class _$NameConflictPolicySerializer
    implements PrimitiveSerializer<NameConflictPolicy> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FAIL': 'FAIL',
    'UNIQUIFY': 'UNIQUIFY',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FAIL': 'FAIL',
    'UNIQUIFY': 'UNIQUIFY',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[NameConflictPolicy];
  @override
  final String wireName = 'NameConflictPolicy';

  @override
  Object serialize(
    Serializers serializers,
    NameConflictPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NameConflictPolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NameConflictPolicy.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
