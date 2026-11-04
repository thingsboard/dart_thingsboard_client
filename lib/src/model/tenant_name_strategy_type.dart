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

part 'tenant_name_strategy_type.g.dart';

class TenantNameStrategyType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DOMAIN')
  static const TenantNameStrategyType DOMAIN = _$DOMAIN;
  @BuiltValueEnumConst(wireName: r'EMAIL')
  static const TenantNameStrategyType EMAIL = _$EMAIL;
  @BuiltValueEnumConst(wireName: r'CUSTOM')
  static const TenantNameStrategyType CUSTOM = _$CUSTOM;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TenantNameStrategyType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<TenantNameStrategyType> get serializer =>
      _$tenantNameStrategyTypeSerializer;

  const TenantNameStrategyType._(String name) : super(name);

  static BuiltSet<TenantNameStrategyType> get values => _$values;
  static TenantNameStrategyType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TenantNameStrategyTypeMixin = Object
    with _$TenantNameStrategyTypeMixin;
