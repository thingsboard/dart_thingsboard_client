// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authority.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Authority _$SYS_ADMIN = const Authority._('SYS_ADMIN');
const Authority _$TENANT_ADMIN = const Authority._('TENANT_ADMIN');
const Authority _$CUSTOMER_USER = const Authority._('CUSTOMER_USER');
const Authority _$REFRESH_TOKEN = const Authority._('REFRESH_TOKEN');
const Authority _$PRE_VERIFICATION_TOKEN = const Authority._(
  'PRE_VERIFICATION_TOKEN',
);
const Authority _$MFA_CONFIGURATION_TOKEN = const Authority._(
  'MFA_CONFIGURATION_TOKEN',
);
const Authority _$unknownDefaultOpenApi = const Authority._(
  'unknownDefaultOpenApi',
);

Authority _$valueOf(String name) {
  switch (name) {
    case 'SYS_ADMIN':
      return _$SYS_ADMIN;
    case 'TENANT_ADMIN':
      return _$TENANT_ADMIN;
    case 'CUSTOMER_USER':
      return _$CUSTOMER_USER;
    case 'REFRESH_TOKEN':
      return _$REFRESH_TOKEN;
    case 'PRE_VERIFICATION_TOKEN':
      return _$PRE_VERIFICATION_TOKEN;
    case 'MFA_CONFIGURATION_TOKEN':
      return _$MFA_CONFIGURATION_TOKEN;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<Authority> _$values = BuiltSet<Authority>(const <Authority>[
  _$SYS_ADMIN,
  _$TENANT_ADMIN,
  _$CUSTOMER_USER,
  _$REFRESH_TOKEN,
  _$PRE_VERIFICATION_TOKEN,
  _$MFA_CONFIGURATION_TOKEN,
  _$unknownDefaultOpenApi,
]);

class _$AuthorityMeta {
  const _$AuthorityMeta();
  Authority get SYS_ADMIN => _$SYS_ADMIN;
  Authority get TENANT_ADMIN => _$TENANT_ADMIN;
  Authority get CUSTOMER_USER => _$CUSTOMER_USER;
  Authority get REFRESH_TOKEN => _$REFRESH_TOKEN;
  Authority get PRE_VERIFICATION_TOKEN => _$PRE_VERIFICATION_TOKEN;
  Authority get MFA_CONFIGURATION_TOKEN => _$MFA_CONFIGURATION_TOKEN;
  Authority get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  Authority valueOf(String name) => _$valueOf(name);
  BuiltSet<Authority> get values => _$values;
}

mixin _$AuthorityMixin {
  // ignore: non_constant_identifier_names
  _$AuthorityMeta get Authority => const _$AuthorityMeta();
}

Serializer<Authority> _$authoritySerializer = _$AuthoritySerializer();

class _$AuthoritySerializer implements PrimitiveSerializer<Authority> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SYS_ADMIN': 'SYS_ADMIN',
    'TENANT_ADMIN': 'TENANT_ADMIN',
    'CUSTOMER_USER': 'CUSTOMER_USER',
    'REFRESH_TOKEN': 'REFRESH_TOKEN',
    'PRE_VERIFICATION_TOKEN': 'PRE_VERIFICATION_TOKEN',
    'MFA_CONFIGURATION_TOKEN': 'MFA_CONFIGURATION_TOKEN',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SYS_ADMIN': 'SYS_ADMIN',
    'TENANT_ADMIN': 'TENANT_ADMIN',
    'CUSTOMER_USER': 'CUSTOMER_USER',
    'REFRESH_TOKEN': 'REFRESH_TOKEN',
    'PRE_VERIFICATION_TOKEN': 'PRE_VERIFICATION_TOKEN',
    'MFA_CONFIGURATION_TOKEN': 'MFA_CONFIGURATION_TOKEN',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[Authority];
  @override
  final String wireName = 'Authority';

  @override
  Object serialize(
    Serializers serializers,
    Authority object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  Authority deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => Authority.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
