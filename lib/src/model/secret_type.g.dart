// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secret_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SecretType _$TEXT = const SecretType._('TEXT');
const SecretType _$TEXT_FILE = const SecretType._('TEXT_FILE');
const SecretType _$unknownDefaultOpenApi = const SecretType._(
  'unknownDefaultOpenApi',
);

SecretType _$valueOf(String name) {
  switch (name) {
    case 'TEXT':
      return _$TEXT;
    case 'TEXT_FILE':
      return _$TEXT_FILE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SecretType> _$values = BuiltSet<SecretType>(const <SecretType>[
  _$TEXT,
  _$TEXT_FILE,
  _$unknownDefaultOpenApi,
]);

class _$SecretTypeMeta {
  const _$SecretTypeMeta();
  SecretType get TEXT => _$TEXT;
  SecretType get TEXT_FILE => _$TEXT_FILE;
  SecretType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SecretType valueOf(String name) => _$valueOf(name);
  BuiltSet<SecretType> get values => _$values;
}

mixin _$SecretTypeMixin {
  // ignore: non_constant_identifier_names
  _$SecretTypeMeta get SecretType => const _$SecretTypeMeta();
}

Serializer<SecretType> _$secretTypeSerializer = _$SecretTypeSerializer();

class _$SecretTypeSerializer implements PrimitiveSerializer<SecretType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TEXT': 'TEXT',
    'TEXT_FILE': 'TEXT_FILE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TEXT': 'TEXT',
    'TEXT_FILE': 'TEXT_FILE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SecretType];
  @override
  final String wireName = 'SecretType';

  @override
  Object serialize(
    Serializers serializers,
    SecretType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SecretType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SecretType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
