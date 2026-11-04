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

part 'resource_sub_type.g.dart';

class ResourceSubType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'IMAGE')
  static const ResourceSubType IMAGE = _$IMAGE;
  @BuiltValueEnumConst(wireName: r'SCADA_SYMBOL')
  static const ResourceSubType SCADA_SYMBOL = _$SCADA_SYMBOL;
  @BuiltValueEnumConst(wireName: r'EXTENSION')
  static const ResourceSubType EXTENSION = _$EXTENSION;
  @BuiltValueEnumConst(wireName: r'MODULE')
  static const ResourceSubType MODULE = _$MODULE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ResourceSubType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ResourceSubType> get serializer => _$resourceSubTypeSerializer;

  const ResourceSubType._(String name): super(name);

  static BuiltSet<ResourceSubType> get values => _$values;
  static ResourceSubType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ResourceSubTypeMixin = Object with _$ResourceSubTypeMixin;

