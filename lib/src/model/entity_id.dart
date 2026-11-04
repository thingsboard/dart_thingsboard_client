// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agent_id.dart';
import 'package:thingsboard_client/src/model/agent_app_event_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/domain_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/mobile_app_id.dart';
import 'package:thingsboard_client/src/model/agent_app_unit_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/device_id.dart';
import 'package:thingsboard_client/src/model/agent_application_id.dart';
import 'package:thingsboard_client/src/model/admin_settings_id.dart';
import 'package:thingsboard_client/src/model/notification_target_id.dart';
import 'package:thingsboard_client/src/model/rpc_id.dart';
import 'package:thingsboard_client/src/model/agent_app_profile_id.dart';
import 'package:thingsboard_client/src/model/device_profile_id.dart';
import 'package:thingsboard_client/src/model/notification_template_id.dart';
import 'package:thingsboard_client/src/model/group_permission_id.dart';
import 'package:thingsboard_client/src/model/ai_model_id.dart';
import 'package:thingsboard_client/src/model/asset_profile_id.dart';
import 'package:thingsboard_client/src/model/queue_stats_id.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:thingsboard_client/src/model/api_usage_state_id.dart';
import 'package:thingsboard_client/src/model/edge_id.dart';
import 'package:thingsboard_client/src/model/rule_node_id.dart';
import 'package:thingsboard_client/src/model/report_id.dart';
import 'package:thingsboard_client/src/model/job_id.dart';
import 'package:thingsboard_client/src/model/ota_package_id.dart';
import 'package:thingsboard_client/src/model/asset_id.dart';
import 'package:thingsboard_client/src/model/notification_rule_id.dart';
import 'package:thingsboard_client/src/model/role_id.dart';
import 'package:thingsboard_client/src/model/report_template_id.dart';
import 'package:thingsboard_client/src/model/scheduler_event_id.dart';
import 'package:thingsboard_client/src/model/widget_type_id.dart';
import 'package:thingsboard_client/src/model/rule_chain_id.dart';
import 'package:thingsboard_client/src/model/tenant_profile_id.dart';
import 'package:thingsboard_client/src/model/queue_id.dart';
import 'package:thingsboard_client/src/model/entity_view_id.dart';
import 'package:thingsboard_client/src/model/alarm_id.dart';
import 'package:thingsboard_client/src/model/entity_group_id.dart';
import 'package:thingsboard_client/src/model/mobile_app_bundle_id.dart';
import 'package:thingsboard_client/src/model/agent_bulk_action_id.dart';
import 'package:thingsboard_client/src/model/secret_id.dart';
import 'package:thingsboard_client/src/model/o_auth2_client_id.dart';
import 'package:thingsboard_client/src/model/widgets_bundle_id.dart';
import 'package:thingsboard_client/src/model/agent_profile_id.dart';
import 'package:thingsboard_client/src/model/calculated_field_id.dart';
import 'package:thingsboard_client/src/model/converter_id.dart';
import 'package:thingsboard_client/src/model/integration_id.dart';
import 'package:thingsboard_client/src/model/tb_resource_id.dart';
import 'package:thingsboard_client/src/model/notification_request_id.dart';
import 'package:thingsboard_client/src/model/api_key_id.dart';
import 'package:thingsboard_client/src/model/blob_entity_id.dart';
import 'package:thingsboard_client/src/model/notification_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_id.g.dart';

/// EntityId
///
/// Properties:
/// * [entityType]
/// * [id] - ID of the entity, time-based UUID v1
@BuiltValue(instantiable: false)
abstract class EntityId {
  @BuiltValueField(wireName: r'entityType')
  EntityType get entityType;
  // enum entityTypeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  /// ID of the entity, time-based UUID v1
  @BuiltValueField(wireName: r'id')
  String get id;

  static const String discriminatorFieldName = r'entityType';

