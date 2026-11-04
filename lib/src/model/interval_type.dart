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

part 'interval_type.g.dart';

class IntervalType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MILLISECONDS')
  static const IntervalType MILLISECONDS = _$MILLISECONDS;
  @BuiltValueEnumConst(wireName: r'WEEK')
  static const IntervalType WEEK = _$WEEK;
  @BuiltValueEnumConst(wireName: r'WEEK_ISO')
  static const IntervalType WEEK_ISO = _$WEEK_ISO;
  @BuiltValueEnumConst(wireName: r'MONTH')
  static const IntervalType MONTH = _$MONTH;
  @BuiltValueEnumConst(wireName: r'QUARTER')
  static const IntervalType QUARTER = _$QUARTER;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IntervalType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<IntervalType> get serializer => _$intervalTypeSerializer;

  const IntervalType._(String name) : super(name);

  static BuiltSet<IntervalType> get values => _$values;
  static IntervalType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class IntervalTypeMixin = Object with _$IntervalTypeMixin;
