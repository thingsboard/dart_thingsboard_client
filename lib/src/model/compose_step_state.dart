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

part 'compose_step_state.g.dart';

/// ComposeStepState
///
/// Properties:
/// * [type]
/// * [serviceImageRegexPatterns]
/// * [pullImages]
@BuiltValue()
abstract class ComposeStepState
    implements
        AgentAppStepState,
        Built<ComposeStepState, ComposeStepStateBuilder> {
  @BuiltValueField(wireName: r'serviceImageRegexPatterns')
  StepFieldListString? get serviceImageRegexPatterns;

  @BuiltValueField(wireName: r'pullImages')
  StepFieldBoolean? get pullImages;

  ComposeStepState._();

  factory ComposeStepState([void updates(ComposeStepStateBuilder b)]) =
      _$ComposeStepState;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComposeStepStateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComposeStepState> get serializer =>
      _$ComposeStepStateSerializer();
}

class _$ComposeStepStateSerializer
    implements PrimitiveSerializer<ComposeStepState> {
  @override
  final Iterable<Type> types = const [ComposeStepState, _$ComposeStepState];

  @override
  final String wireName = r'ComposeStepState';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComposeStepState object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(AgentAppStepType),
      );
    }
    if (object.serviceImageRegexPatterns != null) {
      yield r'serviceImageRegexPatterns';
      yield serializers.serialize(
        object.serviceImageRegexPatterns,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ComposeStepState object, {
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
    required ComposeStepStateBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComposeStepState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComposeStepStateBuilder();
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
