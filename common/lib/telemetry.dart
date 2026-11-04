// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// The telemetry WebSocket API of the ThingsBoard client: subscriptions, the
/// commands they send and the updates they receive.
///
/// These are the handwritten types of the WebSocket facade. Several of them
/// share their name with a REST model of the main library
/// (`package:thingsboard_client/thingsboard_client.dart`), e.g. [EntityId],
/// [EntityType], [EntityDataQuery], [AlarmData] or [Aggregation], so import
/// this library with a prefix:
///
/// ```dart
/// import 'package:thingsboard_client/thingsboard_client.dart';
/// import 'package:thingsboard_client/telemetry.dart' as ws;
///
/// final subscriber = ws.TelemetrySubscriber.createEntityAttributesSubscription(
///   telemetryService: tbClient.getTelemetryService(),
///   entityId: ws.DeviceId(deviceId),
///   attributeScope: ws.LatestTelemetry.LATEST_TELEMETRY.toShortString(),
/// );
/// ```
library;

export 'src/model/id/entity_id.dart';
export 'src/model/id/entity_type_models.dart';
export 'src/model/id/has_id.dart';
export 'src/model/id/has_uuid.dart';
export 'src/model/id/id_based.dart';
export 'src/model/page/sort_order.dart';
export 'src/model/telemetry/alarm_models.dart';
export 'src/model/telemetry/base_data.dart';
export 'src/model/telemetry/has_name.dart';
export 'src/model/telemetry/has_tenant_id.dart';
export 'src/model/telemetry/push_notification_models.dart';
export 'src/model/telemetry/query/query_models.dart';
export 'src/model/telemetry/telemetry_models.dart';
export 'src/model/telemetry/ts_value.dart';
export 'src/service/telemetry_websocket_service.dart';
