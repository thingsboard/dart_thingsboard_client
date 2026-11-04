// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/new_platform_version_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:thingsboard_client/src/model/rule_engine_component_lifecycle_event_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/edge_connection_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/entity_action_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/integration_lifecycle_event_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/task_processing_failure_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/alarm_assignment_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/alarm_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/entities_limit_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/rate_limits_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/edge_communication_failure_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/resources_shortage_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/api_usage_limit_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/alarm_comment_notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/device_activity_notification_rule_trigger_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_rule_trigger_config.g.dart';

/// Configuration for notification rule trigger
///
/// Properties:
/// * [triggerType] 
@BuiltValue(instantiable: false)
abstract class NotificationRuleTriggerConfig  {
  @BuiltValueField(wireName: r'triggerType')
  NotificationRuleTriggerType get triggerType;
  // enum triggerTypeEnum {  ENTITY_ACTION,  ALARM,  ALARM_COMMENT,  ALARM_ASSIGNMENT,  DEVICE_ACTIVITY,  RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT,  INTEGRATION_LIFECYCLE_EVENT,  EDGE_CONNECTION,  EDGE_COMMUNICATION_FAILURE,  NEW_PLATFORM_VERSION,  ENTITIES_LIMIT,  API_USAGE_LIMIT,  RATE_LIMITS,  TASK_PROCESSING_FAILURE,  RESOURCES_SHORTAGE,  };

  static const String discriminatorFieldName = r'triggerType';

  static const Map<String, Type> discriminatorMapping = {
    r'ALARM': AlarmNotificationRuleTriggerConfig,
    r'ALARM_ASSIGNMENT': AlarmAssignmentNotificationRuleTriggerConfig,
    r'ALARM_COMMENT': AlarmCommentNotificationRuleTriggerConfig,
    r'API_USAGE_LIMIT': ApiUsageLimitNotificationRuleTriggerConfig,
    r'DEVICE_ACTIVITY': DeviceActivityNotificationRuleTriggerConfig,
    r'EDGE_COMMUNICATION_FAILURE': EdgeCommunicationFailureNotificationRuleTriggerConfig,
    r'EDGE_CONNECTION': EdgeConnectionNotificationRuleTriggerConfig,
    r'ENTITIES_LIMIT': EntitiesLimitNotificationRuleTriggerConfig,
    r'ENTITY_ACTION': EntityActionNotificationRuleTriggerConfig,
    r'INTEGRATION_LIFECYCLE_EVENT': IntegrationLifecycleEventNotificationRuleTriggerConfig,
    r'NEW_PLATFORM_VERSION': NewPlatformVersionNotificationRuleTriggerConfig,
    r'RATE_LIMITS': RateLimitsNotificationRuleTriggerConfig,
    r'RESOURCES_SHORTAGE': ResourcesShortageNotificationRuleTriggerConfig,
    r'RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT': RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig,
    r'TASK_PROCESSING_FAILURE': TaskProcessingFailureNotificationRuleTriggerConfig,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationRuleTriggerConfig> get serializer => _$NotificationRuleTriggerConfigSerializer();
}

extension NotificationRuleTriggerConfigDiscriminatorExt on NotificationRuleTriggerConfig {
    String? get discriminatorValue {
        if (this is AlarmNotificationRuleTriggerConfig) {
            return r'ALARM';
        }
        if (this is AlarmAssignmentNotificationRuleTriggerConfig) {
            return r'ALARM_ASSIGNMENT';
        }
        if (this is AlarmCommentNotificationRuleTriggerConfig) {
            return r'ALARM_COMMENT';
        }
        if (this is ApiUsageLimitNotificationRuleTriggerConfig) {
            return r'API_USAGE_LIMIT';
        }
        if (this is DeviceActivityNotificationRuleTriggerConfig) {
            return r'DEVICE_ACTIVITY';
        }
        if (this is EdgeCommunicationFailureNotificationRuleTriggerConfig) {
            return r'EDGE_COMMUNICATION_FAILURE';
        }
        if (this is EdgeConnectionNotificationRuleTriggerConfig) {
            return r'EDGE_CONNECTION';
        }
        if (this is EntitiesLimitNotificationRuleTriggerConfig) {
            return r'ENTITIES_LIMIT';
        }
        if (this is EntityActionNotificationRuleTriggerConfig) {
            return r'ENTITY_ACTION';
        }
        if (this is IntegrationLifecycleEventNotificationRuleTriggerConfig) {
            return r'INTEGRATION_LIFECYCLE_EVENT';
        }
        if (this is NewPlatformVersionNotificationRuleTriggerConfig) {
            return r'NEW_PLATFORM_VERSION';
        }
        if (this is RateLimitsNotificationRuleTriggerConfig) {
            return r'RATE_LIMITS';
        }
        if (this is ResourcesShortageNotificationRuleTriggerConfig) {
            return r'RESOURCES_SHORTAGE';
        }
        if (this is RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig) {
            return r'RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT';
        }
        if (this is TaskProcessingFailureNotificationRuleTriggerConfig) {
            return r'TASK_PROCESSING_FAILURE';
        }
        return null;
    }
}
extension NotificationRuleTriggerConfigBuilderDiscriminatorExt on NotificationRuleTriggerConfigBuilder {
    String? get discriminatorValue {
        if (this is AlarmNotificationRuleTriggerConfigBuilder) {
            return r'ALARM';
        }
        if (this is AlarmAssignmentNotificationRuleTriggerConfigBuilder) {
            return r'ALARM_ASSIGNMENT';
        }
        if (this is AlarmCommentNotificationRuleTriggerConfigBuilder) {
            return r'ALARM_COMMENT';
        }
        if (this is ApiUsageLimitNotificationRuleTriggerConfigBuilder) {
            return r'API_USAGE_LIMIT';
        }
        if (this is DeviceActivityNotificationRuleTriggerConfigBuilder) {
            return r'DEVICE_ACTIVITY';
        }
        if (this is EdgeCommunicationFailureNotificationRuleTriggerConfigBuilder) {
            return r'EDGE_COMMUNICATION_FAILURE';
        }
        if (this is EdgeConnectionNotificationRuleTriggerConfigBuilder) {
            return r'EDGE_CONNECTION';
        }
        if (this is EntitiesLimitNotificationRuleTriggerConfigBuilder) {
            return r'ENTITIES_LIMIT';
        }
        if (this is EntityActionNotificationRuleTriggerConfigBuilder) {
            return r'ENTITY_ACTION';
        }
        if (this is IntegrationLifecycleEventNotificationRuleTriggerConfigBuilder) {
            return r'INTEGRATION_LIFECYCLE_EVENT';
        }
        if (this is NewPlatformVersionNotificationRuleTriggerConfigBuilder) {
            return r'NEW_PLATFORM_VERSION';
        }
        if (this is RateLimitsNotificationRuleTriggerConfigBuilder) {
            return r'RATE_LIMITS';
        }
        if (this is ResourcesShortageNotificationRuleTriggerConfigBuilder) {
            return r'RESOURCES_SHORTAGE';
        }
        if (this is RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder) {
            return r'RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT';
        }
        if (this is TaskProcessingFailureNotificationRuleTriggerConfigBuilder) {
            return r'TASK_PROCESSING_FAILURE';
        }
        return null;
    }
}

class _$NotificationRuleTriggerConfigSerializer implements PrimitiveSerializer<NotificationRuleTriggerConfig> {
  @override
  final Iterable<Type> types = const [NotificationRuleTriggerConfig];

