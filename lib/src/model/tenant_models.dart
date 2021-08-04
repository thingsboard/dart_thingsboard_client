import 'base_data.dart';
import 'has_name.dart';
import 'has_tenant_id.dart';
import 'id/tenant_id.dart';
import 'contact_based_model.dart';
import 'id/tenant_profile_id.dart';

enum TenantProfileType { DEFAULT }

TenantProfileType tenantProfileTypeFromString(String value) {
  return TenantProfileType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension TenantProfileTypeToString on TenantProfileType {
  String toShortString() {
    return toString().split('.').last;
  }
}

abstract class TenantProfileConfiguration {
  TenantProfileConfiguration();

  TenantProfileType getType();

  factory TenantProfileConfiguration.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('type')) {
      var deviceProfileType = tenantProfileTypeFromString(json['type']);
      switch (deviceProfileType) {
        case TenantProfileType.DEFAULT:
          return DefaultTenantProfileConfiguration.fromJson(json);
      }
    } else {
      throw FormatException('Missing type!');
    }
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = getType().toShortString();
    return json;
  }
}

class DefaultTenantProfileConfiguration extends TenantProfileConfiguration {
  int maxDevices;
  int maxAssets;
  int maxCustomers;
  int maxUsers;
  int maxDashboards;
  int maxRuleChains;
  int maxResourcesInBytes;
  int maxOtaPackagesInBytes;

  String? transportTenantMsgRateLimit;
  String? transportTenantTelemetryMsgRateLimit;
  String? transportTenantTelemetryDataPointsRateLimit;
  String? transportDeviceMsgRateLimit;
  String? transportDeviceTelemetryMsgRateLimit;
  String? transportDeviceTelemetryDataPointsRateLimit;

  int maxTransportMessages;
  int maxTransportDataPoints;
  int maxREExecutions;
  int maxJSExecutions;
  int maxDPStorageDays;
  int maxRuleNodeExecutionsPerMessage;
  int maxEmails;
  int maxSms;
  int maxCreatedAlarms;

  int defaultStorageTtlDays;
  int alarmsTtlDays;

  DefaultTenantProfileConfiguration()
      : maxDevices = 0,
        maxAssets = 0,
        maxCustomers = 0,
        maxUsers = 0,
        maxDashboards = 0,
        maxRuleChains = 0,
        maxResourcesInBytes = 0,
        maxOtaPackagesInBytes = 0,
        maxTransportMessages = 0,
        maxTransportDataPoints = 0,
        maxREExecutions = 0,
        maxJSExecutions = 0,
        maxDPStorageDays = 0,
        maxRuleNodeExecutionsPerMessage = 0,
        maxEmails = 0,
        maxSms = 0,
        maxCreatedAlarms = 0,
        defaultStorageTtlDays = 0,
        alarmsTtlDays = 0;

  @override
  TenantProfileType getType() {
    return TenantProfileType.DEFAULT;
  }

  DefaultTenantProfileConfiguration.fromJson(Map<String, dynamic> json)
      : maxDevices = json['maxDevices'],
        maxAssets = json['maxAssets'],
        maxCustomers = json['maxCustomers'],
        maxUsers = json['maxUsers'],
        maxDashboards = json['maxDashboards'],
        maxRuleChains = json['maxRuleChains'],
        maxResourcesInBytes = json['maxResourcesInBytes'],
        maxOtaPackagesInBytes = json['maxOtaPackagesInBytes'],
        transportTenantMsgRateLimit = json['transportTenantMsgRateLimit'],
        transportTenantTelemetryMsgRateLimit =
            json['transportTenantTelemetryMsgRateLimit'],
        transportTenantTelemetryDataPointsRateLimit =
            json['transportTenantTelemetryDataPointsRateLimit'],
        transportDeviceMsgRateLimit = json['transportDeviceMsgRateLimit'],
        transportDeviceTelemetryMsgRateLimit =
            json['transportDeviceTelemetryMsgRateLimit'],
        transportDeviceTelemetryDataPointsRateLimit =
            json['transportDeviceTelemetryDataPointsRateLimit'],
        maxTransportMessages = json['maxTransportMessages'],
        maxTransportDataPoints = json['maxTransportDataPoints'],
        maxREExecutions = json['maxREExecutions'],
        maxJSExecutions = json['maxJSExecutions'],
        maxDPStorageDays = json['maxDPStorageDays'],
        maxRuleNodeExecutionsPerMessage =
            json['maxRuleNodeExecutionsPerMessage'],
        maxEmails = json['maxEmails'],
        maxSms = json['maxSms'],
        maxCreatedAlarms = json['maxCreatedAlarms'],
        defaultStorageTtlDays = json['defaultStorageTtlDays'],
        alarmsTtlDays = json['alarmsTtlDays'];

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['maxDevices'] = maxDevices;
    json['maxAssets'] = maxAssets;
    json['maxCustomers'] = maxCustomers;
    json['maxUsers'] = maxUsers;
    json['maxDashboards'] = maxDashboards;
    json['maxRuleChains'] = maxRuleChains;
    json['maxResourcesInBytes'] = maxResourcesInBytes;
    json['maxOtaPackagesInBytes'] = maxOtaPackagesInBytes;
    if (transportTenantMsgRateLimit != null) {
      json['transportTenantMsgRateLimit'] = transportTenantMsgRateLimit;
    }
    if (transportTenantTelemetryMsgRateLimit != null) {
      json['transportTenantTelemetryMsgRateLimit'] =
          transportTenantTelemetryMsgRateLimit;
    }
    if (transportTenantTelemetryDataPointsRateLimit != null) {
      json['transportTenantTelemetryDataPointsRateLimit'] =
          transportTenantTelemetryDataPointsRateLimit;
    }
    if (transportDeviceMsgRateLimit != null) {
      json['transportDeviceMsgRateLimit'] = transportDeviceMsgRateLimit;
    }
    if (transportDeviceTelemetryMsgRateLimit != null) {
      json['transportDeviceTelemetryMsgRateLimit'] =
          transportDeviceTelemetryMsgRateLimit;
    }
    if (transportDeviceTelemetryDataPointsRateLimit != null) {
      json['transportDeviceTelemetryDataPointsRateLimit'] =
          transportDeviceTelemetryDataPointsRateLimit;
    }

