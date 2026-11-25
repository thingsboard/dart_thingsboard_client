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
import 'package:one_of/one_of.dart';

part 'get_managed_related_entity_ids200_response_inner.g.dart';

/// GetManagedRelatedEntityIds200ResponseInner
///
/// Properties:
/// * [entityType]
/// * [id] - ID of the entity, time-based UUID v1
@BuiltValue()
abstract class GetManagedRelatedEntityIds200ResponseInner
    implements
        Built<
          GetManagedRelatedEntityIds200ResponseInner,
          GetManagedRelatedEntityIds200ResponseInnerBuilder
        > {
  /// One Of [AdminSettingsId], [AgentAppEventId], [AgentAppProfileId], [AgentAppUnitId], [AgentApplicationId], [AgentBulkActionId], [AgentId], [AgentProfileId], [AiModelId], [AlarmId], [ApiKeyId], [ApiUsageStateId], [AssetId], [AssetProfileId], [BlobEntityId], [CalculatedFieldId], [ConverterId], [CustomerId], [DashboardId], [DeviceId], [DeviceProfileId], [DomainId], [EdgeId], [EntityGroupId], [EntityViewId], [GroupPermissionId], [IntegrationId], [JobId], [MobileAppBundleId], [MobileAppId], [NotificationId], [NotificationRequestId], [NotificationRuleId], [NotificationTargetId], [NotificationTemplateId], [OAuth2ClientId], [OtaPackageId], [QueueId], [QueueStatsId], [ReportId], [ReportTemplateId], [RoleId], [RpcId], [RuleChainId], [RuleNodeId], [SchedulerEventId], [SecretId], [TbResourceId], [TenantId], [TenantProfileId], [UserId], [WidgetTypeId], [WidgetsBundleId]
  OneOf get oneOf;

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

  GetManagedRelatedEntityIds200ResponseInner._();

  factory GetManagedRelatedEntityIds200ResponseInner([
    void updates(GetManagedRelatedEntityIds200ResponseInnerBuilder b),
  ]) = _$GetManagedRelatedEntityIds200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetManagedRelatedEntityIds200ResponseInnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetManagedRelatedEntityIds200ResponseInner>
  get serializer => _$GetManagedRelatedEntityIds200ResponseInnerSerializer();
}

