// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PlatformType _$WEB = const PlatformType._('WEB');
const PlatformType _$ANDROID = const PlatformType._('ANDROID');
const PlatformType _$IOS = const PlatformType._('IOS');
const PlatformType _$unknownDefaultOpenApi = const PlatformType._(
  'unknownDefaultOpenApi',
);

PlatformType _$valueOf(String name) {
  switch (name) {
    case 'WEB':
      return _$WEB;
    case 'ANDROID':
      return _$ANDROID;
    case 'IOS':
      return _$IOS;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PlatformType> _$values = BuiltSet<PlatformType>(
  const <PlatformType>[_$WEB, _$ANDROID, _$IOS, _$unknownDefaultOpenApi],
);

class _$PlatformTypeMeta {
  const _$PlatformTypeMeta();
  PlatformType get WEB => _$WEB;
  PlatformType get ANDROID => _$ANDROID;
  PlatformType get IOS => _$IOS;
  PlatformType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PlatformType valueOf(String name) => _$valueOf(name);
  BuiltSet<PlatformType> get values => _$values;
}

mixin _$PlatformTypeMixin {
  // ignore: non_constant_identifier_names
  _$PlatformTypeMeta get PlatformType => const _$PlatformTypeMeta();
}

Serializer<PlatformType> _$platformTypeSerializer = _$PlatformTypeSerializer();

class _$PlatformTypeSerializer implements PrimitiveSerializer<PlatformType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'WEB': 'WEB',
    'ANDROID': 'ANDROID',
    'IOS': 'IOS',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'WEB': 'WEB',
    'ANDROID': 'ANDROID',
    'IOS': 'IOS',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PlatformType];
  @override
  final String wireName = 'PlatformType';

  @override
  Object serialize(
    Serializers serializers,
    PlatformType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PlatformType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PlatformType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
