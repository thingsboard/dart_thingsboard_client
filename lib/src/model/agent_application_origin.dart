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

part 'agent_application_origin.g.dart';

class AgentApplicationOrigin extends EnumClass {

  @BuiltValueEnumConst(wireName: r'INSTALLED')
  static const AgentApplicationOrigin INSTALLED = _$INSTALLED;
  @BuiltValueEnumConst(wireName: r'DISCOVERED')
  static const AgentApplicationOrigin DISCOVERED = _$DISCOVERED;
  @BuiltValueEnumConst(wireName: r'AUTO_PROVISIONED')
  static const AgentApplicationOrigin AUTO_PROVISIONED = _$AUTO_PROVISIONED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AgentApplicationOrigin unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AgentApplicationOrigin> get serializer => _$agentApplicationOriginSerializer;

  const AgentApplicationOrigin._(String name): super(name);

  static BuiltSet<AgentApplicationOrigin> get values => _$values;
  static AgentApplicationOrigin valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AgentApplicationOriginMixin = Object with _$AgentApplicationOriginMixin;

