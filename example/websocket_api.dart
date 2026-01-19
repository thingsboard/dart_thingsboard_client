import 'dart:math';

import 'package:thingsboard_client/src/model/query/entity_filter/entity_name_filter.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/single_entity_filter.dart';
import 'package:thingsboard_client/thingsboard_client.dart';
import 'example_utils.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';
const username = 'tenant@thingsboard.org';
const password = 'tenant';

late ThingsboardClient tbClient;

void main() async {
  try {
    tbClient = ThingsboardClient(thingsBoardApiEndpoint);

    await tbClient.login(LoginRequest(username, password));

    await simpleAttributesSubscriptionExample();
    await entityDataQuerySubscriptionExample();
    await entityDataQueryWithTimeseriesSubscriptionExample();
    await entityDataQueryWithAggHistory();
    await entityDataQueryWithAggTimeSeries();
    await entityAlarmDataQueryExample();
    await simpleNotificationCountSubscriptionExample();
    await simpleNotificationsSubscriptionExample();

    await tbClient.logout(
        requestConfig: RequestConfig(ignoreLoading: true, ignoreErrors: true));
  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}

Future<void> simpleAttributesSubscriptionExample() async {
  print(
      '**********************************************************************');
  print(
      '*                  SIMPLE ATTRIBUTES SUBSCRIPTION EXAMPLE            *');
  print(
      '**********************************************************************');

  var deviceName = getRandomString(30);
  var device = Device(deviceName, 'default');
  device.additionalInfo = {'description': 'My test device!'};
  var savedDevice = await tbClient.getDeviceService().saveDevice(device);
  print('savedDevice: $savedDevice');
  var foundDevice =
      await tbClient.getDeviceService().getDeviceInfo(savedDevice.id!.id!);
  print('foundDevice: $foundDevice');

  var telemetryService = tbClient.getTelemetryService();
  var subscription = TelemetrySubscriber.createEntityAttributesSubscription(
      telemetryService: telemetryService,
      entityId: foundDevice!.id!,
      attributeScope: AttributeScope.SHARED_SCOPE.toShortString());

  subscription.attributeDataStream.listen((attributeUpdate) {
    print('[WebSocket Data]: Received device attributes: $attributeUpdate');
  });

  subscription.subscribe();

  var res = await tbClient.getAttributeService().saveEntityAttributesV2(
      foundDevice.id!,
      AttributeScope.SHARED_SCOPE.toShortString(),
      {'targetTemperature': 22.4, 'targetHumidity': 57.8});
  print('Save attributes result: $res');
  res = await tbClient.getAttributeService().saveEntityAttributesV2(
      foundDevice.id!,
      AttributeScope.SHARED_SCOPE.toShortString(),
      {'targetTemperature': 30, 'targetHumidity': 55.1});
  print('Save attributes result: $res');
  await Future.delayed(Duration(seconds: 1));
  subscription.unsubscribe();
  await tbClient.getDeviceService().deleteDevice(savedDevice.id!.id!);
  print(
      '**********************************************************************');
}

Future<void> entityDataQuerySubscriptionExample() async {
  print(
      '**********************************************************************');
  print(
      '*                ENTITY DATA QUERY SUBSCRIPTION EXAMPLE              *');
  print(
      '**********************************************************************');

  var deviceName = getRandomString(30);
  var device = Device(deviceName, 'default');
  device.additionalInfo = {'description': 'My test device!'};
  var savedDevice = await tbClient.getDeviceService().saveDevice(device);
  print('savedDevice: $savedDevice');
  var foundDevice =
      await tbClient.getDeviceService().getDeviceInfo(savedDevice.id!.id!);
  print('foundDevice: $foundDevice');

  var entityFilter = SingleEntityFilter(singleEntity: foundDevice!.id!);
  var deviceFields = <EntityKey>[
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'name'),
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'type'),
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'createdTime')
  ];
  var deviceAttributes = <EntityKey>[
    EntityKey(type: EntityKeyType.ATTRIBUTE, key: 'targetTemperature'),
    EntityKey(type: EntityKeyType.ATTRIBUTE, key: 'targetHumidity')
  ];

  var devicesQuery = EntityDataQuery(
      entityFilter: entityFilter,
      entityFields: deviceFields,
      latestValues: deviceAttributes,
      pageLink: EntityDataPageLink(
          pageSize: 10,
          sortOrder: EntityDataSortOrder(
              key: EntityKey(
                  type: EntityKeyType.ENTITY_FIELD, key: 'createdTime'),
              direction: EntityDataSortOrderDirection.DESC)));

  var latestCmd = LatestValueCmd(keys: deviceAttributes);

  var cmd = EntityDataCmd(query: devicesQuery, latestCmd: latestCmd);

  var telemetryService = tbClient.getTelemetryService();

  var subscription = TelemetrySubscriber(telemetryService, [cmd]);

  subscription.entityDataStream.listen((entityDataUpdate) {
    print('[WebSocket Data]: Received entity data update: $entityDataUpdate');
  });

  subscription.subscribe();

  var res = await tbClient.getAttributeService().saveEntityAttributesV2(
      foundDevice.id!,
      AttributeScope.SHARED_SCOPE.toShortString(),
      {'targetTemperature': 22.4, 'targetHumidity': 57.8});
  print('Save attributes result: $res');

  await Future.delayed(Duration(seconds: 1));

  res = await tbClient.getAttributeService().saveEntityAttributesV2(
      foundDevice.id!,
      AttributeScope.SHARED_SCOPE.toShortString(),
      {'targetTemperature': 30, 'targetHumidity': 55.1});
  print('Save attributes result: $res');
  await Future.delayed(Duration(seconds: 1));
  subscription.unsubscribe();
  await tbClient.getDeviceService().deleteDevice(savedDevice.id!.id!);
  print(
      '**********************************************************************');
}

