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
import 'package:thingsboard_client/src/model/agent_application.dart';
import 'package:thingsboard_client/src/model/agent_app_event_action_type.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_app_event_request.g.dart';

/// Request payload for creating an agent application event (install, update, upgrade, restart, delete, etc.).
///
/// Properties:
/// * [actionType] - Action to perform against the agent application.
/// * [application] - Agent application payload supplied by the caller. Used to carry name/config changes for UPDATE and the target state for INSTALL/UPGRADE.
/// * [stepInputs] - Per-step input overrides keyed by step id (e.g. pullImages flag, backup volume selection).
/// * [relatedEntityId] - INSTALL-action optional related entity (Edge or Gateway Device) to link to the application in the same operation. When set, the application is created and the relation is assigned atomically. Ignored for non-INSTALL actions.
/// * [bulkActionId] - Optional bulk-action correlation id. When the same value is used across multiple application events, duplicates are deduplicated server-side.
/// * [skipProfileRefetch] - UPDATE-action flag for profile-managed apps. When true, the compose is not re-resolved from the (possibly upgraded) profile — only the credentials carried by `application.config` are applied. Ignored for non-UPDATE actions and for non-profile-managed apps.
@BuiltValue()
abstract class AgentAppEventRequest
    implements Built<AgentAppEventRequest, AgentAppEventRequestBuilder> {
  /// Action to perform against the agent application.
  @BuiltValueField(wireName: r'actionType')
  AgentAppEventActionType? get actionType;
  // enum actionTypeEnum {  INSTALL,  UPDATE,  DELETE,  RESTART,  ROLLBACK,  UPGRADE,  AGENT_UPGRADE,  };

  /// Agent application payload supplied by the caller. Used to carry name/config changes for UPDATE and the target state for INSTALL/UPGRADE.
  @BuiltValueField(wireName: r'application')
  AgentApplication? get application;

  /// Per-step input overrides keyed by step id (e.g. pullImages flag, backup volume selection).
  @BuiltValueField(wireName: r'stepInputs')
  BuiltMap<String, AgentAppEventStepStatesValue>? get stepInputs;

  /// INSTALL-action optional related entity (Edge or Gateway Device) to link to the application in the same operation. When set, the application is created and the relation is assigned atomically. Ignored for non-INSTALL actions.
  @BuiltValueField(wireName: r'relatedEntityId')
  EntityId? get relatedEntityId;

  /// Optional bulk-action correlation id. When the same value is used across multiple application events, duplicates are deduplicated server-side.
  @BuiltValueField(wireName: r'bulkActionId')
  String? get bulkActionId;

  /// UPDATE-action flag for profile-managed apps. When true, the compose is not re-resolved from the (possibly upgraded) profile — only the credentials carried by `application.config` are applied. Ignored for non-UPDATE actions and for non-profile-managed apps.
  @BuiltValueField(wireName: r'skipProfileRefetch')
  bool? get skipProfileRefetch;

  AgentAppEventRequest._();

  factory AgentAppEventRequest([void updates(AgentAppEventRequestBuilder b)]) =
      _$AgentAppEventRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentAppEventRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentAppEventRequest> get serializer =>
      _$AgentAppEventRequestSerializer();
}

class _$AgentAppEventRequestSerializer
    implements PrimitiveSerializer<AgentAppEventRequest> {
  @override
  final Iterable<Type> types = const [
    AgentAppEventRequest,
    _$AgentAppEventRequest,
  ];

  @override
  final String wireName = r'AgentAppEventRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentAppEventRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.actionType != null) {
      yield r'actionType';
      yield serializers.serialize(
        object.actionType,
        specifiedType: const FullType(AgentAppEventActionType),
      );
    }
    if (object.application != null) {
      yield r'application';
      yield serializers.serialize(
        object.application,
        specifiedType: const FullType(AgentApplication),
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
    if (object.relatedEntityId != null) {
      yield r'relatedEntityId';
      yield serializers.serialize(
        object.relatedEntityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.bulkActionId != null) {
      yield r'bulkActionId';
      yield serializers.serialize(
        object.bulkActionId,
        specifiedType: const FullType(String),
      );
    }
    if (object.skipProfileRefetch != null) {
      yield r'skipProfileRefetch';
      yield serializers.serialize(
        object.skipProfileRefetch,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentAppEventRequest object, {
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
    required AgentAppEventRequestBuilder result,
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
        case r'application':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AgentApplication),
                  )
                  as AgentApplication?;
          if (valueDes == null) continue;
          result.application.replace(valueDes);
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
        case r'relatedEntityId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.relatedEntityId = valueDes;
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
        case r'skipProfileRefetch':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.skipProfileRefetch = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentAppEventRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentAppEventRequestBuilder();
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
