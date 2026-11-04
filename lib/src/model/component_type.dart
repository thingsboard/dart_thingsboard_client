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

part 'component_type.g.dart';

class ComponentType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ENRICHMENT')
  static const ComponentType ENRICHMENT = _$ENRICHMENT;
  @BuiltValueEnumConst(wireName: r'FILTER')
  static const ComponentType FILTER = _$FILTER;
  @BuiltValueEnumConst(wireName: r'TRANSFORMATION')
  static const ComponentType TRANSFORMATION = _$TRANSFORMATION;
  @BuiltValueEnumConst(wireName: r'ACTION')
  static const ComponentType ACTION = _$ACTION;
  @BuiltValueEnumConst(wireName: r'ANALYTICS')
  static const ComponentType ANALYTICS = _$ANALYTICS;
  @BuiltValueEnumConst(wireName: r'EXTERNAL')
  static const ComponentType EXTERNAL = _$EXTERNAL;
  @BuiltValueEnumConst(wireName: r'FLOW')
  static const ComponentType FLOW = _$FLOW;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ComponentType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ComponentType> get serializer => _$componentTypeSerializer;

  const ComponentType._(String name) : super(name);

  static BuiltSet<ComponentType> get values => _$values;
  static ComponentType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ComponentTypeMixin = Object with _$ComponentTypeMixin;