Future<void> entityDataQueryWithTimeseriesSubscriptionExample() async {
  print(
      '**********************************************************************');
  print(
      '*        ENTITY DATA QUERY WITH TIMESERIES SUBSCRIPTION EXAMPLE      *');
  print(
      '**********************************************************************');

  var deviceName = getRandomString(30);
  var device = Device(deviceName, 'default');
  device.additionalInfo = {'description': 'My test device!'};
  var savedDevice = await tbClient.getDeviceService().saveDevice(device);
  print('savedDevice: $savedDevice');

  var entityFilter = EntityNameFilter(
      entityType: EntityType.DEVICE, entityNameFilter: deviceName);
  var deviceFields = <EntityKey>[
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'name'),
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'type'),
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'createdTime')
  ];
  var deviceTelemetry = <EntityKey>[
    EntityKey(type: EntityKeyType.TIME_SERIES, key: 'temperature'),
    EntityKey(type: EntityKeyType.TIME_SERIES, key: 'humidity')
  ];

  var devicesQuery = EntityDataQuery(
      entityFilter: entityFilter,
      entityFields: deviceFields,
      latestValues: deviceTelemetry,
      pageLink: EntityDataPageLink(
          pageSize: 10,
          sortOrder: EntityDataSortOrder(
              key: EntityKey(
                  type: EntityKeyType.ENTITY_FIELD, key: 'createdTime'),
              direction: EntityDataSortOrderDirection.DESC)));

  var currentTime = DateTime.now().millisecondsSinceEpoch;
  var timeWindow = Duration(hours: 1).inMilliseconds;

  var tsCmd = TimeSeriesCmd(
      keys: ['temperature', 'humidity'],
      startTs: currentTime - timeWindow,
      timeWindow: timeWindow);

  var cmd = EntityDataCmd(query: devicesQuery, tsCmd: tsCmd);

  var telemetryService = tbClient.getTelemetryService();

  var subscription = TelemetrySubscriber(telemetryService, [cmd]);

  subscription.entityDataStream.listen((entityDataUpdate) {
    print('[WebSocket Data]: Received entity data update: $entityDataUpdate');
  });

  subscription.subscribe();

  var rng = Random();

  for (var i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    var temperature = 10 + 20 * rng.nextDouble();
    var humidity = 30 + 40 * rng.nextDouble();
    var telemetryRequest = {'temperature': temperature, 'humidity': humidity};
    print('Save telemetry request: $telemetryRequest');
    var res = await tbClient
        .getAttributeService()
        .saveEntityTelemetry(savedDevice.id!, 'TELEMETRY', telemetryRequest);
    print('Save telemetry result: $res');
  }

  await Future.delayed(Duration(seconds: 2));
  subscription.unsubscribe();

  await tbClient.getDeviceService().deleteDevice(savedDevice.id!.id!);
  print(
      '**********************************************************************');
}

