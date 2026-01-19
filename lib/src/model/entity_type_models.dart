import 'id/tenant_id.dart';

enum EntityType {
  TENANT,
  CUSTOMER,
  USER,
  DASHBOARD,
  ASSET,
  DEVICE,
  ALARM,
  RULE_CHAIN,
  RULE_NODE,
  ENTITY_VIEW,
  WIDGETS_BUNDLE,
  WIDGET_TYPE,
  TENANT_PROFILE,
  DEVICE_PROFILE,
  ASSET_PROFILE,
  API_USAGE_STATE,
  TB_RESOURCE,
  OTA_PACKAGE,
  EDGE,
  RPC,
  QUEUE,
  NOTIFICATION_TARGET,
  NOTIFICATION_TEMPLATE,
  NOTIFICATION_REQUEST,
  NOTIFICATION,
  NOTIFICATION_RULE,
  QUEUE_STATS,
  OAUTH2_CLIENT,
  DOMAIN,
  MOBILE_APP,
  MOBILE_APP_BUNDLE,
  CALCULATED_FIELD,
  JOB,
  ADMIN_SETTINGS,
  AI_MODEL,
  API_KEY,
}

EntityType entityTypeFromString(String value) {
  return EntityType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension EntityTypeToString on EntityType {
  String toShortString() {
    return toString().split('.').last;
  }
}

class EntitySubtype {
  TenantId tenantId;
  EntityType entityType;
  String type;

  EntitySubtype.fromJson(Map<String, dynamic> json)
      : tenantId = TenantId.fromJson(json['tenantId']),
        entityType = entityTypeFromString(json['entityType']),
        type = json['type'];

  @override
  String toString() {
    return 'EntitySubtype{tenantId: $tenantId, entityType: $entityType, type: $type}';
  }
}
