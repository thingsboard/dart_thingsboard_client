// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_app_event_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'step_field_agent_app_event_id.g.dart';

/// StepFieldAgentAppEventId
///
/// Properties:
/// * [value]
/// * [userChoice]
@BuiltValue()
abstract class StepFieldAgentAppEventId
    implements
        Built<StepFieldAgentAppEventId, StepFieldAgentAppEventIdBuilder> {
  @BuiltValueField(wireName: r'value')
  AgentAppEventId? get value;

  @BuiltValueField(wireName: r'userChoice')
  bool? get userChoice;

  StepFieldAgentAppEventId._();

  factory StepFieldAgentAppEventId([
    void updates(StepFieldAgentAppEventIdBuilder b),
  ]) = _$StepFieldAgentAppEventId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StepFieldAgentAppEventIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StepFieldAgentAppEventId> get serializer =>
      _$StepFieldAgentAppEventIdSerializer();
}

class _$StepFieldAgentAppEventIdSerializer
    implements PrimitiveSerializer<StepFieldAgentAppEventId> {
  @override
  final Iterable<Type> types = const [
    StepFieldAgentAppEventId,
    _$StepFieldAgentAppEventId,
  ];

  @override
  final String wireName = r'StepFieldAgentAppEventId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StepFieldAgentAppEventId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(AgentAppEventId),
      );
    }
    if (object.userChoice != null) {
      yield r'userChoice';
      yield serializers.serialize(
        object.userChoice,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StepFieldAgentAppEventId object, {
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
    required StepFieldAgentAppEventIdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AgentAppEventId),
                  )
                  as AgentAppEventId?;
          if (valueDes == null) continue;
          result.value.replace(valueDes);
          break;
        case r'userChoice':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.userChoice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StepFieldAgentAppEventId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StepFieldAgentAppEventIdBuilder();
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