Future<void> entityDataQueryWithAggHistory() async {
  print(
      '**********************************************************************');
  print(
      '*        ENTITY DATA QUERY WITH AGGREGATED HISTORY VALUE EXAMPLE     *');
  print(
      '**********************************************************************');

  var deviceName = getRandomString(30);
  var device = Device(deviceName, 'default');
  device.additionalInfo = {'description': 'My test device!'};
  var savedDevice = await tbClient.getDeviceService().saveDevice(device);
  print('savedDevice: $savedDevice');

  for (var i = 0; i < 5; i++) {
    var temperature = 10 + i;
    var humidity = 30 + i;
    var telemetryRequest = {'temperature': temperature, 'humidity': humidity};
    print('Save telemetry request: $telemetryRequest');
    var res = await tbClient
        .getAttributeService()
        .saveEntityTelemetry(savedDevice.id!, 'TELEMETRY', telemetryRequest);
    print('Save telemetry result: $res');
  }

  var entityFilter = EntityNameFilter(
      entityType: EntityType.DEVICE, entityNameFilter: deviceName);
  var deviceFields = <EntityKey>[
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'name'),
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'type'),
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'createdTime')
  ];

  var devicesQuery = EntityDataQuery(
      entityFilter: entityFilter,
      entityFields: deviceFields,
      pageLink: EntityDataPageLink(
          pageSize: 10,
          sortOrder: EntityDataSortOrder(
              key: EntityKey(
                  type: EntityKeyType.ENTITY_FIELD, key: 'createdTime'),
              direction: EntityDataSortOrderDirection.DESC)));

  var endTs = DateTime.now().millisecondsSinceEpoch;
  var startTs = endTs - Duration(minutes: 1).inMilliseconds;

  var aggKeys = <AggKey>[
    AggKey(id: 1, key: 'temperature', agg: Aggregation.SUM), // 60
    AggKey(id: 2, key: 'temperature', agg: Aggregation.COUNT), // 5
    AggKey(id: 3, key: 'humidity', agg: Aggregation.SUM), // 160
    AggKey(id: 4, key: 'humidity', agg: Aggregation.COUNT)
  ]; // 5

  var aggHistoryCmd =
      AggHistoryCmd(keys: aggKeys, startTs: startTs, endTs: endTs);

  var cmd = EntityDataCmd(query: devicesQuery, aggHistoryCmd: aggHistoryCmd);

  var telemetryService = tbClient.getTelemetryService();

  var subscription = TelemetrySubscriber(telemetryService, [cmd]);

  subscription.entityDataStream.listen((entityDataUpdate) {
    print('[WebSocket Data]: Received entity data update: $entityDataUpdate');
    var data = entityDataUpdate.data;
    if (data != null) {
      if (data.totalElements == 1) {
        var entityData = data.data[0];
        if (entityData.aggLatest.length == 4) {
          var sumTemperature = entityData.aggLatest[1];
          if (sumTemperature != null) {
            print('[WebSocket Data]: Temperature sum: ' +
                sumTemperature.current.value!);
          } else {
            print(
                '[ERROR]: no value for temperature sum agg key with id 1 is present!');
          }
          var countTemperature = entityData.aggLatest[2];
          if (countTemperature != null) {
            print('[WebSocket Data]: Temperature count: ' +
                countTemperature.current.value!);
          } else {
            print(
                '[ERROR]: no value for temperature count agg key with id 2 is present!');
          }
          var sumHumidity = entityData.aggLatest[3];
          if (sumHumidity != null) {
            print('[WebSocket Data]: Humidity sum: ' +
                sumHumidity.current.value!);
          } else {
            print(
                '[ERROR]: no value for humidity sum agg key with id 3 is present!');
          }
          var countHumidity = entityData.aggLatest[4];
          if (countHumidity != null) {
            print('[WebSocket Data]: Humidity count: ' +
                countHumidity.current.value!);
          } else {
            print(
                '[ERROR]: no value for humidity count agg key with id 4 is present!');
          }
        } else {
          print('[ERROR]: invalid agg latest map size: ' +
              entityData.aggLatest.length.toString());
        }
      } else {
        print('[ERROR]: invalid data length: ' + data.totalElements.toString());
      }
    } else {
      print('[ERROR]: data is null!');
    }
  });

  subscription.subscribe();

  await Future.delayed(Duration(seconds: 2));
  subscription.unsubscribe();

  await tbClient.getDeviceService().deleteDevice(savedDevice.id!.id!);
  print(
      '**********************************************************************');
}

