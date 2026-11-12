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

import 'package:built_collection/built_collection.dart';
import 'package:test/test.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

const _deviceId = '434deb10-c3cc-11f0-ba29-557ae2ab3d6a';
const _fixtureToken = 'JWT_TOKEN';

String _fixture(String name) =>
    File('test/fixtures/ws/$name').readAsStringSync();

/// [json] with the keys of every map sorted, so that two values encode to the
/// same string exactly when they are equal, including the numeric types
/// (`25` and `25.0` encode differently).
Object? canonical(Object? json) {
  if (json is Map) {
    final keys = json.keys.cast<String>().toList()..sort();
    return {for (final k in keys) k: canonical(json[k])};
  }
  if (json is List) return json.map(canonical).toList();
  return json;
}

String canonicalJson(Object? json) => jsonEncode(canonical(json));

EntityKey _key(EntityKeyType type, String key) => EntityKey(
  (b) => b
    ..type = type
    ..key = key,
);

AliasEntityId _device() => AliasEntityId(
  (b) => b
    ..entityType = 'DEVICE'
    ..id = _deviceId,
);

KeyFilter _temperatureAbove25() => KeyFilter(
  (b) => b
    ..key.replace(_key(EntityKeyType.TIME_SERIES, 'temperature'))
    ..valueType = EntityKeyValueType.NUMERIC
    ..predicate = NumericFilterPredicate(
      (p) => p
        ..operation = NumericOperation.GREATER
        ..value.defaultValue = 25,
    ),
);

TelemetryPluginCmdsWrapper _wrap(WebsocketCmd cmd) {
  final wrapper = TelemetryPluginCmdsWrapper()..setAuth(_fixtureToken);
  wrapper.cmds.add(cmd);
  return wrapper;
}

EntityDataCmd buildEntityDataCmd() => EntityDataCmd(
  cmdId: 1,
  query: EntityDataQuery(
    (b) => b
      ..entityFilter = SingleEntityFilter(
        (f) => f..singleEntity.replace(_device()),
      )
      ..pageLink.pageSize = 10
      ..pageLink.page = 0
      ..pageLink.dynamic_ = false
      ..pageLink.sortOrder.key.replace(
        _key(EntityKeyType.ENTITY_FIELD, 'createdTime'),
      )
      ..pageLink.sortOrder.direction = Direction.DESC
      ..entityFields.add(_key(EntityKeyType.ENTITY_FIELD, 'name'))
      ..latestValues.addAll([
        _key(EntityKeyType.TIME_SERIES, 'temperature'),
        _key(EntityKeyType.ATTRIBUTE, 'active'),
      ])
      ..keyFilters.add(_temperatureAbove25()),
  ),
  latestCmd: LatestValueCmd(
    keys: [
      _key(EntityKeyType.TIME_SERIES, 'temperature'),
      _key(EntityKeyType.ATTRIBUTE, 'active'),
    ],
  ),
  tsCmd: TimeSeriesCmd(
    keys: ['temperature', 'humidity'],
    startTs: 1767225600000,
    timeWindow: 86400000,
    interval: 60000,
    limit: 100,
    agg: Aggregation.AVG,
  ),
);

EntityCountCmd buildEntityCountCmd() => EntityCountCmd(
  cmdId: 2,
  query: EntityCountQuery(
    (b) => b
      ..entityFilter = EntityTypeFilter(
        (f) => f..entityType = EntityType.DEVICE,
      )
      ..keyFilters.add(_temperatureAbove25()),
  ),
);

AlarmDataCmd buildAlarmDataCmd() => AlarmDataCmd(
  cmdId: 3,
  query: AlarmDataQuery(
    (b) => b
      ..entityFilter = SingleEntityFilter(
        (f) => f..singleEntity.replace(_device()),
      )
      ..keyFilters = ListBuilder<KeyFilter>()
      ..pageLink.pageSize = 10
      ..pageLink.page = 0
      ..pageLink.dynamic_ = false
      ..pageLink.timeWindow = 86400000
      ..pageLink.statusList.addAll([
        AlarmSearchStatus.ACTIVE,
        AlarmSearchStatus.UNACK,
      ])
      ..pageLink.severityList.addAll([
        AlarmSeverity.CRITICAL,
        AlarmSeverity.MAJOR,
      ])
      ..pageLink.sortOrder.key.replace(
        _key(EntityKeyType.ALARM_FIELD, 'createdTime'),
      )
      ..pageLink.sortOrder.direction = Direction.DESC
      ..entityFields.add(_key(EntityKeyType.ENTITY_FIELD, 'name'))
      ..latestValues = ListBuilder<EntityKey>()
      ..alarmFields.addAll([
        _key(EntityKeyType.ALARM_FIELD, 'createdTime'),
        _key(EntityKeyType.ALARM_FIELD, 'type'),
        _key(EntityKeyType.ALARM_FIELD, 'severity'),
        _key(EntityKeyType.ALARM_FIELD, 'status'),
      ]),
  ),
);

