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

part 'cm_item_link_type.g.dart';

class CMItemLinkType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'URL')
  static const CMItemLinkType URL = _$URL;
  @BuiltValueEnumConst(wireName: r'DASHBOARD')
  static const CMItemLinkType DASHBOARD = _$DASHBOARD;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const CMItemLinkType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<CMItemLinkType> get serializer => _$cMItemLinkTypeSerializer;

  const CMItemLinkType._(String name): super(name);

  static BuiltSet<CMItemLinkType> get values => _$values;
  static CMItemLinkType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CMItemLinkTypeMixin = Object with _$CMItemLinkTypeMixin;

