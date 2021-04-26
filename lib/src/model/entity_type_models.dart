enum EntityType {
  TENANT,
  TENANT_PROFILE,
  CUSTOMER,
  USER,
  DASHBOARD,
  ASSET,
  DEVICE,
  DEVICE_PROFILE,
  ALARM,
  RULE_CHAIN,
  RULE_NODE,
  EDGE,
  ENTITY_VIEW,
  WIDGETS_BUNDLE,
  WIDGET_TYPE,
  API_USAGE_STATE,
  TB_RESOURCE,
  FIRMWARE
}

EntityType entityTypeFromString(String value) {
  return EntityType.values.firstWhere((e)=>e.toString().split('.')[1].toUpperCase()==value.toUpperCase());
}

extension EntityTypeToString on EntityType {
  String toShortString() {
    return toString().split('.').last;
  }
}