    json['maxTransportMessages'] = maxTransportMessages;
    json['maxTransportDataPoints'] = maxTransportDataPoints;
    json['maxREExecutions'] = maxREExecutions;
    json['maxJSExecutions'] = maxJSExecutions;
    json['maxDPStorageDays'] = maxDPStorageDays;
    json['maxRuleNodeExecutionsPerMessage'] = maxRuleNodeExecutionsPerMessage;
    json['maxEmails'] = maxEmails;
    json['maxSms'] = maxSms;
    json['maxCreatedAlarms'] = maxCreatedAlarms;
    json['defaultStorageTtlDays'] = defaultStorageTtlDays;
    json['alarmsTtlDays'] = alarmsTtlDays;
    return json;
  }

  @override
  String toString() {
    return 'DefaultTenantProfileConfiguration{maxDevices: $maxDevices, maxAssets: $maxAssets, maxCustomers: $maxCustomers, maxUsers: $maxUsers, '
        'maxDashboards: $maxDashboards, maxRuleChains: $maxRuleChains, maxResourcesInBytes: $maxResourcesInBytes, maxOtaPackagesInBytes: $maxOtaPackagesInBytes, '
        'transportTenantMsgRateLimit: $transportTenantMsgRateLimit, transportTenantTelemetryMsgRateLimit: $transportTenantTelemetryMsgRateLimit, '
        'transportTenantTelemetryDataPointsRateLimit: $transportTenantTelemetryDataPointsRateLimit, transportDeviceMsgRateLimit: $transportDeviceMsgRateLimit, '
        'transportDeviceTelemetryMsgRateLimit: $transportDeviceTelemetryMsgRateLimit, transportDeviceTelemetryDataPointsRateLimit: $transportDeviceTelemetryDataPointsRateLimit, '
        'maxTransportMessages: $maxTransportMessages, maxTransportDataPoints: $maxTransportDataPoints, maxREExecutions: $maxREExecutions, '
        'maxJSExecutions: $maxJSExecutions, maxDPStorageDays: $maxDPStorageDays, maxRuleNodeExecutionsPerMessage: $maxRuleNodeExecutionsPerMessage, '
        'maxEmails: $maxEmails, maxSms: $maxSms, maxCreatedAlarms: $maxCreatedAlarms, defaultStorageTtlDays: $defaultStorageTtlDays, alarmsTtlDays: $alarmsTtlDays}';
  }
}

class TenantProfileData {
  TenantProfileConfiguration configuration;

  TenantProfileData() : configuration = DefaultTenantProfileConfiguration();

  TenantProfileData.fromJson(Map<String, dynamic> json)
      : configuration =
            TenantProfileConfiguration.fromJson(json['configuration']);

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['configuration'] = configuration.toJson();
    return json;
  }

  @override
  String toString() {
    return 'TenantProfileData{configuration: $configuration}';
  }
}

class TenantProfile extends BaseData<TenantProfileId> with HasName {
  String name;
  String? description;
  bool? isDefault;
  bool? isolatedTbCore;
  bool? isolatedTbRuleEngine;
  TenantProfileData profileData;

  TenantProfile(this.name) : profileData = TenantProfileData();

  TenantProfile.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        description = json['description'],
        isDefault = json['default'],
        isolatedTbCore = json['isolatedTbCore'],
        isolatedTbRuleEngine = json['isolatedTbRuleEngine'],
        profileData = TenantProfileData.fromJson(json['profileData']),
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['name'] = name;
    if (isDefault != null) {
      json['default'] = isDefault;
    }
    if (isolatedTbCore != null) {
      json['isolatedTbCore'] = isolatedTbCore;
    }
    if (isolatedTbRuleEngine != null) {
      json['isolatedTbRuleEngine'] = isolatedTbRuleEngine;
    }
    json['profileData'] = profileData.toJson();
    return json;
  }

  @override
  String getName() {
    return name;
  }

  @override
  String toString() {
    return 'TenantProfile{${baseDataString('name: $name, description: $description, isDefault: $isDefault, isolatedTbCore: $isolatedTbCore, isolatedTbRuleEngine: $isolatedTbRuleEngine, profileData: $profileData')}}';
  }
}

class Tenant extends ContactBased<TenantId> with HasTenantId {
  String title;
  String? region;
  TenantProfileId? tenantProfileId;

  Tenant(this.title);

  Tenant.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        region = json['region'],
        tenantProfileId = json['tenantProfileId'] != null
            ? TenantProfileId.fromJson(json['tenantProfileId'])
            : null,
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['title'] = title;
    if (region != null) {
      json['region'] = region;
    }
    if (tenantProfileId != null) {
      json['tenantProfileId'] = tenantProfileId!.toJson();
    }
    return json;
  }

  @override
  String getName() {
    return title;
  }

  @override
  TenantId? getTenantId() {
    return id;
  }

  @override
  String toString() {
    return 'Tenant{${contactBasedString('title: $title, region: $region, '
        'tenantProfileId: $tenantProfileId')}}';
  }
}

class TenantInfo extends Tenant {
  String? tenantProfileName;

  TenantInfo.fromJson(Map<String, dynamic> json)
      : tenantProfileName = json['tenantProfileName'],
        super.fromJson(json);
}
