// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/step_field_list_string.dart';
import 'package:thingsboard_client/src/model/agent_app_step_type.dart';
import 'package:thingsboard_client/src/model/agent_app_step_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'backup_volumes_step_state.g.dart';

/// BackupVolumesStepState
///
/// Properties:
/// * [type] 
/// * [backupVolumes] 
@BuiltValue()
abstract class BackupVolumesStepState implements AgentAppStepState, Built<BackupVolumesStepState, BackupVolumesStepStateBuilder> {
  @BuiltValueField(wireName: r'backupVolumes')
  StepFieldListString? get backupVolumes;

  BackupVolumesStepState._();

  factory BackupVolumesStepState([void updates(BackupVolumesStepStateBuilder b)]) = _$BackupVolumesStepState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BackupVolumesStepStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BackupVolumesStepState> get serializer => _$BackupVolumesStepStateSerializer();
}

class _$BackupVolumesStepStateSerializer implements PrimitiveSerializer<BackupVolumesStepState> {
  @override
  final Iterable<Type> types = const [BackupVolumesStepState, _$BackupVolumesStepState];

  @override
  final String wireName = r'BackupVolumesStepState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BackupVolumesStepState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(AgentAppStepType),
      );
    }
    if (object.backupVolumes != null) {
      yield r'backupVolumes';
      yield serializers.serialize(
        object.backupVolumes,
        specifiedType: const FullType(StepFieldListString),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BackupVolumesStepState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BackupVolumesStepStateBuilder result,
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
        case r'backupVolumes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(StepFieldListString),
          ) as StepFieldListString?;
          if (valueDes == null) continue;
          result.backupVolumes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BackupVolumesStepState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BackupVolumesStepStateBuilder();
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


