// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/integration_lifecycle_event_recipients_config.dart';
import 'package:thingsboard_client/src/model/escalated_notification_rule_recipients_config.dart';
import 'package:thingsboard_client/src/model/entity_action_recipients_config.dart';
import 'package:thingsboard_client/src/model/device_activity_recipients_config.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:thingsboard_client/src/model/rate_limits_recipients_config.dart';
import 'package:thingsboard_client/src/model/task_processing_failure_recipients_config.dart';
import 'package:thingsboard_client/src/model/edge_connection_recipients_config.dart';
import 'package:thingsboard_client/src/model/new_platform_version_recipients_config.dart';
import 'package:thingsboard_client/src/model/entities_limit_recipients_config.dart';
import 'package:thingsboard_client/src/model/edge_communication_failure_recipients_config.dart';
import 'package:thingsboard_client/src/model/alarm_comment_recipients_config.dart';
import 'package:thingsboard_client/src/model/resource_shortage_recipients_config.dart';
import 'package:thingsboard_client/src/model/rule_engine_component_lifecycle_event_recipients_config.dart';
import 'package:thingsboard_client/src/model/alarm_assignment_recipients_config.dart';
import 'package:thingsboard_client/src/model/api_usage_limit_recipients_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_rule_recipients_config.g.dart';

/// NotificationRuleRecipientsConfig
///
/// Properties:
/// * [triggerType] 
@BuiltValue(instantiable: false)
abstract class NotificationRuleRecipientsConfig  {
  @BuiltValueField(wireName: r'triggerType')
  NotificationRuleTriggerType? get triggerType;
  // enum triggerTypeEnum {  ENTITY_ACTION,  ALARM,  ALARM_COMMENT,  ALARM_ASSIGNMENT,  DEVICE_ACTIVITY,  RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT,  INTEGRATION_LIFECYCLE_EVENT,  EDGE_CONNECTION,  EDGE_COMMUNICATION_FAILURE,  NEW_PLATFORM_VERSION,  ENTITIES_LIMIT,  API_USAGE_LIMIT,  RATE_LIMITS,  TASK_PROCESSING_FAILURE,  RESOURCES_SHORTAGE,  };

  static const String discriminatorFieldName = r'triggerType';

