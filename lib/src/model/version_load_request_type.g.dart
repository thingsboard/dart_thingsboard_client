// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_load_request_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VersionLoadRequestType _$SINGLE_ENTITY = const VersionLoadRequestType._(
  'SINGLE_ENTITY',
);
const VersionLoadRequestType _$ENTITY_TYPE = const VersionLoadRequestType._(
  'ENTITY_TYPE',
);
const VersionLoadRequestType _$unknownDefaultOpenApi =
    const VersionLoadRequestType._('unknownDefaultOpenApi');

VersionLoadRequestType _$valueOf(String name) {
  switch (name) {
    case 'SINGLE_ENTITY':
      return _$SINGLE_ENTITY;
    case 'ENTITY_TYPE':
      return _$ENTITY_TYPE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<VersionLoadRequestType> _$values =
    BuiltSet<VersionLoadRequestType>(const <VersionLoadRequestType>[
      _$SINGLE_ENTITY,
      _$ENTITY_TYPE,
      _$unknownDefaultOpenApi,
    ]);

class _$VersionLoadRequestTypeMeta {
  const _$VersionLoadRequestTypeMeta();
  VersionLoadRequestType get SINGLE_ENTITY => _$SINGLE_ENTITY;
  VersionLoadRequestType get ENTITY_TYPE => _$ENTITY_TYPE;
  VersionLoadRequestType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  VersionLoadRequestType valueOf(String name) => _$valueOf(name);
  BuiltSet<VersionLoadRequestType> get values => _$values;
}

mixin _$VersionLoadRequestTypeMixin {
  // ignore: non_constant_identifier_names
  _$VersionLoadRequestTypeMeta get VersionLoadRequestType =>
      const _$VersionLoadRequestTypeMeta();
}

Serializer<VersionLoadRequestType> _$versionLoadRequestTypeSerializer =
    _$VersionLoadRequestTypeSerializer();

class _$VersionLoadRequestTypeSerializer
    implements PrimitiveSerializer<VersionLoadRequestType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SINGLE_ENTITY': 'SINGLE_ENTITY',
    'ENTITY_TYPE': 'ENTITY_TYPE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SINGLE_ENTITY': 'SINGLE_ENTITY',
    'ENTITY_TYPE': 'ENTITY_TYPE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[VersionLoadRequestType];
  @override
  final String wireName = 'VersionLoadRequestType';

  @override
  Object serialize(
    Serializers serializers,
    VersionLoadRequestType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  VersionLoadRequestType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => VersionLoadRequestType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
