// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/rule_engine_originated_notification_info.dart';
import 'package:thingsboard_client/src/model/integration_lifecycle_event_notification_info.dart';
import 'package:thingsboard_client/src/model/alarm_assignment_notification_info.dart';
import 'package:thingsboard_client/src/model/task_processing_failure_notification_info.dart';
import 'package:thingsboard_client/src/model/addon_access_error_notification_info.dart';
import 'package:thingsboard_client/src/model/resources_shortage_notification_info.dart';
import 'package:thingsboard_client/src/model/alarm_comment_notification_info.dart';
import 'package:thingsboard_client/src/model/rate_limits_notification_info.dart';
import 'package:thingsboard_client/src/model/user_registered_notification_info.dart';
import 'package:thingsboard_client/src/model/entities_limit_notification_info.dart';
import 'package:thingsboard_client/src/model/report_generated_notification_info.dart';
import 'package:thingsboard_client/src/model/user_activated_notification_info.dart';
import 'package:thingsboard_client/src/model/entity_action_notification_info.dart';
import 'package:thingsboard_client/src/model/api_usage_limit_notification_info.dart';
import 'package:thingsboard_client/src/model/addon_access_request_notification_info.dart';
import 'package:thingsboard_client/src/model/entities_limit_increase_request_notification_info.dart';
import 'package:thingsboard_client/src/model/edge_connection_notification_info.dart';
import 'package:thingsboard_client/src/model/rule_engine_component_lifecycle_event_notification_info.dart';
import 'package:thingsboard_client/src/model/device_activity_notification_info.dart';
import 'package:thingsboard_client/src/model/plan_upgrade_request_notification_info.dart';
import 'package:thingsboard_client/src/model/general_notification_info.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/new_platform_version_notification_info.dart';
import 'package:thingsboard_client/src/model/alarm_notification_info.dart';
import 'package:thingsboard_client/src/model/edge_communication_failure_notification_info.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_info.g.dart';

/// NotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
@BuiltValue(instantiable: false)
abstract class NotificationInfo {
  @BuiltValueField(wireName: r'dashboardId')
  DashboardId? get dashboardId;

  @BuiltValueField(wireName: r'stateEntityId')
  EntityId? get stateEntityId;

  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'org.thingsboard.server.common.data.notification.info.AddonAccessErrorNotificationInfo':
        AddonAccessErrorNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.AddonAccessRequestNotificationInfo':
        AddonAccessRequestNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.AlarmAssignmentNotificationInfo':
        AlarmAssignmentNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.AlarmCommentNotificationInfo':
        AlarmCommentNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.AlarmNotificationInfo':
        AlarmNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.ApiUsageLimitNotificationInfo':
        ApiUsageLimitNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.DeviceActivityNotificationInfo':
        DeviceActivityNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.EdgeCommunicationFailureNotificationInfo':
        EdgeCommunicationFailureNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.EdgeConnectionNotificationInfo':
        EdgeConnectionNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.EntitiesLimitIncreaseRequestNotificationInfo':
        EntitiesLimitIncreaseRequestNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.EntitiesLimitNotificationInfo':
        EntitiesLimitNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.EntityActionNotificationInfo':
        EntityActionNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.GeneralNotificationInfo':
        GeneralNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.IntegrationLifecycleEventNotificationInfo':
        IntegrationLifecycleEventNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.NewPlatformVersionNotificationInfo':
        NewPlatformVersionNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.PlanUpgradeRequestNotificationInfo':
        PlanUpgradeRequestNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.RateLimitsNotificationInfo':
        RateLimitsNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.ReportGeneratedNotificationInfo':
        ReportGeneratedNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.ResourcesShortageNotificationInfo':
        ResourcesShortageNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.RuleEngineComponentLifecycleEventNotificationInfo':
        RuleEngineComponentLifecycleEventNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.RuleEngineOriginatedNotificationInfo':
        RuleEngineOriginatedNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.TaskProcessingFailureNotificationInfo':
        TaskProcessingFailureNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.UserActivatedNotificationInfo':
        UserActivatedNotificationInfo,
    r'org.thingsboard.server.common.data.notification.info.UserRegisteredNotificationInfo':
        UserRegisteredNotificationInfo,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationInfo> get serializer =>
      _$NotificationInfoSerializer();
}

