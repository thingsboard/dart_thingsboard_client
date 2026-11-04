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

part 'agent_app_event_action_type.g.dart';

class AgentAppEventActionType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'INSTALL')
  static const AgentAppEventActionType INSTALL = _$INSTALL;
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const AgentAppEventActionType UPDATE = _$UPDATE;
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const AgentAppEventActionType DELETE = _$DELETE;
  @BuiltValueEnumConst(wireName: r'RESTART')
  static const AgentAppEventActionType RESTART = _$RESTART;
  @BuiltValueEnumConst(wireName: r'ROLLBACK')
  static const AgentAppEventActionType ROLLBACK = _$ROLLBACK;
  @BuiltValueEnumConst(wireName: r'UPGRADE')
  static const AgentAppEventActionType UPGRADE = _$UPGRADE;
  @BuiltValueEnumConst(wireName: r'AGENT_UPGRADE')
  static const AgentAppEventActionType AGENT_UPGRADE = _$AGENT_UPGRADE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AgentAppEventActionType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<AgentAppEventActionType> get serializer =>
      _$agentAppEventActionTypeSerializer;

  const AgentAppEventActionType._(String name) : super(name);

  static BuiltSet<AgentAppEventActionType> get values => _$values;
  static AgentAppEventActionType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AgentAppEventActionTypeMixin = Object
    with _$AgentAppEventActionTypeMixin;
