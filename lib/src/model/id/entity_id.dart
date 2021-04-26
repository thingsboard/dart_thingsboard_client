import 'alarm_id.dart';
import 'api_usage_state_id.dart';
import 'asset_id.dart';
import 'dashboard_id.dart';
import 'device_profile_id.dart';
import 'edge_id.dart';
import 'entity_view_id.dart';
import 'firmware_id.dart';
import 'rule_chain_id.dart';
import 'rule_node_id.dart';
import 'tb_resource_id.dart';
import 'tenant_profile_id.dart';
import 'user_id.dart';
import 'widget_type_id.dart';
import 'widgets_bundle_id.dart';
import 'customer_id.dart';
import 'device_id.dart';
import 'tenant_id.dart';

import '../entity_type_models.dart';
import './has_uuid.dart';

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
    switch(type) {
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
      case EntityType.FIRMWARE:
        return FirmwareId(uuid);
    }
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityType'] = entityType.toShortString();
    return json;
  }

}
