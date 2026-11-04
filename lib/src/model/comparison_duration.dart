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

part 'comparison_duration.g.dart';

class ComparisonDuration extends EnumClass {

  @BuiltValueEnumConst(wireName: r'previousInterval')
  static const ComparisonDuration previousInterval = _$previousInterval;
  @BuiltValueEnumConst(wireName: r'days')
  static const ComparisonDuration days = _$days;
  @BuiltValueEnumConst(wireName: r'weeks')
  static const ComparisonDuration weeks = _$weeks;
  @BuiltValueEnumConst(wireName: r'months')
  static const ComparisonDuration months = _$months;
  @BuiltValueEnumConst(wireName: r'years')
  static const ComparisonDuration years = _$years;
  @BuiltValueEnumConst(wireName: r'customInterval')
  static const ComparisonDuration customInterval = _$customInterval;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ComparisonDuration unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ComparisonDuration> get serializer => _$comparisonDurationSerializer;

  const ComparisonDuration._(String name): super(name);

  static BuiltSet<ComparisonDuration> get values => _$values;
  static ComparisonDuration valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ComparisonDurationMixin = Object with _$ComparisonDurationMixin;

