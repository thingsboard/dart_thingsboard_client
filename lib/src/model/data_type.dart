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

part 'data_type.g.dart';

class DataType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'BOOLEAN')
  static const DataType BOOLEAN = _$BOOLEAN;
  @BuiltValueEnumConst(wireName: r'LONG')
  static const DataType LONG = _$LONG;
  @BuiltValueEnumConst(wireName: r'DOUBLE')
  static const DataType DOUBLE = _$DOUBLE;
  @BuiltValueEnumConst(wireName: r'STRING')
  static const DataType STRING = _$STRING;
  @BuiltValueEnumConst(wireName: r'JSON')
  static const DataType JSON = _$JSON;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DataType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<DataType> get serializer => _$dataTypeSerializer;

  const DataType._(String name) : super(name);

  static BuiltSet<DataType> get values => _$values;
  static DataType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DataTypeMixin = Object with _$DataTypeMixin;
