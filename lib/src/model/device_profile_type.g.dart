// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_profile_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeviceProfileType _$DEFAULT = const DeviceProfileType._('DEFAULT');
const DeviceProfileType _$unknownDefaultOpenApi = const DeviceProfileType._(
  'unknownDefaultOpenApi',
);

DeviceProfileType _$valueOf(String name) {
  switch (name) {
    case 'DEFAULT':
      return _$DEFAULT;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<DeviceProfileType> _$values = BuiltSet<DeviceProfileType>(
  const <DeviceProfileType>[_$DEFAULT, _$unknownDefaultOpenApi],
);

class _$DeviceProfileTypeMeta {
  const _$DeviceProfileTypeMeta();
  DeviceProfileType get DEFAULT => _$DEFAULT;
  DeviceProfileType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  DeviceProfileType valueOf(String name) => _$valueOf(name);
  BuiltSet<DeviceProfileType> get values => _$values;
}

mixin _$DeviceProfileTypeMixin {
  // ignore: non_constant_identifier_names
  _$DeviceProfileTypeMeta get DeviceProfileType =>
      const _$DeviceProfileTypeMeta();
}

Serializer<DeviceProfileType> _$deviceProfileTypeSerializer =
    _$DeviceProfileTypeSerializer();

class _$DeviceProfileTypeSerializer
    implements PrimitiveSerializer<DeviceProfileType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DEFAULT': 'DEFAULT',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DEFAULT': 'DEFAULT',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DeviceProfileType];
  @override
  final String wireName = 'DeviceProfileType';

  @override
  Object serialize(
    Serializers serializers,
    DeviceProfileType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeviceProfileType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeviceProfileType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
