// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/step_field_list_string.dart';
import 'package:thingsboard_client/src/model/step_field_boolean.dart';
import 'package:thingsboard_client/src/model/agent_app_step_type.dart';
import 'package:thingsboard_client/src/model/step_field_integer.dart';
import 'package:thingsboard_client/src/model/step_field_string.dart';
import 'package:thingsboard_client/src/model/agent_app_step_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'run_job_step_state.g.dart';

/// RunJobStepState
///
/// Properties:
/// * [type]
/// * [image]
/// * [entrypoint]
/// * [cmd]
/// * [env]
/// * [binds]
/// * [networks]
/// * [pullImages]
/// * [retries]
/// * [networkFromServiceImageRegexPattern]
@BuiltValue()
abstract class RunJobStepState
    implements
        AgentAppStepState,
        Built<RunJobStepState, RunJobStepStateBuilder> {
  @BuiltValueField(wireName: r'binds')
  StepFieldListString? get binds;

  @BuiltValueField(wireName: r'image')
  StepFieldString? get image;

  @BuiltValueField(wireName: r'retries')
  StepFieldInteger? get retries;

  @BuiltValueField(wireName: r'entrypoint')
  StepFieldListString? get entrypoint;

  @BuiltValueField(wireName: r'pullImages')
  StepFieldBoolean? get pullImages;

  @BuiltValueField(wireName: r'cmd')
  StepFieldListString? get cmd;

  @BuiltValueField(wireName: r'env')
  StepFieldListString? get env;

  @BuiltValueField(wireName: r'networks')
  StepFieldListString? get networks;

  @BuiltValueField(wireName: r'networkFromServiceImageRegexPattern')
  StepFieldString? get networkFromServiceImageRegexPattern;

  RunJobStepState._();

  factory RunJobStepState([void updates(RunJobStepStateBuilder b)]) =
      _$RunJobStepState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RunJobStepStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RunJobStepState> get serializer =>
      _$RunJobStepStateSerializer();
}

class _$RunJobStepStateSerializer
    implements PrimitiveSerializer<RunJobStepState> {
  @override
  final Iterable<Type> types = const [RunJobStepState, _$RunJobStepState];

  @override
  final String wireName = r'RunJobStepState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RunJobStepState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.binds != null) {
      yield r'binds';
      yield serializers.serialize(
        object.binds,
        specifiedType: const FullType(StepFieldListString),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(StepFieldString),
      );
    }
    if (object.retries != null) {
      yield r'retries';
      yield serializers.serialize(
        object.retries,
        specifiedType: const FullType(StepFieldInteger),
      );
    }
    if (object.entrypoint != null) {
      yield r'entrypoint';
      yield serializers.serialize(
        object.entrypoint,
        specifiedType: const FullType(StepFieldListString),
      );
    }
    if (object.pullImages != null) {
      yield r'pullImages';
      yield serializers.serialize(
        object.pullImages,
        specifiedType: const FullType(StepFieldBoolean),
      );
    }
    if (object.cmd != null) {
      yield r'cmd';
      yield serializers.serialize(
        object.cmd,
        specifiedType: const FullType(StepFieldListString),
      );
    }
    if (object.env != null) {
      yield r'env';
      yield serializers.serialize(
        object.env,
        specifiedType: const FullType(StepFieldListString),
      );
    }
    if (object.networks != null) {
      yield r'networks';
      yield serializers.serialize(
        object.networks,
        specifiedType: const FullType(StepFieldListString),
      );
    }
    if (object.networkFromServiceImageRegexPattern != null) {
      yield r'networkFromServiceImageRegexPattern';
      yield serializers.serialize(
        object.networkFromServiceImageRegexPattern,
        specifiedType: const FullType(StepFieldString),
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
    RunJobStepState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RunJobStepStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'binds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StepFieldListString),
                  )
                  as StepFieldListString?;
          if (valueDes == null) continue;
          result.binds.replace(valueDes);
          break;
        case r'image':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StepFieldString),
                  )
                  as StepFieldString?;
          if (valueDes == null) continue;
          result.image.replace(valueDes);
          break;
        case r'retries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StepFieldInteger),
                  )
                  as StepFieldInteger?;
          if (valueDes == null) continue;
          result.retries.replace(valueDes);
          break;
        case r'entrypoint':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StepFieldListString),
                  )
                  as StepFieldListString?;
          if (valueDes == null) continue;
          result.entrypoint.replace(valueDes);
          break;
        case r'pullImages':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StepFieldBoolean),
                  )
                  as StepFieldBoolean?;
          if (valueDes == null) continue;
          result.pullImages.replace(valueDes);
          break;
        case r'cmd':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StepFieldListString),
                  )
                  as StepFieldListString?;
          if (valueDes == null) continue;
          result.cmd.replace(valueDes);
          break;
        case r'env':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StepFieldListString),
                  )
                  as StepFieldListString?;
          if (valueDes == null) continue;
          result.env.replace(valueDes);
          break;
        case r'networks':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StepFieldListString),
                  )
                  as StepFieldListString?;
          if (valueDes == null) continue;
          result.networks.replace(valueDes);
          break;
        case r'networkFromServiceImageRegexPattern':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StepFieldString),
                  )
                  as StepFieldString?;
          if (valueDes == null) continue;
          result.networkFromServiceImageRegexPattern.replace(valueDes);
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AgentAppStepType),
                  )
                  as AgentAppStepType?;
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
  RunJobStepState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RunJobStepStateBuilder();
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
