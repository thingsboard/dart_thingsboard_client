// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_credentials_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeviceCredentialsType _$ACCESS_TOKEN = const DeviceCredentialsType._(
  'ACCESS_TOKEN',
);
const DeviceCredentialsType _$X509_CERTIFICATE = const DeviceCredentialsType._(
  'X509_CERTIFICATE',
);
const DeviceCredentialsType _$MQTT_BASIC = const DeviceCredentialsType._(
  'MQTT_BASIC',
);
const DeviceCredentialsType _$LWM2M_CREDENTIALS = const DeviceCredentialsType._(
  'LWM2M_CREDENTIALS',
);
const DeviceCredentialsType _$unknownDefaultOpenApi =
    const DeviceCredentialsType._('unknownDefaultOpenApi');

DeviceCredentialsType _$valueOf(String name) {
  switch (name) {
    case 'ACCESS_TOKEN':
      return _$ACCESS_TOKEN;
    case 'X509_CERTIFICATE':
      return _$X509_CERTIFICATE;
    case 'MQTT_BASIC':
      return _$MQTT_BASIC;
    case 'LWM2M_CREDENTIALS':
      return _$LWM2M_CREDENTIALS;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<DeviceCredentialsType> _$values =
    BuiltSet<DeviceCredentialsType>(const <DeviceCredentialsType>[
      _$ACCESS_TOKEN,
      _$X509_CERTIFICATE,
      _$MQTT_BASIC,
      _$LWM2M_CREDENTIALS,
      _$unknownDefaultOpenApi,
    ]);

class _$DeviceCredentialsTypeMeta {
  const _$DeviceCredentialsTypeMeta();
  DeviceCredentialsType get ACCESS_TOKEN => _$ACCESS_TOKEN;
  DeviceCredentialsType get X509_CERTIFICATE => _$X509_CERTIFICATE;
  DeviceCredentialsType get MQTT_BASIC => _$MQTT_BASIC;
  DeviceCredentialsType get LWM2M_CREDENTIALS => _$LWM2M_CREDENTIALS;
  DeviceCredentialsType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  DeviceCredentialsType valueOf(String name) => _$valueOf(name);
  BuiltSet<DeviceCredentialsType> get values => _$values;
}

mixin _$DeviceCredentialsTypeMixin {
  // ignore: non_constant_identifier_names
  _$DeviceCredentialsTypeMeta get DeviceCredentialsType =>
      const _$DeviceCredentialsTypeMeta();
}

Serializer<DeviceCredentialsType> _$deviceCredentialsTypeSerializer =
    _$DeviceCredentialsTypeSerializer();

class _$DeviceCredentialsTypeSerializer
    implements PrimitiveSerializer<DeviceCredentialsType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACCESS_TOKEN': 'ACCESS_TOKEN',
    'X509_CERTIFICATE': 'X509_CERTIFICATE',
    'MQTT_BASIC': 'MQTT_BASIC',
    'LWM2M_CREDENTIALS': 'LWM2M_CREDENTIALS',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACCESS_TOKEN': 'ACCESS_TOKEN',
    'X509_CERTIFICATE': 'X509_CERTIFICATE',
    'MQTT_BASIC': 'MQTT_BASIC',
    'LWM2M_CREDENTIALS': 'LWM2M_CREDENTIALS',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DeviceCredentialsType];
  @override
  final String wireName = 'DeviceCredentialsType';

  @override
  Object serialize(
    Serializers serializers,
    DeviceCredentialsType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeviceCredentialsType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeviceCredentialsType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
