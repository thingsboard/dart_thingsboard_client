// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_page_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MobilePageType _$DEFAULT = const MobilePageType._('DEFAULT');
const MobilePageType _$DASHBOARD = const MobilePageType._('DASHBOARD');
const MobilePageType _$WEB_VIEW = const MobilePageType._('WEB_VIEW');
const MobilePageType _$CUSTOM = const MobilePageType._('CUSTOM');
const MobilePageType _$unknownDefaultOpenApi = const MobilePageType._(
  'unknownDefaultOpenApi',
);

MobilePageType _$valueOf(String name) {
  switch (name) {
    case 'DEFAULT':
      return _$DEFAULT;
    case 'DASHBOARD':
      return _$DASHBOARD;
    case 'WEB_VIEW':
      return _$WEB_VIEW;
    case 'CUSTOM':
      return _$CUSTOM;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<MobilePageType> _$values = BuiltSet<MobilePageType>(
  const <MobilePageType>[
    _$DEFAULT,
    _$DASHBOARD,
    _$WEB_VIEW,
    _$CUSTOM,
    _$unknownDefaultOpenApi,
  ],
);

class _$MobilePageTypeMeta {
  const _$MobilePageTypeMeta();
  MobilePageType get DEFAULT => _$DEFAULT;
  MobilePageType get DASHBOARD => _$DASHBOARD;
  MobilePageType get WEB_VIEW => _$WEB_VIEW;
  MobilePageType get CUSTOM => _$CUSTOM;
  MobilePageType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  MobilePageType valueOf(String name) => _$valueOf(name);
  BuiltSet<MobilePageType> get values => _$values;
}

mixin _$MobilePageTypeMixin {
  // ignore: non_constant_identifier_names
  _$MobilePageTypeMeta get MobilePageType => const _$MobilePageTypeMeta();
}

Serializer<MobilePageType> _$mobilePageTypeSerializer =
    _$MobilePageTypeSerializer();

class _$MobilePageTypeSerializer
    implements PrimitiveSerializer<MobilePageType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DEFAULT': 'DEFAULT',
    'DASHBOARD': 'DASHBOARD',
    'WEB_VIEW': 'WEB_VIEW',
    'CUSTOM': 'CUSTOM',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DEFAULT': 'DEFAULT',
    'DASHBOARD': 'DASHBOARD',
    'WEB_VIEW': 'WEB_VIEW',
    'CUSTOM': 'CUSTOM',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MobilePageType];
  @override
  final String wireName = 'MobilePageType';

  @override
  Object serialize(
    Serializers serializers,
    MobilePageType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MobilePageType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MobilePageType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
