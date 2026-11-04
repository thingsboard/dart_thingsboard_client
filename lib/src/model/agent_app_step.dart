// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/compose_step.dart';
import 'package:thingsboard_client/src/model/compose_start_step.dart';
import 'package:thingsboard_client/src/model/run_job_step.dart';
import 'package:thingsboard_client/src/model/compose_restart_step.dart';
import 'package:thingsboard_client/src/model/compose_down_step.dart';
import 'package:thingsboard_client/src/model/compose_type_choice_step.dart';
import 'package:thingsboard_client/src/model/roll_back_step.dart';
import 'package:thingsboard_client/src/model/agent_prepare_step.dart';
import 'package:thingsboard_client/src/model/agent_app_step_type.dart';
import 'package:thingsboard_client/src/model/backup_volumes_remove_step.dart';
import 'package:thingsboard_client/src/model/backup_volumes_step.dart';
import 'package:thingsboard_client/src/model/agent_finalize_step.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_app_step.g.dart';

/// AgentAppStep
///
/// Properties:
/// * [id] 
/// * [nextId] 
/// * [title] 
/// * [templateOnly] 
/// * [condition] 
/// * [stateful] 
/// * [type] 
@BuiltValue(instantiable: false)
abstract class AgentAppStep  {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'nextId')
  String? get nextId;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'templateOnly')
  bool? get templateOnly;

  @BuiltValueField(wireName: r'condition')
  String? get condition;

  @BuiltValueField(wireName: r'stateful')
  bool? get stateful;

  @BuiltValueField(wireName: r'type')
  AgentAppStepType? get type;
  // enum typeEnum {  COMPOSE_TEMPLATE,  COMPOSE,  COMPOSE_START,  COMPOSE_DOWN,  ROLLBACK,  BACKUP_VOLUME,  BACKUP_VOLUME_REMOVE,  COMPOSE_RESTART,  RUN_JOB,  AGENT_PREPARE,  AGENT_FINALIZE,  };

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'AgentFinalizeStep': AgentFinalizeStep,
    r'AgentPrepareStep': AgentPrepareStep,
    r'BackupVolumesRemoveStep': BackupVolumesRemoveStep,
    r'BackupVolumesStep': BackupVolumesStep,
    r'ComposeDownStep': ComposeDownStep,
    r'ComposeRestartStep': ComposeRestartStep,
    r'ComposeStartStep': ComposeStartStep,
    r'ComposeStep': ComposeStep,
    r'ComposeTypeChoiceStep': ComposeTypeChoiceStep,
    r'RollBackStep': RollBackStep,
    r'RunJobStep': RunJobStep,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentAppStep> get serializer => _$AgentAppStepSerializer();
}

extension AgentAppStepDiscriminatorExt on AgentAppStep {
    String? get discriminatorValue {
        if (this is AgentFinalizeStep) {
            return r'AgentFinalizeStep';
        }
        if (this is AgentPrepareStep) {
            return r'AgentPrepareStep';
        }
        if (this is BackupVolumesRemoveStep) {
            return r'BackupVolumesRemoveStep';
        }
        if (this is BackupVolumesStep) {
            return r'BackupVolumesStep';
        }
        if (this is ComposeDownStep) {
            return r'ComposeDownStep';
        }
        if (this is ComposeRestartStep) {
            return r'ComposeRestartStep';
        }
        if (this is ComposeStartStep) {
            return r'ComposeStartStep';
        }
        if (this is ComposeStep) {
            return r'ComposeStep';
        }
        if (this is ComposeTypeChoiceStep) {
            return r'ComposeTypeChoiceStep';
        }
        if (this is RollBackStep) {
            return r'RollBackStep';
        }
        if (this is RunJobStep) {
            return r'RunJobStep';
        }
        return null;
    }
}
extension AgentAppStepBuilderDiscriminatorExt on AgentAppStepBuilder {
    String? get discriminatorValue {
        if (this is AgentFinalizeStepBuilder) {
            return r'AgentFinalizeStep';
        }
        if (this is AgentPrepareStepBuilder) {
            return r'AgentPrepareStep';
        }
        if (this is BackupVolumesRemoveStepBuilder) {
            return r'BackupVolumesRemoveStep';
        }
        if (this is BackupVolumesStepBuilder) {
            return r'BackupVolumesStep';
        }
        if (this is ComposeDownStepBuilder) {
            return r'ComposeDownStep';
        }
        if (this is ComposeRestartStepBuilder) {
            return r'ComposeRestartStep';
        }
        if (this is ComposeStartStepBuilder) {
            return r'ComposeStartStep';
        }
        if (this is ComposeStepBuilder) {
            return r'ComposeStep';
        }
        if (this is ComposeTypeChoiceStepBuilder) {
            return r'ComposeTypeChoiceStep';
        }
        if (this is RollBackStepBuilder) {
            return r'RollBackStep';
        }
        if (this is RunJobStepBuilder) {
            return r'RunJobStep';
        }
        return null;
    }
}

class _$AgentAppStepSerializer implements PrimitiveSerializer<AgentAppStep> {
  @override
  final Iterable<Type> types = const [AgentAppStep];

