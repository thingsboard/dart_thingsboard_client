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

part 'resource_type.g.dart';

class ResourceType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'LWM2M_MODEL')
  static const ResourceType LWM2M_MODEL = _$LWM2M_MODEL;
  @BuiltValueEnumConst(wireName: r'JKS')
  static const ResourceType JKS = _$JKS;
  @BuiltValueEnumConst(wireName: r'PKCS_12')
  static const ResourceType PKCS_12 = _$PKCS_12;
  @BuiltValueEnumConst(wireName: r'JS_MODULE')
  static const ResourceType JS_MODULE = _$JS_MODULE;
  @BuiltValueEnumConst(wireName: r'IMAGE')
  static const ResourceType IMAGE = _$IMAGE;
  @BuiltValueEnumConst(wireName: r'DASHBOARD')
  static const ResourceType DASHBOARD = _$DASHBOARD;
  @BuiltValueEnumConst(wireName: r'GENERAL')
  static const ResourceType GENERAL = _$GENERAL;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ResourceType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ResourceType> get serializer => _$resourceTypeSerializer;

  const ResourceType._(String name): super(name);

  static BuiltSet<ResourceType> get values => _$values;
  static ResourceType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ResourceTypeMixin = Object with _$ResourceTypeMixin;

