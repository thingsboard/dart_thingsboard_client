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

part 'agg_function.g.dart';

class AggFunction extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MIN')
  static const AggFunction MIN = _$MIN;
  @BuiltValueEnumConst(wireName: r'MAX')
  static const AggFunction MAX = _$MAX;
  @BuiltValueEnumConst(wireName: r'SUM')
  static const AggFunction SUM = _$SUM;
  @BuiltValueEnumConst(wireName: r'AVG')
  static const AggFunction AVG = _$AVG;
  @BuiltValueEnumConst(wireName: r'COUNT')
  static const AggFunction COUNT = _$COUNT;
  @BuiltValueEnumConst(wireName: r'COUNT_UNIQUE')
  static const AggFunction COUNT_UNIQUE = _$COUNT_UNIQUE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AggFunction unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AggFunction> get serializer => _$aggFunctionSerializer;

  const AggFunction._(String name) : super(name);

  static BuiltSet<AggFunction> get values => _$values;
  static AggFunction valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AggFunctionMixin = Object with _$AggFunctionMixin;