  @override
  final String wireName = r'NotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AlarmNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(AlarmNotificationRuleTriggerConfig))!;
    }
    if (object is AlarmAssignmentNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(AlarmAssignmentNotificationRuleTriggerConfig))!;
    }
    if (object is AlarmCommentNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(AlarmCommentNotificationRuleTriggerConfig))!;
    }
    if (object is ApiUsageLimitNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(ApiUsageLimitNotificationRuleTriggerConfig))!;
    }
    if (object is DeviceActivityNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(DeviceActivityNotificationRuleTriggerConfig))!;
    }
    if (object is EdgeCommunicationFailureNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(EdgeCommunicationFailureNotificationRuleTriggerConfig))!;
    }
    if (object is EdgeConnectionNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(EdgeConnectionNotificationRuleTriggerConfig))!;
    }
    if (object is EntitiesLimitNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(EntitiesLimitNotificationRuleTriggerConfig))!;
    }
    if (object is EntityActionNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(EntityActionNotificationRuleTriggerConfig))!;
    }
    if (object is IntegrationLifecycleEventNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(IntegrationLifecycleEventNotificationRuleTriggerConfig))!;
    }
    if (object is NewPlatformVersionNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(NewPlatformVersionNotificationRuleTriggerConfig))!;
    }
    if (object is RateLimitsNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(RateLimitsNotificationRuleTriggerConfig))!;
    }
    if (object is ResourcesShortageNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(ResourcesShortageNotificationRuleTriggerConfig))!;
    }
    if (object is RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig))!;
    }
    if (object is TaskProcessingFailureNotificationRuleTriggerConfig) {
      return serializers.serialize(object, specifiedType: FullType(TaskProcessingFailureNotificationRuleTriggerConfig))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  NotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(NotificationRuleTriggerConfig.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'ALARM':
        return serializers.deserialize(serialized, specifiedType: FullType(AlarmNotificationRuleTriggerConfig)) as AlarmNotificationRuleTriggerConfig;
      case r'ALARM_ASSIGNMENT':
        return serializers.deserialize(serialized, specifiedType: FullType(AlarmAssignmentNotificationRuleTriggerConfig)) as AlarmAssignmentNotificationRuleTriggerConfig;
      case r'ALARM_COMMENT':
        return serializers.deserialize(serialized, specifiedType: FullType(AlarmCommentNotificationRuleTriggerConfig)) as AlarmCommentNotificationRuleTriggerConfig;
      case r'API_USAGE_LIMIT':
        return serializers.deserialize(serialized, specifiedType: FullType(ApiUsageLimitNotificationRuleTriggerConfig)) as ApiUsageLimitNotificationRuleTriggerConfig;
      case r'DEVICE_ACTIVITY':
        return serializers.deserialize(serialized, specifiedType: FullType(DeviceActivityNotificationRuleTriggerConfig)) as DeviceActivityNotificationRuleTriggerConfig;
      case r'EDGE_COMMUNICATION_FAILURE':
        return serializers.deserialize(serialized, specifiedType: FullType(EdgeCommunicationFailureNotificationRuleTriggerConfig)) as EdgeCommunicationFailureNotificationRuleTriggerConfig;
      case r'EDGE_CONNECTION':
        return serializers.deserialize(serialized, specifiedType: FullType(EdgeConnectionNotificationRuleTriggerConfig)) as EdgeConnectionNotificationRuleTriggerConfig;
      case r'ENTITIES_LIMIT':
        return serializers.deserialize(serialized, specifiedType: FullType(EntitiesLimitNotificationRuleTriggerConfig)) as EntitiesLimitNotificationRuleTriggerConfig;
      case r'ENTITY_ACTION':
        return serializers.deserialize(serialized, specifiedType: FullType(EntityActionNotificationRuleTriggerConfig)) as EntityActionNotificationRuleTriggerConfig;
      case r'INTEGRATION_LIFECYCLE_EVENT':
        return serializers.deserialize(serialized, specifiedType: FullType(IntegrationLifecycleEventNotificationRuleTriggerConfig)) as IntegrationLifecycleEventNotificationRuleTriggerConfig;
      case r'NEW_PLATFORM_VERSION':
        return serializers.deserialize(serialized, specifiedType: FullType(NewPlatformVersionNotificationRuleTriggerConfig)) as NewPlatformVersionNotificationRuleTriggerConfig;
      case r'RATE_LIMITS':
        return serializers.deserialize(serialized, specifiedType: FullType(RateLimitsNotificationRuleTriggerConfig)) as RateLimitsNotificationRuleTriggerConfig;
      case r'RESOURCES_SHORTAGE':
        return serializers.deserialize(serialized, specifiedType: FullType(ResourcesShortageNotificationRuleTriggerConfig)) as ResourcesShortageNotificationRuleTriggerConfig;
      case r'RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT':
        return serializers.deserialize(serialized, specifiedType: FullType(RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig)) as RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig;
      case r'TASK_PROCESSING_FAILURE':
        return serializers.deserialize(serialized, specifiedType: FullType(TaskProcessingFailureNotificationRuleTriggerConfig)) as TaskProcessingFailureNotificationRuleTriggerConfig;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($NotificationRuleTriggerConfig)) as $NotificationRuleTriggerConfig;
    }
  }
}


