import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';
const username = 'tenant@thingsboard.org';
const password = 'tenant';

late ThingsboardClient tbClient;

void main() async {
  try {
    tbClient = ThingsboardClient(thingsBoardApiEndpoint,
        storage: InMemoryStorage(),
        onUserLoaded: onUserLoaded,
        onMfaAuth: onMfa,
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
  // print('ON LOAD STARTED!');
}

void onLoadFinished() {
  // print('ON LOAD FINISHED!');
}

void onMfa() async {
  print('ON MULTI-FACTOR AUTHENTICATION!');
  List<TwoFaProviderInfo> providers = await tbClient
      .getTwoFactorAuthService()
      .getAvailableLoginTwoFaProviders();
  print('Available providers: $providers');
  var defaultProvider =
      providers.firstWhereOrNull((provider) => provider.isDefault);
  if (defaultProvider != null) {
    print('Default provider: $defaultProvider');
    await tbClient
        .getTwoFactorAuthService()
        .requestTwoFaVerificationCode(defaultProvider.type);
    print('Verification code sent!');
    print('Enter MFA code:');
    var code = stdin.readLineSync(encoding: utf8);
    var mfaCode = code?.trim();
    print('Code entered: $mfaCode');
    await tbClient.checkTwoFaVerificationCode(defaultProvider.type, mfaCode!);
  } else {
    await tbClient.logout();
  }
}

bool loginExecuted = false;

Future<void> onUserLoaded() async {
  try {
    print('onUserLoaded: isAuthenticated=${tbClient.isAuthenticated()}');
    if (tbClient.isAuthenticated() && !tbClient.isPreVerificationToken()) {
      print('ThingsBoard Platform Version: ${tbClient.getPlatformVersion()}');
      print('authUser: ${tbClient.getAuthUser()}');
      User? currentUser;
      try {
        currentUser = await tbClient.getUserService().getUser();
      } catch (e) {
        await tbClient.logout();
      }
      print('currentUser: $currentUser');
      if (tbClient.isSystemAdmin()) {
        await fetchSettingsExample();
        await fetchPlatformTwoFactorAuthSettingsExample();
        await fetchTenantsExample();
        await fetchQueuesExample();
      } else if (tbClient.isTenantAdmin()) {
        await fetchAccountTwoFactorAuthSettingsExample();
        await fetchTenantSettingsExample();
        await fetchUsersExample();
        await fetchDeviceProfilesExample();
        await fetchDeviceProfileInfosExample();
        await fetchTenantAssetsExample();
        await fetchTenantDevicesExample();
        await fetchCustomersExample();
        await fetchDashboardParametersExample();
        await fetchTenantDashboardsExample();
        await fetchAlarmsExample();
        await countEntitiesExample();
        await queryEntitiesExample();
        await fetchAuditLogsExample();
        await fetchResourcesExample();
        await fetchOtaPackagesExample();
        await fetchQueuesExample();
        await vcExample();
      } else if (tbClient.isCustomerUser()) {
        await fetchAccountTwoFactorAuthSettingsExample();
        await fetchUsersExample();
        await fetchDeviceProfileInfosExample();
        await fetchCustomerAssetsExample();
        await fetchCustomerDevicesExample();
        await fetchCustomerDashboardsExample();
        await fetchAlarmsExample();
        await countEntitiesExample();
        await queryEntitiesExample();
      }
      await tbClient.logout(
          requestConfig:
              RequestConfig(ignoreLoading: true, ignoreErrors: true));
    } else {
      if (!loginExecuted) {
        loginExecuted = true;
        await tbClient.login(LoginRequest(username, password));
      }
    }
  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}

Future<void> getOAuth2ClientsExample() async {
  print(
      '**********************************************************************');
  print(
      '*               OAUTH2 CLIENTS INFO EXAMPLE                          *');
  print(
      '**********************************************************************');

  var clients = await tbClient.getOAuth2Service().getOAuth2Clients();
  print('OAuth2 clients: $clients');
}

Future<void> fetchSettingsExample() async {
  print(
      '**********************************************************************');
  print(
      '*                      FETCH SETTINGS EXAMPLE                         *');
  print(
      '**********************************************************************');

  var settings = await tbClient.getAdminService().getAdminSettings('general');
  print('General settings: ${settings?.generalSettings}');

  settings = await tbClient.getAdminService().getAdminSettings('mail');
  print('Email settings: ${settings?.mailServerSettings}');

  settings = await tbClient.getAdminService().getAdminSettings('sms');
  print('SMS settings: ${settings?.smsProviderConfiguration}');

  var securitySettings = await tbClient.getAdminService().getSecuritySettings();
  print('Security settings: $securitySettings');

  var updateMessage = await tbClient.getAdminService().checkUpdates();
  print('Updates: $updateMessage');

  print(
      '**********************************************************************');
}

Future<void> fetchPlatformTwoFactorAuthSettingsExample() async {
  print(
      '**********************************************************************');
  print(
      '*        FETCH PLATFORM TWO FACTOR AUTH SETTINGS EXAMPLE             *');
  print(
      '**********************************************************************');

  var settings =
      await tbClient.getTwoFactorAuthService().getPlatformTwoFaSettings();

  print('Platform Two Factor Authentication settings: $settings');
}

Future<void> fetchAccountTwoFactorAuthSettingsExample() async {
  print(
      '**********************************************************************');
  print(
      '*        FETCH ACCOUNT TWO FACTOR AUTH SETTINGS EXAMPLE             *');
  print(
      '**********************************************************************');

  var settings =
      await tbClient.getTwoFactorAuthService().getAccountTwoFaSettings();

  print('Account Two Factor Authentication settings: $settings');
}

Future<void> fetchTenantSettingsExample() async {
  print(
      '**********************************************************************');
  print(
      '*                      FETCH TENANT SETTINGS EXAMPLE                 *');
  print(
      '**********************************************************************');

  var repositorySettings =
      await tbClient.getAdminService().getRepositorySettings();
  print('Repository settings: $repositorySettings');

  var autoCommitSettings =
      await tbClient.getAdminService().getAutoCommitSettings();
  print('Auto-commit settings: $autoCommitSettings');

  print(
      '**********************************************************************');
}

Future<void> fetchTenantsExample() async {
  print(
      '**********************************************************************');
  print(
      '*                      FETCH TENANTS EXAMPLE                         *');
  print(
      '**********************************************************************');

  var pageLink = PageLink(10);
  PageData<TenantInfo> tenants;
  do {
    tenants = await tbClient.getTenantService().getTenantInfos(pageLink);
    print('tenants: $tenants');
    pageLink = pageLink.nextPageLink();
  } while (tenants.hasNext);
  print(
      '**********************************************************************');
}

Future<void> fetchDashboardParametersExample() async {
  print(
      '**********************************************************************');
  print(
      '*        FETCH DASHBOARD PARAMETERS EXAMPLE                           *');
  print(
      '**********************************************************************');

  var serverTime = await tbClient.getDashboardService().getServerTime();
  print('serverTime: $serverTime');
  var maxDatapointsLimit =
      await tbClient.getDashboardService().getMaxDatapointsLimit();
  print('maxDatapointsLimit: $maxDatapointsLimit');

  print(
      '**********************************************************************');
}

Future<void> fetchUsersExample() async {
  print(
      '**********************************************************************');
  print(
      '*                      FETCH USERS EXAMPLE                           *');
  print(
      '**********************************************************************');

  var pageLink = PageLink(10);
  PageData<User> users;
  do {
    users = await tbClient.getUserService().getUsers(pageLink);
    print('users: $users');
    pageLink = pageLink.nextPageLink();
  } while (users.hasNext);

  print(
      '**********************************************************************');
}

Future<void> fetchTenantAssetsExample() async {
  print(
      '**********************************************************************');
  print(
      '*                  FETCH TENANT ASSETS EXAMPLE                       *');
  print(
      '**********************************************************************');

  var pageLink = PageLink(10);
  PageData<AssetInfo> assets;
  do {
    assets = await tbClient.getAssetService().getTenantAssetInfos(pageLink);
    print('assets: $assets');
    pageLink = pageLink.nextPageLink();
  } while (assets.hasNext);
  print(
      '**********************************************************************');
}

Future<void> fetchTenantDevicesExample() async {
  print(
      '**********************************************************************');
  print(
      '*                 FETCH TENANT DEVICES EXAMPLE                        *');
  print(
      '**********************************************************************');

  var pageLink = PageLink(10);
  PageData<DeviceInfo> devices;
  do {
    devices = await tbClient.getDeviceService().getTenantDeviceInfos(pageLink);
    print('devices: $devices');
    pageLink = pageLink.nextPageLink();
  } while (devices.hasNext);
  print(
      '**********************************************************************');
}

Future<void> fetchDeviceProfilesExample() async {
  print(
      '**********************************************************************');
  print(
      '*                 FETCH DEVICE PROFILES EXAMPLE                      *');
  print(
      '**********************************************************************');

  var pageLink = PageLink(10);
  PageData<DeviceProfile> deviceProfiles;
  do {
    deviceProfiles =
        await tbClient.getDeviceProfileService().getDeviceProfiles(pageLink);
    print('deviceProfiles: $deviceProfiles');
    pageLink = pageLink.nextPageLink();
  } while (deviceProfiles.hasNext);

  print(
      '**********************************************************************');
}

Future<void> fetchDeviceProfileInfosExample() async {
  print(
      '**********************************************************************');
  print(
      '*                 FETCH DEVICE PROFILE INFOS EXAMPLE                 *');
  print(
      '**********************************************************************');

  var pageLink = PageLink(10);
  PageData<DeviceProfileInfo> deviceProfileInfos;
  do {
    deviceProfileInfos = await tbClient
        .getDeviceProfileService()
        .getDeviceProfileInfos(pageLink);
    print('deviceProfileInfos: $deviceProfileInfos');
    pageLink = pageLink.nextPageLink();
  } while (deviceProfileInfos.hasNext);

  print(
      '**********************************************************************');
}

Future<void> fetchCustomersExample() async {
  print(
      '**********************************************************************');
  print(
      '*                 FETCH CUSTOMERS EXAMPLE                            *');
  print(
      '**********************************************************************');

  var pageLink = PageLink(10);
  PageData<Customer> customers;
  do {
    customers = await tbClient.getCustomerService().getCustomers(pageLink);
    print('customers: $customers');
    pageLink = pageLink.nextPageLink();
  } while (customers.hasNext);
  print(
      '**********************************************************************');
}

Future<void> fetchTenantDashboardsExample() async {
  print(
      '**********************************************************************');
  print(
      '*                 FETCH TENANT DASHBOARDS EXAMPLE                    *');
  print(
      '**********************************************************************');

  var pageLink = PageLink(10);
  PageData<DashboardInfo> dashboards;
  do {
    dashboards =
        await tbClient.getDashboardService().getTenantDashboards(pageLink);
    print('dashboards: $dashboards');
    pageLink = pageLink.nextPageLink();
  } while (dashboards.hasNext);
  print(
      '**********************************************************************');
}

Future<void> fetchAlarmsExample() async {
  print(
      '**********************************************************************');
  print(
      '*                        FETCH ALARMS EXAMPLE                        *');
  print(
      '**********************************************************************');

  var alarmQuery = AlarmQuery(
      TimePageLink(10, 0, null, SortOrder('createdTime', Direction.DESC)),
      fetchOriginator: true);
  PageData<AlarmInfo> alarms;
  var total = 0;
  do {
    alarms = await tbClient.getAlarmService().getAllAlarms(alarmQuery);
    total += alarms.data.length;
    print('alarms: $alarms');
    alarmQuery.pageLink = alarmQuery.pageLink.nextPageLink();
  } while (alarms.hasNext && total <= 50);
  print(
      '**********************************************************************');
}

Future<void> countEntitiesExample() async {
  print(
      '**********************************************************************');
  print(
      '*                        COUNT ENTITIES EXAMPLE                      *');
  print(
      '**********************************************************************');

  var entityFilter = EntityTypeFilter(entityType: EntityType.DEVICE);
  var devicesQuery = EntityCountQuery(entityFilter: entityFilter);
  var totalDevicesCount =
      await tbClient.getEntityQueryService().countEntitiesByQuery(devicesQuery);
  print('Total devices: $totalDevicesCount');
  var activeDeviceKeyFilter = KeyFilter(
      key: EntityKey(type: EntityKeyType.ATTRIBUTE, key: 'active'),
      valueType: EntityKeyValueType.BOOLEAN,
      predicate: BooleanFilterPredicate(
          operation: BooleanOperation.EQUAL,
          value: FilterPredicateValue(true)));
  devicesQuery.keyFilters = [activeDeviceKeyFilter];
  var activeDevicesCount =
      await tbClient.getEntityQueryService().countEntitiesByQuery(devicesQuery);
  print('Active devices: $activeDevicesCount');
  var inactiveDeviceKeyFilter = KeyFilter(
      key: EntityKey(type: EntityKeyType.ATTRIBUTE, key: 'active'),
      valueType: EntityKeyValueType.BOOLEAN,
      predicate: BooleanFilterPredicate(
          operation: BooleanOperation.EQUAL,
          value: FilterPredicateValue(false)));
  devicesQuery.keyFilters = [inactiveDeviceKeyFilter];
  var inactiveDevicesCount =
      await tbClient.getEntityQueryService().countEntitiesByQuery(devicesQuery);
  print('Inactive devices: $inactiveDevicesCount');
  print(
      '**********************************************************************');
}

Future<void> queryEntitiesExample() async {
  print(
      '**********************************************************************');
  print(
      '*                        QUERY ENTITIES EXAMPLE                      *');
  print(
      '**********************************************************************');

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

  var devicesQuery = EntityDataQuery(
      entityFilter: entityFilter,
      keyFilters: [inactiveDeviceKeyFilter],
      entityFields: deviceFields,
      latestValues: deviceAttributes,
      pageLink: EntityDataPageLink(
          pageSize: 10,
          sortOrder: EntityDataSortOrder(
              key: EntityKey(
                  type: EntityKeyType.ENTITY_FIELD, key: 'createdTime'),
              direction: EntityDataSortOrderDirection.DESC)));
  PageData<EntityData> devices;
  do {
    devices = await tbClient
        .getEntityQueryService()
        .findEntityDataByQuery(devicesQuery);
    // print('Inactive devices entities data: $devices');
    print('Inactive devices entities data:');
    devices.data.forEach((device) {
      print(
          'id: ${device.entityId.id}, createdTime: ${device.createdTime}, name: ${device.field('name')!}, type: ${device.field('type')!}, active: ${device.attribute('active')}');
    });
    devicesQuery = devicesQuery.next();
  } while (devices.hasNext);
  print(
      '**********************************************************************');
}

Future<void> fetchAuditLogsExample() async {
  print(
      '**********************************************************************');
  print(
      '*                    FETCH AUDIT LOGS EXAMPLE                        *');
  print(
      '**********************************************************************');

  var pageLink =
      TimePageLink(10, 0, null, SortOrder('createdTime', Direction.DESC));
  PageData<AuditLog> auditLogs;
  var total = 0;
  do {
    auditLogs = await tbClient.getAuditLogService().getAuditLogs(pageLink);
    total += auditLogs.data.length;
    print('auditLogs: $auditLogs');
    pageLink = pageLink.nextPageLink();
  } while (auditLogs.hasNext && total <= 50);
  print(
      '**********************************************************************');
}

Future<void> fetchResourcesExample() async {
  print(
      '**********************************************************************');
  print(
      '*               FETCH RESOURCES EXAMPLE                              *');
  print(
      '**********************************************************************');

  var pageLink = PageLink(10);
  PageData<TbResourceInfo> resources;
  do {
    resources = await tbClient.getResourceService().getResources(pageLink);
    print('resources: $resources');
    pageLink = pageLink.nextPageLink();
  } while (resources.hasNext);

  if (resources.data.isNotEmpty) {
    var resource = resources.data[0];
    print('download resource with id: ${resource.id!.id}');
    var responseBody =
        await tbClient.getResourceService().downloadResource(resource.id!.id!);
    if (responseBody != null) {
      var headers = Headers.fromMap(responseBody.headers);
      var contentLength = headers[Headers.contentLengthHeader]?.first ?? '-1';
      var contentType = headers[Headers.contentTypeHeader]?.first ?? '';
      var contentDisposition = headers['content-disposition']?.first ?? '';
      print('download resource contentLength: $contentLength');
      print('download resource contentType: $contentType');
      print('download resource contentDisposition: $contentDisposition');
      var bytes = await responseBody.stream.toList();
      bytes.forEach((bytes) {
        var base64str = base64Encode(bytes);
        print('download resource chunk length: ${bytes.length}');
        print(
            'download resource chunk bytes: [${base64str.substring(0, min(30, base64str.length))}...]');
      });
    }
  }
  print(
      '**********************************************************************');
}

Future<void> fetchOtaPackagesExample() async {
  print(
      '**********************************************************************');
  print(
      '*               FETCH OTA PACKAGES EXAMPLE                           *');
  print(
      '**********************************************************************');

  var pageLink = PageLink(10);
  PageData<OtaPackageInfo> otaPackages;
  do {
    otaPackages =
        await tbClient.getOtaPackageService().getOtaPackages(pageLink);
    print('otaPackages: $otaPackages');
    pageLink = pageLink.nextPageLink();
  } while (otaPackages.hasNext);

  if (otaPackages.data.isNotEmpty) {
    var otaPackage = otaPackages.data[0];
    print('download ota package with id: ${otaPackage.id!.id}');
    var responseBody = await tbClient
        .getOtaPackageService()
        .downloadOtaPackage(otaPackage.id!.id!);
    if (responseBody != null) {
      var headers = Headers.fromMap(responseBody.headers);
      var contentLength = headers[Headers.contentLengthHeader]?.first ?? '-1';
      var contentType = headers[Headers.contentTypeHeader]?.first ?? '';
      var contentDisposition = headers['content-disposition']?.first ?? '';
      print('download ota package contentLength: $contentLength');
      print('download ota package contentType: $contentType');
      print('download ota package contentDisposition: $contentDisposition');
      var bytes = await responseBody.stream.toList();
      bytes.forEach((bytes) {
        var base64str = base64Encode(bytes);
        print('download ota package chunk length: ${bytes.length}');
        print(
            'download ota package chunk bytes: [${base64str.substring(0, min(30, base64str.length))}...]');
      });
    }
  }
  print(
      '**********************************************************************');
}

Future<void> fetchCustomerAssetsExample() async {
  print(
      '**********************************************************************');
  print(
      '*               FETCH CUSTOMER ASSETS EXAMPLE                        *');
  print(
      '**********************************************************************');

  var pageLink = PageLink(10);
  PageData<AssetInfo> assets;
  do {
    assets = await tbClient
        .getAssetService()
        .getCustomerAssetInfos(tbClient.getAuthUser()!.customerId!, pageLink);
    print('assets: $assets');
    pageLink = pageLink.nextPageLink();
  } while (assets.hasNext);
  print(
      '**********************************************************************');
}

Future<void> fetchCustomerDevicesExample() async {
  print(
      '**********************************************************************');
  print(
      '*               FETCH CUSTOMER DEVICES EXAMPLE                       *');
  print(
      '**********************************************************************');

  var pageLink = PageLink(10);
  PageData<DeviceInfo> devices;
  do {
    devices = await tbClient
        .getDeviceService()
        .getCustomerDeviceInfos(tbClient.getAuthUser()!.customerId!, pageLink);
    print('devices: $devices');
    pageLink = pageLink.nextPageLink();
  } while (devices.hasNext);
  print(
      '**********************************************************************');
}

Future<void> fetchCustomerDashboardsExample() async {
  print(
      '**********************************************************************');
  print(
      '*               FETCH CUSTOMER DASHBOARDS EXAMPLE                    *');
  print(
      '**********************************************************************');
  var pageLink = PageLink(10);
  PageData<DashboardInfo> dashboards;
  do {
    dashboards = await tbClient
        .getDashboardService()
        .getCustomerDashboards(tbClient.getAuthUser()!.customerId!, pageLink);
    print('dashboards: $dashboards');
    pageLink = pageLink.nextPageLink();
  } while (dashboards.hasNext);
  print(
      '**********************************************************************');
}

Future<void> fetchQueuesExample() async {
  print(
      '**********************************************************************');
  print(
      '*                  FETCH QUEUES EXAMPLE                              *');
  print(
      '**********************************************************************');

  for (ServiceType serviceType in ServiceType.values) {
    print('Fetching queues for ${serviceType.toShortString()} service type:');
    var pageLink = PageLink(10);
    PageData<Queue> queues;
    do {
      queues = await tbClient
          .getQueueService()
          .getTenantQueuesByServiceType(pageLink, serviceType);
      print('queues: $queues');
      pageLink = pageLink.nextPageLink();
    } while (queues.hasNext);
  }
  print(
      '**********************************************************************');
}

Future<void> vcExample() async {
  print(
      '**********************************************************************');
  print(
      '*                      VERSION CONTROL EXAMPLE                       *');
  print(
      '**********************************************************************');

  var repositorySettingsExists =
      await tbClient.getAdminService().repositorySettingsExists();
  print('Repository settings exists: $repositorySettingsExists');

  if (repositorySettingsExists) {
    var branches =
        await tbClient.getEntitiesVersionControlService().listBranches();
    print('branches: $branches');

    var defaultBranch = branches.firstWhereOrNull((branch) => branch.isDefault);
    print('defaultBranch: $defaultBranch');
    if (defaultBranch != null) {
      var pageLink = PageLink(10);
      PageData<EntityVersion> versions;
      do {
        versions = await tbClient
            .getEntitiesVersionControlService()
            .listVersions(pageLink, defaultBranch.name);
        print('versions: $versions');
        pageLink = pageLink.nextPageLink();
      } while (versions.hasNext);
    }
  }

  print(
      '**********************************************************************');
}
