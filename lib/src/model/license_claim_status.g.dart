// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_claim_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LicenseClaimStatus _$NOT_REQUESTED = const LicenseClaimStatus._(
  'NOT_REQUESTED',
);
const LicenseClaimStatus _$PENDING = const LicenseClaimStatus._('PENDING');
const LicenseClaimStatus _$EXPIRED = const LicenseClaimStatus._('EXPIRED');
const LicenseClaimStatus _$ACTIVATED = const LicenseClaimStatus._('ACTIVATED');
const LicenseClaimStatus _$unknownDefaultOpenApi = const LicenseClaimStatus._(
  'unknownDefaultOpenApi',
);

LicenseClaimStatus _$valueOf(String name) {
  switch (name) {
    case 'NOT_REQUESTED':
      return _$NOT_REQUESTED;
    case 'PENDING':
      return _$PENDING;
    case 'EXPIRED':
      return _$EXPIRED;
    case 'ACTIVATED':
      return _$ACTIVATED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<LicenseClaimStatus> _$values = BuiltSet<LicenseClaimStatus>(
  const <LicenseClaimStatus>[
    _$NOT_REQUESTED,
    _$PENDING,
    _$EXPIRED,
    _$ACTIVATED,
    _$unknownDefaultOpenApi,
  ],
);

class _$LicenseClaimStatusMeta {
  const _$LicenseClaimStatusMeta();
  LicenseClaimStatus get NOT_REQUESTED => _$NOT_REQUESTED;
  LicenseClaimStatus get PENDING => _$PENDING;
  LicenseClaimStatus get EXPIRED => _$EXPIRED;
  LicenseClaimStatus get ACTIVATED => _$ACTIVATED;
  LicenseClaimStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  LicenseClaimStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<LicenseClaimStatus> get values => _$values;
}

mixin _$LicenseClaimStatusMixin {
  // ignore: non_constant_identifier_names
  _$LicenseClaimStatusMeta get LicenseClaimStatus =>
      const _$LicenseClaimStatusMeta();
}

Serializer<LicenseClaimStatus> _$licenseClaimStatusSerializer =
    _$LicenseClaimStatusSerializer();

class _$LicenseClaimStatusSerializer
    implements PrimitiveSerializer<LicenseClaimStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NOT_REQUESTED': 'NOT_REQUESTED',
    'PENDING': 'PENDING',
    'EXPIRED': 'EXPIRED',
    'ACTIVATED': 'ACTIVATED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NOT_REQUESTED': 'NOT_REQUESTED',
    'PENDING': 'PENDING',
    'EXPIRED': 'EXPIRED',
    'ACTIVATED': 'ACTIVATED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LicenseClaimStatus];
  @override
  final String wireName = 'LicenseClaimStatus';

  @override
  Object serialize(
    Serializers serializers,
    LicenseClaimStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LicenseClaimStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LicenseClaimStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
