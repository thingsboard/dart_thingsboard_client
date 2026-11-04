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

part 'agent_app_argument_value_type.g.dart';

class AgentAppArgumentValueType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ATTRIBUTE')
  static const AgentAppArgumentValueType ATTRIBUTE = _$ATTRIBUTE;
  @BuiltValueEnumConst(wireName: r'LATEST_TELEMETRY')
  static const AgentAppArgumentValueType LATEST_TELEMETRY = _$LATEST_TELEMETRY;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AgentAppArgumentValueType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<AgentAppArgumentValueType> get serializer =>
      _$agentAppArgumentValueTypeSerializer;

  const AgentAppArgumentValueType._(String name) : super(name);

  static BuiltSet<AgentAppArgumentValueType> get values => _$values;
  static AgentAppArgumentValueType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AgentAppArgumentValueTypeMixin = Object
    with _$AgentAppArgumentValueTypeMixin;
