// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EventType _$ERROR = const EventType._('ERROR');
const EventType _$LC_EVENT = const EventType._('LC_EVENT');
const EventType _$STATS = const EventType._('STATS');
const EventType _$RAW_DATA = const EventType._('RAW_DATA');
const EventType _$DEBUG_RULE_NODE = const EventType._('DEBUG_RULE_NODE');
const EventType _$DEBUG_RULE_CHAIN = const EventType._('DEBUG_RULE_CHAIN');
const EventType _$DEBUG_CONVERTER = const EventType._('DEBUG_CONVERTER');
const EventType _$DEBUG_INTEGRATION = const EventType._('DEBUG_INTEGRATION');
const EventType _$DEBUG_CALCULATED_FIELD = const EventType._(
  'DEBUG_CALCULATED_FIELD',
);
const EventType _$unknownDefaultOpenApi = const EventType._(
  'unknownDefaultOpenApi',
);

EventType _$valueOf(String name) {
  switch (name) {
    case 'ERROR':
      return _$ERROR;
    case 'LC_EVENT':
      return _$LC_EVENT;
    case 'STATS':
      return _$STATS;
    case 'RAW_DATA':
      return _$RAW_DATA;
    case 'DEBUG_RULE_NODE':
      return _$DEBUG_RULE_NODE;
    case 'DEBUG_RULE_CHAIN':
      return _$DEBUG_RULE_CHAIN;
    case 'DEBUG_CONVERTER':
      return _$DEBUG_CONVERTER;
    case 'DEBUG_INTEGRATION':
      return _$DEBUG_INTEGRATION;
    case 'DEBUG_CALCULATED_FIELD':
      return _$DEBUG_CALCULATED_FIELD;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<EventType> _$values = BuiltSet<EventType>(const <EventType>[
  _$ERROR,
  _$LC_EVENT,
  _$STATS,
  _$RAW_DATA,
  _$DEBUG_RULE_NODE,
  _$DEBUG_RULE_CHAIN,
  _$DEBUG_CONVERTER,
  _$DEBUG_INTEGRATION,
  _$DEBUG_CALCULATED_FIELD,
  _$unknownDefaultOpenApi,
]);

class _$EventTypeMeta {
  const _$EventTypeMeta();
  EventType get ERROR => _$ERROR;
  EventType get LC_EVENT => _$LC_EVENT;
  EventType get STATS => _$STATS;
  EventType get RAW_DATA => _$RAW_DATA;
  EventType get DEBUG_RULE_NODE => _$DEBUG_RULE_NODE;
  EventType get DEBUG_RULE_CHAIN => _$DEBUG_RULE_CHAIN;
  EventType get DEBUG_CONVERTER => _$DEBUG_CONVERTER;
  EventType get DEBUG_INTEGRATION => _$DEBUG_INTEGRATION;
  EventType get DEBUG_CALCULATED_FIELD => _$DEBUG_CALCULATED_FIELD;
  EventType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  EventType valueOf(String name) => _$valueOf(name);
  BuiltSet<EventType> get values => _$values;
}

mixin _$EventTypeMixin {
  // ignore: non_constant_identifier_names
  _$EventTypeMeta get EventType => const _$EventTypeMeta();
}

Serializer<EventType> _$eventTypeSerializer = _$EventTypeSerializer();

class _$EventTypeSerializer implements PrimitiveSerializer<EventType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ERROR': 'ERROR',
    'LC_EVENT': 'LC_EVENT',
    'STATS': 'STATS',
    'RAW_DATA': 'RAW_DATA',
    'DEBUG_RULE_NODE': 'DEBUG_RULE_NODE',
    'DEBUG_RULE_CHAIN': 'DEBUG_RULE_CHAIN',
    'DEBUG_CONVERTER': 'DEBUG_CONVERTER',
    'DEBUG_INTEGRATION': 'DEBUG_INTEGRATION',
    'DEBUG_CALCULATED_FIELD': 'DEBUG_CALCULATED_FIELD',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ERROR': 'ERROR',
    'LC_EVENT': 'LC_EVENT',
    'STATS': 'STATS',
    'RAW_DATA': 'RAW_DATA',
    'DEBUG_RULE_NODE': 'DEBUG_RULE_NODE',
    'DEBUG_RULE_CHAIN': 'DEBUG_RULE_CHAIN',
    'DEBUG_CONVERTER': 'DEBUG_CONVERTER',
    'DEBUG_INTEGRATION': 'DEBUG_INTEGRATION',
    'DEBUG_CALCULATED_FIELD': 'DEBUG_CALCULATED_FIELD',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EventType];
  @override
  final String wireName = 'EventType';

  @override
  Object serialize(
    Serializers serializers,
    EventType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EventType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EventType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
