// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_claim_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LicenseClaimMode _$ONLINE = const LicenseClaimMode._('ONLINE');
const LicenseClaimMode _$OFFLINE = const LicenseClaimMode._('OFFLINE');
const LicenseClaimMode _$unknownDefaultOpenApi = const LicenseClaimMode._(
  'unknownDefaultOpenApi',
);

LicenseClaimMode _$valueOf(String name) {
  switch (name) {
    case 'ONLINE':
      return _$ONLINE;
    case 'OFFLINE':
      return _$OFFLINE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<LicenseClaimMode> _$values = BuiltSet<LicenseClaimMode>(
  const <LicenseClaimMode>[_$ONLINE, _$OFFLINE, _$unknownDefaultOpenApi],
);

class _$LicenseClaimModeMeta {
  const _$LicenseClaimModeMeta();
  LicenseClaimMode get ONLINE => _$ONLINE;
  LicenseClaimMode get OFFLINE => _$OFFLINE;
  LicenseClaimMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  LicenseClaimMode valueOf(String name) => _$valueOf(name);
  BuiltSet<LicenseClaimMode> get values => _$values;
}

mixin _$LicenseClaimModeMixin {
  // ignore: non_constant_identifier_names
  _$LicenseClaimModeMeta get LicenseClaimMode => const _$LicenseClaimModeMeta();
}

Serializer<LicenseClaimMode> _$licenseClaimModeSerializer =
    _$LicenseClaimModeSerializer();

class _$LicenseClaimModeSerializer
    implements PrimitiveSerializer<LicenseClaimMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ONLINE': 'ONLINE',
    'OFFLINE': 'OFFLINE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ONLINE': 'ONLINE',
    'OFFLINE': 'OFFLINE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LicenseClaimMode];
  @override
  final String wireName = 'LicenseClaimMode';

  @override
  Object serialize(
    Serializers serializers,
    LicenseClaimMode object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LicenseClaimMode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LicenseClaimMode.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
