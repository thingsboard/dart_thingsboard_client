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

part 'alarm_rule_numeric_operation.g.dart';

class AlarmRuleNumericOperation extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EQUAL')
  static const AlarmRuleNumericOperation EQUAL = _$EQUAL;
  @BuiltValueEnumConst(wireName: r'NOT_EQUAL')
  static const AlarmRuleNumericOperation NOT_EQUAL = _$NOT_EQUAL;
  @BuiltValueEnumConst(wireName: r'GREATER')
  static const AlarmRuleNumericOperation GREATER = _$GREATER;
  @BuiltValueEnumConst(wireName: r'LESS')
  static const AlarmRuleNumericOperation LESS = _$LESS;
  @BuiltValueEnumConst(wireName: r'GREATER_OR_EQUAL')
  static const AlarmRuleNumericOperation GREATER_OR_EQUAL = _$GREATER_OR_EQUAL;
  @BuiltValueEnumConst(wireName: r'LESS_OR_EQUAL')
  static const AlarmRuleNumericOperation LESS_OR_EQUAL = _$LESS_OR_EQUAL;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AlarmRuleNumericOperation unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<AlarmRuleNumericOperation> get serializer =>
      _$alarmRuleNumericOperationSerializer;

  const AlarmRuleNumericOperation._(String name) : super(name);

  static BuiltSet<AlarmRuleNumericOperation> get values => _$values;
  static AlarmRuleNumericOperation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AlarmRuleNumericOperationMixin = Object
    with _$AlarmRuleNumericOperationMixin;
