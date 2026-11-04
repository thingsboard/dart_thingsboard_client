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

part 'version_create_request_type.g.dart';

class VersionCreateRequestType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'SINGLE_ENTITY')
  static const VersionCreateRequestType SINGLE_ENTITY = _$SINGLE_ENTITY;
  @BuiltValueEnumConst(wireName: r'COMPLEX')
  static const VersionCreateRequestType COMPLEX = _$COMPLEX;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const VersionCreateRequestType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<VersionCreateRequestType> get serializer => _$versionCreateRequestTypeSerializer;

  const VersionCreateRequestType._(String name): super(name);

  static BuiltSet<VersionCreateRequestType> get values => _$values;
  static VersionCreateRequestType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class VersionCreateRequestTypeMixin = Object with _$VersionCreateRequestTypeMixin;

