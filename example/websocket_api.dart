import 'dart:math';

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

    await tbClient.logout(requestConfig: RequestConfig(ignoreLoading: true, ignoreErrors: true));

  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}

Future<void> simpleAttributesSubscriptionExample() async {
  print('**********************************************************************');
  print('*                  SIMPLE ATTRIBUTES SUBSCRIPTION EXAMPLE            *');
  print('**********************************************************************');

  var deviceName = getRandomString(30);
  var device = Device(deviceName, 'default');
  device.additionalInfo = {'description': 'My test device!'};
  var savedDevice = await tbClient.getDeviceService().saveDevice(device);
  print('savedDevice: $savedDevice');
  var foundDevice = await tbClient.getDeviceService().getDeviceInfo(savedDevice.id!.id!);
  print('foundDevice: $foundDevice');

  var telemetryService = tbClient.getTelemetryService();
  var subscription = TelemetrySubscriber.createEntityAttributesSubscription(telemetryService: telemetryService,
      entityId: foundDevice!.id!,
      attributeScope: AttributeScope.SHARED_SCOPE.toShortString());

  subscription.attributeDataStream.listen((attributeUpdate) {
    print('Received device attributes: $attributeUpdate');
  });

  subscription.subscribe();

  var res = await tbClient.getAttributeService().saveEntityAttributesV2(foundDevice.id!, AttributeScope.SHARED_SCOPE.toShortString(), {
    'targetTemperature': 22.4,
    'targetHumidity': 57.8
  });
  print('Save attributes result: $res');
  res = await tbClient.getAttributeService().saveEntityAttributesV2(foundDevice.id!, AttributeScope.SHARED_SCOPE.toShortString(), {
    'targetTemperature': 30,
    'targetHumidity': 55.1
  });
  print('Save attributes result: $res');
  await Future.delayed(Duration(seconds: 1));
  subscription.unsubscribe();
  await tbClient.getDeviceService().deleteDevice(savedDevice.id!.id!);
  print('**********************************************************************');
}

Future<void> entityDataQuerySubscriptionExample() async {
  print('**********************************************************************');
  print('*                ENTITY DATA QUERY SUBSCRIPTION EXAMPLE              *');
  print('**********************************************************************');

  var deviceName = getRandomString(30);
  var device = Device(deviceName, 'default');
  device.additionalInfo = {'description': 'My test device!'};
  var savedDevice = await tbClient.getDeviceService().saveDevice(device);
  print('savedDevice: $savedDevice');
  var foundDevice = await tbClient.getDeviceService().getDeviceInfo(savedDevice.id!.id!);
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

  var devicesQuery = EntityDataQuery(entityFilter: entityFilter,
      entityFields: deviceFields, latestValues: deviceAttributes, pageLink: EntityDataPageLink(pageSize: 10,
          sortOrder: EntityDataSortOrder(key: EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'createdTime'),
              direction: EntityDataSortOrderDirection.DESC)));

  var latestCmd = LatestValueCmd(keys: deviceAttributes);

  var cmd = EntityDataCmd(query: devicesQuery, latestCmd: latestCmd);

  var telemetryService = tbClient.getTelemetryService();

  var subscription = TelemetrySubscriber(telemetryService, [cmd]);

  subscription.entityDataStream.listen((entityDataUpdate) {
    print('Received entity data update: $entityDataUpdate');
  });

  subscription.subscribe();

  var res = await tbClient.getAttributeService().saveEntityAttributesV2(foundDevice.id!, AttributeScope.SHARED_SCOPE.toShortString(), {
    'targetTemperature': 22.4,
    'targetHumidity': 57.8
  });
  print('Save attributes result: $res');

  await Future.delayed(Duration(seconds: 1));

  res = await tbClient.getAttributeService().saveEntityAttributesV2(foundDevice.id!, AttributeScope.SHARED_SCOPE.toShortString(), {
    'targetTemperature': 30,
    'targetHumidity': 55.1
  });
  print('Save attributes result: $res');
  await Future.delayed(Duration(seconds: 1));
  subscription.unsubscribe();
  await tbClient.getDeviceService().deleteDevice(savedDevice.id!.id!);
  print('**********************************************************************');
}

Future<void> entityDataQueryWithTimeseriesSubscriptionExample() async {
  print('**********************************************************************');
  print('*        ENTITY DATA QUERY WITH TIMESERIES SUBSCRIPTION EXAMPLE      *');
  print('**********************************************************************');


  var deviceName = getRandomString(30);
  var device = Device(deviceName, 'default');
  device.additionalInfo = {'description': 'My test device!'};
  var savedDevice = await tbClient.getDeviceService().saveDevice(device);
  print('savedDevice: $savedDevice');

  var entityFilter = EntityNameFilter(entityType: EntityType.DEVICE, entityNameFilter: deviceName);
  var deviceFields = <EntityKey>[
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'name'),
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'type'),
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'createdTime')
  ];
  var deviceTelemetry = <EntityKey>[
    EntityKey(type: EntityKeyType.TIME_SERIES, key: 'temperature'),
    EntityKey(type: EntityKeyType.TIME_SERIES, key: 'humidity')
  ];

  var devicesQuery = EntityDataQuery(entityFilter: entityFilter,
      entityFields: deviceFields, latestValues: deviceTelemetry, pageLink: EntityDataPageLink(pageSize: 10,
          sortOrder: EntityDataSortOrder(key: EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'createdTime'),
              direction: EntityDataSortOrderDirection.DESC)));

  var currentTime = DateTime.now().millisecondsSinceEpoch;
  var timeWindow = Duration(hours: 1).inMilliseconds;

  var tsCmd = TimeSeriesCmd(keys: ['temperature', 'humidity'], startTs: currentTime - timeWindow, timeWindow: timeWindow);

  var cmd = EntityDataCmd(query: devicesQuery, tsCmd: tsCmd);

  var telemetryService = tbClient.getTelemetryService();

  var subscription = TelemetrySubscriber(telemetryService, [cmd]);

  subscription.entityDataStream.listen((entityDataUpdate) {
    print('Received entity data update: $entityDataUpdate');
  });

  subscription.subscribe();

  var rng = Random();

  for (var i =0;i<5; i++) {
    await Future.delayed(Duration(seconds: 1));
    var temperature = 10 + 20 * rng.nextDouble();
    var humidity = 30 + 40 * rng.nextDouble();
    var telemetryRequest = {
      'temperature': temperature,
      'humidity': humidity
    };
    print('Save telemetry request: $telemetryRequest');
    var res = await tbClient.getAttributeService().saveEntityTelemetry(savedDevice.id!, 'TELEMETRY', telemetryRequest);
    print('Save telemetry result: $res');
  }

  await Future.delayed(Duration(seconds: 2));
  subscription.unsubscribe();

  await tbClient.getDeviceService().deleteDevice(savedDevice.id!.id!);
  print('**********************************************************************');
}
