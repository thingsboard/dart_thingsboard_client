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

part 'processing_start_status.g.dart';

class ProcessingStartStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'DELIVERY_FAIL')
  static const ProcessingStartStatus DELIVERY_FAIL = _$DELIVERY_FAIL;
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const ProcessingStartStatus PENDING = _$PENDING;
  @BuiltValueEnumConst(wireName: r'DELIVERED')
  static const ProcessingStartStatus DELIVERED = _$DELIVERED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ProcessingStartStatus unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ProcessingStartStatus> get serializer => _$processingStartStatusSerializer;

  const ProcessingStartStatus._(String name): super(name);

  static BuiltSet<ProcessingStartStatus> get values => _$values;
  static ProcessingStartStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ProcessingStartStatusMixin = Object with _$ProcessingStartStatusMixin;

