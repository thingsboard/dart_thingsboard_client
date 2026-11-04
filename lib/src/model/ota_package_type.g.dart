// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ota_package_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OtaPackageType _$FIRMWARE = const OtaPackageType._('FIRMWARE');
const OtaPackageType _$SOFTWARE = const OtaPackageType._('SOFTWARE');
const OtaPackageType _$unknownDefaultOpenApi = const OtaPackageType._(
  'unknownDefaultOpenApi',
);

OtaPackageType _$valueOf(String name) {
  switch (name) {
    case 'FIRMWARE':
      return _$FIRMWARE;
    case 'SOFTWARE':
      return _$SOFTWARE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<OtaPackageType> _$values = BuiltSet<OtaPackageType>(
  const <OtaPackageType>[_$FIRMWARE, _$SOFTWARE, _$unknownDefaultOpenApi],
);

class _$OtaPackageTypeMeta {
  const _$OtaPackageTypeMeta();
  OtaPackageType get FIRMWARE => _$FIRMWARE;
  OtaPackageType get SOFTWARE => _$SOFTWARE;
  OtaPackageType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  OtaPackageType valueOf(String name) => _$valueOf(name);
  BuiltSet<OtaPackageType> get values => _$values;
}

mixin _$OtaPackageTypeMixin {
  // ignore: non_constant_identifier_names
  _$OtaPackageTypeMeta get OtaPackageType => const _$OtaPackageTypeMeta();
}

Serializer<OtaPackageType> _$otaPackageTypeSerializer =
    _$OtaPackageTypeSerializer();

class _$OtaPackageTypeSerializer
    implements PrimitiveSerializer<OtaPackageType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FIRMWARE': 'FIRMWARE',
    'SOFTWARE': 'SOFTWARE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FIRMWARE': 'FIRMWARE',
    'SOFTWARE': 'SOFTWARE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[OtaPackageType];
  @override
  final String wireName = 'OtaPackageType';

  @override
  Object serialize(
    Serializers serializers,
    OtaPackageType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  OtaPackageType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => OtaPackageType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
