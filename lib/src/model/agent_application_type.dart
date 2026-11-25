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

part 'agent_application_type.g.dart';

class AgentApplicationType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GENERIC')
  static const AgentApplicationType GENERIC = _$GENERIC;
  @BuiltValueEnumConst(wireName: r'EDGE')
  static const AgentApplicationType EDGE = _$EDGE;
  @BuiltValueEnumConst(wireName: r'GATEWAY')
  static const AgentApplicationType GATEWAY = _$GATEWAY;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AgentApplicationType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<AgentApplicationType> get serializer =>
      _$agentApplicationTypeSerializer;

  const AgentApplicationType._(String name) : super(name);

  static BuiltSet<AgentApplicationType> get values => _$values;
  static AgentApplicationType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AgentApplicationTypeMixin = Object
    with _$AgentApplicationTypeMixin;