  static const Map<String, Type> discriminatorMapping = {
    r'ALARM': EscalatedNotificationRuleRecipientsConfig,
    r'ALARM_ASSIGNMENT': AlarmAssignmentRecipientsConfig,
    r'ALARM_COMMENT': AlarmCommentRecipientsConfig,
    r'API_USAGE_LIMIT': ApiUsageLimitRecipientsConfig,
    r'DEVICE_ACTIVITY': DeviceActivityRecipientsConfig,
    r'EDGE_COMMUNICATION_FAILURE': EdgeCommunicationFailureRecipientsConfig,
    r'EDGE_CONNECTION': EdgeConnectionRecipientsConfig,
    r'ENTITIES_LIMIT': EntitiesLimitRecipientsConfig,
    r'ENTITY_ACTION': EntityActionRecipientsConfig,
    r'INTEGRATION_LIFECYCLE_EVENT': IntegrationLifecycleEventRecipientsConfig,
    r'NEW_PLATFORM_VERSION': NewPlatformVersionRecipientsConfig,
    r'RATE_LIMITS': RateLimitsRecipientsConfig,
    r'RESOURCES_SHORTAGE': ResourceShortageRecipientsConfig,
    r'RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT': RuleEngineComponentLifecycleEventRecipientsConfig,
    r'TASK_PROCESSING_FAILURE': TaskProcessingFailureRecipientsConfig,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationRuleRecipientsConfig> get serializer => _$NotificationRuleRecipientsConfigSerializer();
}

extension NotificationRuleRecipientsConfigDiscriminatorExt on NotificationRuleRecipientsConfig {
    String? get discriminatorValue {
        if (this is EscalatedNotificationRuleRecipientsConfig) {
            return r'ALARM';
        }
        if (this is AlarmAssignmentRecipientsConfig) {
            return r'ALARM_ASSIGNMENT';
        }
        if (this is AlarmCommentRecipientsConfig) {
            return r'ALARM_COMMENT';
        }
        if (this is ApiUsageLimitRecipientsConfig) {
            return r'API_USAGE_LIMIT';
        }
        if (this is DeviceActivityRecipientsConfig) {
            return r'DEVICE_ACTIVITY';
        }
        if (this is EdgeCommunicationFailureRecipientsConfig) {
            return r'EDGE_COMMUNICATION_FAILURE';
        }
        if (this is EdgeConnectionRecipientsConfig) {
            return r'EDGE_CONNECTION';
        }
        if (this is EntitiesLimitRecipientsConfig) {
            return r'ENTITIES_LIMIT';
        }
        if (this is EntityActionRecipientsConfig) {
            return r'ENTITY_ACTION';
        }
        if (this is IntegrationLifecycleEventRecipientsConfig) {
            return r'INTEGRATION_LIFECYCLE_EVENT';
        }
        if (this is NewPlatformVersionRecipientsConfig) {
            return r'NEW_PLATFORM_VERSION';
        }
        if (this is RateLimitsRecipientsConfig) {
            return r'RATE_LIMITS';
        }
        if (this is ResourceShortageRecipientsConfig) {
            return r'RESOURCES_SHORTAGE';
        }
        if (this is RuleEngineComponentLifecycleEventRecipientsConfig) {
            return r'RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT';
        }
        if (this is TaskProcessingFailureRecipientsConfig) {
            return r'TASK_PROCESSING_FAILURE';
        }
        return null;
    }
}
extension NotificationRuleRecipientsConfigBuilderDiscriminatorExt on NotificationRuleRecipientsConfigBuilder {
    String? get discriminatorValue {
        if (this is EscalatedNotificationRuleRecipientsConfigBuilder) {
            return r'ALARM';
        }
        if (this is AlarmAssignmentRecipientsConfigBuilder) {
            return r'ALARM_ASSIGNMENT';
        }
        if (this is AlarmCommentRecipientsConfigBuilder) {
            return r'ALARM_COMMENT';
        }
        if (this is ApiUsageLimitRecipientsConfigBuilder) {
            return r'API_USAGE_LIMIT';
        }
        if (this is DeviceActivityRecipientsConfigBuilder) {
            return r'DEVICE_ACTIVITY';
        }
        if (this is EdgeCommunicationFailureRecipientsConfigBuilder) {
            return r'EDGE_COMMUNICATION_FAILURE';
        }
        if (this is EdgeConnectionRecipientsConfigBuilder) {
            return r'EDGE_CONNECTION';
        }
        if (this is EntitiesLimitRecipientsConfigBuilder) {
            return r'ENTITIES_LIMIT';
        }
        if (this is EntityActionRecipientsConfigBuilder) {
            return r'ENTITY_ACTION';
        }
        if (this is IntegrationLifecycleEventRecipientsConfigBuilder) {
            return r'INTEGRATION_LIFECYCLE_EVENT';
        }
        if (this is NewPlatformVersionRecipientsConfigBuilder) {
            return r'NEW_PLATFORM_VERSION';
        }
        if (this is RateLimitsRecipientsConfigBuilder) {
            return r'RATE_LIMITS';
        }
        if (this is ResourceShortageRecipientsConfigBuilder) {
            return r'RESOURCES_SHORTAGE';
        }
        if (this is RuleEngineComponentLifecycleEventRecipientsConfigBuilder) {
            return r'RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT';
        }
        if (this is TaskProcessingFailureRecipientsConfigBuilder) {
            return r'TASK_PROCESSING_FAILURE';
        }
        return null;
    }
}

class _$NotificationRuleRecipientsConfigSerializer implements PrimitiveSerializer<NotificationRuleRecipientsConfig> {
  @override
  final Iterable<Type> types = const [NotificationRuleRecipientsConfig];

