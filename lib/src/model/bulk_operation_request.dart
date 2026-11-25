// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_app_event_step_states_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/agent_app_event_action_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bulk_operation_request.g.dart';

/// BulkOperationRequest
///
/// Properties:
/// * [actionType]
/// * [stepInputs]
@BuiltValue()
abstract class BulkOperationRequest
    implements Built<BulkOperationRequest, BulkOperationRequestBuilder> {
  @BuiltValueField(wireName: r'actionType')
  AgentAppEventActionType? get actionType;
  // enum actionTypeEnum {  INSTALL,  UPDATE,  DELETE,  RESTART,  ROLLBACK,  UPGRADE,  AGENT_UPGRADE,  };

  @BuiltValueField(wireName: r'stepInputs')
  BuiltMap<String, AgentAppEventStepStatesValue>? get stepInputs;

  BulkOperationRequest._();

  factory BulkOperationRequest([void updates(BulkOperationRequestBuilder b)]) =
      _$BulkOperationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BulkOperationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BulkOperationRequest> get serializer =>
      _$BulkOperationRequestSerializer();
}

class _$BulkOperationRequestSerializer
    implements PrimitiveSerializer<BulkOperationRequest> {
  @override
  final Iterable<Type> types = const [
    BulkOperationRequest,
    _$BulkOperationRequest,
  ];

  @override
  final String wireName = r'BulkOperationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BulkOperationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.actionType != null) {
      yield r'actionType';
      yield serializers.serialize(
        object.actionType,
        specifiedType: const FullType(AgentAppEventActionType),
      );
    }
    if (object.stepInputs != null) {
      yield r'stepInputs';
      yield serializers.serialize(
        object.stepInputs,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(AgentAppEventStepStatesValue),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BulkOperationRequest object, {
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
    required BulkOperationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'actionType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AgentAppEventActionType,
                    ),
                  )
                  as AgentAppEventActionType?;
          if (valueDes == null) continue;
          result.actionType = valueDes;
          break;
        case r'stepInputs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(AgentAppEventStepStatesValue),
                    ]),
                  )
                  as BuiltMap<String, AgentAppEventStepStatesValue>?;
          if (valueDes == null) continue;
          result.stepInputs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BulkOperationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BulkOperationRequestBuilder();
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
