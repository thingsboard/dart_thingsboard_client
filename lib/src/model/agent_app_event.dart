// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_application_id.dart';
import 'package:thingsboard_client/src/model/agent_app_event_step_states_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/agent_id.dart';
import 'package:thingsboard_client/src/model/processing_start_status.dart';
import 'package:thingsboard_client/src/model/agent_app_event_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/agent_app_event_action_type.dart';
import 'package:thingsboard_client/src/model/agent_processing_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_app_event.g.dart';

/// AgentAppEvent
///
/// Properties:
/// * [id] - JSON object with the Agent App Event Id.
/// * [createdTime] - Timestamp of the event creation, in milliseconds
/// * [tenantId]
/// * [applicationId]
/// * [agentId]
/// * [applicationName]
/// * [actionType]
/// * [startStatus]
/// * [processingStatus]
/// * [currentStepId]
/// * [currentActivity]
/// * [errorMessage]
/// * [updatedTime]
/// * [stepStates]
/// * [bulkActionId]
/// * [resolvedArguments]
/// * [winnerContainerId]
/// * [finalizeDeadlineTs]
/// * [contextMetadata]
@BuiltValue()
abstract class AgentAppEvent
    implements Built<AgentAppEvent, AgentAppEventBuilder> {
  /// JSON object with the Agent App Event Id.
  @BuiltValueField(wireName: r'id')
  AgentAppEventId? get id;

  /// Timestamp of the event creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'applicationId')
  AgentApplicationId? get applicationId;

  @BuiltValueField(wireName: r'agentId')
  AgentId? get agentId;

  @BuiltValueField(wireName: r'applicationName')
  String? get applicationName;

  @BuiltValueField(wireName: r'actionType')
  AgentAppEventActionType? get actionType;
  // enum actionTypeEnum {  INSTALL,  UPDATE,  DELETE,  RESTART,  ROLLBACK,  UPGRADE,  AGENT_UPGRADE,  };

  @BuiltValueField(wireName: r'startStatus')
  ProcessingStartStatus? get startStatus;
  // enum startStatusEnum {  DELIVERY_FAIL,  PENDING,  DELIVERED,  };

  @BuiltValueField(wireName: r'processingStatus')
  AgentProcessingStatus? get processingStatus;
  // enum processingStatusEnum {  PENDING,  QUEUED,  PROCESSING,  FINISHED,  ERROR,  START_FAILED,  };

  @BuiltValueField(wireName: r'currentStepId')
  String? get currentStepId;

  @BuiltValueField(wireName: r'currentActivity')
  String? get currentActivity;

  @BuiltValueField(wireName: r'errorMessage')
  String? get errorMessage;

  @BuiltValueField(wireName: r'updatedTime')
  int? get updatedTime;

  @BuiltValueField(wireName: r'stepStates')
  BuiltMap<String, AgentAppEventStepStatesValue>? get stepStates;

  @BuiltValueField(wireName: r'bulkActionId')
  String? get bulkActionId;

  @BuiltValueField(wireName: r'resolvedArguments')
  BuiltMap<String, String>? get resolvedArguments;

  @BuiltValueField(wireName: r'winnerContainerId')
  String? get winnerContainerId;

  @BuiltValueField(wireName: r'finalizeDeadlineTs')
  int? get finalizeDeadlineTs;

  @BuiltValueField(wireName: r'contextMetadata')
  BuiltMap<String, String>? get contextMetadata;

  AgentAppEvent._();

  factory AgentAppEvent([void updates(AgentAppEventBuilder b)]) =
      _$AgentAppEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentAppEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentAppEvent> get serializer =>
      _$AgentAppEventSerializer();
}

class _$AgentAppEventSerializer implements PrimitiveSerializer<AgentAppEvent> {
  @override
  final Iterable<Type> types = const [AgentAppEvent, _$AgentAppEvent];

