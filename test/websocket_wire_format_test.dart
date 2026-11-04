// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Pins the JSON of the telemetry WebSocket API: the commands the client sends
// and the updates it receives. The command fixtures are what the facade
// serializes today, the update fixtures are (anonymized) messages recorded
// from a ThingsBoard server.

import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:thingsboard_client/telemetry.dart' as ws;

const _deviceId = '434deb10-c3cc-11f0-ba29-557ae2ab3d6a';
const _fixtureToken = 'JWT_TOKEN';

String _fixture(String name) =>
    File('test/fixtures/ws/$name').readAsStringSync();

ws.EntityKey _key(ws.EntityKeyType type, String key) =>
    ws.EntityKey(type: type, key: key);

ws.TelemetryPluginCmdsWrapper _wrap(ws.WebsocketCmd cmd) {
  final wrapper = ws.TelemetryPluginCmdsWrapper()..setAuth(_fixtureToken);
  wrapper.cmds.add(cmd);
  return wrapper;
}

ws.EntityDataCmd buildEntityDataCmd() => ws.EntityDataCmd(
  cmdId: 1,
  query: ws.EntityDataQuery(
    entityFilter: ws.SingleEntityFilter(singleEntity: ws.DeviceId(_deviceId)),
    pageLink: ws.EntityDataPageLink(
      pageSize: 10,
      sortOrder: ws.EntityDataSortOrder(
        key: _key(ws.EntityKeyType.ENTITY_FIELD, 'createdTime'),
        direction: ws.EntityDataSortOrderDirection.DESC,
      ),
    ),
    entityFields: [_key(ws.EntityKeyType.ENTITY_FIELD, 'name')],
    latestValues: [
      _key(ws.EntityKeyType.TIME_SERIES, 'temperature'),
      _key(ws.EntityKeyType.ATTRIBUTE, 'active'),
    ],
    keyFilters: [
      ws.KeyFilter(
        key: _key(ws.EntityKeyType.TIME_SERIES, 'temperature'),
        valueType: ws.EntityKeyValueType.NUMERIC,
        predicate: ws.NumericFilterPredicate(
          operation: ws.NumericOperation.GREATER,
          value: ws.FilterPredicateValue<double>(25),
        ),
      ),
    ],
  ),
  latestCmd: ws.LatestValueCmd(
    keys: [
      _key(ws.EntityKeyType.TIME_SERIES, 'temperature'),
      _key(ws.EntityKeyType.ATTRIBUTE, 'active'),
    ],
  ),
  tsCmd: ws.TimeSeriesCmd(
    keys: ['temperature', 'humidity'],
    startTs: 1767225600000,
    timeWindow: 86400000,
    interval: 60000,
    limit: 100,
    agg: ws.Aggregation.AVG,
  ),
);

ws.EntityCountCmd buildEntityCountCmd() => ws.EntityCountCmd(
  cmdId: 2,
  query: ws.EntityCountQuery(
    entityFilter: ws.EntityTypeFilter(entityType: ws.EntityType.DEVICE),
    keyFilters: [
      ws.KeyFilter(
        key: _key(ws.EntityKeyType.TIME_SERIES, 'temperature'),
        valueType: ws.EntityKeyValueType.NUMERIC,
        predicate: ws.NumericFilterPredicate(
          operation: ws.NumericOperation.GREATER,
          value: ws.FilterPredicateValue<double>(25),
        ),
      ),
    ],
  ),
);

ws.AlarmDataCmd buildAlarmDataCmd() => ws.AlarmDataCmd(
  cmdId: 3,
  query: ws.AlarmDataQuery(
    entityFilter: ws.SingleEntityFilter(singleEntity: ws.DeviceId(_deviceId)),
    pageLink: ws.AlarmDataPageLink(
      pageSize: 10,
      timeWindow: 86400000,
      statusList: [ws.AlarmSearchStatus.ACTIVE, ws.AlarmSearchStatus.UNACK],
      severityList: [ws.AlarmSeverity.CRITICAL, ws.AlarmSeverity.MAJOR],
      sortOrder: ws.EntityDataSortOrder(
        key: _key(ws.EntityKeyType.ALARM_FIELD, 'createdTime'),
        direction: ws.EntityDataSortOrderDirection.DESC,
      ),
    ),
    entityFields: [_key(ws.EntityKeyType.ENTITY_FIELD, 'name')],
    alarmFields: [
      _key(ws.EntityKeyType.ALARM_FIELD, 'createdTime'),
      _key(ws.EntityKeyType.ALARM_FIELD, 'type'),
      _key(ws.EntityKeyType.ALARM_FIELD, 'severity'),
      _key(ws.EntityKeyType.ALARM_FIELD, 'status'),
    ],
  ),
);

