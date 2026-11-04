// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'entity_type_models.dart';
import 'has_uuid.dart';

abstract class EntityId extends HasUuid {
  EntityType entityType;

  EntityId(this.entityType, String? id) : super(id);

  factory EntityId.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('entityType') && json.containsKey('id')) {
      var entityType = entityTypeFromString(json['entityType']);
      String uuid = json['id'];
      return EntityId.fromTypeAndUuid(
        entityType,
        uuid,
      );
    } else {
      throw FormatException('Missing entityType or id!');
    }
  }

  factory EntityId.fromTypeAndUuid(EntityType type, String uuid) {
    switch (type) {
      case EntityType.TENANT:
        return TenantId(uuid);
      case EntityType.TENANT_PROFILE:
        return TenantProfileId(uuid);
      case EntityType.CUSTOMER:
        return CustomerId(uuid);
      case EntityType.USER:
        return UserId(uuid);
      case EntityType.DASHBOARD:
        return DashboardId(uuid);
      case EntityType.ASSET:
        return AssetId(uuid);
      case EntityType.DEVICE:
        return DeviceId(uuid);
      case EntityType.DEVICE_PROFILE:
        return DeviceProfileId(uuid);
      case EntityType.ASSET_PROFILE:
        return AssetProfileId(uuid);
      case EntityType.ALARM:
        return AlarmId(uuid);
      case EntityType.RULE_CHAIN:
        return RuleChainId(uuid);
      case EntityType.RULE_NODE:
        return RuleNodeId(uuid);
      case EntityType.EDGE:
        return EdgeId(uuid);
      case EntityType.ENTITY_VIEW:
        return EntityViewId(uuid);
      case EntityType.WIDGETS_BUNDLE:
        return WidgetsBundleId(uuid);
      case EntityType.WIDGET_TYPE:
        return WidgetTypeId(uuid);
      case EntityType.API_USAGE_STATE:
        return ApiUsageStateId(uuid);
      case EntityType.TB_RESOURCE:
        return TbResourceId(uuid);
      case EntityType.OTA_PACKAGE:
        return OtaPackageId(uuid);
      case EntityType.RPC:
        return RpcId(uuid);
      case EntityType.QUEUE:
        return QueueId(uuid);
      case EntityType.NOTIFICATION_TARGET:
        return NotificationTargetId(uuid);
      case EntityType.NOTIFICATION_TEMPLATE:
        return NotificationTemplateId(uuid);
      case EntityType.NOTIFICATION_REQUEST:
        return NotificationRequestId(uuid);
      case EntityType.NOTIFICATION:
        return NotificationId(uuid);
      case EntityType.NOTIFICATION_RULE:
        return NotificationRuleId(uuid);
      case EntityType.CALCULATED_FIELD:
        return CalculatedFieldId(uuid);
      case EntityType.QUEUE_STATS:
        return QueueStatsId(uuid);
      case EntityType.OAUTH2_CLIENT:
        return Oauth2ClientId(uuid);
      case EntityType.ADMIN_SETTINGS:
        return AdminSettingsId(uuid);
      case EntityType.AI_MODEL:
        return AiModelId(uuid);
      case EntityType.API_KEY:
        return ApiKeyId(uuid);
      case EntityType.DOMAIN:
        return DomainId(uuid);
      case EntityType.MOBILE_APP:
        return MobileAppId(uuid);
      case EntityType.MOBILE_APP_BUNDLE:
        return MobileAppBundleId(uuid);
      case EntityType.JOB:
        return JobId(uuid);
    }
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityType'] = entityType.toShortString();
    return json;
  }
}

class TenantId extends EntityId {
  TenantId(String id) : super(EntityType.TENANT, id);
  factory TenantId.fromJson(Map<String, dynamic> json) =>
      TenantId(json['id']);
}

class TenantProfileId extends EntityId {
  TenantProfileId(String id) : super(EntityType.TENANT_PROFILE, id);
  factory TenantProfileId.fromJson(Map<String, dynamic> json) =>
      TenantProfileId(json['id']);
}

