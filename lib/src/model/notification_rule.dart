// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/notification_rule_config.dart';
import 'package:thingsboard_client/src/model/notification_rule_id.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:thingsboard_client/src/model/notification_template_id.dart';
import 'package:thingsboard_client/src/model/notification_rule_recipients_config.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_rule.g.dart';

/// NotificationRule
///
/// Properties:
/// * [id] 
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId] 
/// * [name] 
/// * [enabled] 
/// * [templateId] 
/// * [triggerType] 
/// * [triggerConfig] 
/// * [recipientsConfig] 
/// * [additionalConfig] 
@BuiltValue()
abstract class NotificationRule implements Built<NotificationRule, NotificationRuleBuilder> {
  @BuiltValueField(wireName: r'id')
  NotificationRuleId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'templateId')
  NotificationTemplateId get templateId;

  @BuiltValueField(wireName: r'triggerType')
  NotificationRuleTriggerType get triggerType;
  // enum triggerTypeEnum {  ENTITY_ACTION,  ALARM,  ALARM_COMMENT,  ALARM_ASSIGNMENT,  DEVICE_ACTIVITY,  RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT,  INTEGRATION_LIFECYCLE_EVENT,  EDGE_CONNECTION,  EDGE_COMMUNICATION_FAILURE,  NEW_PLATFORM_VERSION,  ENTITIES_LIMIT,  API_USAGE_LIMIT,  RATE_LIMITS,  TASK_PROCESSING_FAILURE,  RESOURCES_SHORTAGE,  };

  @BuiltValueField(wireName: r'triggerConfig')
  NotificationRuleTriggerConfig get triggerConfig;

  @BuiltValueField(wireName: r'recipientsConfig')
  NotificationRuleRecipientsConfig get recipientsConfig;

  @BuiltValueField(wireName: r'additionalConfig')
  NotificationRuleConfig? get additionalConfig;

  NotificationRule._();

  factory NotificationRule([void updates(NotificationRuleBuilder b)]) = _$NotificationRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationRule> get serializer => _$NotificationRuleSerializer();
}

class _$NotificationRuleSerializer implements PrimitiveSerializer<NotificationRule> {
  @override
  final Iterable<Type> types = const [NotificationRule, _$NotificationRule];

  @override
  final String wireName = r'NotificationRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(NotificationRuleId),
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
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'templateId';
    yield serializers.serialize(
      object.templateId,
      specifiedType: const FullType(NotificationTemplateId),
    );
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
    yield r'triggerConfig';
    yield serializers.serialize(
      object.triggerConfig,
      specifiedType: const FullType(NotificationRuleTriggerConfig),
    );
    yield r'recipientsConfig';
    yield serializers.serialize(
      object.recipientsConfig,
      specifiedType: const FullType(NotificationRuleRecipientsConfig),
    );
    if (object.additionalConfig != null) {
      yield r'additionalConfig';
      yield serializers.serialize(
        object.additionalConfig,
        specifiedType: const FullType(NotificationRuleConfig),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationRuleId),
          ) as NotificationRuleId?;
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'templateId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationTemplateId),
          ) as NotificationTemplateId;
          result.templateId.replace(valueDes);
          break;
        case r'triggerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationRuleTriggerType),
          ) as NotificationRuleTriggerType;
          result.triggerType = valueDes;
          break;
        case r'triggerConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationRuleTriggerConfig),
          ) as NotificationRuleTriggerConfig;
          result.triggerConfig = valueDes;
          break;
        case r'recipientsConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationRuleRecipientsConfig),
          ) as NotificationRuleRecipientsConfig;
          result.recipientsConfig = valueDes;
          break;
        case r'additionalConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationRuleConfig),
          ) as NotificationRuleConfig?;
          if (valueDes == null) continue;
          result.additionalConfig.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationRuleBuilder();
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