TimeseriesSubscriptionCmd buildTimeseriesSubscriptionCmd() =>
    TimeseriesSubscriptionCmd(
      cmdId: 4,
      entityType: EntityType.DEVICE,
      entityId: _deviceId,
      keys: 'temperature,humidity',
    );

AttributesSubscriptionCmd buildAttributesSubscriptionCmd() =>
    AttributesSubscriptionCmd(
      cmdId: 5,
      entityType: EntityType.DEVICE,
      entityId: _deviceId,
      keys: 'active',
      scope: AttributeScope.SHARED_SCOPE,
    );

/// Fixture name to the wrapper that must serialize to it.
Map<String, TelemetryPluginCmdsWrapper Function()> commandFixtures() => {
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
          canonicalJson(jsonDecode(jsonEncode(build().toJson()))),
          canonicalJson(jsonDecode(_fixture('$name.json'))),
        );
      });
    });

    test('minimal queries are sent with the facade defaults', () {
      // The server fails an alarm subscription without latestValues, so the
      // facade fills in what it always sent where the query leaves it unset.
      final devices = EntityTypeFilter(
        (f) => f..entityType = EntityType.DEVICE,
      );
      final entityData = EntityDataCmd(
        cmdId: 1,
        query: EntityDataQuery(
          (b) => b
            ..entityFilter = devices
            ..pageLink.pageSize = 10,
        ),
      ).toJson()['query'];
      expect(
        canonicalJson(entityData),
        canonicalJson({
          'entityFilter': {'type': 'entityType', 'entityType': 'DEVICE'},
          'keyFilters': [],
          'pageLink': {'pageSize': 10, 'page': 0, 'dynamic': false},
          'entityFields': [],
          'latestValues': [],
        }),
      );

      final count = EntityCountCmd(
        cmdId: 2,
        query: EntityCountQuery((b) => b..entityFilter = devices),
      ).toJson()['query'];
      expect(
        canonicalJson(count),
        canonicalJson({
          'entityFilter': {'type': 'entityType', 'entityType': 'DEVICE'},
          'keyFilters': [],
        }),
      );

      final alarms = AlarmDataCmd(
        cmdId: 3,
        query: AlarmDataQuery(
          (b) => b
            ..entityFilter = devices
            ..pageLink.pageSize = 10
            ..pageLink.page = 2
            ..pageLink.dynamic_ = true,
        ),
      ).toJson()['query'];
      expect(
        canonicalJson(alarms),
        canonicalJson({
          'entityFilter': {'type': 'entityType', 'entityType': 'DEVICE'},
          'keyFilters': [],
          'pageLink': {'pageSize': 10, 'page': 2, 'dynamic': true},
          'entityFields': [],
          'latestValues': [],
        }),
      );
    });

    test('canonicalJson tells 25 from 25.0', () {
      expect(canonicalJson({'v': 25}), isNot(canonicalJson({'v': 25.0})));
    });
  });

  group('WebSocket update JSON', () {
    test('update fixture entity_data_update parses', () {
      final msg = parseWebsocketDataMessage(
        _fixture('entity_data_update.json'),
      );
      expect(msg, isA<EntityDataUpdate>());
      final update = msg as EntityDataUpdate;
      expect(update.cmdId, 1);
      expect(update.errorCode, 0);
      expect(update.data, isNull);
      expect(update.update, hasLength(1));
      final entity = update.update!.single;
      expect(entity.entityId, isA<DeviceId>());
      expect(entity.entityId!.entityType, EntityType.DEVICE);
      expect(entity.entityId!.id, _deviceId);
      expect(entity.readAttrs, isTrue);
      final latest = entity.latest!['TIME_SERIES']!;
      expect(latest['temperature']!.value, '25');
      expect(latest['temperature']!.ts, 1767620189490);
      expect(entity.latest!['ATTRIBUTE']!['active']!.value, 'false');
      expect(entity.latest!['ENTITY_FIELD']!['name']!.value, 'Device A');
      final series = entity.timeseries!['temperature']!;
      expect(series, hasLength(3));
      expect(series.first.ts, 1767620189490);
      expect(series.first.value, '25');
      expect(entity.aggLatest, isEmpty);
    });

    test('update fixture alarm_data_update parses', () {
      final msg = parseWebsocketDataMessage(_fixture('alarm_data_update.json'));
      expect(msg, isA<AlarmDataUpdate>());
      final update = msg as AlarmDataUpdate;
      expect(update.cmdId, 2);
      expect(update.allowedEntities, 10000);
      expect(update.totalEntities, 78);
      expect(update.update, isNull);
      expect(update.data!.totalElements, 2);
      expect(update.data!.data, hasLength(2));
      final alarm = update.data!.data!.first;
      expect(alarm.severity, AlarmSeverity.CRITICAL);
      expect(alarm.status, AlarmStatus.ACTIVE_UNACK);
      expect(alarm.type, 'High Temperature');
      expect(alarm.id, isA<AlarmId>());
      expect(alarm.entityId!.id, _deviceId);
      expect(alarm.originator, isA<DeviceId>());
      expect(alarm.originatorName, 'Device A');
      expect(alarm.createdTime, 1764077526497);
      expect(alarm.details!.asMap, isEmpty);
      expect(alarm.assignee, isNull);
      expect(alarm.assigneeId, isNull);
      expect(alarm.latest!['ENTITY_FIELD']!['name']!.value, 'Device A');
      expect(update.data!.data![1].status, AlarmStatus.CLEARED_UNACK);
    });

    test('alarm update with details and assignee parses', () {
      final json = jsonDecode(_fixture('alarm_data_update.json'));
      final alarm = (json['data']['data'] as List).first as Map;
      alarm['details'] = {'temperature': 42, 'note': 'hot'};
      alarm['assigneeId'] = {
        'entityType': 'USER',
        'id': 'be636b10-4e78-11ea-bb6b-edda131e03a7',
      };
      alarm['assignee'] = {
        'id': alarm['assigneeId'],
        'firstName': 'Ann',
        'lastName': 'Lee',
        'email': 'ann@example.com',
      };
      json['update'] = [alarm];
      json['data'] = null;
      final update =
          parseWebsocketDataMessage(jsonEncode(json)) as AlarmDataUpdate;
      expect(update.data, isNull);
      final parsed = update.update!.single;
      expect(parsed.details!.asMap, {'temperature': 42, 'note': 'hot'});
      expect(parsed.assignee!.email, 'ann@example.com');
      expect(parsed.assignee!.id, isA<UserId>());
      expect(parsed.assigneeId!.id, 'be636b10-4e78-11ea-bb6b-edda131e03a7');
    });

    test('entity data update with a data page parses', () {
      final json = jsonDecode(_fixture('entity_data_update.json'));
      json['data'] = {
        'data': json['update'],
        'totalPages': 1,
        'totalElements': 1,
        'hasNext': false,
      };
      json['update'] = null;
      final update =
          parseWebsocketDataMessage(jsonEncode(json)) as EntityDataUpdate;
      expect(update.update, isNull);
      expect(update.data!.totalElements, 1);
      expect(update.data!.hasNext, isFalse);
      expect(update.data!.data!.single.entityId!.id, _deviceId);
    });

    test('update fixture subscription_update parses', () {
      final msg = parseWebsocketDataMessage(
        _fixture('subscription_update.json'),
      );
      expect(msg, isA<SubscriptionUpdate>());
      final update = msg as SubscriptionUpdate;
      expect(update.subscriptionId, 4);
      expect(update.errorCode, 0);
      expect(update.data.keys, ['active']);
      expect(update.data['active']!.single.ts, 1767620790344);
      expect(update.data['active']!.single.value, 'false');
    });

    test('subscription error without data parses', () {
      // What the server sends when a subscription fails.
      final update =
          parseWebsocketDataMessage(
                jsonEncode({
                  'subscriptionId': 8,
                  'errorCode': 1,
                  'errorMsg': 'keys is null',
                  'data': null,
                  'latestValues': {},
                }),
              )
              as SubscriptionUpdate;
      expect(update.errorCode, 1);
      expect(update.errorMsg, 'keys is null');
      expect(update.data, isEmpty);
    });

    test('update fixture notifications_update parses', () {
      final msg = parseWebsocketDataMessage(
        _fixture('notifications_update.json'),
      );
      expect(msg, isA<NotificationsUpdate>());
      final update = msg as NotificationsUpdate;
      expect(update.cmdId, 3);
      expect(update.totalUnreadCount, 234);
      expect(update.update, isNull);
      expect(update.notifications, hasLength(2));
      final notification = update.notifications!.first;
      expect(notification, isA<Notification>());
      expect(notification.id, isA<NotificationId>());
      expect(notification.id!.id, '74c7b4d0-d859-11f1-b743-55278f64f06e');
      expect(notification.createdTime, 1793801414813);
      expect(notification.requestId, isA<NotificationRequestId>());
      expect(notification.recipientId, isA<UserId>());
      expect(notification.subject, "Rule node 'Node 1' failed to start");
      expect(notification.status, NotificationStatus.SENT);
      expect(
        notification.type,
        NotificationType.RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT,
      );
      expect(notification.deliveryMethod, NotificationDeliveryMethod.WEB);
      expect(
        notification.info!.type,
        'org.thingsboard.server.common.data.notification.info.'
        'RuleEngineComponentLifecycleEventNotificationInfo',
      );
      expect(notification.info!.stateEntityId, isA<RuleChainId>());
      expect(
        notification.info!.stateEntityId!.id,
        '9dc445b0-24d2-11eb-b5f6-1b90f7be014f',
      );
      expect(
        (notification.additionalConfig!.value as Map)['icon']['icon'],
        'warning',
      );
    });

    test('notification info decodes to its subtype', () {
      final json = jsonDecode(_fixture('notifications_update.json'));
      final notification = (json['notifications'] as List).first as Map;
      notification['type'] = 'ALARM';
      notification['info'] = {
        'type':
            'org.thingsboard.server.common.data.notification.info.'
            'AlarmNotificationInfo',
        'alarmId': '605ff674-ebb7-4c55-b167-7165126a1906',
        'alarmType': 'High Temperature',
        'alarmSeverity': 'CRITICAL',
        'alarmStatus': 'ACTIVE_UNACK',
        'acknowledged': false,
        'cleared': false,
        'alarmOriginator': {'entityType': 'DEVICE', 'id': _deviceId},
        'stateEntityId': null,
        'dashboardId': null,
      };
      json['update'] = notification;
      final update =
          parseWebsocketDataMessage(jsonEncode(json)) as NotificationsUpdate;
      expect(update.update!.type, NotificationType.ALARM);
      final alarm = update.update!.info;
      expect(alarm, isA<AlarmNotificationInfo>());
      alarm as AlarmNotificationInfo;
      expect(alarm.alarmSeverity, AlarmSeverity.CRITICAL);
      expect(alarm.alarmStatus, AlarmStatus.ACTIVE_UNACK);
      expect(alarm.alarmType, 'High Temperature');
      expect(alarm.alarmId, '605ff674-ebb7-4c55-b167-7165126a1906');
      expect(alarm.acknowledged, isFalse);
      expect(alarm.cleared, isFalse);
      expect(alarm.alarmOriginator, isA<DeviceId>());
      expect(alarm.stateEntityId, isNull);

      final lifecycle = update.notifications!.last.info;
      expect(
        lifecycle,
        isA<RuleEngineComponentLifecycleEventNotificationInfo>(),
      );
      lifecycle as RuleEngineComponentLifecycleEventNotificationInfo;
      expect(lifecycle.ruleChainName, 'Root Rule Chain');
      expect(lifecycle.eventType, ComponentLifecycleEvent.STARTED);
      expect(lifecycle.ruleChainId, isA<RuleChainId>());
      expect(lifecycle.componentName, 'Node 2');
      expect(lifecycle.error, 'Script error');
    });

    test(
      'unknown notification status and type decode to unknownDefaultOpenApi',
      () {
        final json = jsonDecode(_fixture('notifications_update.json'));
        final notification = (json['notifications'] as List).first as Map;
        notification['status'] = 'ARCHIVED';
        notification['type'] = 'SOME_FUTURE_TYPE';
        (notification['info'] as Map)['eventType'] = 'HIBERNATED';
        json['update'] = notification;
        final update =
            parseWebsocketDataMessage(jsonEncode(json)) as NotificationsUpdate;
        expect(update.update!.status, NotificationStatus.unknownDefaultOpenApi);
        expect(update.update!.type, NotificationType.unknownDefaultOpenApi);
        expect(
          (update.update!.info!
                  as RuleEngineComponentLifecycleEventNotificationInfo)
              .eventType,
          ComponentLifecycleEvent.unknownDefaultOpenApi,
        );
      },
    );

    test('an unknown NotificationInfo type does not drop the notification', () {
      const futureType =
          'org.thingsboard.server.common.data.notification.info.'
          'FutureNotificationInfo';
      final json = jsonDecode(_fixture('notifications_update.json'));
      final notification = (json['notifications'] as List).first as Map;
      notification['info'] = {
        'type': futureType,
        'futureField': 'x',
        'futureObject': {'a': 1},
        'stateEntityId': {'entityType': 'DEVICE', 'id': _deviceId},
      };
      json['update'] = notification;
      final update =
          parseWebsocketDataMessage(jsonEncode(json)) as NotificationsUpdate;
      expect(update.notifications, hasLength(2));
      final decoded = update.update!;
      expect(decoded.subject, "Rule node 'Node 1' failed to start");
      expect(
        decoded.text,
        "Rule chain 'Root Rule Chain' - start failure:<br/>Script error",
      );
      // The generated serializer falls back to the base NotificationInfo
      // ($NotificationInfo): its type and the common fields are kept, the
      // fields of the unknown subtype are dropped.
      final info = decoded.info!;
      expect(info, isA<$NotificationInfo>());
      expect(info.type, futureType);
      expect(info.stateEntityId, isA<DeviceId>());
    });
  });
}