Future<void> entityDataQueryWithAggTimeSeries() async {
  print(
      '********************************************************************************************************');
  print(
      '*        ENTITY DATA QUERY WITH AGGREGATED TIME-SERIES TIMEWINDOW AND SUBSCRIPTION UPDATES EXAMPLE     *');
  print(
      '********************************************************************************************************');

  var deviceName = getRandomString(30);
  var device = Device(deviceName, 'default');
  device.additionalInfo = {'description': 'My test device!'};
  var savedDevice = await tbClient.getDeviceService().saveDevice(device);
  print('savedDevice: $savedDevice');

  for (var i = 0; i < 5; i++) {
    var temperature = 10 + i;
    var humidity = 30 + i;
    var telemetryRequest = {'temperature': temperature, 'humidity': humidity};
    print('Save telemetry request: $telemetryRequest');
    var res = await tbClient
        .getAttributeService()
        .saveEntityTelemetry(savedDevice.id!, 'TELEMETRY', telemetryRequest);
    print('Save telemetry result: $res');
  }

  var entityFilter = EntityNameFilter(
      entityType: EntityType.DEVICE, entityNameFilter: deviceName);
  var deviceFields = <EntityKey>[
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'name'),
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'type'),
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'createdTime')
  ];

  var devicesQuery = EntityDataQuery(
      entityFilter: entityFilter,
      entityFields: deviceFields,
      pageLink: EntityDataPageLink(
          pageSize: 10,
          sortOrder: EntityDataSortOrder(
              key: EntityKey(
                  type: EntityKeyType.ENTITY_FIELD, key: 'createdTime'),
              direction: EntityDataSortOrderDirection.DESC)));

  var timeWindow = Duration(minutes: 1).inMilliseconds;
  var startTs = DateTime.now().millisecondsSinceEpoch - timeWindow;

  var aggKeys = <AggKey>[
    AggKey(id: 1, key: 'temperature', agg: Aggregation.SUM), // 60
    AggKey(id: 2, key: 'temperature', agg: Aggregation.COUNT), // 5
    AggKey(id: 3, key: 'humidity', agg: Aggregation.SUM), // 160
    AggKey(id: 4, key: 'humidity', agg: Aggregation.COUNT)
  ]; // 5

  var aggTimeSeriesCmd =
      AggTimeSeriesCmd(keys: aggKeys, startTs: startTs, timeWindow: timeWindow);

  var cmd = EntityDataCmd(query: devicesQuery, aggTsCmd: aggTimeSeriesCmd);

  var telemetryService = tbClient.getTelemetryService();

  var subscription = TelemetrySubscriber(telemetryService, [cmd]);

  subscription.entityDataStream.listen((entityDataUpdate) {
    print('[WebSocket Data]: Received entity data update: $entityDataUpdate');
    var data = entityDataUpdate.data;
    if (data != null) {
      if (data.totalElements == 1) {
        var entityData = data.data[0];
        if (entityData.aggLatest.length == 4) {
          var sumTemperature = entityData.aggLatest[1];
          if (sumTemperature != null) {
            print('[WebSocket Data]: Temperature sum: ' +
                sumTemperature.current.value!);
          } else {
            print(
                '[ERROR]: no value for temperature sum agg key with id 1 is present!');
          }
          var countTemperature = entityData.aggLatest[2];
          if (countTemperature != null) {
            print('[WebSocket Data]: Temperature count: ' +
                countTemperature.current.value!);
          } else {
            print(
                '[ERROR]: no value for temperature count agg key with id 2 is present!');
          }
          var sumHumidity = entityData.aggLatest[3];
          if (sumHumidity != null) {
            print('[WebSocket Data]: Humidity sum: ' +
                sumHumidity.current.value!);
          } else {
            print(
                '[ERROR]: no value for humidity sum agg key with id 3 is present!');
          }
          var countHumidity = entityData.aggLatest[4];
          if (countHumidity != null) {
            print('[WebSocket Data]: Humidity count: ' +
                countHumidity.current.value!);
          } else {
            print(
                '[ERROR]: no value for humidity count agg key with id 4 is present!');
          }
        } else {
          print('[ERROR]: invalid agg latest map size: ' +
              entityData.aggLatest.length.toString());
        }
      } else {
        print('[ERROR]: invalid data length: ' + data.totalElements.toString());
      }
    } else {
      var update = entityDataUpdate.update;
      if (update != null) {
        if (update.length == 1) {
          var entityData = update[0];
          var tsUpdate = entityData.latest[EntityKeyType.TIME_SERIES];
          if (tsUpdate != null) {
            var temperatureUpdate = tsUpdate['temperature'];
            if (temperatureUpdate != null) {
              print('[WebSocket Data]: Temperature update: ' +
                  temperatureUpdate.value!);
            } else {
              print(
                  '[ERROR]: no value for temperature key is present is update!');
            }
            var humidityUpdate = tsUpdate['humidity'];
            if (humidityUpdate != null) {
              print('[WebSocket Data]: Humidity update: ' +
                  humidityUpdate.value!);
            } else {
              print('[ERROR]: no value for humidity key is present is update!');
            }
          } else {
            print('[ERROR]: no time-series keys update is present!');
          }
        } else {
          print('[ERROR]: invalid update length: ' + update.length.toString());
        }
      } else {
        print('[ERROR]: received empty update!');
      }
    }
  });

  subscription.subscribe();

  for (var i = 0; i < 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    var temperature = 10 + i;
    var humidity = 30 + i;
    var telemetryRequest = {'temperature': temperature, 'humidity': humidity};
    print('Save telemetry request: $telemetryRequest');
    var res = await tbClient
        .getAttributeService()
        .saveEntityTelemetry(savedDevice.id!, 'TELEMETRY', telemetryRequest);
    print('Save telemetry result: $res');
  }

  await Future.delayed(Duration(seconds: 2));
  subscription.unsubscribe();

  await tbClient.getDeviceService().deleteDevice(savedDevice.id!.id!);
  print(
      '**********************************************************************');
}