  static const Map<String, Type> discriminatorMapping = {
    r'ADMIN_SETTINGS': AdminSettingsId,
    r'AGENT': AgentId,
    r'AGENT_APPLICATION': AgentApplicationId,
    r'AGENT_APP_EVENT': AgentAppEventId,
    r'AGENT_APP_PROFILE': AgentAppProfileId,
    r'AGENT_APP_UNIT': AgentAppUnitId,
    r'AGENT_BULK_ACTION': AgentBulkActionId,
    r'AGENT_PROFILE': AgentProfileId,
    r'AI_MODEL': AiModelId,
    r'ALARM': AlarmId,
    r'API_KEY': ApiKeyId,
    r'API_USAGE_STATE': ApiUsageStateId,
    r'ASSET': AssetId,
    r'ASSET_PROFILE': AssetProfileId,
    r'BLOB_ENTITY': BlobEntityId,
    r'CALCULATED_FIELD': CalculatedFieldId,
    r'CONVERTER': ConverterId,
    r'CUSTOMER': CustomerId,
    r'DASHBOARD': DashboardId,
    r'DEVICE': DeviceId,
    r'DEVICE_PROFILE': DeviceProfileId,
    r'DOMAIN': DomainId,
    r'EDGE': EdgeId,
    r'ENTITY_GROUP': EntityGroupId,
    r'ENTITY_VIEW': EntityViewId,
    r'GROUP_PERMISSION': GroupPermissionId,
    r'INTEGRATION': IntegrationId,
    r'JOB': JobId,
    r'MOBILE_APP': MobileAppId,
    r'MOBILE_APP_BUNDLE': MobileAppBundleId,
    r'NOTIFICATION': NotificationId,
    r'NOTIFICATION_REQUEST': NotificationRequestId,
    r'NOTIFICATION_RULE': NotificationRuleId,
    r'NOTIFICATION_TARGET': NotificationTargetId,
    r'NOTIFICATION_TEMPLATE': NotificationTemplateId,
    r'OAUTH2_CLIENT': OAuth2ClientId,
    r'OTA_PACKAGE': OtaPackageId,
    r'QUEUE': QueueId,
    r'QUEUE_STATS': QueueStatsId,
    r'REPORT': ReportId,
    r'REPORT_TEMPLATE': ReportTemplateId,
    r'ROLE': RoleId,
    r'RPC': RpcId,
    r'RULE_CHAIN': RuleChainId,
    r'RULE_NODE': RuleNodeId,
    r'SCHEDULER_EVENT': SchedulerEventId,
    r'SECRET': SecretId,
    r'TB_RESOURCE': TbResourceId,
    r'TENANT': TenantId,
    r'TENANT_PROFILE': TenantProfileId,
    r'USER': UserId,
    r'WIDGETS_BUNDLE': WidgetsBundleId,
    r'WIDGET_TYPE': WidgetTypeId,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityId> get serializer => _$EntityIdSerializer();
}

extension EntityIdDiscriminatorExt on EntityId {
  String? get discriminatorValue {
    if (this is AdminSettingsId) {
      return r'ADMIN_SETTINGS';
    }
    if (this is AgentId) {
      return r'AGENT';
    }
    if (this is AgentApplicationId) {
      return r'AGENT_APPLICATION';
    }
    if (this is AgentAppEventId) {
      return r'AGENT_APP_EVENT';
    }
    if (this is AgentAppProfileId) {
      return r'AGENT_APP_PROFILE';
    }
    if (this is AgentAppUnitId) {
      return r'AGENT_APP_UNIT';
    }
    if (this is AgentBulkActionId) {
      return r'AGENT_BULK_ACTION';
    }
    if (this is AgentProfileId) {
      return r'AGENT_PROFILE';
    }
    if (this is AiModelId) {
      return r'AI_MODEL';
    }
    if (this is AlarmId) {
      return r'ALARM';
    }
    if (this is ApiKeyId) {
      return r'API_KEY';
    }
    if (this is ApiUsageStateId) {
      return r'API_USAGE_STATE';
    }
    if (this is AssetId) {
      return r'ASSET';
    }
    if (this is AssetProfileId) {
      return r'ASSET_PROFILE';
    }
    if (this is BlobEntityId) {
      return r'BLOB_ENTITY';
    }
    if (this is CalculatedFieldId) {
      return r'CALCULATED_FIELD';
    }
    if (this is ConverterId) {
      return r'CONVERTER';
    }
    if (this is CustomerId) {
      return r'CUSTOMER';
    }
    if (this is DashboardId) {
      return r'DASHBOARD';
    }
    if (this is DeviceId) {
      return r'DEVICE';
    }
    if (this is DeviceProfileId) {
      return r'DEVICE_PROFILE';
    }
    if (this is DomainId) {
      return r'DOMAIN';
    }
    if (this is EdgeId) {
      return r'EDGE';
    }
    if (this is EntityGroupId) {
      return r'ENTITY_GROUP';
    }
    if (this is EntityViewId) {
      return r'ENTITY_VIEW';
    }
    if (this is GroupPermissionId) {
      return r'GROUP_PERMISSION';
    }
    if (this is IntegrationId) {
      return r'INTEGRATION';
    }
    if (this is JobId) {
      return r'JOB';
    }
    if (this is MobileAppId) {
      return r'MOBILE_APP';
    }
    if (this is MobileAppBundleId) {
      return r'MOBILE_APP_BUNDLE';
    }
    if (this is NotificationId) {
      return r'NOTIFICATION';
    }
    if (this is NotificationRequestId) {
      return r'NOTIFICATION_REQUEST';
    }
    if (this is NotificationRuleId) {
      return r'NOTIFICATION_RULE';
    }
    if (this is NotificationTargetId) {
      return r'NOTIFICATION_TARGET';
    }
    if (this is NotificationTemplateId) {
      return r'NOTIFICATION_TEMPLATE';
    }
    if (this is OAuth2ClientId) {
      return r'OAUTH2_CLIENT';
    }
    if (this is OtaPackageId) {
      return r'OTA_PACKAGE';
    }
    if (this is QueueId) {
      return r'QUEUE';
    }
    if (this is QueueStatsId) {
      return r'QUEUE_STATS';
    }
    if (this is ReportId) {
      return r'REPORT';
    }
    if (this is ReportTemplateId) {
      return r'REPORT_TEMPLATE';
    }
    if (this is RoleId) {
      return r'ROLE';
    }
    if (this is RpcId) {
      return r'RPC';
    }
    if (this is RuleChainId) {
      return r'RULE_CHAIN';
    }
    if (this is RuleNodeId) {
      return r'RULE_NODE';
    }
    if (this is SchedulerEventId) {
      return r'SCHEDULER_EVENT';
    }
    if (this is SecretId) {
      return r'SECRET';
    }
    if (this is TbResourceId) {
      return r'TB_RESOURCE';
    }
    if (this is TenantId) {
      return r'TENANT';
    }
    if (this is TenantProfileId) {
      return r'TENANT_PROFILE';
    }
    if (this is UserId) {
      return r'USER';
    }
    if (this is WidgetsBundleId) {
      return r'WIDGETS_BUNDLE';
    }
    if (this is WidgetTypeId) {
      return r'WIDGET_TYPE';
    }
    return null;
  }
}

extension EntityIdBuilderDiscriminatorExt on EntityIdBuilder {
  String? get discriminatorValue {
    if (this is AdminSettingsIdBuilder) {
      return r'ADMIN_SETTINGS';
    }
    if (this is AgentIdBuilder) {
      return r'AGENT';
    }
    if (this is AgentApplicationIdBuilder) {
      return r'AGENT_APPLICATION';
    }
    if (this is AgentAppEventIdBuilder) {
      return r'AGENT_APP_EVENT';
    }
    if (this is AgentAppProfileIdBuilder) {
      return r'AGENT_APP_PROFILE';
    }
    if (this is AgentAppUnitIdBuilder) {
      return r'AGENT_APP_UNIT';
    }
    if (this is AgentBulkActionIdBuilder) {
      return r'AGENT_BULK_ACTION';
    }
    if (this is AgentProfileIdBuilder) {
      return r'AGENT_PROFILE';
    }
    if (this is AiModelIdBuilder) {
      return r'AI_MODEL';
    }
    if (this is AlarmIdBuilder) {
      return r'ALARM';
    }
    if (this is ApiKeyIdBuilder) {
      return r'API_KEY';
    }
    if (this is ApiUsageStateIdBuilder) {
      return r'API_USAGE_STATE';
    }
    if (this is AssetIdBuilder) {
      return r'ASSET';
    }
    if (this is AssetProfileIdBuilder) {
      return r'ASSET_PROFILE';
    }
    if (this is BlobEntityIdBuilder) {
      return r'BLOB_ENTITY';
    }
    if (this is CalculatedFieldIdBuilder) {
      return r'CALCULATED_FIELD';
    }
    if (this is ConverterIdBuilder) {
      return r'CONVERTER';
    }
    if (this is CustomerIdBuilder) {
      return r'CUSTOMER';
    }
    if (this is DashboardIdBuilder) {
      return r'DASHBOARD';
    }
    if (this is DeviceIdBuilder) {
      return r'DEVICE';
    }
    if (this is DeviceProfileIdBuilder) {
      return r'DEVICE_PROFILE';
    }
    if (this is DomainIdBuilder) {
      return r'DOMAIN';
    }
    if (this is EdgeIdBuilder) {
      return r'EDGE';
    }
    if (this is EntityGroupIdBuilder) {
      return r'ENTITY_GROUP';
    }
    if (this is EntityViewIdBuilder) {
      return r'ENTITY_VIEW';
    }
    if (this is GroupPermissionIdBuilder) {
      return r'GROUP_PERMISSION';
    }
    if (this is IntegrationIdBuilder) {
      return r'INTEGRATION';
    }
    if (this is JobIdBuilder) {
      return r'JOB';
    }
    if (this is MobileAppIdBuilder) {
      return r'MOBILE_APP';
    }
    if (this is MobileAppBundleIdBuilder) {
      return r'MOBILE_APP_BUNDLE';
    }
    if (this is NotificationIdBuilder) {
      return r'NOTIFICATION';
    }
    if (this is NotificationRequestIdBuilder) {
      return r'NOTIFICATION_REQUEST';
    }
    if (this is NotificationRuleIdBuilder) {
      return r'NOTIFICATION_RULE';
    }
    if (this is NotificationTargetIdBuilder) {
      return r'NOTIFICATION_TARGET';
    }
    if (this is NotificationTemplateIdBuilder) {
      return r'NOTIFICATION_TEMPLATE';
    }
    if (this is OAuth2ClientIdBuilder) {
      return r'OAUTH2_CLIENT';
    }
    if (this is OtaPackageIdBuilder) {
      return r'OTA_PACKAGE';
    }
    if (this is QueueIdBuilder) {
      return r'QUEUE';
    }
    if (this is QueueStatsIdBuilder) {
      return r'QUEUE_STATS';
    }
    if (this is ReportIdBuilder) {
      return r'REPORT';
    }
    if (this is ReportTemplateIdBuilder) {
      return r'REPORT_TEMPLATE';
    }
    if (this is RoleIdBuilder) {
      return r'ROLE';
    }
    if (this is RpcIdBuilder) {
      return r'RPC';
    }
    if (this is RuleChainIdBuilder) {
      return r'RULE_CHAIN';
    }
    if (this is RuleNodeIdBuilder) {
      return r'RULE_NODE';
    }
    if (this is SchedulerEventIdBuilder) {
      return r'SCHEDULER_EVENT';
    }
    if (this is SecretIdBuilder) {
      return r'SECRET';
    }
    if (this is TbResourceIdBuilder) {
      return r'TB_RESOURCE';
    }
    if (this is TenantIdBuilder) {
      return r'TENANT';
    }
    if (this is TenantProfileIdBuilder) {
      return r'TENANT_PROFILE';
    }
    if (this is UserIdBuilder) {
      return r'USER';
    }
    if (this is WidgetsBundleIdBuilder) {
      return r'WIDGETS_BUNDLE';
    }
    if (this is WidgetTypeIdBuilder) {
      return r'WIDGET_TYPE';
    }
    return null;
  }
}

class _$EntityIdSerializer implements PrimitiveSerializer<EntityId> {
  @override
  final Iterable<Type> types = const [EntityId];

