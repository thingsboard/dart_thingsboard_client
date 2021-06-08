import 'package:thingsboard_client/thingsboard_client.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';
const localStorageFileName =  'tb_client_storage.json';
const username = 'tenant@thingsboard.org';
const password = 'tenant';

late ThingsboardClient tbClient;

void main() async {
  try {
    tbClient = ThingsboardClient(thingsBoardApiEndpoint,
                                 storage: LocalFileStorage(localStorageFileName),
                                 onUserLoaded: onUserLoaded,
                                 onError: onError,
                                 onLoadStarted: onLoadStarted,
                                 onLoadFinished: onLoadFinished);
    await tbClient.init();
  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}

void onError(ThingsboardError error) {
  print('onError: error=$error');
}

void onLoadStarted() {
  print('ON LOAD STARTED!');
}

void onLoadFinished() {
  print('ON LOAD FINISHED!');
}

bool loginExecuted = false;

Future<void> onUserLoaded() async {
  try {
    print('onUserLoaded: isAuthenticated=${tbClient.isAuthenticated()}');
    if (tbClient.isAuthenticated()) {
      print('authUser: ${tbClient.getAuthUser()}');
      User? currentUser;
      try {
        currentUser = await tbClient.getUserService().getUser(
            tbClient.getAuthUser()!.userId!);
      } catch(e) {
        await tbClient.logout();
      }
      print('currentUser: $currentUser');
      if (tbClient.isSystemAdmin()) {
        await fetchTenantsExample();
      } else if (tbClient.isTenantAdmin()) {
        await fetchUsersExample();
        await fetchDeviceProfilesExample();
        await fetchDeviceProfileInfosExample();
        await fetchTenantAssetsExample();
        await fetchTenantDevicesExample();
        await fetchCustomersExample();
        await fetchTenantDashboardsExample();
        await fetchAlarmsExample();
        await countEntitiesExample();
        await queryEntitiesExample();
        // await deviceApiExample();
      } else if (tbClient.isCustomerUser()) {
        await fetchUsersExample();
        await fetchDeviceProfileInfosExample();
        await fetchCustomerAssetsExample();
        await fetchCustomerDevicesExample();
        await fetchCustomerDashboardsExample();
        await fetchAlarmsExample();
        await countEntitiesExample();
        await queryEntitiesExample();
      }
      await tbClient.logout(requestConfig: RequestConfig(ignoreLoading: true, ignoreErrors: true));
    } else {
      if (!loginExecuted) {
        loginExecuted = true;
        await tbClient.login(
            LoginRequest(username, password));
      }
    }
  }
  catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}

Future<void> getOAuth2ClientsExample() async {
  print('**********************************************************************');
  print('*               OAUTH2 CLIENTS INFO EXAMPLE                          *');
  print('**********************************************************************');

  var clients = await tbClient.getOAuth2Service().getOAuth2Clients();
  print('OAuth2 clients: $clients');

}

Future<void> deviceApiExample() async {
  print('**********************************************************************');
  print('*                        DEVICE API EXAMPLE                          *');
  print('**********************************************************************');

  var device = Device('My test device', 'default');
  device.additionalInfo = {'description': 'My test device!'};
  var savedDevice = await tbClient.getDeviceService().saveDevice(device);
  print('savedDevice: $savedDevice');
  var foundDevice = await tbClient.getDeviceService().getDeviceInfo(savedDevice.id!.id!);
  print('foundDevice: $foundDevice');
  await tbClient.getDeviceService().deleteDevice(savedDevice.id!.id!);
  try {
    await tbClient.getDeviceService().getDeviceInfo(savedDevice.id!.id!, requestConfig: RequestConfig(ignoreErrors: true));
  } on ThingsboardError catch (e) {
    if (e.errorCode == ThingsBoardErrorCode.itemNotFound) {
      print('Success! Device not found!');
    } else {
      print('Failure!');
    }
  }
  print('**********************************************************************');
}

Future<void> fetchTenantsExample() async {

  print('**********************************************************************');
  print('*                      FETCH TENANTS EXAMPLE                         *');
  print('**********************************************************************');


  var pageLink = PageLink(10);
  PageData<TenantInfo> tenants;
  do {
    tenants = await tbClient.getTenantService().getTenantInfos(pageLink);
    print('tenants: $tenants');
    pageLink = pageLink.nextPageLink();
  } while(tenants.hasNext);
  print('**********************************************************************');
}

Future<void> fetchUsersExample() async {

  print('**********************************************************************');
  print('*                      FETCH USERS EXAMPLE                           *');
  print('**********************************************************************');

  var pageLink = PageLink(10);
  PageData<User> users;
  do {
    users = await tbClient.getUserService().getUsers(pageLink);
    print('users: $users');
    pageLink = pageLink.nextPageLink();
  } while(users.hasNext);

  print('**********************************************************************');
}

Future<void> fetchTenantAssetsExample() async {

  print('**********************************************************************');
  print('*                  FETCH TENANT ASSETS EXAMPLE                       *');
  print('**********************************************************************');

  var pageLink = PageLink(10);
  PageData<AssetInfo> assets;
  do {
    assets = await tbClient.getAssetService().getTenantAssetInfos(pageLink);
    print('assets: $assets');
    pageLink = pageLink.nextPageLink();
  } while(assets.hasNext);
  print('**********************************************************************');
}

Future<void> fetchTenantDevicesExample() async {

  print('**********************************************************************');
  print('*                 FETCH TENANT DEVICES EXAMPLE                        *');
  print('**********************************************************************');

  var pageLink = PageLink(10);
  PageData<DeviceInfo> devices;
  do {
    devices = await tbClient.getDeviceService().getTenantDeviceInfos(pageLink);
    print('devices: $devices');
    pageLink = pageLink.nextPageLink();
  } while(devices.hasNext);
  print('**********************************************************************');
}

Future<void> fetchDeviceProfilesExample() async {
  print('**********************************************************************');
  print('*                 FETCH DEVICE PROFILES EXAMPLE                      *');
  print('**********************************************************************');

  var pageLink = PageLink(10);
  PageData<DeviceProfile> deviceProfiles;
  do {
    deviceProfiles = await tbClient.getDeviceProfileService().getDeviceProfiles(pageLink);
    print('deviceProfiles: $deviceProfiles');
    pageLink = pageLink.nextPageLink();
  } while(deviceProfiles.hasNext);

  print('**********************************************************************');
}

Future<void> fetchDeviceProfileInfosExample() async {

  print('**********************************************************************');
  print('*                 FETCH DEVICE PROFILE INFOS EXAMPLE                 *');
  print('**********************************************************************');

  var pageLink = PageLink(10);
  PageData<DeviceProfileInfo> deviceProfileInfos;
  do {
    deviceProfileInfos = await tbClient.getDeviceProfileService().getDeviceProfileInfos(pageLink);
    print('deviceProfileInfos: $deviceProfileInfos');
    pageLink = pageLink.nextPageLink();
  } while(deviceProfileInfos.hasNext);

  print('**********************************************************************');
}

Future<void> fetchCustomersExample() async {

  print('**********************************************************************');
  print('*                 FETCH CUSTOMERS EXAMPLE                            *');
  print('**********************************************************************');

  var pageLink = PageLink(10);
  PageData<Customer> customers;
  do {
    customers = await tbClient.getCustomerService().getCustomers(pageLink);
    print('customers: $customers');
    pageLink = pageLink.nextPageLink();
  } while(customers.hasNext);
  print('**********************************************************************');
}

Future<void> fetchTenantDashboardsExample() async {
  print('**********************************************************************');
  print('*                 FETCH TENANT DASHBOARDS EXAMPLE                    *');
  print('**********************************************************************');

  var pageLink = PageLink(10);
  PageData<DashboardInfo> dashboards;
  do {
    dashboards = await tbClient.getDashboardService().getTenantDashboards(pageLink);
    print('dashboards: $dashboards');
    pageLink = pageLink.nextPageLink();
  } while(dashboards.hasNext);
  print('**********************************************************************');
}

Future<void> fetchAlarmsExample() async {
  print('**********************************************************************');
  print('*                        FETCH ALARMS EXAMPLE                        *');
  print('**********************************************************************');

  var alarmQuery = AlarmQuery(TimePageLink(10, 0, null, SortOrder('createdTime', Direction.DESC)), fetchOriginator: true);
  PageData<AlarmInfo> alarms;
  var total = 0;
  do {
    alarms = await tbClient.getAlarmService().getAllAlarms(alarmQuery);
    total += alarms.data.length;
    print('alarms: $alarms');
    alarmQuery.pageLink = alarmQuery.pageLink.nextPageLink();
  } while(alarms.hasNext && total <= 50);
  print('**********************************************************************');
}

Future<void> countEntitiesExample() async {
  print('**********************************************************************');
  print('*                        COUNT ENTITIES EXAMPLE                      *');
  print('**********************************************************************');

  var entityFilter = EntityTypeFilter(entityType: EntityType.DEVICE);
  var devicesQuery = EntityCountQuery(entityFilter: entityFilter);
  var totalDevicesCount = await tbClient.getEntityQueryService().countEntitiesByQuery(devicesQuery);
  print('Total devices: $totalDevicesCount');
  var activeDeviceKeyFilter = KeyFilter(
      key: EntityKey(type: EntityKeyType.ATTRIBUTE, key: 'active'),
      valueType: EntityKeyValueType.BOOLEAN,
      predicate: BooleanFilterPredicate(
          operation: BooleanOperation.EQUAL,
          value: FilterPredicateValue(true)));
  devicesQuery.keyFilters = [activeDeviceKeyFilter];
  var activeDevicesCount = await tbClient.getEntityQueryService().countEntitiesByQuery(devicesQuery);
  print('Active devices: $activeDevicesCount');
  var inactiveDeviceKeyFilter = KeyFilter(
      key: EntityKey(type: EntityKeyType.ATTRIBUTE, key: 'active'),
      valueType: EntityKeyValueType.BOOLEAN,
      predicate: BooleanFilterPredicate(
          operation: BooleanOperation.EQUAL,
          value: FilterPredicateValue(false)));
  devicesQuery.keyFilters = [inactiveDeviceKeyFilter];
  var inactiveDevicesCount = await tbClient.getEntityQueryService().countEntitiesByQuery(devicesQuery);
  print('Inactive devices: $inactiveDevicesCount');
  print('**********************************************************************');
}

Future<void> queryEntitiesExample() async {
  print('**********************************************************************');
  print('*                        QUERY ENTITIES EXAMPLE                      *');
  print('**********************************************************************');

  var entityFilter = EntityTypeFilter(entityType: EntityType.DEVICE);
  var inactiveDeviceKeyFilter = KeyFilter(
      key: EntityKey(type: EntityKeyType.ATTRIBUTE, key: 'active'),
      valueType: EntityKeyValueType.BOOLEAN,
      predicate: BooleanFilterPredicate(
          operation: BooleanOperation.EQUAL,
          value: FilterPredicateValue(false)));
  var deviceFields = <EntityKey>[
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'name'),
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'type'),
    EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'createdTime')
  ];
  var deviceAttributes = <EntityKey>[
    EntityKey(type: EntityKeyType.ATTRIBUTE, key: 'active')
  ];

  var devicesQuery = EntityDataQuery(entityFilter: entityFilter, keyFilters: [inactiveDeviceKeyFilter],
      entityFields: deviceFields, latestValues: deviceAttributes, pageLink: EntityDataPageLink(pageSize: 10,
          sortOrder: EntityDataSortOrder(key: EntityKey(type: EntityKeyType.ENTITY_FIELD, key: 'createdTime'),
              direction: EntityDataSortOrderDirection.DESC)));
  PageData<EntityData> devices;
  do {
    devices = await tbClient.getEntityQueryService().findEntityDataByQuery(devicesQuery);
    // print('Inactive devices entities data: $devices');
    print('Inactive devices entities data:');
    devices.data.forEach((device) {
      print('id: ${device.entityId.id}, createdTime: ${device.createdTime}, name: ${device.field('name')!}, type: ${device.field('type')!}, active: ${device.attribute('active')}');
    });
    devicesQuery = devicesQuery.next();
  } while (devices.hasNext);
  print('**********************************************************************');
}

