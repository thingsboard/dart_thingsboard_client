// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/notification_request_config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/notification_request_stats.dart';
import 'package:thingsboard_client/src/model/notification_rule_id.dart';
import 'package:thingsboard_client/src/model/notification_template_id.dart';
import 'package:thingsboard_client/src/model/notification_request_id.dart';
import 'package:thingsboard_client/src/model/notification_request_status.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/notification_template.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_request.g.dart';

/// NotificationRequest
///
/// Properties:
/// * [id] 
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId] 
/// * [targets] 
/// * [templateId] 
/// * [template] 
/// * [info] 
/// * [additionalConfig] 
/// * [originatorEntityId] 
/// * [ruleId] 
/// * [status] 
/// * [stats] 
@BuiltValue()
abstract class NotificationRequest implements Built<NotificationRequest, NotificationRequestBuilder> {
  @BuiltValueField(wireName: r'id')
  NotificationRequestId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'targets')
  BuiltList<String> get targets;

  @BuiltValueField(wireName: r'templateId')
  NotificationTemplateId? get templateId;

  @BuiltValueField(wireName: r'template')
  NotificationTemplate? get template;

  @BuiltValueField(wireName: r'info')
  NotificationInfo? get info;

  @BuiltValueField(wireName: r'additionalConfig')
  NotificationRequestConfig? get additionalConfig;

  @BuiltValueField(wireName: r'originatorEntityId')
  EntityId? get originatorEntityId;

  @BuiltValueField(wireName: r'ruleId')
  NotificationRuleId? get ruleId;

  @BuiltValueField(wireName: r'status')
  NotificationRequestStatus? get status;
  // enum statusEnum {  PROCESSING,  SENT,  SCHEDULED,  };

  @BuiltValueField(wireName: r'stats')
  NotificationRequestStats? get stats;

  NotificationRequest._();

  factory NotificationRequest([void updates(NotificationRequestBuilder b)]) = _$NotificationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationRequest> get serializer => _$NotificationRequestSerializer();
}

class _$NotificationRequestSerializer implements PrimitiveSerializer<NotificationRequest> {
  @override
  final Iterable<Type> types = const [NotificationRequest, _$NotificationRequest];

  @override
  final String wireName = r'NotificationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(NotificationRequestId),
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
    yield r'targets';
    yield serializers.serialize(
      object.targets,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.templateId != null) {
      yield r'templateId';
      yield serializers.serialize(
        object.templateId,
        specifiedType: const FullType(NotificationTemplateId),
      );
    }
    if (object.template != null) {
      yield r'template';
      yield serializers.serialize(
        object.template,
        specifiedType: const FullType(NotificationTemplate),
      );
    }
    if (object.info != null) {
      yield r'info';
      yield serializers.serialize(
        object.info,
        specifiedType: const FullType(NotificationInfo),
      );
    }
    if (object.additionalConfig != null) {
      yield r'additionalConfig';
      yield serializers.serialize(
        object.additionalConfig,
        specifiedType: const FullType(NotificationRequestConfig),
      );
    }
    if (object.originatorEntityId != null) {
      yield r'originatorEntityId';
      yield serializers.serialize(
        object.originatorEntityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.ruleId != null) {
      yield r'ruleId';
      yield serializers.serialize(
        object.ruleId,
        specifiedType: const FullType(NotificationRuleId),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(NotificationRequestStatus),
      );
    }
    if (object.stats != null) {
      yield r'stats';
      yield serializers.serialize(
        object.stats,
        specifiedType: const FullType(NotificationRequestStats),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationRequestId),
          ) as NotificationRequestId?;
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
        case r'targets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.targets.replace(valueDes);
          break;
        case r'templateId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationTemplateId),
          ) as NotificationTemplateId?;
          if (valueDes == null) continue;
          result.templateId.replace(valueDes);
          break;
        case r'template':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationTemplate),
          ) as NotificationTemplate?;
          if (valueDes == null) continue;
          result.template.replace(valueDes);
          break;
        case r'info':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationInfo),
          ) as NotificationInfo?;
          if (valueDes == null) continue;
          result.info.replace(valueDes);
          break;
        case r'additionalConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationRequestConfig),
          ) as NotificationRequestConfig?;
          if (valueDes == null) continue;
          result.additionalConfig.replace(valueDes);
          break;
        case r'originatorEntityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityId),
          ) as EntityId?;
          if (valueDes == null) continue;
          result.originatorEntityId = valueDes;
          break;
        case r'ruleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationRuleId),
          ) as NotificationRuleId?;
          if (valueDes == null) continue;
          result.ruleId.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationRequestStatus),
          ) as NotificationRequestStatus?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'stats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationRequestStats),
          ) as NotificationRequestStats?;
          if (valueDes == null) continue;
          result.stats.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationRequestBuilder();
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


