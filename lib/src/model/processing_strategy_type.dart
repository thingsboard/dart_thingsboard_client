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

part 'processing_strategy_type.g.dart';

class ProcessingStrategyType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'SKIP_ALL_FAILURES')
  static const ProcessingStrategyType SKIP_ALL_FAILURES = _$SKIP_ALL_FAILURES;
  @BuiltValueEnumConst(wireName: r'SKIP_ALL_FAILURES_AND_TIMED_OUT')
  static const ProcessingStrategyType SKIP_ALL_FAILURES_AND_TIMED_OUT = _$SKIP_ALL_FAILURES_AND_TIMED_OUT;
  @BuiltValueEnumConst(wireName: r'RETRY_ALL')
  static const ProcessingStrategyType RETRY_ALL = _$RETRY_ALL;
  @BuiltValueEnumConst(wireName: r'RETRY_FAILED')
  static const ProcessingStrategyType RETRY_FAILED = _$RETRY_FAILED;
  @BuiltValueEnumConst(wireName: r'RETRY_TIMED_OUT')
  static const ProcessingStrategyType RETRY_TIMED_OUT = _$RETRY_TIMED_OUT;
  @BuiltValueEnumConst(wireName: r'RETRY_FAILED_AND_TIMED_OUT')
  static const ProcessingStrategyType RETRY_FAILED_AND_TIMED_OUT = _$RETRY_FAILED_AND_TIMED_OUT;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProcessingStrategyType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ProcessingStrategyType> get serializer => _$processingStrategyTypeSerializer;

  const ProcessingStrategyType._(String name): super(name);

  static BuiltSet<ProcessingStrategyType> get values => _$values;
  static ProcessingStrategyType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ProcessingStrategyTypeMixin = Object with _$ProcessingStrategyTypeMixin;

