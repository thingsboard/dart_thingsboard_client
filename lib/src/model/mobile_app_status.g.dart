// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_app_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MobileAppStatus _$DRAFT = const MobileAppStatus._('DRAFT');
const MobileAppStatus _$PUBLISHED = const MobileAppStatus._('PUBLISHED');
const MobileAppStatus _$DEPRECATED = const MobileAppStatus._('DEPRECATED');
const MobileAppStatus _$SUSPENDED = const MobileAppStatus._('SUSPENDED');
const MobileAppStatus _$unknownDefaultOpenApi = const MobileAppStatus._(
  'unknownDefaultOpenApi',
);

MobileAppStatus _$valueOf(String name) {
  switch (name) {
    case 'DRAFT':
      return _$DRAFT;
    case 'PUBLISHED':
      return _$PUBLISHED;
    case 'DEPRECATED':
      return _$DEPRECATED;
    case 'SUSPENDED':
      return _$SUSPENDED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<MobileAppStatus> _$values = BuiltSet<MobileAppStatus>(
  const <MobileAppStatus>[
    _$DRAFT,
    _$PUBLISHED,
    _$DEPRECATED,
    _$SUSPENDED,
    _$unknownDefaultOpenApi,
  ],
);

class _$MobileAppStatusMeta {
  const _$MobileAppStatusMeta();
  MobileAppStatus get DRAFT => _$DRAFT;
  MobileAppStatus get PUBLISHED => _$PUBLISHED;
  MobileAppStatus get DEPRECATED => _$DEPRECATED;
  MobileAppStatus get SUSPENDED => _$SUSPENDED;
  MobileAppStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  MobileAppStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<MobileAppStatus> get values => _$values;
}

mixin _$MobileAppStatusMixin {
  // ignore: non_constant_identifier_names
  _$MobileAppStatusMeta get MobileAppStatus => const _$MobileAppStatusMeta();
}

Serializer<MobileAppStatus> _$mobileAppStatusSerializer =
    _$MobileAppStatusSerializer();

class _$MobileAppStatusSerializer
    implements PrimitiveSerializer<MobileAppStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DRAFT': 'DRAFT',
    'PUBLISHED': 'PUBLISHED',
    'DEPRECATED': 'DEPRECATED',
    'SUSPENDED': 'SUSPENDED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DRAFT': 'DRAFT',
    'PUBLISHED': 'PUBLISHED',
    'DEPRECATED': 'DEPRECATED',
    'SUSPENDED': 'SUSPENDED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[MobileAppStatus];
  @override
  final String wireName = 'MobileAppStatus';

  @override
  Object serialize(
    Serializers serializers,
    MobileAppStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  MobileAppStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => MobileAppStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
