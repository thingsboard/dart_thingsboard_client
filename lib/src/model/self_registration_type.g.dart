// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'self_registration_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SelfRegistrationType _$WEB = const SelfRegistrationType._('WEB');
const SelfRegistrationType _$MOBILE = const SelfRegistrationType._('MOBILE');
const SelfRegistrationType _$unknownDefaultOpenApi =
    const SelfRegistrationType._('unknownDefaultOpenApi');

SelfRegistrationType _$valueOf(String name) {
  switch (name) {
    case 'WEB':
      return _$WEB;
    case 'MOBILE':
      return _$MOBILE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SelfRegistrationType> _$values = BuiltSet<SelfRegistrationType>(
  const <SelfRegistrationType>[_$WEB, _$MOBILE, _$unknownDefaultOpenApi],
);

class _$SelfRegistrationTypeMeta {
  const _$SelfRegistrationTypeMeta();
  SelfRegistrationType get WEB => _$WEB;
  SelfRegistrationType get MOBILE => _$MOBILE;
  SelfRegistrationType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SelfRegistrationType valueOf(String name) => _$valueOf(name);
  BuiltSet<SelfRegistrationType> get values => _$values;
}

mixin _$SelfRegistrationTypeMixin {
  // ignore: non_constant_identifier_names
  _$SelfRegistrationTypeMeta get SelfRegistrationType =>
      const _$SelfRegistrationTypeMeta();
}

Serializer<SelfRegistrationType> _$selfRegistrationTypeSerializer =
    _$SelfRegistrationTypeSerializer();

class _$SelfRegistrationTypeSerializer
    implements PrimitiveSerializer<SelfRegistrationType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'WEB': 'WEB',
    'MOBILE': 'MOBILE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WEB': 'WEB',
    'MOBILE': 'MOBILE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SelfRegistrationType];
  @override
  final String wireName = 'SelfRegistrationType';

  @override
  Object serialize(
    Serializers serializers,
    SelfRegistrationType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SelfRegistrationType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SelfRegistrationType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
