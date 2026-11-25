// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DeviceEvent _$ACTIVE = const DeviceEvent._('ACTIVE');
const DeviceEvent _$INACTIVE = const DeviceEvent._('INACTIVE');
const DeviceEvent _$unknownDefaultOpenApi = const DeviceEvent._(
  'unknownDefaultOpenApi',
);

DeviceEvent _$valueOf(String name) {
  switch (name) {
    case 'ACTIVE':
      return _$ACTIVE;
    case 'INACTIVE':
      return _$INACTIVE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<DeviceEvent> _$values = BuiltSet<DeviceEvent>(
  const <DeviceEvent>[_$ACTIVE, _$INACTIVE, _$unknownDefaultOpenApi],
);

class _$DeviceEventMeta {
  const _$DeviceEventMeta();
  DeviceEvent get ACTIVE => _$ACTIVE;
  DeviceEvent get INACTIVE => _$INACTIVE;
  DeviceEvent get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  DeviceEvent valueOf(String name) => _$valueOf(name);
  BuiltSet<DeviceEvent> get values => _$values;
}

mixin _$DeviceEventMixin {
  // ignore: non_constant_identifier_names
  _$DeviceEventMeta get DeviceEvent => const _$DeviceEventMeta();
}

Serializer<DeviceEvent> _$deviceEventSerializer = _$DeviceEventSerializer();

class _$DeviceEventSerializer implements PrimitiveSerializer<DeviceEvent> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACTIVE': 'ACTIVE',
    'INACTIVE': 'INACTIVE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACTIVE': 'ACTIVE',
    'INACTIVE': 'INACTIVE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DeviceEvent];
  @override
  final String wireName = 'DeviceEvent';

  @override
  Object serialize(
    Serializers serializers,
    DeviceEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DeviceEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DeviceEvent.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
