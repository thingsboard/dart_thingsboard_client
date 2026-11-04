// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_app_step_type.dart';
import 'package:thingsboard_client/src/model/step_field_agent_app_event_id.dart';
import 'package:thingsboard_client/src/model/agent_app_step_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'roll_back_step_state.g.dart';

/// RollBackStepState
///
/// Properties:
/// * [type]
/// * [failedEventId]
@BuiltValue()
abstract class RollBackStepState
    implements
        AgentAppStepState,
        Built<RollBackStepState, RollBackStepStateBuilder> {
  @BuiltValueField(wireName: r'failedEventId')
  StepFieldAgentAppEventId? get failedEventId;

  RollBackStepState._();

  factory RollBackStepState([void updates(RollBackStepStateBuilder b)]) =
      _$RollBackStepState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RollBackStepStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RollBackStepState> get serializer =>
      _$RollBackStepStateSerializer();
}

class _$RollBackStepStateSerializer
    implements PrimitiveSerializer<RollBackStepState> {
  @override
  final Iterable<Type> types = const [RollBackStepState, _$RollBackStepState];

  @override
  final String wireName = r'RollBackStepState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RollBackStepState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(AgentAppStepType),
      );
    }
    if (object.failedEventId != null) {
      yield r'failedEventId';
      yield serializers.serialize(
        object.failedEventId,
        specifiedType: const FullType(StepFieldAgentAppEventId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RollBackStepState object, {
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
    required RollBackStepStateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'failedEventId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      StepFieldAgentAppEventId,
                    ),
                  )
                  as StepFieldAgentAppEventId?;
          if (valueDes == null) continue;
          result.failedEventId.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RollBackStepState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RollBackStepStateBuilder();
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
