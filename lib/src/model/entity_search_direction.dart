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

part 'entity_search_direction.g.dart';

class EntitySearchDirection extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FROM')
  static const EntitySearchDirection FROM = _$FROM;
  @BuiltValueEnumConst(wireName: r'TO')
  static const EntitySearchDirection TO = _$TO;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EntitySearchDirection unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<EntitySearchDirection> get serializer =>
      _$entitySearchDirectionSerializer;

  const EntitySearchDirection._(String name) : super(name);

  static BuiltSet<EntitySearchDirection> get values => _$values;
  static EntitySearchDirection valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class EntitySearchDirectionMixin = Object
    with _$EntitySearchDirectionMixin;