extension NotificationInfoDiscriminatorExt on NotificationInfo {
  String? get discriminatorValue {
    if (this is AddonAccessErrorNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.AddonAccessErrorNotificationInfo';
    }
    if (this is AddonAccessRequestNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.AddonAccessRequestNotificationInfo';
    }
    if (this is AlarmAssignmentNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.AlarmAssignmentNotificationInfo';
    }
    if (this is AlarmCommentNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.AlarmCommentNotificationInfo';
    }
    if (this is AlarmNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.AlarmNotificationInfo';
    }
    if (this is ApiUsageLimitNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.ApiUsageLimitNotificationInfo';
    }
    if (this is DeviceActivityNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.DeviceActivityNotificationInfo';
    }
    if (this is EdgeCommunicationFailureNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.EdgeCommunicationFailureNotificationInfo';
    }
    if (this is EdgeConnectionNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.EdgeConnectionNotificationInfo';
    }
    if (this is EntitiesLimitIncreaseRequestNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.EntitiesLimitIncreaseRequestNotificationInfo';
    }
    if (this is EntitiesLimitNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.EntitiesLimitNotificationInfo';
    }
    if (this is EntityActionNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.EntityActionNotificationInfo';
    }
    if (this is GeneralNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.GeneralNotificationInfo';
    }
    if (this is IntegrationLifecycleEventNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.IntegrationLifecycleEventNotificationInfo';
    }
    if (this is NewPlatformVersionNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.NewPlatformVersionNotificationInfo';
    }
    if (this is PlanUpgradeRequestNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.PlanUpgradeRequestNotificationInfo';
    }
    if (this is RateLimitsNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.RateLimitsNotificationInfo';
    }
    if (this is ReportGeneratedNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.ReportGeneratedNotificationInfo';
    }
    if (this is ResourcesShortageNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.ResourcesShortageNotificationInfo';
    }
    if (this is RuleEngineComponentLifecycleEventNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.RuleEngineComponentLifecycleEventNotificationInfo';
    }
    if (this is RuleEngineOriginatedNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.RuleEngineOriginatedNotificationInfo';
    }
    if (this is TaskProcessingFailureNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.TaskProcessingFailureNotificationInfo';
    }
    if (this is UserActivatedNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.UserActivatedNotificationInfo';
    }
    if (this is UserRegisteredNotificationInfo) {
      return r'org.thingsboard.server.common.data.notification.info.UserRegisteredNotificationInfo';
    }
    return null;
  }
}

extension NotificationInfoBuilderDiscriminatorExt on NotificationInfoBuilder {
  String? get discriminatorValue {
    if (this is AddonAccessErrorNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.AddonAccessErrorNotificationInfo';
    }
    if (this is AddonAccessRequestNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.AddonAccessRequestNotificationInfo';
    }
    if (this is AlarmAssignmentNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.AlarmAssignmentNotificationInfo';
    }
    if (this is AlarmCommentNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.AlarmCommentNotificationInfo';
    }
    if (this is AlarmNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.AlarmNotificationInfo';
    }
    if (this is ApiUsageLimitNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.ApiUsageLimitNotificationInfo';
    }
    if (this is DeviceActivityNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.DeviceActivityNotificationInfo';
    }
    if (this is EdgeCommunicationFailureNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.EdgeCommunicationFailureNotificationInfo';
    }
    if (this is EdgeConnectionNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.EdgeConnectionNotificationInfo';
    }
    if (this is EntitiesLimitIncreaseRequestNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.EntitiesLimitIncreaseRequestNotificationInfo';
    }
    if (this is EntitiesLimitNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.EntitiesLimitNotificationInfo';
    }
    if (this is EntityActionNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.EntityActionNotificationInfo';
    }
    if (this is GeneralNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.GeneralNotificationInfo';
    }
    if (this is IntegrationLifecycleEventNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.IntegrationLifecycleEventNotificationInfo';
    }
    if (this is NewPlatformVersionNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.NewPlatformVersionNotificationInfo';
    }
    if (this is PlanUpgradeRequestNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.PlanUpgradeRequestNotificationInfo';
    }
    if (this is RateLimitsNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.RateLimitsNotificationInfo';
    }
    if (this is ReportGeneratedNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.ReportGeneratedNotificationInfo';
    }
    if (this is ResourcesShortageNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.ResourcesShortageNotificationInfo';
    }
    if (this is RuleEngineComponentLifecycleEventNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.RuleEngineComponentLifecycleEventNotificationInfo';
    }
    if (this is RuleEngineOriginatedNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.RuleEngineOriginatedNotificationInfo';
    }
    if (this is TaskProcessingFailureNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.TaskProcessingFailureNotificationInfo';
    }
    if (this is UserActivatedNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.UserActivatedNotificationInfo';
    }
    if (this is UserRegisteredNotificationInfoBuilder) {
      return r'org.thingsboard.server.common.data.notification.info.UserRegisteredNotificationInfo';
    }
    return null;
  }
}