Future<void> simpleNotificationCountSubscriptionExample() async {
  print(
      '**********************************************************************');
  print(
      '*              SIMPLE NOTIFICATION COUNT SUBSCRIPTION EXAMPLE        *');
  print(
      '**********************************************************************');

  var telemetryService = tbClient.getTelemetryService();
  var subscription = TelemetrySubscriber.createNotificationCountSubscription(
      telemetryService: telemetryService);

  subscription.notificationCountStream.listen((count) {
    print('[WebSocket Data]: Received notification: $count');
  });

  subscription.subscribe();

  await Future.delayed(Duration(seconds: 2));
  subscription.unsubscribe();
  print(
      '**********************************************************************');
}

Future<void> simpleNotificationsSubscriptionExample() async {
  print(
      '**********************************************************************');
  print(
      '*                 SIMPLE NOTIFICATIONS SUBSCRIPTION EXAMPLE          *');
  print(
      '**********************************************************************');

  var telemetryService = tbClient.getTelemetryService();
  var subscription = TelemetrySubscriber.createNotificationsSubscription(
      telemetryService: telemetryService, limit: 1);

  subscription.notificationStream.listen((notification) {
    print('[WebSocket Data]: Received notification: $notification');
  });

  subscription.subscribe();

  await Future.delayed(Duration(seconds: 2));
  subscription.unsubscribe();
  print(
      '**********************************************************************');
}

