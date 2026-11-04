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
import 'package:thingsboard_client/src/model/agent_app_step_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'compose_down_step_state.g.dart';

/// ComposeDownStepState
///
/// Properties:
/// * [type]
/// * [serviceImageRegexPatterns]
/// * [removeVolumes]
@BuiltValue()
abstract class ComposeDownStepState
    implements
        AgentAppStepState,
        Built<ComposeDownStepState, ComposeDownStepStateBuilder> {
  @BuiltValueField(wireName: r'removeVolumes')
  StepFieldBoolean? get removeVolumes;

  @BuiltValueField(wireName: r'serviceImageRegexPatterns')
  StepFieldListString? get serviceImageRegexPatterns;

  ComposeDownStepState._();

  factory ComposeDownStepState([void updates(ComposeDownStepStateBuilder b)]) =
      _$ComposeDownStepState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComposeDownStepStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComposeDownStepState> get serializer =>
      _$ComposeDownStepStateSerializer();
}

class _$ComposeDownStepStateSerializer
    implements PrimitiveSerializer<ComposeDownStepState> {
  @override
  final Iterable<Type> types = const [
    ComposeDownStepState,
    _$ComposeDownStepState,
  ];

  @override
  final String wireName = r'ComposeDownStepState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComposeDownStepState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(AgentAppStepType),
      );
    }
    if (object.removeVolumes != null) {
      yield r'removeVolumes';
      yield serializers.serialize(
        object.removeVolumes,
        specifiedType: const FullType(StepFieldBoolean),
      );
    }
    if (object.serviceImageRegexPatterns != null) {
      yield r'serviceImageRegexPatterns';
      yield serializers.serialize(
        object.serviceImageRegexPatterns,
        specifiedType: const FullType(StepFieldListString),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ComposeDownStepState object, {
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
    required ComposeDownStepStateBuilder result,
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
        case r'removeVolumes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StepFieldBoolean),
                  )
                  as StepFieldBoolean?;
          if (valueDes == null) continue;
          result.removeVolumes.replace(valueDes);
          break;
        case r'serviceImageRegexPatterns':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(StepFieldListString),
                  )
                  as StepFieldListString?;
          if (valueDes == null) continue;
          result.serviceImageRegexPatterns.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComposeDownStepState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComposeDownStepStateBuilder();
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
