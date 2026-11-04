// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/run_job_step_state.dart';
import 'package:thingsboard_client/src/model/compose_type_choice_step.dart';
import 'package:thingsboard_client/src/model/agent_app_step_type.dart';
import 'package:thingsboard_client/src/model/compose_step.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/compose_start_step.dart';
import 'package:thingsboard_client/src/model/run_job_step.dart';
import 'package:thingsboard_client/src/model/compose_restart_step.dart';
import 'package:thingsboard_client/src/model/compose_down_step.dart';
import 'package:thingsboard_client/src/model/roll_back_step.dart';
import 'package:thingsboard_client/src/model/agent_prepare_step.dart';
import 'package:thingsboard_client/src/model/backup_volumes_remove_step.dart';
import 'package:thingsboard_client/src/model/backup_volumes_step.dart';
import 'package:thingsboard_client/src/model/agent_finalize_step.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'agent_app_template_start_steps_inner.g.dart';

/// AgentAppTemplateStartStepsInner
///
/// Properties:
/// * [id] 
/// * [nextId] 
/// * [title] 
/// * [templateOnly] 
/// * [condition] 
/// * [stateful] 
/// * [type] 
/// * [state] 
/// * [composeTemplates] 
@BuiltValue()
abstract class AgentAppTemplateStartStepsInner implements Built<AgentAppTemplateStartStepsInner, AgentAppTemplateStartStepsInnerBuilder> {
  /// One Of [AgentFinalizeStep], [AgentPrepareStep], [BackupVolumesRemoveStep], [BackupVolumesStep], [ComposeDownStep], [ComposeRestartStep], [ComposeStartStep], [ComposeStep], [ComposeTypeChoiceStep], [RollBackStep], [RunJobStep]
  OneOf get oneOf;

  AgentAppTemplateStartStepsInner._();

  factory AgentAppTemplateStartStepsInner([void updates(AgentAppTemplateStartStepsInnerBuilder b)]) = _$AgentAppTemplateStartStepsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentAppTemplateStartStepsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentAppTemplateStartStepsInner> get serializer => _$AgentAppTemplateStartStepsInnerSerializer();
}

class _$AgentAppTemplateStartStepsInnerSerializer implements PrimitiveSerializer<AgentAppTemplateStartStepsInner> {
  @override
  final Iterable<Type> types = const [AgentAppTemplateStartStepsInner, _$AgentAppTemplateStartStepsInner];

  @override
  final String wireName = r'AgentAppTemplateStartStepsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentAppTemplateStartStepsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentAppTemplateStartStepsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  AgentAppTemplateStartStepsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentAppTemplateStartStepsInnerBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(AgentFinalizeStep), FullType(AgentPrepareStep), FullType(BackupVolumesRemoveStep), FullType(BackupVolumesStep), FullType(ComposeDownStep), FullType(ComposeRestartStep), FullType(ComposeStartStep), FullType(ComposeStep), FullType(ComposeTypeChoiceStep), FullType(RollBackStep), FullType(RunJobStep), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


