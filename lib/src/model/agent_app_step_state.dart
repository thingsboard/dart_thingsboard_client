// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/backup_volumes_step_state.dart';
import 'package:thingsboard_client/src/model/compose_down_step_state.dart';
import 'package:thingsboard_client/src/model/run_job_step_state.dart';
import 'package:thingsboard_client/src/model/compose_step_state.dart';
import 'package:thingsboard_client/src/model/agent_app_step_type.dart';
import 'package:thingsboard_client/src/model/roll_back_step_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_app_step_state.g.dart';

/// AgentAppStepState
///
/// Properties:
/// * [type] 
@BuiltValue(instantiable: false)
abstract class AgentAppStepState  {
  @BuiltValueField(wireName: r'type')
  AgentAppStepType? get type;
  // enum typeEnum {  COMPOSE_TEMPLATE,  COMPOSE,  COMPOSE_START,  COMPOSE_DOWN,  ROLLBACK,  BACKUP_VOLUME,  BACKUP_VOLUME_REMOVE,  COMPOSE_RESTART,  RUN_JOB,  AGENT_PREPARE,  AGENT_FINALIZE,  };

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'BackupVolumesStepState': BackupVolumesStepState,
    r'ComposeDownStepState': ComposeDownStepState,
    r'ComposeStepState': ComposeStepState,
    r'RollBackStepState': RollBackStepState,
    r'RunJobStepState': RunJobStepState,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentAppStepState> get serializer => _$AgentAppStepStateSerializer();
}

extension AgentAppStepStateDiscriminatorExt on AgentAppStepState {
    String? get discriminatorValue {
        if (this is BackupVolumesStepState) {
            return r'BackupVolumesStepState';
        }
        if (this is ComposeDownStepState) {
            return r'ComposeDownStepState';
        }
        if (this is ComposeStepState) {
            return r'ComposeStepState';
        }
        if (this is RollBackStepState) {
            return r'RollBackStepState';
        }
        if (this is RunJobStepState) {
            return r'RunJobStepState';
        }
        return null;
    }
}
extension AgentAppStepStateBuilderDiscriminatorExt on AgentAppStepStateBuilder {
    String? get discriminatorValue {
        if (this is BackupVolumesStepStateBuilder) {
            return r'BackupVolumesStepState';
        }
        if (this is ComposeDownStepStateBuilder) {
            return r'ComposeDownStepState';
        }
        if (this is ComposeStepStateBuilder) {
            return r'ComposeStepState';
        }
        if (this is RollBackStepStateBuilder) {
            return r'RollBackStepState';
        }
        if (this is RunJobStepStateBuilder) {
            return r'RunJobStepState';
        }
        return null;
    }
}

class _$AgentAppStepStateSerializer implements PrimitiveSerializer<AgentAppStepState> {
  @override
  final Iterable<Type> types = const [AgentAppStepState];

  @override
  final String wireName = r'AgentAppStepState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentAppStepState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    AgentAppStepState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is BackupVolumesStepState) {
      return serializers.serialize(object, specifiedType: FullType(BackupVolumesStepState))!;
    }
    if (object is ComposeDownStepState) {
      return serializers.serialize(object, specifiedType: FullType(ComposeDownStepState))!;
    }
    if (object is ComposeStepState) {
      return serializers.serialize(object, specifiedType: FullType(ComposeStepState))!;
    }
    if (object is RollBackStepState) {
      return serializers.serialize(object, specifiedType: FullType(RollBackStepState))!;
    }
    if (object is RunJobStepState) {
      return serializers.serialize(object, specifiedType: FullType(RunJobStepState))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AgentAppStepState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(AgentAppStepState.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'BackupVolumesStepState':
        return serializers.deserialize(serialized, specifiedType: FullType(BackupVolumesStepState)) as BackupVolumesStepState;
      case r'ComposeDownStepState':
        return serializers.deserialize(serialized, specifiedType: FullType(ComposeDownStepState)) as ComposeDownStepState;
      case r'ComposeStepState':
        return serializers.deserialize(serialized, specifiedType: FullType(ComposeStepState)) as ComposeStepState;
      case r'RollBackStepState':
        return serializers.deserialize(serialized, specifiedType: FullType(RollBackStepState)) as RollBackStepState;
      case r'RunJobStepState':
        return serializers.deserialize(serialized, specifiedType: FullType(RunJobStepState)) as RunJobStepState;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($AgentAppStepState)) as $AgentAppStepState;
    }
  }
}


/// a concrete implementation of [AgentAppStepState], since [AgentAppStepState] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AgentAppStepState implements AgentAppStepState, Built<$AgentAppStepState, $AgentAppStepStateBuilder> {
  $AgentAppStepState._();

  factory $AgentAppStepState([void Function($AgentAppStepStateBuilder)? updates]) = _$$AgentAppStepState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AgentAppStepStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AgentAppStepState> get serializer => _$$AgentAppStepStateSerializer();
}

class _$$AgentAppStepStateSerializer implements PrimitiveSerializer<$AgentAppStepState> {
  @override
  final Iterable<Type> types = const [$AgentAppStepState, _$$AgentAppStepState];

  @override
  final String wireName = r'$AgentAppStepState';

  @override
  Object serialize(
    Serializers serializers,
    $AgentAppStepState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AgentAppStepState))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentAppStepStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  $AgentAppStepState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AgentAppStepStateBuilder();
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