Future<void> fetchCustomerAssetsExample() async {
  print('**********************************************************************');
  print('*               FETCH CUSTOMER ASSETS EXAMPLE                        *');
  print('**********************************************************************');

  var pageLink = PageLink(10);
  PageData<AssetInfo> assets;
  do {
    assets = await tbClient.getAssetService().getCustomerAssetInfos(tbClient.getAuthUser()!.customerId, pageLink);
    print('assets: $assets');
    pageLink = pageLink.nextPageLink();
  } while(assets.hasNext);
  print('**********************************************************************');
}

Future<void> fetchCustomerDevicesExample() async {
  print('**********************************************************************');
  print('*               FETCH CUSTOMER DEVICES EXAMPLE                       *');
  print('**********************************************************************');

  var pageLink = PageLink(10);
  PageData<DeviceInfo> devices;
  do {
    devices = await tbClient.getDeviceService().getCustomerDeviceInfos(tbClient.getAuthUser()!.customerId, pageLink);
    print('devices: $devices');
    pageLink = pageLink.nextPageLink();
  } while(devices.hasNext);
  print('**********************************************************************');
}

Future<void> fetchCustomerDashboardsExample() async {
  print('**********************************************************************');
  print('*               FETCH CUSTOMER DASHBOARDS EXAMPLE                    *');
  print('**********************************************************************');
  var pageLink = PageLink(10);
  PageData<DashboardInfo> dashboards;
  do {
    dashboards = await tbClient.getDashboardService().getCustomerDashboards(tbClient.getAuthUser()!.customerId, pageLink);
    print('dashboards: $dashboards');
    pageLink = pageLink.nextPageLink();
  } while(dashboards.hasNext);
  print('**********************************************************************');
}
