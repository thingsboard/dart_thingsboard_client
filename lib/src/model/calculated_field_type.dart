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

part 'calculated_field_type.g.dart';

class CalculatedFieldType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'SIMPLE')
  static const CalculatedFieldType SIMPLE = _$SIMPLE;
  @BuiltValueEnumConst(wireName: r'SCRIPT')
  static const CalculatedFieldType SCRIPT = _$SCRIPT;
  @BuiltValueEnumConst(wireName: r'GEOFENCING')
  static const CalculatedFieldType GEOFENCING = _$GEOFENCING;
  @BuiltValueEnumConst(wireName: r'ALARM')
  static const CalculatedFieldType ALARM = _$ALARM;
  @BuiltValueEnumConst(wireName: r'PROPAGATION')
  static const CalculatedFieldType PROPAGATION = _$PROPAGATION;
  @BuiltValueEnumConst(wireName: r'RELATED_ENTITIES_AGGREGATION')
  static const CalculatedFieldType RELATED_ENTITIES_AGGREGATION = _$RELATED_ENTITIES_AGGREGATION;
  @BuiltValueEnumConst(wireName: r'ENTITY_AGGREGATION')
  static const CalculatedFieldType ENTITY_AGGREGATION = _$ENTITY_AGGREGATION;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CalculatedFieldType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<CalculatedFieldType> get serializer => _$calculatedFieldTypeSerializer;

  const CalculatedFieldType._(String name): super(name);

  static BuiltSet<CalculatedFieldType> get values => _$values;
  static CalculatedFieldType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CalculatedFieldTypeMixin = Object with _$CalculatedFieldTypeMixin;

