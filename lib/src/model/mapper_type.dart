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

part 'mapper_type.g.dart';

class MapperType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'BASIC')
  static const MapperType BASIC = _$BASIC;
  @BuiltValueEnumConst(wireName: r'CUSTOM')
  static const MapperType CUSTOM = _$CUSTOM;
  @BuiltValueEnumConst(wireName: r'GITHUB')
  static const MapperType GITHUB = _$GITHUB;
  @BuiltValueEnumConst(wireName: r'APPLE')
  static const MapperType APPLE = _$APPLE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MapperType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<MapperType> get serializer => _$mapperTypeSerializer;

  const MapperType._(String name) : super(name);

  static BuiltSet<MapperType> get values => _$values;
  static MapperType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MapperTypeMixin = Object with _$MapperTypeMixin;
