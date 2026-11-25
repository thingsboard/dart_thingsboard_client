// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_page_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DefaultPageId _$HOME = const DefaultPageId._('HOME');
const DefaultPageId _$ALARMS = const DefaultPageId._('ALARMS');
const DefaultPageId _$DEVICES = const DefaultPageId._('DEVICES');
const DefaultPageId _$CUSTOMERS = const DefaultPageId._('CUSTOMERS');
const DefaultPageId _$ASSETS = const DefaultPageId._('ASSETS');
const DefaultPageId _$AUDIT_LOGS = const DefaultPageId._('AUDIT_LOGS');
const DefaultPageId _$NOTIFICATIONS = const DefaultPageId._('NOTIFICATIONS');
const DefaultPageId _$DEVICE_LIST = const DefaultPageId._('DEVICE_LIST');
const DefaultPageId _$DASHBOARDS = const DefaultPageId._('DASHBOARDS');
const DefaultPageId _$LIVE_LOCATION_TRACKING = const DefaultPageId._(
  'LIVE_LOCATION_TRACKING',
);
const DefaultPageId _$unknownDefaultOpenApi = const DefaultPageId._(
  'unknownDefaultOpenApi',
);

DefaultPageId _$valueOf(String name) {
  switch (name) {
    case 'HOME':
      return _$HOME;
    case 'ALARMS':
      return _$ALARMS;
    case 'DEVICES':
      return _$DEVICES;
    case 'CUSTOMERS':
      return _$CUSTOMERS;
    case 'ASSETS':
      return _$ASSETS;
    case 'AUDIT_LOGS':
      return _$AUDIT_LOGS;
    case 'NOTIFICATIONS':
      return _$NOTIFICATIONS;
    case 'DEVICE_LIST':
      return _$DEVICE_LIST;
    case 'DASHBOARDS':
      return _$DASHBOARDS;
    case 'LIVE_LOCATION_TRACKING':
      return _$LIVE_LOCATION_TRACKING;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<DefaultPageId> _$values =
    BuiltSet<DefaultPageId>(const <DefaultPageId>[
      _$HOME,
      _$ALARMS,
      _$DEVICES,
      _$CUSTOMERS,
      _$ASSETS,
      _$AUDIT_LOGS,
      _$NOTIFICATIONS,
      _$DEVICE_LIST,
      _$DASHBOARDS,
      _$LIVE_LOCATION_TRACKING,
      _$unknownDefaultOpenApi,
    ]);

class _$DefaultPageIdMeta {
  const _$DefaultPageIdMeta();
  DefaultPageId get HOME => _$HOME;
  DefaultPageId get ALARMS => _$ALARMS;
  DefaultPageId get DEVICES => _$DEVICES;
  DefaultPageId get CUSTOMERS => _$CUSTOMERS;
  DefaultPageId get ASSETS => _$ASSETS;
  DefaultPageId get AUDIT_LOGS => _$AUDIT_LOGS;
  DefaultPageId get NOTIFICATIONS => _$NOTIFICATIONS;
  DefaultPageId get DEVICE_LIST => _$DEVICE_LIST;
  DefaultPageId get DASHBOARDS => _$DASHBOARDS;
  DefaultPageId get LIVE_LOCATION_TRACKING => _$LIVE_LOCATION_TRACKING;
  DefaultPageId get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  DefaultPageId valueOf(String name) => _$valueOf(name);
  BuiltSet<DefaultPageId> get values => _$values;
}

mixin _$DefaultPageIdMixin {
  // ignore: non_constant_identifier_names
  _$DefaultPageIdMeta get DefaultPageId => const _$DefaultPageIdMeta();
}

Serializer<DefaultPageId> _$defaultPageIdSerializer =
    _$DefaultPageIdSerializer();

class _$DefaultPageIdSerializer implements PrimitiveSerializer<DefaultPageId> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'HOME': 'HOME',
    'ALARMS': 'ALARMS',
    'DEVICES': 'DEVICES',
    'CUSTOMERS': 'CUSTOMERS',
    'ASSETS': 'ASSETS',
    'AUDIT_LOGS': 'AUDIT_LOGS',
    'NOTIFICATIONS': 'NOTIFICATIONS',
    'DEVICE_LIST': 'DEVICE_LIST',
    'DASHBOARDS': 'DASHBOARDS',
    'LIVE_LOCATION_TRACKING': 'LIVE_LOCATION_TRACKING',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'HOME': 'HOME',
    'ALARMS': 'ALARMS',
    'DEVICES': 'DEVICES',
    'CUSTOMERS': 'CUSTOMERS',
    'ASSETS': 'ASSETS',
    'AUDIT_LOGS': 'AUDIT_LOGS',
    'NOTIFICATIONS': 'NOTIFICATIONS',
    'DEVICE_LIST': 'DEVICE_LIST',
    'DASHBOARDS': 'DASHBOARDS',
    'LIVE_LOCATION_TRACKING': 'LIVE_LOCATION_TRACKING',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DefaultPageId];
  @override
  final String wireName = 'DefaultPageId';

  @override
  Object serialize(
    Serializers serializers,
    DefaultPageId object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DefaultPageId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DefaultPageId.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
