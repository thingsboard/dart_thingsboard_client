// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/agent_bulk_action_status.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/agent_app_event_action_type.dart';
import 'package:thingsboard_client/src/model/agent_bulk_action_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_bulk_action.g.dart';

/// AgentBulkAction
///
/// Properties:
/// * [id] - JSON object with the Agent Bulk Action Id.
/// * [createdTime] - Timestamp of the bulk action creation, in milliseconds
/// * [tenantId] 
/// * [agentProfileId] 
/// * [applicationProfileId] 
/// * [actionType] 
/// * [status] 
/// * [errorMsg] 
/// * [processingStartedTime] 
/// * [total] 
/// * [submitted] 
/// * [skipCounts] 
@BuiltValue()
abstract class AgentBulkAction implements Built<AgentBulkAction, AgentBulkActionBuilder> {
  /// JSON object with the Agent Bulk Action Id.
  @BuiltValueField(wireName: r'id')
  AgentBulkActionId? get id;

  /// Timestamp of the bulk action creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'agentProfileId')
  String? get agentProfileId;

  @BuiltValueField(wireName: r'applicationProfileId')
  String? get applicationProfileId;

  @BuiltValueField(wireName: r'actionType')
  AgentAppEventActionType? get actionType;
  // enum actionTypeEnum {  INSTALL,  UPDATE,  DELETE,  RESTART,  ROLLBACK,  UPGRADE,  AGENT_UPGRADE,  };

  @BuiltValueField(wireName: r'status')
  AgentBulkActionStatus? get status;
  // enum statusEnum {  QUEUED,  IN_PROGRESS,  STARTED,  START_FAILED,  };

  @BuiltValueField(wireName: r'errorMsg')
  String? get errorMsg;

  @BuiltValueField(wireName: r'processingStartedTime')
  int? get processingStartedTime;

  @BuiltValueField(wireName: r'total')
  int? get total;

  @BuiltValueField(wireName: r'submitted')
  int? get submitted;

  @BuiltValueField(wireName: r'skipCounts')
  BuiltMap<String, int>? get skipCounts;

  AgentBulkAction._();

  factory AgentBulkAction([void updates(AgentBulkActionBuilder b)]) = _$AgentBulkAction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentBulkActionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentBulkAction> get serializer => _$AgentBulkActionSerializer();
}

class _$AgentBulkActionSerializer implements PrimitiveSerializer<AgentBulkAction> {
  @override
  final Iterable<Type> types = const [AgentBulkAction, _$AgentBulkAction];

  @override
  final String wireName = r'AgentBulkAction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentBulkAction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AgentBulkActionId),
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
    if (object.agentProfileId != null) {
      yield r'agentProfileId';
      yield serializers.serialize(
        object.agentProfileId,
        specifiedType: const FullType(String),
      );
    }
    if (object.applicationProfileId != null) {
      yield r'applicationProfileId';
      yield serializers.serialize(
        object.applicationProfileId,
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(AgentBulkActionStatus),
      );
    }
    if (object.errorMsg != null) {
      yield r'errorMsg';
      yield serializers.serialize(
        object.errorMsg,
        specifiedType: const FullType(String),
      );
    }
    if (object.processingStartedTime != null) {
      yield r'processingStartedTime';
      yield serializers.serialize(
        object.processingStartedTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
    if (object.submitted != null) {
      yield r'submitted';
      yield serializers.serialize(
        object.submitted,
        specifiedType: const FullType(int),
      );
    }
    if (object.skipCounts != null) {
      yield r'skipCounts';
      yield serializers.serialize(
        object.skipCounts,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(int)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentBulkAction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentBulkActionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentBulkActionId),
          ) as AgentBulkActionId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TenantId),
          ) as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'agentProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.agentProfileId = valueDes;
          break;
        case r'applicationProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.applicationProfileId = valueDes;
          break;
        case r'actionType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentAppEventActionType),
          ) as AgentAppEventActionType?;
          if (valueDes == null) continue;
          result.actionType = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentBulkActionStatus),
          ) as AgentBulkActionStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'errorMsg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.errorMsg = valueDes;
          break;
        case r'processingStartedTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.processingStartedTime = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.total = valueDes;
          break;
        case r'submitted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.submitted = valueDes;
          break;
        case r'skipCounts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(int)]),
          ) as BuiltMap<String, int>?;
          if (valueDes == null) continue;
          result.skipCounts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentBulkAction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentBulkActionBuilder();
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


