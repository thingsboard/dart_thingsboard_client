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

part 'aggregation.g.dart';

class Aggregation extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MIN')
  static const Aggregation MIN = _$MIN;
  @BuiltValueEnumConst(wireName: r'MAX')
  static const Aggregation MAX = _$MAX;
  @BuiltValueEnumConst(wireName: r'AVG')
  static const Aggregation AVG = _$AVG;
  @BuiltValueEnumConst(wireName: r'SUM')
  static const Aggregation SUM = _$SUM;
  @BuiltValueEnumConst(wireName: r'COUNT')
  static const Aggregation COUNT = _$COUNT;
  @BuiltValueEnumConst(wireName: r'NONE')
  static const Aggregation NONE = _$NONE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const Aggregation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<Aggregation> get serializer => _$aggregationSerializer;

  const Aggregation._(String name) : super(name);

  static BuiltSet<Aggregation> get values => _$values;
  static Aggregation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AggregationMixin = Object with _$AggregationMixin;
