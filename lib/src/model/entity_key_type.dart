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

part 'entity_key_type.g.dart';

class EntityKeyType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ATTRIBUTE')
  static const EntityKeyType ATTRIBUTE = _$ATTRIBUTE;
  @BuiltValueEnumConst(wireName: r'CLIENT_ATTRIBUTE')
  static const EntityKeyType CLIENT_ATTRIBUTE = _$CLIENT_ATTRIBUTE;
  @BuiltValueEnumConst(wireName: r'SHARED_ATTRIBUTE')
  static const EntityKeyType SHARED_ATTRIBUTE = _$SHARED_ATTRIBUTE;
  @BuiltValueEnumConst(wireName: r'SERVER_ATTRIBUTE')
  static const EntityKeyType SERVER_ATTRIBUTE = _$SERVER_ATTRIBUTE;
  @BuiltValueEnumConst(wireName: r'TIME_SERIES')
  static const EntityKeyType TIME_SERIES = _$TIME_SERIES;
  @BuiltValueEnumConst(wireName: r'ENTITY_FIELD')
  static const EntityKeyType ENTITY_FIELD = _$ENTITY_FIELD;
  @BuiltValueEnumConst(wireName: r'ALARM_FIELD')
  static const EntityKeyType ALARM_FIELD = _$ALARM_FIELD;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EntityKeyType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<EntityKeyType> get serializer => _$entityKeyTypeSerializer;

  const EntityKeyType._(String name): super(name);

  static BuiltSet<EntityKeyType> get values => _$values;
  static EntityKeyType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class EntityKeyTypeMixin = Object with _$EntityKeyTypeMixin;

