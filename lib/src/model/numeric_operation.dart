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

part 'numeric_operation.g.dart';

class NumericOperation extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EQUAL')
  static const NumericOperation EQUAL = _$EQUAL;
  @BuiltValueEnumConst(wireName: r'NOT_EQUAL')
  static const NumericOperation NOT_EQUAL = _$NOT_EQUAL;
  @BuiltValueEnumConst(wireName: r'GREATER')
  static const NumericOperation GREATER = _$GREATER;
  @BuiltValueEnumConst(wireName: r'LESS')
  static const NumericOperation LESS = _$LESS;
  @BuiltValueEnumConst(wireName: r'GREATER_OR_EQUAL')
  static const NumericOperation GREATER_OR_EQUAL = _$GREATER_OR_EQUAL;
  @BuiltValueEnumConst(wireName: r'LESS_OR_EQUAL')
  static const NumericOperation LESS_OR_EQUAL = _$LESS_OR_EQUAL;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NumericOperation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<NumericOperation> get serializer =>
      _$numericOperationSerializer;

  const NumericOperation._(String name) : super(name);

  static BuiltSet<NumericOperation> get values => _$values;
  static NumericOperation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class NumericOperationMixin = Object with _$NumericOperationMixin;
