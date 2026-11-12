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

part 'time_unit.g.dart';

class TimeUnit extends EnumClass {
  @BuiltValueEnumConst(wireName: r'NANOSECONDS')
  static const TimeUnit NANOSECONDS = _$NANOSECONDS;
  @BuiltValueEnumConst(wireName: r'MICROSECONDS')
  static const TimeUnit MICROSECONDS = _$MICROSECONDS;
  @BuiltValueEnumConst(wireName: r'MILLISECONDS')
  static const TimeUnit MILLISECONDS = _$MILLISECONDS;
  @BuiltValueEnumConst(wireName: r'SECONDS')
  static const TimeUnit SECONDS = _$SECONDS;
  @BuiltValueEnumConst(wireName: r'MINUTES')
  static const TimeUnit MINUTES = _$MINUTES;
  @BuiltValueEnumConst(wireName: r'HOURS')
  static const TimeUnit HOURS = _$HOURS;
  @BuiltValueEnumConst(wireName: r'DAYS')
  static const TimeUnit DAYS = _$DAYS;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TimeUnit unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<TimeUnit> get serializer => _$timeUnitSerializer;

  const TimeUnit._(String name) : super(name);

  static BuiltSet<TimeUnit> get values => _$values;
  static TimeUnit valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TimeUnitMixin = Object with _$TimeUnitMixin;