  @override
  final String wireName = r'AgentAppEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentAppEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AgentAppEventId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.applicationId != null) {
      yield r'applicationId';
      yield serializers.serialize(
        object.applicationId,
        specifiedType: const FullType(AgentApplicationId),
      );
    }
    if (object.agentId != null) {
      yield r'agentId';
      yield serializers.serialize(
        object.agentId,
        specifiedType: const FullType(AgentId),
      );
    }
    if (object.applicationName != null) {
      yield r'applicationName';
      yield serializers.serialize(
        object.applicationName,
        specifiedType: const FullType(String),
      );
    }
    if (object.actionType != null) {
      yield r'actionType';
      yield serializers.serialize(
        object.actionType,
        specifiedType: const FullType(AgentAppEventActionType),
      );
    }
    if (object.startStatus != null) {
      yield r'startStatus';
      yield serializers.serialize(
        object.startStatus,
        specifiedType: const FullType(ProcessingStartStatus),
      );
    }
    if (object.processingStatus != null) {
      yield r'processingStatus';
      yield serializers.serialize(
        object.processingStatus,
        specifiedType: const FullType(AgentProcessingStatus),
      );
    }
    if (object.currentStepId != null) {
      yield r'currentStepId';
      yield serializers.serialize(
        object.currentStepId,
        specifiedType: const FullType(String),
      );
    }
    if (object.currentActivity != null) {
      yield r'currentActivity';
      yield serializers.serialize(
        object.currentActivity,
        specifiedType: const FullType(String),
      );
    }
    if (object.errorMessage != null) {
      yield r'errorMessage';
      yield serializers.serialize(
        object.errorMessage,
        specifiedType: const FullType(String),
      );
    }
    if (object.updatedTime != null) {
      yield r'updatedTime';
      yield serializers.serialize(
        object.updatedTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.stepStates != null) {
      yield r'stepStates';
      yield serializers.serialize(
        object.stepStates,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(AgentAppEventStepStatesValue),
        ]),
      );
    }
    if (object.bulkActionId != null) {
      yield r'bulkActionId';
      yield serializers.serialize(
        object.bulkActionId,
        specifiedType: const FullType(String),
      );
    }
    if (object.resolvedArguments != null) {
      yield r'resolvedArguments';
      yield serializers.serialize(
        object.resolvedArguments,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
    if (object.winnerContainerId != null) {
      yield r'winnerContainerId';
      yield serializers.serialize(
        object.winnerContainerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.finalizeDeadlineTs != null) {
      yield r'finalizeDeadlineTs';
      yield serializers.serialize(
        object.finalizeDeadlineTs,
        specifiedType: const FullType(int),
      );
    }
    if (object.contextMetadata != null) {
      yield r'contextMetadata';
      yield serializers.serialize(
        object.contextMetadata,
        specifiedType: const FullType(BuiltMap, [
          FullType(String),
          FullType(String),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentAppEvent object, {
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
    required AgentAppEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AgentAppEventId),
                  )
                  as AgentAppEventId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'tenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'applicationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AgentApplicationId),
                  )
                  as AgentApplicationId?;
          if (valueDes == null) continue;
          result.applicationId.replace(valueDes);
          break;
        case r'agentId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AgentId),
                  )
                  as AgentId?;
          if (valueDes == null) continue;
          result.agentId.replace(valueDes);
          break;
        case r'applicationName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.applicationName = valueDes;
          break;
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
        case r'startStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ProcessingStartStatus,
                    ),
                  )
                  as ProcessingStartStatus?;
          if (valueDes == null) continue;
          result.startStatus = valueDes;
          break;
        case r'processingStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      AgentProcessingStatus,
                    ),
                  )
                  as AgentProcessingStatus?;
          if (valueDes == null) continue;
          result.processingStatus = valueDes;
          break;
        case r'currentStepId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.currentStepId = valueDes;
          break;
        case r'currentActivity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.currentActivity = valueDes;
          break;
        case r'errorMessage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.errorMessage = valueDes;
          break;
        case r'updatedTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.updatedTime = valueDes;
          break;
        case r'stepStates':
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
          result.stepStates.replace(valueDes);
          break;
        case r'bulkActionId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.bulkActionId = valueDes;
          break;
        case r'resolvedArguments':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.resolvedArguments.replace(valueDes);
          break;
        case r'winnerContainerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.winnerContainerId = valueDes;
          break;
        case r'finalizeDeadlineTs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.finalizeDeadlineTs = valueDes;
          break;
        case r'contextMetadata':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltMap, [
                      FullType(String),
                      FullType(String),
                    ]),
                  )
                  as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.contextMetadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentAppEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentAppEventBuilder();
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
