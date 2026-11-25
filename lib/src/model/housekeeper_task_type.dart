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

part 'housekeeper_task_type.g.dart';

class HousekeeperTaskType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DELETE_ATTRIBUTES')
  static const HousekeeperTaskType DELETE_ATTRIBUTES = _$DELETE_ATTRIBUTES;
  @BuiltValueEnumConst(wireName: r'DELETE_TELEMETRY')
  static const HousekeeperTaskType DELETE_TELEMETRY = _$DELETE_TELEMETRY;
  @BuiltValueEnumConst(wireName: r'DELETE_LATEST_TS')
  static const HousekeeperTaskType DELETE_LATEST_TS = _$DELETE_LATEST_TS;
  @BuiltValueEnumConst(wireName: r'DELETE_TS_HISTORY')
  static const HousekeeperTaskType DELETE_TS_HISTORY = _$DELETE_TS_HISTORY;
  @BuiltValueEnumConst(wireName: r'DELETE_EVENTS')
  static const HousekeeperTaskType DELETE_EVENTS = _$DELETE_EVENTS;
  @BuiltValueEnumConst(wireName: r'DELETE_ALARMS')
  static const HousekeeperTaskType DELETE_ALARMS = _$DELETE_ALARMS;
  @BuiltValueEnumConst(wireName: r'DELETE_ALARM_COMMENTS')
  static const HousekeeperTaskType DELETE_ALARM_COMMENTS =
      _$DELETE_ALARM_COMMENTS;
  @BuiltValueEnumConst(wireName: r'UNASSIGN_ALARMS')
  static const HousekeeperTaskType UNASSIGN_ALARMS = _$UNASSIGN_ALARMS;
  @BuiltValueEnumConst(wireName: r'DELETE_TENANT_ENTITIES')
  static const HousekeeperTaskType DELETE_TENANT_ENTITIES =
      _$DELETE_TENANT_ENTITIES;
  @BuiltValueEnumConst(wireName: r'DELETE_ENTITIES')
  static const HousekeeperTaskType DELETE_ENTITIES = _$DELETE_ENTITIES;
  @BuiltValueEnumConst(wireName: r'CLEANUP_ENTITIES')
  static const HousekeeperTaskType CLEANUP_ENTITIES = _$CLEANUP_ENTITIES;
  @BuiltValueEnumConst(wireName: r'DELETE_CALCULATED_FIELDS')
  static const HousekeeperTaskType DELETE_CALCULATED_FIELDS =
      _$DELETE_CALCULATED_FIELDS;
  @BuiltValueEnumConst(wireName: r'DELETE_JOBS')
  static const HousekeeperTaskType DELETE_JOBS = _$DELETE_JOBS;
  @BuiltValueEnumConst(wireName: r'DELETE_AI_USER_DATA')
  static const HousekeeperTaskType DELETE_AI_USER_DATA = _$DELETE_AI_USER_DATA;
  @BuiltValueEnumConst(wireName: r'DELETE_AI_TENANT_DATA')
  static const HousekeeperTaskType DELETE_AI_TENANT_DATA =
      _$DELETE_AI_TENANT_DATA;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const HousekeeperTaskType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<HousekeeperTaskType> get serializer =>
      _$housekeeperTaskTypeSerializer;

  const HousekeeperTaskType._(String name) : super(name);

  static BuiltSet<HousekeeperTaskType> get values => _$values;
  static HousekeeperTaskType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class HousekeeperTaskTypeMixin = Object
    with _$HousekeeperTaskTypeMixin;
