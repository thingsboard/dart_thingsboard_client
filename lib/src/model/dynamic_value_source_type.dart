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

part 'dynamic_value_source_type.g.dart';

class DynamicValueSourceType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CURRENT_TENANT')
  static const DynamicValueSourceType CURRENT_TENANT = _$CURRENT_TENANT;
  @BuiltValueEnumConst(wireName: r'CURRENT_CUSTOMER')
  static const DynamicValueSourceType CURRENT_CUSTOMER = _$CURRENT_CUSTOMER;
  @BuiltValueEnumConst(wireName: r'CURRENT_USER')
  static const DynamicValueSourceType CURRENT_USER = _$CURRENT_USER;
  @BuiltValueEnumConst(wireName: r'CURRENT_DEVICE')
  static const DynamicValueSourceType CURRENT_DEVICE = _$CURRENT_DEVICE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DynamicValueSourceType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<DynamicValueSourceType> get serializer => _$dynamicValueSourceTypeSerializer;

  const DynamicValueSourceType._(String name): super(name);

  static BuiltSet<DynamicValueSourceType> get values => _$values;
  static DynamicValueSourceType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DynamicValueSourceTypeMixin = Object with _$DynamicValueSourceTypeMixin;