ws.TimeseriesSubscriptionCmd buildTimeseriesSubscriptionCmd() =>
    ws.TimeseriesSubscriptionCmd(
      cmdId: 4,
      entityType: ws.EntityType.DEVICE,
      entityId: _deviceId,
      keys: 'temperature,humidity',
    );

ws.AttributesSubscriptionCmd buildAttributesSubscriptionCmd() =>
    ws.AttributesSubscriptionCmd(
      cmdId: 5,
      entityType: ws.EntityType.DEVICE,
      entityId: _deviceId,
      keys: 'active',
      scope: ws.AttributeScope.SHARED_SCOPE,
    );

/// Fixture name to the wrapper that must serialize to it.
Map<String, ws.TelemetryPluginCmdsWrapper Function()> commandFixtures() => {
  'entity_data_cmd': () => _wrap(buildEntityDataCmd()),
  'entity_count_cmd': () => _wrap(buildEntityCountCmd()),
  'alarm_data_cmd': () => _wrap(buildAlarmDataCmd()),
  'timeseries_subscription_cmd': () => _wrap(buildTimeseriesSubscriptionCmd()),
  'attributes_subscription_cmd': () => _wrap(buildAttributesSubscriptionCmd()),
};

void main() {
  group('WebSocket command JSON', () {
    commandFixtures().forEach((name, build) {
      test('command JSON matches fixture $name', () {
        expect(
          jsonDecode(jsonEncode(build().toJson())),
          jsonDecode(_fixture('$name.json')),
        );
      });
    });
  });

  group('WebSocket update JSON', () {
    test('update fixture entity_data_update parses', () {
      final msg = ws.parseWebsocketDataMessage(
        _fixture('entity_data_update.json'),
      );
      expect(msg, isA<ws.EntityDataUpdate>());
      final update = msg as ws.EntityDataUpdate;
      expect(update.cmdId, 1);
      expect(update.errorCode, 0);
      expect(update.data, isNull);
      expect(update.update, hasLength(1));
      final entity = update.update!.single;
      expect(entity.entityId, isA<ws.DeviceId>());
      expect(entity.entityId.id, _deviceId);
      final latest = entity.latest[ws.EntityKeyType.TIME_SERIES]!;
      expect(latest['temperature']!.value, '25');
      expect(latest['temperature']!.ts, 1767620189490);
      expect(entity.attribute('active'), 'false');
      expect(entity.field('name'), 'Device A');
      final series = entity.timeseries['temperature']!;
      expect(series, hasLength(3));
      expect(series.first.ts, 1767620189490);
      expect(series.first.value, '25');
    });

    test('update fixture alarm_data_update parses', () {
      final msg = ws.parseWebsocketDataMessage(
        _fixture('alarm_data_update.json'),
      );
      expect(msg, isA<ws.AlarmDataUpdate>());
      final update = msg as ws.AlarmDataUpdate;
      expect(update.cmdId, 2);
      expect(update.totalEntities, 78);
      expect(update.data!.data, hasLength(2));
      final alarm = update.data!.data.first;
      expect(alarm.severity, ws.AlarmSeverity.CRITICAL);
      expect(alarm.status, ws.AlarmStatus.ACTIVE_UNACK);
      expect(alarm.type, 'High Temperature');
      expect(alarm.entityId.id, _deviceId);
      expect(alarm.originatorName, 'Device A');
      expect(alarm.createdTime, 1764077526497);
      expect(
        alarm.latest[ws.EntityKeyType.ENTITY_FIELD]!['name']!.value,
        'Device A',
      );
    });

    test('update fixture subscription_update parses', () {
      final msg = ws.parseWebsocketDataMessage(
        _fixture('subscription_update.json'),
      );
      expect(msg, isA<ws.SubscriptionUpdate>());
      final update = msg as ws.SubscriptionUpdate;
      expect(update.subscriptionId, 4);
      expect(update.errorCode, 0);
      expect(update.data.keys, ['active']);
      expect(update.data['active']!.single.ts, 1767620790344);
      expect(update.data['active']!.single.value, 'false');
    });

    test('update fixture notifications_update parses', () {
      final msg = ws.parseWebsocketDataMessage(
        _fixture('notifications_update.json'),
      );
      expect(msg, isA<ws.NotificationsUpdate>());
      final update = msg as ws.NotificationsUpdate;
      expect(update.cmdId, 3);
      expect(update.totalUnreadCount, 234);
      expect(update.update, isNull);
      expect(update.notifications, hasLength(2));
      final notification = update.notifications!.first;
      expect(notification.subject, "Rule node 'Node 1' failed to start");
      expect(notification.status, ws.PushNotificationStatus.SENT);
      expect(
        notification.type,
        ws.PushNotificationType.RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT,
      );
    });
  });
}