class _$NotificationInfoSerializer
    implements PrimitiveSerializer<NotificationInfo> {
  @override
  final Iterable<Type> types = const [NotificationInfo];

  @override
  final String wireName = r'NotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.dashboardId != null) {
      yield r'dashboardId';
      yield serializers.serialize(
        object.dashboardId,
        specifiedType: const FullType(DashboardId),
      );
    }
    if (object.stateEntityId != null) {
      yield r'stateEntityId';
      yield serializers.serialize(
        object.stateEntityId,
        specifiedType: const FullType(EntityId),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AddonAccessErrorNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AddonAccessErrorNotificationInfo),
      )!;
    }
    if (object is AddonAccessRequestNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AddonAccessRequestNotificationInfo),
      )!;
    }
    if (object is AlarmAssignmentNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AlarmAssignmentNotificationInfo),
      )!;
    }
    if (object is AlarmCommentNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AlarmCommentNotificationInfo),
      )!;
    }
    if (object is AlarmNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AlarmNotificationInfo),
      )!;
    }
    if (object is ApiUsageLimitNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ApiUsageLimitNotificationInfo),
      )!;
    }
    if (object is DeviceActivityNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(DeviceActivityNotificationInfo),
      )!;
    }
    if (object is EdgeCommunicationFailureNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(EdgeCommunicationFailureNotificationInfo),
      )!;
    }
    if (object is EdgeConnectionNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(EdgeConnectionNotificationInfo),
      )!;
    }
    if (object is EntitiesLimitIncreaseRequestNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(EntitiesLimitIncreaseRequestNotificationInfo),
      )!;
    }
    if (object is EntitiesLimitNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(EntitiesLimitNotificationInfo),
      )!;
    }
    if (object is EntityActionNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(EntityActionNotificationInfo),
      )!;
    }
    if (object is GeneralNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(GeneralNotificationInfo),
      )!;
    }
    if (object is IntegrationLifecycleEventNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(IntegrationLifecycleEventNotificationInfo),
      )!;
    }
    if (object is NewPlatformVersionNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(NewPlatformVersionNotificationInfo),
      )!;
    }
    if (object is PlanUpgradeRequestNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(PlanUpgradeRequestNotificationInfo),
      )!;
    }
    if (object is RateLimitsNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(RateLimitsNotificationInfo),
      )!;
    }
    if (object is ReportGeneratedNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ReportGeneratedNotificationInfo),
      )!;
    }
    if (object is ResourcesShortageNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ResourcesShortageNotificationInfo),
      )!;
    }
    if (object is RuleEngineComponentLifecycleEventNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(
          RuleEngineComponentLifecycleEventNotificationInfo,
        ),
      )!;
    }
    if (object is RuleEngineOriginatedNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(RuleEngineOriginatedNotificationInfo),
      )!;
    }
    if (object is TaskProcessingFailureNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(TaskProcessingFailureNotificationInfo),
      )!;
    }
    if (object is UserActivatedNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(UserActivatedNotificationInfo),
      )!;
    }
    if (object is UserRegisteredNotificationInfo) {
      return serializers.serialize(
        object,
        specifiedType: FullType(UserRegisteredNotificationInfo),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  NotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(NotificationInfo.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'org.thingsboard.server.common.data.notification.info.AddonAccessErrorNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AddonAccessErrorNotificationInfo),
            )
            as AddonAccessErrorNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.AddonAccessRequestNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AddonAccessRequestNotificationInfo),
            )
            as AddonAccessRequestNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.AlarmAssignmentNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AlarmAssignmentNotificationInfo),
            )
            as AlarmAssignmentNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.AlarmCommentNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AlarmCommentNotificationInfo),
            )
            as AlarmCommentNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.AlarmNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AlarmNotificationInfo),
            )
            as AlarmNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.ApiUsageLimitNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ApiUsageLimitNotificationInfo),
            )
            as ApiUsageLimitNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.DeviceActivityNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(DeviceActivityNotificationInfo),
            )
            as DeviceActivityNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.EdgeCommunicationFailureNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(EdgeCommunicationFailureNotificationInfo),
            )
            as EdgeCommunicationFailureNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.EdgeConnectionNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(EdgeConnectionNotificationInfo),
            )
            as EdgeConnectionNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.EntitiesLimitIncreaseRequestNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                EntitiesLimitIncreaseRequestNotificationInfo,
              ),
            )
            as EntitiesLimitIncreaseRequestNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.EntitiesLimitNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(EntitiesLimitNotificationInfo),
            )
            as EntitiesLimitNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.EntityActionNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(EntityActionNotificationInfo),
            )
            as EntityActionNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.GeneralNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(GeneralNotificationInfo),
            )
            as GeneralNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.IntegrationLifecycleEventNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                IntegrationLifecycleEventNotificationInfo,
              ),
            )
            as IntegrationLifecycleEventNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.NewPlatformVersionNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(NewPlatformVersionNotificationInfo),
            )
            as NewPlatformVersionNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.PlanUpgradeRequestNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(PlanUpgradeRequestNotificationInfo),
            )
            as PlanUpgradeRequestNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.RateLimitsNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(RateLimitsNotificationInfo),
            )
            as RateLimitsNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.ReportGeneratedNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ReportGeneratedNotificationInfo),
            )
            as ReportGeneratedNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.ResourcesShortageNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ResourcesShortageNotificationInfo),
            )
            as ResourcesShortageNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.RuleEngineComponentLifecycleEventNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                RuleEngineComponentLifecycleEventNotificationInfo,
              ),
            )
            as RuleEngineComponentLifecycleEventNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.RuleEngineOriginatedNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(RuleEngineOriginatedNotificationInfo),
            )
            as RuleEngineOriginatedNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.TaskProcessingFailureNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(TaskProcessingFailureNotificationInfo),
            )
            as TaskProcessingFailureNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.UserActivatedNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(UserActivatedNotificationInfo),
            )
            as UserActivatedNotificationInfo;
      case r'org.thingsboard.server.common.data.notification.info.UserRegisteredNotificationInfo':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(UserRegisteredNotificationInfo),
            )
            as UserRegisteredNotificationInfo;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($NotificationInfo),
            )
            as $NotificationInfo;
    }
  }
}

/// a concrete implementation of [NotificationInfo], since [NotificationInfo] is not instantiable
@BuiltValue(instantiable: true)
abstract class $NotificationInfo
    implements
        NotificationInfo,
        Built<$NotificationInfo, $NotificationInfoBuilder> {
  $NotificationInfo._();

  factory $NotificationInfo([
    void Function($NotificationInfoBuilder)? updates,
  ]) = _$$NotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($NotificationInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$NotificationInfo> get serializer =>
      _$$NotificationInfoSerializer();
}

class _$$NotificationInfoSerializer
    implements PrimitiveSerializer<$NotificationInfo> {
  @override
  final Iterable<Type> types = const [$NotificationInfo, _$$NotificationInfo];

  @override
  final String wireName = r'$NotificationInfo';

  @override
  Object serialize(
    Serializers serializers,
    $NotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(NotificationInfo),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotificationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dashboardId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DashboardId),
                  )
                  as DashboardId?;
          if (valueDes == null) continue;
          result.dashboardId.replace(valueDes);
          break;
        case r'stateEntityId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.stateEntityId = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $NotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $NotificationInfoBuilder();
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
