// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_profile_provision_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeviceProfileProvisionType _$DISABLED =
    const DeviceProfileProvisionType._('DISABLED');
const DeviceProfileProvisionType _$ALLOW_CREATE_NEW_DEVICES =
    const DeviceProfileProvisionType._('ALLOW_CREATE_NEW_DEVICES');
const DeviceProfileProvisionType _$CHECK_PRE_PROVISIONED_DEVICES =
    const DeviceProfileProvisionType._('CHECK_PRE_PROVISIONED_DEVICES');
const DeviceProfileProvisionType _$X509_CERTIFICATE_CHAIN =
    const DeviceProfileProvisionType._('X509_CERTIFICATE_CHAIN');
const DeviceProfileProvisionType _$unknownDefaultOpenApi =
    const DeviceProfileProvisionType._('unknownDefaultOpenApi');

DeviceProfileProvisionType _$valueOf(String name) {
  switch (name) {
    case 'DISABLED':
      return _$DISABLED;
    case 'ALLOW_CREATE_NEW_DEVICES':
      return _$ALLOW_CREATE_NEW_DEVICES;
    case 'CHECK_PRE_PROVISIONED_DEVICES':
      return _$CHECK_PRE_PROVISIONED_DEVICES;
    case 'X509_CERTIFICATE_CHAIN':
      return _$X509_CERTIFICATE_CHAIN;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<DeviceProfileProvisionType> _$values =
    BuiltSet<DeviceProfileProvisionType>(const <DeviceProfileProvisionType>[
      _$DISABLED,
      _$ALLOW_CREATE_NEW_DEVICES,
      _$CHECK_PRE_PROVISIONED_DEVICES,
      _$X509_CERTIFICATE_CHAIN,
      _$unknownDefaultOpenApi,
    ]);

class _$DeviceProfileProvisionTypeMeta {
  const _$DeviceProfileProvisionTypeMeta();
  DeviceProfileProvisionType get DISABLED => _$DISABLED;
  DeviceProfileProvisionType get ALLOW_CREATE_NEW_DEVICES =>
      _$ALLOW_CREATE_NEW_DEVICES;
  DeviceProfileProvisionType get CHECK_PRE_PROVISIONED_DEVICES =>
      _$CHECK_PRE_PROVISIONED_DEVICES;
  DeviceProfileProvisionType get X509_CERTIFICATE_CHAIN =>
      _$X509_CERTIFICATE_CHAIN;
  DeviceProfileProvisionType get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  DeviceProfileProvisionType valueOf(String name) => _$valueOf(name);
  BuiltSet<DeviceProfileProvisionType> get values => _$values;
}

mixin _$DeviceProfileProvisionTypeMixin {
  // ignore: non_constant_identifier_names
  _$DeviceProfileProvisionTypeMeta get DeviceProfileProvisionType =>
      const _$DeviceProfileProvisionTypeMeta();
}

Serializer<DeviceProfileProvisionType> _$deviceProfileProvisionTypeSerializer =
    _$DeviceProfileProvisionTypeSerializer();

class _$DeviceProfileProvisionTypeSerializer
    implements PrimitiveSerializer<DeviceProfileProvisionType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DISABLED': 'DISABLED',
    'ALLOW_CREATE_NEW_DEVICES': 'ALLOW_CREATE_NEW_DEVICES',
    'CHECK_PRE_PROVISIONED_DEVICES': 'CHECK_PRE_PROVISIONED_DEVICES',
    'X509_CERTIFICATE_CHAIN': 'X509_CERTIFICATE_CHAIN',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DISABLED': 'DISABLED',
    'ALLOW_CREATE_NEW_DEVICES': 'ALLOW_CREATE_NEW_DEVICES',
    'CHECK_PRE_PROVISIONED_DEVICES': 'CHECK_PRE_PROVISIONED_DEVICES',
    'X509_CERTIFICATE_CHAIN': 'X509_CERTIFICATE_CHAIN',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DeviceProfileProvisionType];
  @override
  final String wireName = 'DeviceProfileProvisionType';

  @override
  Object serialize(
    Serializers serializers,
    DeviceProfileProvisionType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeviceProfileProvisionType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeviceProfileProvisionType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
