import 'package:thingsboard_client/src/model/id/ai_model_id.dart';
import 'package:thingsboard_client/src/model/id/api_key_id.dart';
import 'package:thingsboard_client/src/model/id/calculated_field_id.dart';
import 'package:thingsboard_client/src/model/id/oauth_2_client_id.dart';
import 'package:thingsboard_client/src/model/id/queue_stats_id.dart';
import 'package:thingsboard_client/thingsboard_client.dart';
import 'package:thingsboard_client/src/model/id/domain_id.dart';
import 'package:thingsboard_client/src/model/id/mobile_app_id.dart';
import 'package:thingsboard_client/src/model/id/mobile_app_bundle_id.dart';
import 'package:thingsboard_client/src/model/id/job_id.dart';

abstract class EntityId extends HasUuid {
  EntityType entityType;

  EntityId(this.entityType, String id) : super(id);

  factory EntityId.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('entityType') && json.containsKey('id')) {
      var entityType = entityTypeFromString(json['entityType']);
      String uuid = json['id'];
      return EntityId.fromTypeAndUuid(entityType, uuid);
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
