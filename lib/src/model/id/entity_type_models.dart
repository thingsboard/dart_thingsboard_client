// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

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
  API_KEY
}

EntityType entityTypeFromString(String value) {
  return EntityType.values.firstWhere(
    (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase(),
  );
}

extension EntityTypeToString on EntityType {
  String toShortString() {
    return toString().split('.').last;
  }
}
