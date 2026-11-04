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

part 'attribute_scope.g.dart';

class AttributeScope extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CLIENT_SCOPE')
  static const AttributeScope CLIENT_SCOPE = _$CLIENT_SCOPE;
  @BuiltValueEnumConst(wireName: r'SERVER_SCOPE')
  static const AttributeScope SERVER_SCOPE = _$SERVER_SCOPE;
  @BuiltValueEnumConst(wireName: r'SHARED_SCOPE')
  static const AttributeScope SHARED_SCOPE = _$SHARED_SCOPE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AttributeScope unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AttributeScope> get serializer =>
      _$attributeScopeSerializer;

  const AttributeScope._(String name) : super(name);

  static BuiltSet<AttributeScope> get values => _$values;
  static AttributeScope valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AttributeScopeMixin = Object with _$AttributeScopeMixin;
