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

part 'data_source_type.g.dart';

class DataSourceType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'device')
  static const DataSourceType device = _$device;
  @BuiltValueEnumConst(wireName: r'entity')
  static const DataSourceType entity = _$entity;
  @BuiltValueEnumConst(wireName: r'entityCount')
  static const DataSourceType entityCount = _$entityCount;
  @BuiltValueEnumConst(wireName: r'alarmCount')
  static const DataSourceType alarmCount = _$alarmCount;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DataSourceType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<DataSourceType> get serializer =>
      _$dataSourceTypeSerializer;

  const DataSourceType._(String name) : super(name);

  static BuiltSet<DataSourceType> get values => _$values;
  static DataSourceType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DataSourceTypeMixin = Object with _$DataSourceTypeMixin;
