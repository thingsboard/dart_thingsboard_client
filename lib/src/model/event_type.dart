// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_type.g.dart';

class EventType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ERROR')
  static const EventType ERROR = _$ERROR;
  @BuiltValueEnumConst(wireName: r'LC_EVENT')
  static const EventType LC_EVENT = _$LC_EVENT;
  @BuiltValueEnumConst(wireName: r'STATS')
  static const EventType STATS = _$STATS;
  @BuiltValueEnumConst(wireName: r'RAW_DATA')
  static const EventType RAW_DATA = _$RAW_DATA;
  @BuiltValueEnumConst(wireName: r'DEBUG_RULE_NODE')
  static const EventType DEBUG_RULE_NODE = _$DEBUG_RULE_NODE;
  @BuiltValueEnumConst(wireName: r'DEBUG_RULE_CHAIN')
  static const EventType DEBUG_RULE_CHAIN = _$DEBUG_RULE_CHAIN;
  @BuiltValueEnumConst(wireName: r'DEBUG_CONVERTER')
  static const EventType DEBUG_CONVERTER = _$DEBUG_CONVERTER;
  @BuiltValueEnumConst(wireName: r'DEBUG_INTEGRATION')
  static const EventType DEBUG_INTEGRATION = _$DEBUG_INTEGRATION;
  @BuiltValueEnumConst(wireName: r'DEBUG_CALCULATED_FIELD')
  static const EventType DEBUG_CALCULATED_FIELD = _$DEBUG_CALCULATED_FIELD;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EventType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<EventType> get serializer => _$eventTypeSerializer;

  const EventType._(String name) : super(name);

  static BuiltSet<EventType> get values => _$values;
  static EventType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class EventTypeMixin = Object with _$EventTypeMixin;
