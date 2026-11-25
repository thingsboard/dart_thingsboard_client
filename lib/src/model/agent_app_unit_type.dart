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

part 'agent_app_unit_type.g.dart';

class AgentAppUnitType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CONTAINER')
  static const AgentAppUnitType CONTAINER = _$CONTAINER;
  @BuiltValueEnumConst(wireName: r'VOLUME')
  static const AgentAppUnitType VOLUME = _$VOLUME;
  @BuiltValueEnumConst(wireName: r'NETWORK')
  static const AgentAppUnitType NETWORK = _$NETWORK;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AgentAppUnitType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AgentAppUnitType> get serializer =>
      _$agentAppUnitTypeSerializer;

  const AgentAppUnitType._(String name) : super(name);

  static BuiltSet<AgentAppUnitType> get values => _$values;
  static AgentAppUnitType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AgentAppUnitTypeMixin = Object with _$AgentAppUnitTypeMixin;
