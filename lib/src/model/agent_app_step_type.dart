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

part 'agent_app_step_type.g.dart';

class AgentAppStepType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'COMPOSE_TEMPLATE')
  static const AgentAppStepType COMPOSE_TEMPLATE = _$COMPOSE_TEMPLATE;
  @BuiltValueEnumConst(wireName: r'COMPOSE')
  static const AgentAppStepType COMPOSE = _$COMPOSE;
  @BuiltValueEnumConst(wireName: r'COMPOSE_START')
  static const AgentAppStepType COMPOSE_START = _$COMPOSE_START;
  @BuiltValueEnumConst(wireName: r'COMPOSE_DOWN')
  static const AgentAppStepType COMPOSE_DOWN = _$COMPOSE_DOWN;
  @BuiltValueEnumConst(wireName: r'ROLLBACK')
  static const AgentAppStepType ROLLBACK = _$ROLLBACK;
  @BuiltValueEnumConst(wireName: r'BACKUP_VOLUME')
  static const AgentAppStepType BACKUP_VOLUME = _$BACKUP_VOLUME;
  @BuiltValueEnumConst(wireName: r'BACKUP_VOLUME_REMOVE')
  static const AgentAppStepType BACKUP_VOLUME_REMOVE = _$BACKUP_VOLUME_REMOVE;
  @BuiltValueEnumConst(wireName: r'COMPOSE_RESTART')
  static const AgentAppStepType COMPOSE_RESTART = _$COMPOSE_RESTART;
  @BuiltValueEnumConst(wireName: r'RUN_JOB')
  static const AgentAppStepType RUN_JOB = _$RUN_JOB;
  @BuiltValueEnumConst(wireName: r'AGENT_PREPARE')
  static const AgentAppStepType AGENT_PREPARE = _$AGENT_PREPARE;
  @BuiltValueEnumConst(wireName: r'AGENT_FINALIZE')
  static const AgentAppStepType AGENT_FINALIZE = _$AGENT_FINALIZE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AgentAppStepType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AgentAppStepType> get serializer =>
      _$agentAppStepTypeSerializer;

  const AgentAppStepType._(String name) : super(name);

  static BuiltSet<AgentAppStepType> get values => _$values;
  static AgentAppStepType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AgentAppStepTypeMixin = Object with _$AgentAppStepTypeMixin;
