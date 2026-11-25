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

part 'api_usage_state_value.g.dart';

class ApiUsageStateValue extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ENABLED')
  static const ApiUsageStateValue ENABLED = _$ENABLED;
  @BuiltValueEnumConst(wireName: r'WARNING')
  static const ApiUsageStateValue WARNING = _$WARNING;
  @BuiltValueEnumConst(wireName: r'DISABLED')
  static const ApiUsageStateValue DISABLED = _$DISABLED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ApiUsageStateValue unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<ApiUsageStateValue> get serializer =>
      _$apiUsageStateValueSerializer;

  const ApiUsageStateValue._(String name) : super(name);

  static BuiltSet<ApiUsageStateValue> get values => _$values;
  static ApiUsageStateValue valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ApiUsageStateValueMixin = Object with _$ApiUsageStateValueMixin;
