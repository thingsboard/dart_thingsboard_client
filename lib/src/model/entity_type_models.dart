enum EntityType {
  TENANT,
  TENANT_PROFILE,
  CUSTOMER,
  USER,
  DASHBOARD,
  ASSET,
  DEVICE,
  DEVICE_PROFILE
}

EntityType entityTypeFromString(String value) {
  return EntityType.values.firstWhere((e)=>e.toString().split('.')[1].toUpperCase()==value.toUpperCase());
}
