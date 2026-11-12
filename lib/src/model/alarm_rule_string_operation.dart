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

part 'alarm_rule_string_operation.g.dart';

class AlarmRuleStringOperation extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EQUAL')
  static const AlarmRuleStringOperation EQUAL = _$EQUAL;
  @BuiltValueEnumConst(wireName: r'NOT_EQUAL')
  static const AlarmRuleStringOperation NOT_EQUAL = _$NOT_EQUAL;
  @BuiltValueEnumConst(wireName: r'STARTS_WITH')
  static const AlarmRuleStringOperation STARTS_WITH = _$STARTS_WITH;
  @BuiltValueEnumConst(wireName: r'ENDS_WITH')
  static const AlarmRuleStringOperation ENDS_WITH = _$ENDS_WITH;
  @BuiltValueEnumConst(wireName: r'CONTAINS')
  static const AlarmRuleStringOperation CONTAINS = _$CONTAINS;
  @BuiltValueEnumConst(wireName: r'NOT_CONTAINS')
  static const AlarmRuleStringOperation NOT_CONTAINS = _$NOT_CONTAINS;
  @BuiltValueEnumConst(wireName: r'IN')
  static const AlarmRuleStringOperation IN = _$IN;
  @BuiltValueEnumConst(wireName: r'NOT_IN')
  static const AlarmRuleStringOperation NOT_IN = _$NOT_IN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AlarmRuleStringOperation unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<AlarmRuleStringOperation> get serializer =>
      _$alarmRuleStringOperationSerializer;

  const AlarmRuleStringOperation._(String name) : super(name);

  static BuiltSet<AlarmRuleStringOperation> get values => _$values;
  static AlarmRuleStringOperation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AlarmRuleStringOperationMixin = Object
    with _$AlarmRuleStringOperationMixin;