extension GetManagedRelatedEntityIds200ResponseInnerDiscriminatorExt
    on GetManagedRelatedEntityIds200ResponseInner {
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

extension GetManagedRelatedEntityIds200ResponseInnerBuilderDiscriminatorExt
    on GetManagedRelatedEntityIds200ResponseInnerBuilder {
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

class _$GetManagedRelatedEntityIds200ResponseInnerSerializer
    implements PrimitiveSerializer<GetManagedRelatedEntityIds200ResponseInner> {
  @override
  final Iterable<Type> types = const [
    GetManagedRelatedEntityIds200ResponseInner,
    _$GetManagedRelatedEntityIds200ResponseInner,
  ];

  @override
  final String wireName = r'GetManagedRelatedEntityIds200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetManagedRelatedEntityIds200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    GetManagedRelatedEntityIds200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(
      oneOf.value,
      specifiedType: FullType(oneOf.valueType),
    )!;
  }

  @override
  GetManagedRelatedEntityIds200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetManagedRelatedEntityIds200ResponseInnerBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(
          GetManagedRelatedEntityIds200ResponseInner.discriminatorFieldName,
        ) +
        1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      AdminSettingsId,
      AgentId,
      AgentApplicationId,
      AgentAppEventId,
      AgentAppProfileId,
      AgentAppUnitId,
      AgentBulkActionId,
      AgentProfileId,
      AiModelId,
      AlarmId,
      ApiKeyId,
      ApiUsageStateId,
      AssetId,
      AssetProfileId,
      BlobEntityId,
      CalculatedFieldId,
      ConverterId,
      CustomerId,
      DashboardId,
      DeviceId,
      DeviceProfileId,
      DomainId,
      EdgeId,
      EntityGroupId,
      EntityViewId,
      GroupPermissionId,
      IntegrationId,
      JobId,
      MobileAppId,
      MobileAppBundleId,
      NotificationId,
      NotificationRequestId,
      NotificationRuleId,
      NotificationTargetId,
      NotificationTemplateId,
      OAuth2ClientId,
      OtaPackageId,
      QueueId,
      QueueStatsId,
      ReportId,
      ReportTemplateId,
      RoleId,
      RpcId,
      RuleChainId,
      RuleNodeId,
      SchedulerEventId,
      SecretId,
      TbResourceId,
      TenantId,
      TenantProfileId,
      UserId,
      WidgetsBundleId,
      WidgetTypeId,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'ADMIN_SETTINGS':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(AdminSettingsId),
                )
                as AdminSettingsId;
        oneOfType = AdminSettingsId;
        break;
      case r'AGENT':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(AgentId),
                )
                as AgentId;
        oneOfType = AgentId;
        break;
      case r'AGENT_APPLICATION':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(AgentApplicationId),
                )
                as AgentApplicationId;
        oneOfType = AgentApplicationId;
        break;
      case r'AGENT_APP_EVENT':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(AgentAppEventId),
                )
                as AgentAppEventId;
        oneOfType = AgentAppEventId;
        break;
      case r'AGENT_APP_PROFILE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(AgentAppProfileId),
                )
                as AgentAppProfileId;
        oneOfType = AgentAppProfileId;
        break;
      case r'AGENT_APP_UNIT':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(AgentAppUnitId),
                )
                as AgentAppUnitId;
        oneOfType = AgentAppUnitId;
        break;
      case r'AGENT_BULK_ACTION':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(AgentBulkActionId),
                )
                as AgentBulkActionId;
        oneOfType = AgentBulkActionId;
        break;
      case r'AGENT_PROFILE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(AgentProfileId),
                )
                as AgentProfileId;
        oneOfType = AgentProfileId;
        break;
      case r'AI_MODEL':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(AiModelId),
                )
                as AiModelId;
        oneOfType = AiModelId;
        break;
      case r'ALARM':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(AlarmId),
                )
                as AlarmId;
        oneOfType = AlarmId;
        break;
      case r'API_KEY':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(ApiKeyId),
                )
                as ApiKeyId;
        oneOfType = ApiKeyId;
        break;
      case r'API_USAGE_STATE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(ApiUsageStateId),
                )
                as ApiUsageStateId;
        oneOfType = ApiUsageStateId;
        break;
      case r'ASSET':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(AssetId),
                )
                as AssetId;
        oneOfType = AssetId;
        break;
      case r'ASSET_PROFILE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(AssetProfileId),
                )
                as AssetProfileId;
        oneOfType = AssetProfileId;
        break;
      case r'BLOB_ENTITY':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(BlobEntityId),
                )
                as BlobEntityId;
        oneOfType = BlobEntityId;
        break;
      case r'CALCULATED_FIELD':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(CalculatedFieldId),
                )
                as CalculatedFieldId;
        oneOfType = CalculatedFieldId;
        break;
      case r'CONVERTER':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(ConverterId),
                )
                as ConverterId;
        oneOfType = ConverterId;
        break;
      case r'CUSTOMER':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(CustomerId),
                )
                as CustomerId;
        oneOfType = CustomerId;
        break;
      case r'DASHBOARD':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(DashboardId),
                )
                as DashboardId;
        oneOfType = DashboardId;
        break;
      case r'DEVICE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(DeviceId),
                )
                as DeviceId;
        oneOfType = DeviceId;
        break;
      case r'DEVICE_PROFILE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(DeviceProfileId),
                )
                as DeviceProfileId;
        oneOfType = DeviceProfileId;
        break;
      case r'DOMAIN':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(DomainId),
                )
                as DomainId;
        oneOfType = DomainId;
        break;
      case r'EDGE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(EdgeId),
                )
                as EdgeId;
        oneOfType = EdgeId;
        break;
      case r'ENTITY_GROUP':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(EntityGroupId),
                )
                as EntityGroupId;
        oneOfType = EntityGroupId;
        break;
      case r'ENTITY_VIEW':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(EntityViewId),
                )
                as EntityViewId;
        oneOfType = EntityViewId;
        break;
      case r'GROUP_PERMISSION':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(GroupPermissionId),
                )
                as GroupPermissionId;
        oneOfType = GroupPermissionId;
        break;
      case r'INTEGRATION':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(IntegrationId),
                )
                as IntegrationId;
        oneOfType = IntegrationId;
        break;
      case r'JOB':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(JobId),
                )
                as JobId;
        oneOfType = JobId;
        break;
      case r'MOBILE_APP':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(MobileAppId),
                )
                as MobileAppId;
        oneOfType = MobileAppId;
        break;
      case r'MOBILE_APP_BUNDLE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(MobileAppBundleId),
                )
                as MobileAppBundleId;
        oneOfType = MobileAppBundleId;
        break;
      case r'NOTIFICATION':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(NotificationId),
                )
                as NotificationId;
        oneOfType = NotificationId;
        break;
      case r'NOTIFICATION_REQUEST':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(NotificationRequestId),
                )
                as NotificationRequestId;
        oneOfType = NotificationRequestId;
        break;
      case r'NOTIFICATION_RULE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(NotificationRuleId),
                )
                as NotificationRuleId;
        oneOfType = NotificationRuleId;
        break;
      case r'NOTIFICATION_TARGET':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(NotificationTargetId),
                )
                as NotificationTargetId;
        oneOfType = NotificationTargetId;
        break;
      case r'NOTIFICATION_TEMPLATE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(NotificationTemplateId),
                )
                as NotificationTemplateId;
        oneOfType = NotificationTemplateId;
        break;
      case r'OAUTH2_CLIENT':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(OAuth2ClientId),
                )
                as OAuth2ClientId;
        oneOfType = OAuth2ClientId;
        break;
      case r'OTA_PACKAGE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(OtaPackageId),
                )
                as OtaPackageId;
        oneOfType = OtaPackageId;
        break;
      case r'QUEUE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(QueueId),
                )
                as QueueId;
        oneOfType = QueueId;
        break;
      case r'QUEUE_STATS':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(QueueStatsId),
                )
                as QueueStatsId;
        oneOfType = QueueStatsId;
        break;
      case r'REPORT':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(ReportId),
                )
                as ReportId;
        oneOfType = ReportId;
        break;
      case r'REPORT_TEMPLATE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(ReportTemplateId),
                )
                as ReportTemplateId;
        oneOfType = ReportTemplateId;
        break;
      case r'ROLE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(RoleId),
                )
                as RoleId;
        oneOfType = RoleId;
        break;
      case r'RPC':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(RpcId),
                )
                as RpcId;
        oneOfType = RpcId;
        break;
      case r'RULE_CHAIN':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(RuleChainId),
                )
                as RuleChainId;
        oneOfType = RuleChainId;
        break;
      case r'RULE_NODE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(RuleNodeId),
                )
                as RuleNodeId;
        oneOfType = RuleNodeId;
        break;
      case r'SCHEDULER_EVENT':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(SchedulerEventId),
                )
                as SchedulerEventId;
        oneOfType = SchedulerEventId;
        break;
      case r'SECRET':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(SecretId),
                )
                as SecretId;
        oneOfType = SecretId;
        break;
      case r'TB_RESOURCE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(TbResourceId),
                )
                as TbResourceId;
        oneOfType = TbResourceId;
        break;
      case r'TENANT':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(TenantId),
                )
                as TenantId;
        oneOfType = TenantId;
        break;
      case r'TENANT_PROFILE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(TenantProfileId),
                )
                as TenantProfileId;
        oneOfType = TenantProfileId;
        break;
      case r'USER':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(UserId),
                )
                as UserId;
        oneOfType = UserId;
        break;
      case r'WIDGETS_BUNDLE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(WidgetsBundleId),
                )
                as WidgetsBundleId;
        oneOfType = WidgetsBundleId;
        break;
      case r'WIDGET_TYPE':
        oneOfResult =
            serializers.deserialize(
                  oneOfDataSrc,
                  specifiedType: FullType(WidgetTypeId),
                )
                as WidgetTypeId;
        oneOfType = WidgetTypeId;
        break;
      default:
        throw UnsupportedError(
          "Couldn't deserialize oneOf for the discriminator value: ${discValue}",
        );
    }
    result.oneOf = OneOfDynamic(
      typeIndex: oneOfTypes.indexOf(oneOfType),
      types: oneOfTypes,
      value: oneOfResult,
    );
    return result.build();
  }
}