/// a concrete implementation of [NotificationRuleTriggerConfig], since [NotificationRuleTriggerConfig] is not instantiable
@BuiltValue(instantiable: true)
abstract class $NotificationRuleTriggerConfig implements NotificationRuleTriggerConfig, Built<$NotificationRuleTriggerConfig, $NotificationRuleTriggerConfigBuilder> {
  $NotificationRuleTriggerConfig._();

  factory $NotificationRuleTriggerConfig([void Function($NotificationRuleTriggerConfigBuilder)? updates]) = _$$NotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($NotificationRuleTriggerConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$NotificationRuleTriggerConfig> get serializer => _$$NotificationRuleTriggerConfigSerializer();
}

class _$$NotificationRuleTriggerConfigSerializer implements PrimitiveSerializer<$NotificationRuleTriggerConfig> {
  @override
  final Iterable<Type> types = const [$NotificationRuleTriggerConfig, _$$NotificationRuleTriggerConfig];

  @override
  final String wireName = r'$NotificationRuleTriggerConfig';

  @override
  Object serialize(
    Serializers serializers,
    $NotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(NotificationRuleTriggerConfig))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationRuleTriggerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'triggerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationRuleTriggerType),
          ) as NotificationRuleTriggerType;
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
  $NotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $NotificationRuleTriggerConfigBuilder();
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