class CustomerId extends EntityId {
  CustomerId(String id) : super(EntityType.CUSTOMER, id);
  factory CustomerId.fromJson(Map<String, dynamic> json) =>
      CustomerId(json['id']);
}

class UserId extends EntityId {
  UserId(String id) : super(EntityType.USER, id);
  factory UserId.fromJson(Map<String, dynamic> json) => UserId(json['id']);
}

class DashboardId extends EntityId {
  DashboardId(String id) : super(EntityType.DASHBOARD, id);
  factory DashboardId.fromJson(Map<String, dynamic> json) =>
      DashboardId(json['id']);
}

class AssetId extends EntityId {
  AssetId(String id) : super(EntityType.ASSET, id);
  factory AssetId.fromJson(Map<String, dynamic> json) => AssetId(json['id']);
}

class DeviceId extends EntityId {
  DeviceId(String id) : super(EntityType.DEVICE, id);
  factory DeviceId.fromJson(Map<String, dynamic> json) => DeviceId(json['id']);
}

class DeviceProfileId extends EntityId {
  DeviceProfileId(String id) : super(EntityType.DEVICE_PROFILE, id);
  factory DeviceProfileId.fromJson(Map<String, dynamic> json) =>
      DeviceProfileId(json['id']);
}

class AssetProfileId extends EntityId {
  AssetProfileId(String id) : super(EntityType.ASSET_PROFILE, id);
  factory AssetProfileId.fromJson(Map<String, dynamic> json) =>
      AssetProfileId(json['id']);
}

class AlarmId extends EntityId {
  AlarmId(String id) : super(EntityType.ALARM, id);
  factory AlarmId.fromJson(Map<String, dynamic> json) => AlarmId(json['id']);
}

class RuleChainId extends EntityId {
  RuleChainId(String id) : super(EntityType.RULE_CHAIN, id);
  factory RuleChainId.fromJson(Map<String, dynamic> json) =>
      RuleChainId(json['id']);
}

class RuleNodeId extends EntityId {
  RuleNodeId(String id) : super(EntityType.RULE_NODE, id);
  factory RuleNodeId.fromJson(Map<String, dynamic> json) =>
      RuleNodeId(json['id']);
}

class EdgeId extends EntityId {
  EdgeId(String id) : super(EntityType.EDGE, id);
  factory EdgeId.fromJson(Map<String, dynamic> json) => EdgeId(json['id']);
}

class EntityViewId extends EntityId {
  EntityViewId(String id) : super(EntityType.ENTITY_VIEW, id);
  factory EntityViewId.fromJson(Map<String, dynamic> json) =>
      EntityViewId(json['id']);
}

class WidgetsBundleId extends EntityId {
  WidgetsBundleId(String id) : super(EntityType.WIDGETS_BUNDLE, id);
  factory WidgetsBundleId.fromJson(Map<String, dynamic> json) =>
      WidgetsBundleId(json['id']);
}

class WidgetTypeId extends EntityId {
  WidgetTypeId(String id) : super(EntityType.WIDGET_TYPE, id);
  factory WidgetTypeId.fromJson(Map<String, dynamic> json) =>
      WidgetTypeId(json['id']);
}

class ApiUsageStateId extends EntityId {
  ApiUsageStateId(String id) : super(EntityType.API_USAGE_STATE, id);
  factory ApiUsageStateId.fromJson(Map<String, dynamic> json) =>
      ApiUsageStateId(json['id']);
}

class TbResourceId extends EntityId {
  TbResourceId(String id) : super(EntityType.TB_RESOURCE, id);
  factory TbResourceId.fromJson(Map<String, dynamic> json) =>
      TbResourceId(json['id']);
}

class OtaPackageId extends EntityId {
  OtaPackageId(String id) : super(EntityType.OTA_PACKAGE, id);
  factory OtaPackageId.fromJson(Map<String, dynamic> json) =>
      OtaPackageId(json['id']);
}