Future<void> entityAlarmDataQueryExample() async {
  print(
      '**********************************************************************');
  print(
      '*           ENTITY DATA QUERY WITH ALARM SUBSCRIPTION EXAMPLE        *');
  print(
      '**********************************************************************');

  var deviceName = getRandomString(30);
  var device = Device(deviceName, 'default');
  device.additionalInfo = {'description': 'My test device!'};
  var savedDevice = await tbClient.getDeviceService().saveDevice(device);
  print('savedDevice: $savedDevice');

  var entityFilter = EntityNameFilter(
      entityType: EntityType.DEVICE, entityNameFilter: deviceName);
  var alarmFields = <EntityKey>[
    EntityKey(type: EntityKeyType.ALARM_FIELD, key: 'createdTime'),
    EntityKey(type: EntityKeyType.ALARM_FIELD, key: 'originator'),
    EntityKey(type: EntityKeyType.ALARM_FIELD, key: 'type'),
    EntityKey(type: EntityKeyType.ALARM_FIELD, key: 'severity'),
    EntityKey(type: EntityKeyType.ALARM_FIELD, key: 'status'),
    EntityKey(type: EntityKeyType.ALARM_FIELD, key: 'assignee'),
  ];

  var alarmDataQuery = AlarmDataQuery(
      entityFilter: entityFilter,
      alarmFields: alarmFields,
      pageLink: AlarmDataPageLink(
          pageSize: 10,
          timeWindow: Duration(minutes: 1).inMilliseconds,
          sortOrder: EntityDataSortOrder(
              key: EntityKey(
                  type: EntityKeyType.ALARM_FIELD, key: 'createdTime'),
              direction: EntityDataSortOrderDirection.DESC)));

  var alarmCmd = AlarmDataCmd(query: alarmDataQuery);

  var telemetryService = tbClient.getTelemetryService();

  var subscription = TelemetrySubscriber(telemetryService, [alarmCmd]);

  subscription.alarmDataStream.listen((entityDataUpdate) {
    print('[WebSocket Data]: Received entity data update: $entityDataUpdate');
  });

  subscription.subscribe();

  await Future.delayed(Duration(seconds: 1));

  var alarm =
      Alarm(savedDevice.id as EntityId, 'My test alarm', AlarmSeverity.WARNING);

  print('Saved alarm request: $alarm');

  await tbClient.getAlarmService().saveAlarm(alarm);

  await Future.delayed(Duration(seconds: 2));
  subscription.unsubscribe();

  await tbClient.getDeviceService().deleteDevice(savedDevice.id!.id!);
  print(
      '**********************************************************************');
}
