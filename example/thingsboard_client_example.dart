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
        await fetchTenantAssetsExample();
        await fetchTenantDevicesExample();
        await fetchCustomersExample();
        await fetchTenantDashboardsExample();
        // await deviceApiExample();
      } else if (tbClient.isCustomerUser()) {
        await fetchUsersExample();
        await fetchCustomerAssetsExample();
        await fetchCustomerDevicesExample();
        await fetchCustomerDashboardsExample();
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

Future<void> deviceApiExample() async {
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
}

Future<void> fetchTenantsExample() async {
  var pageLink = PageLink(10);
  PageData<TenantInfo> tenants;
  do {
    tenants = await tbClient.getTenantService().getTenantInfos(pageLink);
    print('tenants: $tenants');
    pageLink = pageLink.nextPageLink();
  } while(tenants.hasNext);
}

Future<void> fetchUsersExample() async {
  var pageLink = PageLink(10);
  PageData<User> users;
  do {
    users = await tbClient.getUserService().getUsers(pageLink);
    print('users: $users');
    pageLink = pageLink.nextPageLink();
  } while(users.hasNext);
}

Future<void> fetchTenantAssetsExample() async {
  var pageLink = PageLink(10);
  PageData<AssetInfo> assets;
  do {
    assets = await tbClient.getAssetService().getTenantAssetInfos(pageLink);
    print('assets: $assets');
    pageLink = pageLink.nextPageLink();
  } while(assets.hasNext);

}

Future<void> fetchTenantDevicesExample() async {
  var pageLink = PageLink(10);
  PageData<DeviceInfo> devices;
  do {
    devices = await tbClient.getDeviceService().getTenantDeviceInfos(pageLink);
    print('devices: $devices');
    pageLink = pageLink.nextPageLink();
  } while(devices.hasNext);
}

Future<void> fetchCustomersExample() async {
  var pageLink = PageLink(10);
  PageData<Customer> customers;
  do {
    customers = await tbClient.getCustomerService().getCustomers(pageLink);
    print('customers: $customers');
    pageLink = pageLink.nextPageLink();
  } while(customers.hasNext);
}

Future<void> fetchTenantDashboardsExample() async {
  var pageLink = PageLink(10);
  PageData<DashboardInfo> dashboards;
  do {
    dashboards = await tbClient.getDashboardService().getTenantDashboards(pageLink);
    print('dashboards: $dashboards');
    pageLink = pageLink.nextPageLink();
  } while(dashboards.hasNext);
}

Future<void> fetchCustomerAssetsExample() async {
  var pageLink = PageLink(10);
  PageData<AssetInfo> assets;
  do {
    assets = await tbClient.getAssetService().getCustomerAssetInfos(tbClient.getAuthUser()!.customerId, pageLink);
    print('assets: $assets');
    pageLink = pageLink.nextPageLink();
  } while(assets.hasNext);

}

Future<void> fetchCustomerDevicesExample() async {
  var pageLink = PageLink(10);
  PageData<DeviceInfo> devices;
  do {
    devices = await tbClient.getDeviceService().getCustomerDeviceInfos(tbClient.getAuthUser()!.customerId, pageLink);
    print('devices: $devices');
    pageLink = pageLink.nextPageLink();
  } while(devices.hasNext);
}

Future<void> fetchCustomerDashboardsExample() async {
  var pageLink = PageLink(10);
  PageData<DashboardInfo> dashboards;
  do {
    dashboards = await tbClient.getDashboardService().getCustomerDashboards(tbClient.getAuthUser()!.customerId, pageLink);
    print('dashboards: $dashboards');
    pageLink = pageLink.nextPageLink();
  } while(dashboards.hasNext);
}
