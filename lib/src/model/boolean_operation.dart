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

part 'boolean_operation.g.dart';

class BooleanOperation extends EnumClass {

  @BuiltValueEnumConst(wireName: r'EQUAL')
  static const BooleanOperation EQUAL = _$EQUAL;
  @BuiltValueEnumConst(wireName: r'NOT_EQUAL')
  static const BooleanOperation NOT_EQUAL = _$NOT_EQUAL;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const BooleanOperation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<BooleanOperation> get serializer => _$booleanOperationSerializer;

  const BooleanOperation._(String name): super(name);

  static BuiltSet<BooleanOperation> get values => _$values;
  static BooleanOperation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class BooleanOperationMixin = Object with _$BooleanOperationMixin;