  @override
  final String wireName = r'EntityId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'entityType';
    yield serializers.serialize(
      object.entityType,
      specifiedType: const FullType(EntityType),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AdminSettingsId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AdminSettingsId),
      )!;
    }
    if (object is AgentId) {
      return serializers.serialize(object, specifiedType: FullType(AgentId))!;
    }
    if (object is AgentApplicationId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AgentApplicationId),
      )!;
    }
    if (object is AgentAppEventId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AgentAppEventId),
      )!;
    }
    if (object is AgentAppProfileId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AgentAppProfileId),
      )!;
    }
    if (object is AgentAppUnitId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AgentAppUnitId),
      )!;
    }
    if (object is AgentBulkActionId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AgentBulkActionId),
      )!;
    }
    if (object is AgentProfileId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AgentProfileId),
      )!;
    }
    if (object is AiModelId) {
      return serializers.serialize(object, specifiedType: FullType(AiModelId))!;
    }
    if (object is AlarmId) {
      return serializers.serialize(object, specifiedType: FullType(AlarmId))!;
    }
    if (object is ApiKeyId) {
      return serializers.serialize(object, specifiedType: FullType(ApiKeyId))!;
    }
    if (object is ApiUsageStateId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ApiUsageStateId),
      )!;
    }
    if (object is AssetId) {
      return serializers.serialize(object, specifiedType: FullType(AssetId))!;
    }
    if (object is AssetProfileId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(AssetProfileId),
      )!;
    }
    if (object is BlobEntityId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(BlobEntityId),
      )!;
    }
    if (object is CalculatedFieldId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(CalculatedFieldId),
      )!;
    }
    if (object is ConverterId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ConverterId),
      )!;
    }
    if (object is CustomerId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(CustomerId),
      )!;
    }
    if (object is DashboardId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(DashboardId),
      )!;
    }
    if (object is DeviceId) {
      return serializers.serialize(object, specifiedType: FullType(DeviceId))!;
    }
    if (object is DeviceProfileId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(DeviceProfileId),
      )!;
    }
    if (object is DomainId) {
      return serializers.serialize(object, specifiedType: FullType(DomainId))!;
    }
    if (object is EdgeId) {
      return serializers.serialize(object, specifiedType: FullType(EdgeId))!;
    }
    if (object is EntityGroupId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(EntityGroupId),
      )!;
    }
    if (object is EntityViewId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(EntityViewId),
      )!;
    }
    if (object is GroupPermissionId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(GroupPermissionId),
      )!;
    }
    if (object is IntegrationId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(IntegrationId),
      )!;
    }
    if (object is JobId) {
      return serializers.serialize(object, specifiedType: FullType(JobId))!;
    }
    if (object is MobileAppId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(MobileAppId),
      )!;
    }
    if (object is MobileAppBundleId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(MobileAppBundleId),
      )!;
    }
    if (object is NotificationId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(NotificationId),
      )!;
    }
    if (object is NotificationRequestId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(NotificationRequestId),
      )!;
    }
    if (object is NotificationRuleId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(NotificationRuleId),
      )!;
    }
    if (object is NotificationTargetId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(NotificationTargetId),
      )!;
    }
    if (object is NotificationTemplateId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(NotificationTemplateId),
      )!;
    }
    if (object is OAuth2ClientId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(OAuth2ClientId),
      )!;
    }
    if (object is OtaPackageId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(OtaPackageId),
      )!;
    }
    if (object is QueueId) {
      return serializers.serialize(object, specifiedType: FullType(QueueId))!;
    }
    if (object is QueueStatsId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(QueueStatsId),
      )!;
    }
    if (object is ReportId) {
      return serializers.serialize(object, specifiedType: FullType(ReportId))!;
    }
    if (object is ReportTemplateId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(ReportTemplateId),
      )!;
    }
    if (object is RoleId) {
      return serializers.serialize(object, specifiedType: FullType(RoleId))!;
    }
    if (object is RpcId) {
      return serializers.serialize(object, specifiedType: FullType(RpcId))!;
    }
    if (object is RuleChainId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(RuleChainId),
      )!;
    }
    if (object is RuleNodeId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(RuleNodeId),
      )!;
    }
    if (object is SchedulerEventId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(SchedulerEventId),
      )!;
    }
    if (object is SecretId) {
      return serializers.serialize(object, specifiedType: FullType(SecretId))!;
    }
    if (object is TbResourceId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(TbResourceId),
      )!;
    }
    if (object is TenantId) {
      return serializers.serialize(object, specifiedType: FullType(TenantId))!;
    }
    if (object is TenantProfileId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(TenantProfileId),
      )!;
    }
    if (object is UserId) {
      return serializers.serialize(object, specifiedType: FullType(UserId))!;
    }
    if (object is WidgetsBundleId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(WidgetsBundleId),
      )!;
    }
    if (object is WidgetTypeId) {
      return serializers.serialize(
        object,
        specifiedType: FullType(WidgetTypeId),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  EntityId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(EntityId.discriminatorFieldName) + 1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'ADMIN_SETTINGS':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AdminSettingsId),
            )
            as AdminSettingsId;
      case r'AGENT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AgentId),
            )
            as AgentId;
      case r'AGENT_APPLICATION':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AgentApplicationId),
            )
            as AgentApplicationId;
      case r'AGENT_APP_EVENT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AgentAppEventId),
            )
            as AgentAppEventId;
      case r'AGENT_APP_PROFILE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AgentAppProfileId),
            )
            as AgentAppProfileId;
      case r'AGENT_APP_UNIT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AgentAppUnitId),
            )
            as AgentAppUnitId;
      case r'AGENT_BULK_ACTION':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AgentBulkActionId),
            )
            as AgentBulkActionId;
      case r'AGENT_PROFILE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AgentProfileId),
            )
            as AgentProfileId;
      case r'AI_MODEL':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AiModelId),
            )
            as AiModelId;
      case r'ALARM':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AlarmId),
            )
            as AlarmId;
      case r'API_KEY':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ApiKeyId),
            )
            as ApiKeyId;
      case r'API_USAGE_STATE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ApiUsageStateId),
            )
            as ApiUsageStateId;
      case r'ASSET':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AssetId),
            )
            as AssetId;
      case r'ASSET_PROFILE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(AssetProfileId),
            )
            as AssetProfileId;
      case r'BLOB_ENTITY':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(BlobEntityId),
            )
            as BlobEntityId;
      case r'CALCULATED_FIELD':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(CalculatedFieldId),
            )
            as CalculatedFieldId;
      case r'CONVERTER':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ConverterId),
            )
            as ConverterId;
      case r'CUSTOMER':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(CustomerId),
            )
            as CustomerId;
      case r'DASHBOARD':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(DashboardId),
            )
            as DashboardId;
      case r'DEVICE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(DeviceId),
            )
            as DeviceId;
      case r'DEVICE_PROFILE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(DeviceProfileId),
            )
            as DeviceProfileId;
      case r'DOMAIN':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(DomainId),
            )
            as DomainId;
      case r'EDGE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(EdgeId),
            )
            as EdgeId;
      case r'ENTITY_GROUP':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(EntityGroupId),
            )
            as EntityGroupId;
      case r'ENTITY_VIEW':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(EntityViewId),
            )
            as EntityViewId;
      case r'GROUP_PERMISSION':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(GroupPermissionId),
            )
            as GroupPermissionId;
      case r'INTEGRATION':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(IntegrationId),
            )
            as IntegrationId;
      case r'JOB':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(JobId),
            )
            as JobId;
      case r'MOBILE_APP':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(MobileAppId),
            )
            as MobileAppId;
      case r'MOBILE_APP_BUNDLE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(MobileAppBundleId),
            )
            as MobileAppBundleId;
      case r'NOTIFICATION':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(NotificationId),
            )
            as NotificationId;
      case r'NOTIFICATION_REQUEST':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(NotificationRequestId),
            )
            as NotificationRequestId;
      case r'NOTIFICATION_RULE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(NotificationRuleId),
            )
            as NotificationRuleId;
      case r'NOTIFICATION_TARGET':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(NotificationTargetId),
            )
            as NotificationTargetId;
      case r'NOTIFICATION_TEMPLATE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(NotificationTemplateId),
            )
            as NotificationTemplateId;
      case r'OAUTH2_CLIENT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(OAuth2ClientId),
            )
            as OAuth2ClientId;
      case r'OTA_PACKAGE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(OtaPackageId),
            )
            as OtaPackageId;
      case r'QUEUE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(QueueId),
            )
            as QueueId;
      case r'QUEUE_STATS':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(QueueStatsId),
            )
            as QueueStatsId;
      case r'REPORT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ReportId),
            )
            as ReportId;
      case r'REPORT_TEMPLATE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(ReportTemplateId),
            )
            as ReportTemplateId;
      case r'ROLE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(RoleId),
            )
            as RoleId;
      case r'RPC':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(RpcId),
            )
            as RpcId;
      case r'RULE_CHAIN':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(RuleChainId),
            )
            as RuleChainId;
      case r'RULE_NODE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(RuleNodeId),
            )
            as RuleNodeId;
      case r'SCHEDULER_EVENT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(SchedulerEventId),
            )
            as SchedulerEventId;
      case r'SECRET':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(SecretId),
            )
            as SecretId;
      case r'TB_RESOURCE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(TbResourceId),
            )
            as TbResourceId;
      case r'TENANT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(TenantId),
            )
            as TenantId;
      case r'TENANT_PROFILE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(TenantProfileId),
            )
            as TenantProfileId;
      case r'USER':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(UserId),
            )
            as UserId;
      case r'WIDGETS_BUNDLE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(WidgetsBundleId),
            )
            as WidgetsBundleId;
      case r'WIDGET_TYPE':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(WidgetTypeId),
            )
            as WidgetTypeId;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($EntityId),
            )
            as $EntityId;
    }
  }
}

/// a concrete implementation of [EntityId], since [EntityId] is not instantiable
@BuiltValue(instantiable: true)
abstract class $EntityId
    implements EntityId, Built<$EntityId, $EntityIdBuilder> {
  $EntityId._();

  factory $EntityId([void Function($EntityIdBuilder)? updates]) = _$$EntityId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($EntityIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$EntityId> get serializer => _$$EntityIdSerializer();
}

class _$$EntityIdSerializer implements PrimitiveSerializer<$EntityId> {
  @override
  final Iterable<Type> types = const [$EntityId, _$$EntityId];

  @override
  final String wireName = r'$EntityId';

  @override
  Object serialize(
    Serializers serializers,
    $EntityId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(EntityId))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityIdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'entityType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EntityType),
                  )
                  as EntityType;
          result.entityType = valueDes;
          break;
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $EntityId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $EntityIdBuilder();
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
