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

part 'relation_type_group.g.dart';

class RelationTypeGroup extends EnumClass {

  @BuiltValueEnumConst(wireName: r'COMMON')
  static const RelationTypeGroup COMMON = _$COMMON;
  @BuiltValueEnumConst(wireName: r'DASHBOARD')
  static const RelationTypeGroup DASHBOARD = _$DASHBOARD;
  @BuiltValueEnumConst(wireName: r'FROM_ENTITY_GROUP')
  static const RelationTypeGroup FROM_ENTITY_GROUP = _$FROM_ENTITY_GROUP;
  @BuiltValueEnumConst(wireName: r'RULE_CHAIN')
  static const RelationTypeGroup RULE_CHAIN = _$RULE_CHAIN;
  @BuiltValueEnumConst(wireName: r'RULE_NODE')
  static const RelationTypeGroup RULE_NODE = _$RULE_NODE;
  @BuiltValueEnumConst(wireName: r'EDGE')
  static const RelationTypeGroup EDGE = _$EDGE;
  @BuiltValueEnumConst(wireName: r'EDGE_AUTO_ASSIGN_RULE_CHAIN')
  static const RelationTypeGroup EDGE_AUTO_ASSIGN_RULE_CHAIN = _$EDGE_AUTO_ASSIGN_RULE_CHAIN;
  @BuiltValueEnumConst(wireName: r'AGENT')
  static const RelationTypeGroup AGENT = _$AGENT;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const RelationTypeGroup unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<RelationTypeGroup> get serializer => _$relationTypeGroupSerializer;

  const RelationTypeGroup._(String name): super(name);

  static BuiltSet<RelationTypeGroup> get values => _$values;
  static RelationTypeGroup valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class RelationTypeGroupMixin = Object with _$RelationTypeGroupMixin;

