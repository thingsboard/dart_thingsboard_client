// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_scope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AttributeScope _$CLIENT_SCOPE = const AttributeScope._('CLIENT_SCOPE');
const AttributeScope _$SERVER_SCOPE = const AttributeScope._('SERVER_SCOPE');
const AttributeScope _$SHARED_SCOPE = const AttributeScope._('SHARED_SCOPE');
const AttributeScope _$unknownDefaultOpenApi = const AttributeScope._(
  'unknownDefaultOpenApi',
);

AttributeScope _$valueOf(String name) {
  switch (name) {
    case 'CLIENT_SCOPE':
      return _$CLIENT_SCOPE;
    case 'SERVER_SCOPE':
      return _$SERVER_SCOPE;
    case 'SHARED_SCOPE':
      return _$SHARED_SCOPE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AttributeScope> _$values = BuiltSet<AttributeScope>(
  const <AttributeScope>[
    _$CLIENT_SCOPE,
    _$SERVER_SCOPE,
    _$SHARED_SCOPE,
    _$unknownDefaultOpenApi,
  ],
);

class _$AttributeScopeMeta {
  const _$AttributeScopeMeta();
  AttributeScope get CLIENT_SCOPE => _$CLIENT_SCOPE;
  AttributeScope get SERVER_SCOPE => _$SERVER_SCOPE;
  AttributeScope get SHARED_SCOPE => _$SHARED_SCOPE;
  AttributeScope get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AttributeScope valueOf(String name) => _$valueOf(name);
  BuiltSet<AttributeScope> get values => _$values;
}

mixin _$AttributeScopeMixin {
  // ignore: non_constant_identifier_names
  _$AttributeScopeMeta get AttributeScope => const _$AttributeScopeMeta();
}

Serializer<AttributeScope> _$attributeScopeSerializer =
    _$AttributeScopeSerializer();

class _$AttributeScopeSerializer
    implements PrimitiveSerializer<AttributeScope> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CLIENT_SCOPE': 'CLIENT_SCOPE',
    'SERVER_SCOPE': 'SERVER_SCOPE',
    'SHARED_SCOPE': 'SHARED_SCOPE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CLIENT_SCOPE': 'CLIENT_SCOPE',
    'SERVER_SCOPE': 'SERVER_SCOPE',
    'SHARED_SCOPE': 'SHARED_SCOPE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AttributeScope];
  @override
  final String wireName = 'AttributeScope';

  @override
  Object serialize(
    Serializers serializers,
    AttributeScope object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AttributeScope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AttributeScope.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
