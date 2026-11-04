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

part 'string_operation.g.dart';

class StringOperation extends EnumClass {

  @BuiltValueEnumConst(wireName: r'EQUAL')
  static const StringOperation EQUAL = _$EQUAL;
  @BuiltValueEnumConst(wireName: r'NOT_EQUAL')
  static const StringOperation NOT_EQUAL = _$NOT_EQUAL;
  @BuiltValueEnumConst(wireName: r'STARTS_WITH')
  static const StringOperation STARTS_WITH = _$STARTS_WITH;
  @BuiltValueEnumConst(wireName: r'ENDS_WITH')
  static const StringOperation ENDS_WITH = _$ENDS_WITH;
  @BuiltValueEnumConst(wireName: r'CONTAINS')
  static const StringOperation CONTAINS = _$CONTAINS;
  @BuiltValueEnumConst(wireName: r'NOT_CONTAINS')
  static const StringOperation NOT_CONTAINS = _$NOT_CONTAINS;
  @BuiltValueEnumConst(wireName: r'IN')
  static const StringOperation IN = _$IN;
  @BuiltValueEnumConst(wireName: r'NOT_IN')
  static const StringOperation NOT_IN = _$NOT_IN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const StringOperation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<StringOperation> get serializer => _$stringOperationSerializer;

  const StringOperation._(String name): super(name);

  static BuiltSet<StringOperation> get values => _$values;
  static StringOperation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class StringOperationMixin = Object with _$StringOperationMixin;

