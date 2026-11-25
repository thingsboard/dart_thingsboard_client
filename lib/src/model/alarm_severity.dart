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

part 'alarm_severity.g.dart';

class AlarmSeverity extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CRITICAL')
  static const AlarmSeverity CRITICAL = _$CRITICAL;
  @BuiltValueEnumConst(wireName: r'MAJOR')
  static const AlarmSeverity MAJOR = _$MAJOR;
  @BuiltValueEnumConst(wireName: r'MINOR')
  static const AlarmSeverity MINOR = _$MINOR;
  @BuiltValueEnumConst(wireName: r'WARNING')
  static const AlarmSeverity WARNING = _$WARNING;
  @BuiltValueEnumConst(wireName: r'INDETERMINATE')
  static const AlarmSeverity INDETERMINATE = _$INDETERMINATE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AlarmSeverity unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AlarmSeverity> get serializer => _$alarmSeveritySerializer;

  const AlarmSeverity._(String name) : super(name);

  static BuiltSet<AlarmSeverity> get values => _$values;
  static AlarmSeverity valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AlarmSeverityMixin = Object with _$AlarmSeverityMixin;
