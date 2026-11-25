// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_app_step.dart';
import 'package:thingsboard_client/src/model/agent_app_step_type.dart';
import 'package:thingsboard_client/src/model/roll_back_step_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'roll_back_step.g.dart';

/// RollBackStep
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
abstract class RollBackStep
    implements AgentAppStep, Built<RollBackStep, RollBackStepBuilder> {
  @BuiltValueField(wireName: r'state')
  RollBackStepState? get state;

  RollBackStep._();

  factory RollBackStep([void updates(RollBackStepBuilder b)]) = _$RollBackStep;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RollBackStepBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RollBackStep> get serializer => _$RollBackStepSerializer();
}

class _$RollBackStepSerializer implements PrimitiveSerializer<RollBackStep> {
  @override
  final Iterable<Type> types = const [RollBackStep, _$RollBackStep];

  @override
  final String wireName = r'RollBackStep';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RollBackStep object, {
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
        specifiedType: const FullType(RollBackStepState),
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
    RollBackStep object, {
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
    required RollBackStepBuilder result,
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
                    specifiedType: const FullType.nullable(RollBackStepState),
                  )
                  as RollBackStepState?;
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
  RollBackStep deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RollBackStepBuilder();
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
