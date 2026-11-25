// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'two_fa_provider_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TwoFaProviderType _$TOTP = const TwoFaProviderType._('TOTP');
const TwoFaProviderType _$SMS = const TwoFaProviderType._('SMS');
const TwoFaProviderType _$EMAIL = const TwoFaProviderType._('EMAIL');
const TwoFaProviderType _$BACKUP_CODE = const TwoFaProviderType._(
  'BACKUP_CODE',
);
const TwoFaProviderType _$unknownDefaultOpenApi = const TwoFaProviderType._(
  'unknownDefaultOpenApi',
);

TwoFaProviderType _$valueOf(String name) {
  switch (name) {
    case 'TOTP':
      return _$TOTP;
    case 'SMS':
      return _$SMS;
    case 'EMAIL':
      return _$EMAIL;
    case 'BACKUP_CODE':
      return _$BACKUP_CODE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TwoFaProviderType> _$values = BuiltSet<TwoFaProviderType>(
  const <TwoFaProviderType>[
    _$TOTP,
    _$SMS,
    _$EMAIL,
    _$BACKUP_CODE,
    _$unknownDefaultOpenApi,
  ],
);

class _$TwoFaProviderTypeMeta {
  const _$TwoFaProviderTypeMeta();
  TwoFaProviderType get TOTP => _$TOTP;
  TwoFaProviderType get SMS => _$SMS;
  TwoFaProviderType get EMAIL => _$EMAIL;
  TwoFaProviderType get BACKUP_CODE => _$BACKUP_CODE;
  TwoFaProviderType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  TwoFaProviderType valueOf(String name) => _$valueOf(name);
  BuiltSet<TwoFaProviderType> get values => _$values;
}

mixin _$TwoFaProviderTypeMixin {
  // ignore: non_constant_identifier_names
  _$TwoFaProviderTypeMeta get TwoFaProviderType =>
      const _$TwoFaProviderTypeMeta();
}

Serializer<TwoFaProviderType> _$twoFaProviderTypeSerializer =
    _$TwoFaProviderTypeSerializer();

class _$TwoFaProviderTypeSerializer
    implements PrimitiveSerializer<TwoFaProviderType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TOTP': 'TOTP',
    'SMS': 'SMS',
    'EMAIL': 'EMAIL',
    'BACKUP_CODE': 'BACKUP_CODE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TOTP': 'TOTP',
    'SMS': 'SMS',
    'EMAIL': 'EMAIL',
    'BACKUP_CODE': 'BACKUP_CODE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TwoFaProviderType];
  @override
  final String wireName = 'TwoFaProviderType';

  @override
  Object serialize(
    Serializers serializers,
    TwoFaProviderType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TwoFaProviderType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TwoFaProviderType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
