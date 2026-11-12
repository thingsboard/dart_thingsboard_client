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

part 'submit_strategy_type.g.dart';

class SubmitStrategyType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'BURST')
  static const SubmitStrategyType BURST = _$BURST;
  @BuiltValueEnumConst(wireName: r'BATCH')
  static const SubmitStrategyType BATCH = _$BATCH;
  @BuiltValueEnumConst(wireName: r'SEQUENTIAL_BY_ORIGINATOR')
  static const SubmitStrategyType SEQUENTIAL_BY_ORIGINATOR =
      _$SEQUENTIAL_BY_ORIGINATOR;
  @BuiltValueEnumConst(wireName: r'SEQUENTIAL_BY_TENANT')
  static const SubmitStrategyType SEQUENTIAL_BY_TENANT = _$SEQUENTIAL_BY_TENANT;
  @BuiltValueEnumConst(wireName: r'SEQUENTIAL')
  static const SubmitStrategyType SEQUENTIAL = _$SEQUENTIAL;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SubmitStrategyType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<SubmitStrategyType> get serializer =>
      _$submitStrategyTypeSerializer;

  const SubmitStrategyType._(String name) : super(name);

  static BuiltSet<SubmitStrategyType> get values => _$values;
  static SubmitStrategyType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SubmitStrategyTypeMixin = Object with _$SubmitStrategyTypeMixin;
