// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_create_request_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VersionCreateRequestType _$SINGLE_ENTITY =
    const VersionCreateRequestType._('SINGLE_ENTITY');
const VersionCreateRequestType _$COMPLEX = const VersionCreateRequestType._(
  'COMPLEX',
);
const VersionCreateRequestType _$unknownDefaultOpenApi =
    const VersionCreateRequestType._('unknownDefaultOpenApi');

VersionCreateRequestType _$valueOf(String name) {
  switch (name) {
    case 'SINGLE_ENTITY':
      return _$SINGLE_ENTITY;
    case 'COMPLEX':
      return _$COMPLEX;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<VersionCreateRequestType> _$values =
    BuiltSet<VersionCreateRequestType>(const <VersionCreateRequestType>[
      _$SINGLE_ENTITY,
      _$COMPLEX,
      _$unknownDefaultOpenApi,
    ]);

class _$VersionCreateRequestTypeMeta {
  const _$VersionCreateRequestTypeMeta();
  VersionCreateRequestType get SINGLE_ENTITY => _$SINGLE_ENTITY;
  VersionCreateRequestType get COMPLEX => _$COMPLEX;
  VersionCreateRequestType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  VersionCreateRequestType valueOf(String name) => _$valueOf(name);
  BuiltSet<VersionCreateRequestType> get values => _$values;
}

mixin _$VersionCreateRequestTypeMixin {
  // ignore: non_constant_identifier_names
  _$VersionCreateRequestTypeMeta get VersionCreateRequestType =>
      const _$VersionCreateRequestTypeMeta();
}

Serializer<VersionCreateRequestType> _$versionCreateRequestTypeSerializer =
    _$VersionCreateRequestTypeSerializer();

class _$VersionCreateRequestTypeSerializer
    implements PrimitiveSerializer<VersionCreateRequestType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SINGLE_ENTITY': 'SINGLE_ENTITY',
    'COMPLEX': 'COMPLEX',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SINGLE_ENTITY': 'SINGLE_ENTITY',
    'COMPLEX': 'COMPLEX',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[VersionCreateRequestType];
  @override
  final String wireName = 'VersionCreateRequestType';

  @override
  Object serialize(
    Serializers serializers,
    VersionCreateRequestType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  VersionCreateRequestType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => VersionCreateRequestType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
