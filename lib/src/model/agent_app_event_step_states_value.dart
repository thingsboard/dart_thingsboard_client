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
import 'package:thingsboard_client/src/model/roll_back_step_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'agent_app_event_step_states_value.g.dart';

/// AgentAppEventStepStatesValue
///
/// Properties:
/// * [type]
/// * [backupVolumes]
/// * [serviceImageRegexPatterns]
/// * [removeVolumes]
/// * [pullImages]
/// * [failedEventId]
/// * [image]
/// * [entrypoint]
/// * [cmd]
/// * [env]
/// * [binds]
/// * [networks]
/// * [retries]
/// * [networkFromServiceImageRegexPattern]
@BuiltValue()
abstract class AgentAppEventStepStatesValue
    implements
        Built<
          AgentAppEventStepStatesValue,
          AgentAppEventStepStatesValueBuilder
        > {
  /// One Of [BackupVolumesStepState], [ComposeDownStepState], [ComposeStepState], [RollBackStepState], [RunJobStepState]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'BackupVolumesStepState': BackupVolumesStepState,
    r'ComposeDownStepState': ComposeDownStepState,
    r'ComposeStepState': ComposeStepState,
    r'RollBackStepState': RollBackStepState,
    r'RunJobStepState': RunJobStepState,
  };

  AgentAppEventStepStatesValue._();

  factory AgentAppEventStepStatesValue([
    void updates(AgentAppEventStepStatesValueBuilder b),
  ]) = _$AgentAppEventStepStatesValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentAppEventStepStatesValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentAppEventStepStatesValue> get serializer =>
      _$AgentAppEventStepStatesValueSerializer();
}

extension AgentAppEventStepStatesValueDiscriminatorExt
    on AgentAppEventStepStatesValue {
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

extension AgentAppEventStepStatesValueBuilderDiscriminatorExt
    on AgentAppEventStepStatesValueBuilder {
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

class _$AgentAppEventStepStatesValueSerializer
    implements PrimitiveSerializer<AgentAppEventStepStatesValue> {
  @override
  final Iterable<Type> types = const [
    AgentAppEventStepStatesValue,
    _$AgentAppEventStepStatesValue,
  ];

  @override
  final String wireName = r'AgentAppEventStepStatesValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentAppEventStepStatesValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    AgentAppEventStepStatesValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  AgentAppEventStepStatesValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentAppEventStepStatesValueBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(
          AgentAppEventStepStatesValue.discriminatorFieldName,
        ) +
        1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      BackupVolumesStepState,
      ComposeDownStepState,
      ComposeStepState,
      RollBackStepState,
      RunJobStepState,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'BackupVolumesStepState':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(BackupVolumesStepState),
                )
                as BackupVolumesStepState;
        oneOfType = BackupVolumesStepState;
        break;
      case r'ComposeDownStepState':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(ComposeDownStepState),
                )
                as ComposeDownStepState;
        oneOfType = ComposeDownStepState;
        break;
      case r'ComposeStepState':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(ComposeStepState),
                )
                as ComposeStepState;
        oneOfType = ComposeStepState;
        break;
      case r'RollBackStepState':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(RollBackStepState),
                )
                as RollBackStepState;
        oneOfType = RollBackStepState;
        break;
      case r'RunJobStepState':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(RunJobStepState),
                )
                as RunJobStepState;
        oneOfType = RunJobStepState;
        break;
      default:
        throw UnsupportedError(
          "Couldn't deserialize oneOf for the discriminator value: ${discValue}",
        );
    }
    result.oneOf = OneOfDynamic(
      typeIndex: oneOfTypes.indexOf(oneOfType),
      types: oneOfTypes,
      value: oneOfResult,
    );
    return result.build();
  }
}
