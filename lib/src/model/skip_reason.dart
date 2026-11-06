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

part 'skip_reason.g.dart';

class SkipReason extends EnumClass {
  @BuiltValueEnumConst(wireName: r'VERSION_MISMATCH')
  static const SkipReason VERSION_MISMATCH = _$VERSION_MISMATCH;
  @BuiltValueEnumConst(wireName: r'ACTIVE_EVENT')
  static const SkipReason ACTIVE_EVENT = _$ACTIVE_EVENT;
  @BuiltValueEnumConst(wireName: r'RATE_LIMIT_EXCEEDED')
  static const SkipReason RATE_LIMIT_EXCEEDED = _$RATE_LIMIT_EXCEEDED;
  @BuiltValueEnumConst(wireName: r'ERROR')
  static const SkipReason ERROR = _$ERROR;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SkipReason unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SkipReason> get serializer => _$skipReasonSerializer;

  const SkipReason._(String name) : super(name);

  static BuiltSet<SkipReason> get values => _$values;
  static SkipReason valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SkipReasonMixin = Object with _$SkipReasonMixin;
