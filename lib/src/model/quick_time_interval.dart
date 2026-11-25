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

part 'quick_time_interval.g.dart';

class QuickTimeInterval extends EnumClass {
  @BuiltValueEnumConst(wireName: r'YESTERDAY')
  static const QuickTimeInterval YESTERDAY = _$YESTERDAY;
  @BuiltValueEnumConst(wireName: r'DAY_BEFORE_YESTERDAY')
  static const QuickTimeInterval DAY_BEFORE_YESTERDAY = _$DAY_BEFORE_YESTERDAY;
  @BuiltValueEnumConst(wireName: r'THIS_DAY_LAST_WEEK')
  static const QuickTimeInterval THIS_DAY_LAST_WEEK = _$THIS_DAY_LAST_WEEK;
  @BuiltValueEnumConst(wireName: r'PREVIOUS_WEEK')
  static const QuickTimeInterval PREVIOUS_WEEK = _$PREVIOUS_WEEK;
  @BuiltValueEnumConst(wireName: r'PREVIOUS_WEEK_ISO')
  static const QuickTimeInterval PREVIOUS_WEEK_ISO = _$PREVIOUS_WEEK_ISO;
  @BuiltValueEnumConst(wireName: r'PREVIOUS_MONTH')
  static const QuickTimeInterval PREVIOUS_MONTH = _$PREVIOUS_MONTH;
  @BuiltValueEnumConst(wireName: r'PREVIOUS_QUARTER')
  static const QuickTimeInterval PREVIOUS_QUARTER = _$PREVIOUS_QUARTER;
  @BuiltValueEnumConst(wireName: r'PREVIOUS_HALF_YEAR')
  static const QuickTimeInterval PREVIOUS_HALF_YEAR = _$PREVIOUS_HALF_YEAR;
  @BuiltValueEnumConst(wireName: r'PREVIOUS_YEAR')
  static const QuickTimeInterval PREVIOUS_YEAR = _$PREVIOUS_YEAR;
  @BuiltValueEnumConst(wireName: r'CURRENT_HOUR')
  static const QuickTimeInterval CURRENT_HOUR = _$CURRENT_HOUR;
  @BuiltValueEnumConst(wireName: r'CURRENT_DAY')
  static const QuickTimeInterval CURRENT_DAY = _$CURRENT_DAY;
  @BuiltValueEnumConst(wireName: r'CURRENT_DAY_SO_FAR')
  static const QuickTimeInterval CURRENT_DAY_SO_FAR = _$CURRENT_DAY_SO_FAR;
  @BuiltValueEnumConst(wireName: r'CURRENT_WEEK')
  static const QuickTimeInterval CURRENT_WEEK = _$CURRENT_WEEK;
  @BuiltValueEnumConst(wireName: r'CURRENT_WEEK_ISO')
  static const QuickTimeInterval CURRENT_WEEK_ISO = _$CURRENT_WEEK_ISO;
  @BuiltValueEnumConst(wireName: r'CURRENT_WEEK_SO_FAR')
  static const QuickTimeInterval CURRENT_WEEK_SO_FAR = _$CURRENT_WEEK_SO_FAR;
  @BuiltValueEnumConst(wireName: r'CURRENT_WEEK_ISO_SO_FAR')
  static const QuickTimeInterval CURRENT_WEEK_ISO_SO_FAR =
      _$CURRENT_WEEK_ISO_SO_FAR;
  @BuiltValueEnumConst(wireName: r'CURRENT_MONTH')
  static const QuickTimeInterval CURRENT_MONTH = _$CURRENT_MONTH;
  @BuiltValueEnumConst(wireName: r'CURRENT_MONTH_SO_FAR')
  static const QuickTimeInterval CURRENT_MONTH_SO_FAR = _$CURRENT_MONTH_SO_FAR;
  @BuiltValueEnumConst(wireName: r'CURRENT_QUARTER')
  static const QuickTimeInterval CURRENT_QUARTER = _$CURRENT_QUARTER;
  @BuiltValueEnumConst(wireName: r'CURRENT_QUARTER_SO_FAR')
  static const QuickTimeInterval CURRENT_QUARTER_SO_FAR =
      _$CURRENT_QUARTER_SO_FAR;
  @BuiltValueEnumConst(wireName: r'CURRENT_HALF_YEAR')
  static const QuickTimeInterval CURRENT_HALF_YEAR = _$CURRENT_HALF_YEAR;
  @BuiltValueEnumConst(wireName: r'CURRENT_HALF_YEAR_SO_FAR')
  static const QuickTimeInterval CURRENT_HALF_YEAR_SO_FAR =
      _$CURRENT_HALF_YEAR_SO_FAR;
  @BuiltValueEnumConst(wireName: r'CURRENT_YEAR')
  static const QuickTimeInterval CURRENT_YEAR = _$CURRENT_YEAR;
  @BuiltValueEnumConst(wireName: r'CURRENT_YEAR_SO_FAR')
  static const QuickTimeInterval CURRENT_YEAR_SO_FAR = _$CURRENT_YEAR_SO_FAR;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const QuickTimeInterval unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<QuickTimeInterval> get serializer =>
      _$quickTimeIntervalSerializer;

  const QuickTimeInterval._(String name) : super(name);

  static BuiltSet<QuickTimeInterval> get values => _$values;
  static QuickTimeInterval valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class QuickTimeIntervalMixin = Object with _$QuickTimeIntervalMixin;
