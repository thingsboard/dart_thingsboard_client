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

part 'value_source_type.g.dart';

class ValueSourceType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'constant')
  static const ValueSourceType constant = _$constant;
  @BuiltValueEnumConst(wireName: r'latestKey')
  static const ValueSourceType latestKey = _$latestKey;
  @BuiltValueEnumConst(wireName: r'entity')
  static const ValueSourceType entity = _$entity;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ValueSourceType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ValueSourceType> get serializer => _$valueSourceTypeSerializer;

  const ValueSourceType._(String name): super(name);

  static BuiltSet<ValueSourceType> get values => _$values;
  static ValueSourceType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ValueSourceTypeMixin = Object with _$ValueSourceTypeMixin;