class RpcId extends EntityId {
  RpcId(String id) : super(EntityType.RPC, id);
  factory RpcId.fromJson(Map<String, dynamic> json) => RpcId(json['id']);
}

class QueueId extends EntityId {
  QueueId(String id) : super(EntityType.QUEUE, id);
  factory QueueId.fromJson(Map<String, dynamic> json) => QueueId(json['id']);
}

class NotificationTargetId extends EntityId {
  NotificationTargetId(String id) : super(EntityType.NOTIFICATION_TARGET, id);
  factory NotificationTargetId.fromJson(Map<String, dynamic> json) =>
      NotificationTargetId(json['id']);
}

class NotificationTemplateId extends EntityId {
  NotificationTemplateId(String id)
      : super(EntityType.NOTIFICATION_TEMPLATE, id);
  factory NotificationTemplateId.fromJson(Map<String, dynamic> json) =>
      NotificationTemplateId(json['id']);
}

class NotificationRequestId extends EntityId {
  NotificationRequestId(String id)
      : super(EntityType.NOTIFICATION_REQUEST, id);
  factory NotificationRequestId.fromJson(Map<String, dynamic> json) =>
      NotificationRequestId(json['id']);
}

class NotificationId extends EntityId {
  NotificationId(String id) : super(EntityType.NOTIFICATION, id);
  factory NotificationId.fromJson(Map<String, dynamic> json) =>
      NotificationId(json['id']);
}

class NotificationRuleId extends EntityId {
  NotificationRuleId(String id) : super(EntityType.NOTIFICATION_RULE, id);
  factory NotificationRuleId.fromJson(Map<String, dynamic> json) =>
      NotificationRuleId(json['id']);
}

class CalculatedFieldId extends EntityId {
  CalculatedFieldId(String id) : super(EntityType.CALCULATED_FIELD, id);
  factory CalculatedFieldId.fromJson(Map<String, dynamic> json) =>
      CalculatedFieldId(json['id']);
}

class QueueStatsId extends EntityId {
  QueueStatsId(String id) : super(EntityType.QUEUE_STATS, id);
  factory QueueStatsId.fromJson(Map<String, dynamic> json) =>
      QueueStatsId(json['id']);
}

class Oauth2ClientId extends EntityId {
  Oauth2ClientId(String id) : super(EntityType.OAUTH2_CLIENT, id);
  factory Oauth2ClientId.fromJson(Map<String, dynamic> json) =>
      Oauth2ClientId(json['id']);
}

class AdminSettingsId extends EntityId {
  AdminSettingsId(String id) : super(EntityType.ADMIN_SETTINGS, id);
  factory AdminSettingsId.fromJson(Map<String, dynamic> json) =>
      AdminSettingsId(json['id']);
}

class AiModelId extends EntityId {
  AiModelId(String id) : super(EntityType.AI_MODEL, id);
  factory AiModelId.fromJson(Map<String, dynamic> json) =>
      AiModelId(json['id']);
}

class ApiKeyId extends EntityId {
  ApiKeyId(String id) : super(EntityType.API_KEY, id);
  factory ApiKeyId.fromJson(Map<String, dynamic> json) =>
      ApiKeyId(json['id']);
}

class DomainId extends EntityId {
  DomainId(String id) : super(EntityType.DOMAIN, id);
  factory DomainId.fromJson(Map<String, dynamic> json) =>
      DomainId(json['id']);
}

class MobileAppId extends EntityId {
  MobileAppId(String id) : super(EntityType.MOBILE_APP, id);
  factory MobileAppId.fromJson(Map<String, dynamic> json) =>
      MobileAppId(json['id']);
}

class MobileAppBundleId extends EntityId {
  MobileAppBundleId(String id) : super(EntityType.MOBILE_APP_BUNDLE, id);
  factory MobileAppBundleId.fromJson(Map<String, dynamic> json) =>
      MobileAppBundleId(json['id']);
}

class JobId extends EntityId {
  JobId(String id) : super(EntityType.JOB, id);
  factory JobId.fromJson(Map<String, dynamic> json) => JobId(json['id']);
}