  @override
  final String wireName = r'AgentAppStep';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentAppStep object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.nextId != null) {
      yield r'nextId';
      yield serializers.serialize(
        object.nextId,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.templateOnly != null) {
      yield r'templateOnly';
      yield serializers.serialize(
        object.templateOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.condition != null) {
      yield r'condition';
      yield serializers.serialize(
        object.condition,
        specifiedType: const FullType(String),
      );
    }
    if (object.stateful != null) {
      yield r'stateful';
      yield serializers.serialize(
        object.stateful,
        specifiedType: const FullType(bool),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(AgentAppStepType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentAppStep object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AgentFinalizeStep) {
      return serializers.serialize(object, specifiedType: FullType(AgentFinalizeStep))!;
    }
    if (object is AgentPrepareStep) {
      return serializers.serialize(object, specifiedType: FullType(AgentPrepareStep))!;
    }
    if (object is BackupVolumesRemoveStep) {
      return serializers.serialize(object, specifiedType: FullType(BackupVolumesRemoveStep))!;
    }
    if (object is BackupVolumesStep) {
      return serializers.serialize(object, specifiedType: FullType(BackupVolumesStep))!;
    }
    if (object is ComposeDownStep) {
      return serializers.serialize(object, specifiedType: FullType(ComposeDownStep))!;
    }
    if (object is ComposeRestartStep) {
      return serializers.serialize(object, specifiedType: FullType(ComposeRestartStep))!;
    }
    if (object is ComposeStartStep) {
      return serializers.serialize(object, specifiedType: FullType(ComposeStartStep))!;
    }
    if (object is ComposeStep) {
      return serializers.serialize(object, specifiedType: FullType(ComposeStep))!;
    }
    if (object is ComposeTypeChoiceStep) {
      return serializers.serialize(object, specifiedType: FullType(ComposeTypeChoiceStep))!;
    }
    if (object is RollBackStep) {
      return serializers.serialize(object, specifiedType: FullType(RollBackStep))!;
    }
    if (object is RunJobStep) {
      return serializers.serialize(object, specifiedType: FullType(RunJobStep))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AgentAppStep deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(AgentAppStep.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'AgentFinalizeStep':
        return serializers.deserialize(serialized, specifiedType: FullType(AgentFinalizeStep)) as AgentFinalizeStep;
      case r'AgentPrepareStep':
        return serializers.deserialize(serialized, specifiedType: FullType(AgentPrepareStep)) as AgentPrepareStep;
      case r'BackupVolumesRemoveStep':
        return serializers.deserialize(serialized, specifiedType: FullType(BackupVolumesRemoveStep)) as BackupVolumesRemoveStep;
      case r'BackupVolumesStep':
        return serializers.deserialize(serialized, specifiedType: FullType(BackupVolumesStep)) as BackupVolumesStep;
      case r'ComposeDownStep':
        return serializers.deserialize(serialized, specifiedType: FullType(ComposeDownStep)) as ComposeDownStep;
      case r'ComposeRestartStep':
        return serializers.deserialize(serialized, specifiedType: FullType(ComposeRestartStep)) as ComposeRestartStep;
      case r'ComposeStartStep':
        return serializers.deserialize(serialized, specifiedType: FullType(ComposeStartStep)) as ComposeStartStep;
      case r'ComposeStep':
        return serializers.deserialize(serialized, specifiedType: FullType(ComposeStep)) as ComposeStep;
      case r'ComposeTypeChoiceStep':
        return serializers.deserialize(serialized, specifiedType: FullType(ComposeTypeChoiceStep)) as ComposeTypeChoiceStep;
      case r'RollBackStep':
        return serializers.deserialize(serialized, specifiedType: FullType(RollBackStep)) as RollBackStep;
      case r'RunJobStep':
        return serializers.deserialize(serialized, specifiedType: FullType(RunJobStep)) as RunJobStep;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($AgentAppStep)) as $AgentAppStep;
    }
  }
}


/// a concrete implementation of [AgentAppStep], since [AgentAppStep] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AgentAppStep implements AgentAppStep, Built<$AgentAppStep, $AgentAppStepBuilder> {
  $AgentAppStep._();

  factory $AgentAppStep([void Function($AgentAppStepBuilder)? updates]) = _$$AgentAppStep;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AgentAppStepBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AgentAppStep> get serializer => _$$AgentAppStepSerializer();
}

class _$$AgentAppStepSerializer implements PrimitiveSerializer<$AgentAppStep> {
  @override
  final Iterable<Type> types = const [$AgentAppStep, _$$AgentAppStep];

  @override
  final String wireName = r'$AgentAppStep';

  @override
  Object serialize(
    Serializers serializers,
    $AgentAppStep object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AgentAppStep))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentAppStepBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'nextId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nextId = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
          break;
        case r'templateOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.templateOnly = valueDes;
          break;
        case r'condition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.condition = valueDes;
          break;
        case r'stateful':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.stateful = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentAppStepType),
          ) as AgentAppStepType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $AgentAppStep deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AgentAppStepBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

