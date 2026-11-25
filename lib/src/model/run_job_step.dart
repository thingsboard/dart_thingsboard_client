// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/run_job_step_state.dart';
import 'package:thingsboard_client/src/model/agent_app_step.dart';
import 'package:thingsboard_client/src/model/agent_app_step_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'run_job_step.g.dart';

/// RunJobStep
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
@BuiltValue()
abstract class RunJobStep
    implements AgentAppStep, Built<RunJobStep, RunJobStepBuilder> {
  @BuiltValueField(wireName: r'state')
  RunJobStepState? get state;

  RunJobStep._();

  factory RunJobStep([void updates(RunJobStepBuilder b)]) = _$RunJobStep;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RunJobStepBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RunJobStep> get serializer => _$RunJobStepSerializer();
}

class _$RunJobStepSerializer implements PrimitiveSerializer<RunJobStep> {
  @override
  final Iterable<Type> types = const [RunJobStep, _$RunJobStep];

  @override
  final String wireName = r'RunJobStep';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RunJobStep object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nextId != null) {
      yield r'nextId';
      yield serializers.serialize(
        object.nextId,
        specifiedType: const FullType(String),
      );
    }
    if (object.condition != null) {
      yield r'condition';
      yield serializers.serialize(
        object.condition,
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
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(RunJobStepState),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(AgentAppStepType),
      );
    }
    if (object.stateful != null) {
      yield r'stateful';
      yield serializers.serialize(
        object.stateful,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RunJobStep object, {
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
    required RunJobStepBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nextId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.nextId = valueDes;
          break;
        case r'condition':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.condition = valueDes;
          break;
        case r'templateOnly':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.templateOnly = valueDes;
          break;
        case r'state':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(RunJobStepState),
                  )
                  as RunJobStepState?;
          if (valueDes == null) continue;
          result.state.replace(valueDes);
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.title = valueDes;
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
        case r'stateful':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.stateful = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RunJobStep deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RunJobStepBuilder();
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