  @override
  final String wireName = r'NotificationRuleRecipientsConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationRuleRecipientsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.triggerType != null) {
      yield r'triggerType';
      yield serializers.serialize(
        object.triggerType,
        specifiedType: const FullType(NotificationRuleTriggerType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationRuleRecipientsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is EscalatedNotificationRuleRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(EscalatedNotificationRuleRecipientsConfig))!;
    }
    if (object is AlarmAssignmentRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(AlarmAssignmentRecipientsConfig))!;
    }
    if (object is AlarmCommentRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(AlarmCommentRecipientsConfig))!;
    }
    if (object is ApiUsageLimitRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(ApiUsageLimitRecipientsConfig))!;
    }
    if (object is DeviceActivityRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(DeviceActivityRecipientsConfig))!;
    }
    if (object is EdgeCommunicationFailureRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(EdgeCommunicationFailureRecipientsConfig))!;
    }
    if (object is EdgeConnectionRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(EdgeConnectionRecipientsConfig))!;
    }
    if (object is EntitiesLimitRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(EntitiesLimitRecipientsConfig))!;
    }
    if (object is EntityActionRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(EntityActionRecipientsConfig))!;
    }
    if (object is IntegrationLifecycleEventRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(IntegrationLifecycleEventRecipientsConfig))!;
    }
    if (object is NewPlatformVersionRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(NewPlatformVersionRecipientsConfig))!;
    }
    if (object is RateLimitsRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(RateLimitsRecipientsConfig))!;
    }
    if (object is ResourceShortageRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(ResourceShortageRecipientsConfig))!;
    }
    if (object is RuleEngineComponentLifecycleEventRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(RuleEngineComponentLifecycleEventRecipientsConfig))!;
    }
    if (object is TaskProcessingFailureRecipientsConfig) {
      return serializers.serialize(object, specifiedType: FullType(TaskProcessingFailureRecipientsConfig))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  NotificationRuleRecipientsConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(NotificationRuleRecipientsConfig.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'ALARM':
        return serializers.deserialize(serialized, specifiedType: FullType(EscalatedNotificationRuleRecipientsConfig)) as EscalatedNotificationRuleRecipientsConfig;
      case r'ALARM_ASSIGNMENT':
        return serializers.deserialize(serialized, specifiedType: FullType(AlarmAssignmentRecipientsConfig)) as AlarmAssignmentRecipientsConfig;
      case r'ALARM_COMMENT':
        return serializers.deserialize(serialized, specifiedType: FullType(AlarmCommentRecipientsConfig)) as AlarmCommentRecipientsConfig;
      case r'API_USAGE_LIMIT':
        return serializers.deserialize(serialized, specifiedType: FullType(ApiUsageLimitRecipientsConfig)) as ApiUsageLimitRecipientsConfig;
      case r'DEVICE_ACTIVITY':
        return serializers.deserialize(serialized, specifiedType: FullType(DeviceActivityRecipientsConfig)) as DeviceActivityRecipientsConfig;
      case r'EDGE_COMMUNICATION_FAILURE':
        return serializers.deserialize(serialized, specifiedType: FullType(EdgeCommunicationFailureRecipientsConfig)) as EdgeCommunicationFailureRecipientsConfig;
      case r'EDGE_CONNECTION':
        return serializers.deserialize(serialized, specifiedType: FullType(EdgeConnectionRecipientsConfig)) as EdgeConnectionRecipientsConfig;
      case r'ENTITIES_LIMIT':
        return serializers.deserialize(serialized, specifiedType: FullType(EntitiesLimitRecipientsConfig)) as EntitiesLimitRecipientsConfig;
      case r'ENTITY_ACTION':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityActionRecipientsConfig)) as EntityActionRecipientsConfig;
      case r'INTEGRATION_LIFECYCLE_EVENT':
        return serializers.deserialize(serialized, specifiedType: FullType(IntegrationLifecycleEventRecipientsConfig)) as IntegrationLifecycleEventRecipientsConfig;
      case r'NEW_PLATFORM_VERSION':
        return serializers.deserialize(serialized, specifiedType: FullType(NewPlatformVersionRecipientsConfig)) as NewPlatformVersionRecipientsConfig;
      case r'RATE_LIMITS':
        return serializers.deserialize(serialized, specifiedType: FullType(RateLimitsRecipientsConfig)) as RateLimitsRecipientsConfig;
      case r'RESOURCES_SHORTAGE':
        return serializers.deserialize(serialized, specifiedType: FullType(ResourceShortageRecipientsConfig)) as ResourceShortageRecipientsConfig;
      case r'RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT':
        return serializers.deserialize(serialized, specifiedType: FullType(RuleEngineComponentLifecycleEventRecipientsConfig)) as RuleEngineComponentLifecycleEventRecipientsConfig;
      case r'TASK_PROCESSING_FAILURE':
        return serializers.deserialize(serialized, specifiedType: FullType(TaskProcessingFailureRecipientsConfig)) as TaskProcessingFailureRecipientsConfig;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($NotificationRuleRecipientsConfig)) as $NotificationRuleRecipientsConfig;
    }
  }
}


/// a concrete implementation of [NotificationRuleRecipientsConfig], since [NotificationRuleRecipientsConfig] is not instantiable
@BuiltValue(instantiable: true)
abstract class $NotificationRuleRecipientsConfig implements NotificationRuleRecipientsConfig, Built<$NotificationRuleRecipientsConfig, $NotificationRuleRecipientsConfigBuilder> {
  $NotificationRuleRecipientsConfig._();

  factory $NotificationRuleRecipientsConfig([void Function($NotificationRuleRecipientsConfigBuilder)? updates]) = _$$NotificationRuleRecipientsConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($NotificationRuleRecipientsConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$NotificationRuleRecipientsConfig> get serializer => _$$NotificationRuleRecipientsConfigSerializer();
}

class _$$NotificationRuleRecipientsConfigSerializer implements PrimitiveSerializer<$NotificationRuleRecipientsConfig> {
  @override
  final Iterable<Type> types = const [$NotificationRuleRecipientsConfig, _$$NotificationRuleRecipientsConfig];

  @override
  final String wireName = r'$NotificationRuleRecipientsConfig';

  @override
  Object serialize(
    Serializers serializers,
    $NotificationRuleRecipientsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(NotificationRuleRecipientsConfig))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationRuleRecipientsConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'triggerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(NotificationRuleTriggerType),
          ) as NotificationRuleTriggerType?;
          if (valueDes == null) continue;
          result.triggerType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $NotificationRuleRecipientsConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $NotificationRuleRecipientsConfigBuilder();
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

