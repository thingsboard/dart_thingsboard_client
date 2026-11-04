// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/edge_event_id.dart';
import 'package:thingsboard_client/src/model/edge_id.dart';
import 'package:thingsboard_client/src/model/edge_event_type.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/edge_event_action_type.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edge_event.g.dart';

/// EdgeEvent
///
/// Properties:
/// * [id] 
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [seqId] 
/// * [tenantId] 
/// * [edgeId] 
/// * [action] 
/// * [entityId] 
/// * [uid] 
/// * [type] 
/// * [body] - A value representing the any type (object or primitive)
/// * [entityGroupId] 
@BuiltValue()
abstract class EdgeEvent implements Built<EdgeEvent, EdgeEventBuilder> {
  @BuiltValueField(wireName: r'id')
  EdgeEventId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'seqId')
  int? get seqId;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'edgeId')
  EdgeId? get edgeId;

  @BuiltValueField(wireName: r'action')
  EdgeEventActionType? get action;
  // enum actionEnum {  ADDED,  UPDATED,  DELETED,  POST_ATTRIBUTES,  ATTRIBUTES_UPDATED,  ATTRIBUTES_DELETED,  TIMESERIES_UPDATED,  CREDENTIALS_UPDATED,  RELATION_ADD_OR_UPDATE,  RELATION_DELETED,  RPC_CALL,  ALARM_ACK,  ALARM_CLEAR,  ALARM_DELETE,  ALARM_ASSIGNED,  ALARM_UNASSIGNED,  ADDED_COMMENT,  UPDATED_COMMENT,  DELETED_COMMENT,  ASSIGNED_TO_EDGE,  UNASSIGNED_FROM_EDGE,  CREDENTIALS_REQUEST,  ADDED_TO_ENTITY_GROUP,  REMOVED_FROM_ENTITY_GROUP,  CHANGE_OWNER,  ENTITY_MERGE_REQUEST,  };

  @BuiltValueField(wireName: r'entityId')
  String? get entityId;

  @BuiltValueField(wireName: r'uid')
  String? get uid;

  @BuiltValueField(wireName: r'type')
  EdgeEventType? get type;
  // enum typeEnum {  DASHBOARD,  ASSET,  DEVICE,  DEVICE_PROFILE,  ASSET_PROFILE,  ENTITY_VIEW,  ALARM,  ALARM_COMMENT,  RULE_CHAIN,  RULE_CHAIN_METADATA,  EDGE,  USER,  CUSTOMER,  RELATION,  TENANT,  TENANT_PROFILE,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ADMIN_SETTINGS,  OTA_PACKAGE,  QUEUE,  ENTITY_GROUP,  SCHEDULER_EVENT,  WHITE_LABELING,  LOGIN_WHITE_LABELING,  MAIL_TEMPLATES,  CUSTOM_TRANSLATION,  CUSTOM_MENU,  ROLE,  GROUP_PERMISSION,  CONVERTER,  INTEGRATION,  NOTIFICATION_RULE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  TB_RESOURCE,  DEVICE_GROUP_OTA,  OAUTH2_CLIENT,  DOMAIN,  CALCULATED_FIELD,  ENCRYPTION_KEY,  SECRET,  REPORT_TEMPLATE,  AI_MODEL,  API_KEY,  };

  /// A value representing the any type (object or primitive)
  @BuiltValueField(wireName: r'body')
  JsonObject? get body;

  @BuiltValueField(wireName: r'entityGroupId')
  String? get entityGroupId;

  EdgeEvent._();

  factory EdgeEvent([void updates(EdgeEventBuilder b)]) = _$EdgeEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdgeEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdgeEvent> get serializer => _$EdgeEventSerializer();
}

class _$EdgeEventSerializer implements PrimitiveSerializer<EdgeEvent> {
  @override
  final Iterable<Type> types = const [EdgeEvent, _$EdgeEvent];

  @override
  final String wireName = r'EdgeEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdgeEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(EdgeEventId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.seqId != null) {
      yield r'seqId';
      yield serializers.serialize(
        object.seqId,
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
    if (object.edgeId != null) {
      yield r'edgeId';
      yield serializers.serialize(
        object.edgeId,
        specifiedType: const FullType(EdgeId),
      );
    }
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(EdgeEventActionType),
      );
    }
    if (object.entityId != null) {
      yield r'entityId';
      yield serializers.serialize(
        object.entityId,
        specifiedType: const FullType(String),
      );
    }
    if (object.uid != null) {
      yield r'uid';
      yield serializers.serialize(
        object.uid,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(EdgeEventType),
      );
    }
    if (object.body != null) {
      yield r'body';
      yield serializers.serialize(
        object.body,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.entityGroupId != null) {
      yield r'entityGroupId';
      yield serializers.serialize(
        object.entityGroupId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EdgeEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EdgeEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdgeEventId),
          ) as EdgeEventId?;
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
        case r'seqId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.seqId = valueDes;
          break;
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TenantId),
          ) as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'edgeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdgeId),
          ) as EdgeId?;
          if (valueDes == null) continue;
          result.edgeId.replace(valueDes);
          break;
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdgeEventActionType),
          ) as EdgeEventActionType?;
          if (valueDes == null) continue;
          result.action = valueDes;
          break;
        case r'entityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entityId = valueDes;
          break;
        case r'uid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uid = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdgeEventType),
          ) as EdgeEventType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'body':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.body = valueDes;
          break;
        case r'entityGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entityGroupId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EdgeEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdgeEventBuilder();
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


