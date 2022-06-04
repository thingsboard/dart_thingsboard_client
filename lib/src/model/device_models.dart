import 'dart:math';

import 'package:thingsboard_client/thingsboard_client.dart';

import 'relation_models.dart';
import 'id/device_credentials_id.dart';
import 'entity_models.dart';
import 'id/entity_id.dart';
import 'has_ota_package.dart';
import 'id/dashboard_id.dart';
import 'id/device_profile_id.dart';
import 'id/ota_package_id.dart';
import 'additional_info_based.dart';
import 'base_data.dart';
import 'has_name.dart';
import 'has_customer_id.dart';
import 'has_tenant_id.dart';
import 'id/customer_id.dart';
import 'id/device_id.dart';
import 'id/rule_chain_id.dart';
import 'id/tenant_id.dart';

enum DeviceProfileType { DEFAULT }

DeviceProfileType deviceProfileTypeFromString(String value) {
  return DeviceProfileType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension DeviceProfileTypeToString on DeviceProfileType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum DeviceTransportType { DEFAULT, MQTT, COAP, LWM2M, SNMP }

DeviceTransportType deviceTransportTypeFromString(String value) {
  return DeviceTransportType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension DeviceTransportTypeToString on DeviceTransportType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum TransportPayloadType { JSON, PROTOBUF }

TransportPayloadType transportPayloadTypeFromString(String value) {
  return TransportPayloadType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension TransportPayloadTypeToString on TransportPayloadType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum CoapTransportDeviceType { DEFAULT, EFENTO }

CoapTransportDeviceType coapTransportDeviceTypeFromString(String value) {
  return CoapTransportDeviceType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension CoapTransportDeviceTypeToString on CoapTransportDeviceType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum DeviceProfileProvisionType {
  DISABLED,
  ALLOW_CREATE_NEW_DEVICES,
  CHECK_PRE_PROVISIONED_DEVICES
}

DeviceProfileProvisionType deviceProfileProvisionTypeFromString(String value) {
  return DeviceProfileProvisionType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension DeviceProfileProvisionTypeToString on DeviceProfileProvisionType {
  String toShortString() {
    return toString().split('.').last;
  }
}

abstract class DeviceProfileConfiguration {
  DeviceProfileConfiguration();

  DeviceProfileType getType();

  factory DeviceProfileConfiguration.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('type')) {
      var deviceProfileType = deviceProfileTypeFromString(json['type']);
      switch (deviceProfileType) {
        case DeviceProfileType.DEFAULT:
          return DefaultDeviceProfileConfiguration.fromJson(json);
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

class DefaultDeviceProfileConfiguration extends DeviceProfileConfiguration {
  DefaultDeviceProfileConfiguration();

  @override
  DeviceProfileType getType() {
    return DeviceProfileType.DEFAULT;
  }

  DefaultDeviceProfileConfiguration.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() => super.toJson();

  @override
  String toString() {
    return 'DefaultDeviceProfileConfiguration{}';
  }
}

abstract class DeviceProfileTransportConfiguration {
  DeviceProfileTransportConfiguration();

  DeviceTransportType getType();

  factory DeviceProfileTransportConfiguration.fromJson(
      Map<String, dynamic> json) {
    if (json.containsKey('type')) {
      var deviceProfileType = deviceTransportTypeFromString(json['type']);
      switch (deviceProfileType) {
        case DeviceTransportType.DEFAULT:
          return DefaultDeviceProfileTransportConfiguration.fromJson(json);
        case DeviceTransportType.MQTT:
          return MqttDeviceProfileTransportConfiguration.fromJson(json);
        case DeviceTransportType.COAP:
          return CoapDeviceProfileTransportConfiguration.fromJson(json);
        case DeviceTransportType.LWM2M:
          return Lwm2mDeviceProfileTransportConfiguration.fromJson(json);
        case DeviceTransportType.SNMP:
          return SnmpDeviceProfileTransportConfiguration.fromJson(json);
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

class DefaultDeviceProfileTransportConfiguration
    extends DeviceProfileTransportConfiguration {
  DefaultDeviceProfileTransportConfiguration();

  @override
  DeviceTransportType getType() {
    return DeviceTransportType.DEFAULT;
  }

  DefaultDeviceProfileTransportConfiguration.fromJson(
      Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() => super.toJson();

  @override
  String toString() {
    return 'DefaultDeviceProfileTransportConfiguration{}';
  }
}

class MqttDeviceProfileTransportConfiguration
    extends DeviceProfileTransportConfiguration {
  Map<String, dynamic> properties;

  MqttDeviceProfileTransportConfiguration() : properties = {};

  @override
  DeviceTransportType getType() {
    return DeviceTransportType.MQTT;
  }

  MqttDeviceProfileTransportConfiguration.fromJson(Map<String, dynamic> json)
      : properties = json;

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...properties,
      };

  @override
  String toString() {
    return 'MqttDeviceProfileTransportConfiguration{properties: $properties}';
  }
}

class CoapDeviceProfileTransportConfiguration
    extends DeviceProfileTransportConfiguration {
  Map<String, dynamic> properties;

  CoapDeviceProfileTransportConfiguration() : properties = {};

  @override
  DeviceTransportType getType() {
    return DeviceTransportType.MQTT;
  }

  CoapDeviceProfileTransportConfiguration.fromJson(Map<String, dynamic> json)
      : properties = json;

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...properties,
      };

  @override
  String toString() {
    return 'CoapDeviceProfileTransportConfiguration{properties: $properties}';
  }
}

class Lwm2mDeviceProfileTransportConfiguration
    extends DeviceProfileTransportConfiguration {
  Map<String, dynamic> properties;

  Lwm2mDeviceProfileTransportConfiguration() : properties = {};

  @override
  DeviceTransportType getType() {
    return DeviceTransportType.MQTT;
  }

  Lwm2mDeviceProfileTransportConfiguration.fromJson(Map<String, dynamic> json)
      : properties = json;

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...properties,
      };

  @override
  String toString() {
    return 'Lwm2mDeviceProfileTransportConfiguration{properties: $properties}';
  }
}

class SnmpDeviceProfileTransportConfiguration
    extends DeviceProfileTransportConfiguration {
  Map<String, dynamic> properties;

  SnmpDeviceProfileTransportConfiguration() : properties = {};

  @override
  DeviceTransportType getType() {
    return DeviceTransportType.MQTT;
  }

  SnmpDeviceProfileTransportConfiguration.fromJson(Map<String, dynamic> json)
      : properties = json;

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...properties,
      };

  @override
  String toString() {
    return 'SnmpDeviceProfileTransportConfiguration{properties: $properties}';
  }
}

class DeviceProvisionConfiguration {
  DeviceProfileProvisionType type;
  String? provisionDeviceSecret;

  DeviceProvisionConfiguration(this.type);

  DeviceProvisionConfiguration.fromJson(Map<String, dynamic> json)
      : type = deviceProfileProvisionTypeFromString(json['type']),
        provisionDeviceSecret = json['provisionDeviceSecret'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = type.toShortString();
    if (provisionDeviceSecret != null) {
      json['provisionDeviceSecret'] = provisionDeviceSecret;
    }
    return json;
  }

  @override
  String toString() {
    return 'DeviceProvisionConfiguration{type: $type, provisionDeviceSecret: $provisionDeviceSecret}';
  }
}

class DeviceProfileAlarm {
  Map<String, dynamic> properties;

  DeviceProfileAlarm() : properties = {};

  DeviceProfileAlarm.fromJson(Map<String, dynamic> json) : properties = json;

  Map<String, dynamic> toJson() => properties;

  @override
  String toString() {
    return 'DeviceProfileAlarm{properties: $properties}';
  }
}

class DeviceProfileData {
  DeviceProfileConfiguration configuration;
  DeviceProfileTransportConfiguration transportConfiguration;
  List<DeviceProfileAlarm>? alarms;
  DeviceProvisionConfiguration? provisionConfiguration;

  DeviceProfileData()
      : configuration = DefaultDeviceProfileConfiguration(),
        transportConfiguration = DefaultDeviceProfileTransportConfiguration();

  DeviceProfileData.fromJson(Map<String, dynamic> json)
      : configuration =
            DeviceProfileConfiguration.fromJson(json['configuration']),
        transportConfiguration = DeviceProfileTransportConfiguration.fromJson(
            json['transportConfiguration']),
        alarms = json['alarms'] != null
            ? (json['alarms'] as List)
                .map((e) => DeviceProfileAlarm.fromJson(e))
                .toList()
            : null,
        provisionConfiguration = json['provisionConfiguration'] != null
            ? DeviceProvisionConfiguration.fromJson(
                json['provisionConfiguration'])
            : null;

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['configuration'] = configuration.toJson();
    json['transportConfiguration'] = transportConfiguration.toJson();
    if (alarms != null) {
      json['alarms'] = alarms!.map((e) => e.toJson()).toList();
    }
    if (provisionConfiguration != null) {
      json['provisionConfiguration'] = provisionConfiguration!.toJson();
    }
    return json;
  }

  @override
  String toString() {
    return 'DeviceProfileData{configuration: $configuration, transportConfiguration: $transportConfiguration, alarms: $alarms, provisionConfiguration: $provisionConfiguration}';
  }
}

class DeviceProfile extends BaseData<DeviceProfileId>
    with HasName, HasTenantId, HasOtaPackage {
  TenantId? tenantId;
  String name;
  String? description;
  bool? isDefault;
  DeviceProfileType type;
  String? image;
  DeviceTransportType transportType;
  DeviceProfileProvisionType provisionType;
  String? provisionDeviceKey;
  RuleChainId? defaultRuleChainId;
  DashboardId? defaultDashboardId;
  String? defaultQueueName;
  OtaPackageId? firmwareId;
  OtaPackageId? softwareId;
  DeviceProfileData profileData;

  DeviceProfile(this.name)
      : type = DeviceProfileType.DEFAULT,
        transportType = DeviceTransportType.DEFAULT,
        provisionType = DeviceProfileProvisionType.DISABLED,
        profileData = DeviceProfileData();

  DeviceProfile.fromJson(Map<String, dynamic> json)
      : tenantId = TenantId.fromJson(json['tenantId']),
        name = json['name'],
        description = json['description'],
        isDefault = json['default'],
        type = deviceProfileTypeFromString(json['type']),
        image = json['image'],
        transportType = deviceTransportTypeFromString(json['transportType']),
        provisionType =
            deviceProfileProvisionTypeFromString(json['provisionType']),
        provisionDeviceKey = json['provisionDeviceKey'],
        defaultRuleChainId = json['defaultRuleChainId'] != null
            ? RuleChainId.fromJson(json['defaultRuleChainId'])
            : null,
        defaultDashboardId = json['defaultDashboardId'] != null
            ? DashboardId.fromJson(json['defaultDashboardId'])
            : null,
        defaultQueueName = json['defaultQueueName'],
        firmwareId = json['firmwareId'] != null
            ? OtaPackageId.fromJson(json['firmwareId'])
            : null,
        softwareId = json['softwareId'] != null
            ? OtaPackageId.fromJson(json['softwareId'])
            : null,
        profileData = DeviceProfileData.fromJson(json['profileData']),
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (tenantId != null) {
      json['tenantId'] = tenantId!.toJson();
    }
    json['name'] = name;
    if (description != null) {
      json['description'] = description;
    }
    if (isDefault != null) {
      json['default'] = isDefault;
    }
    json['type'] = type.toShortString();
    if (image != null) {
      json['image'] = image;
    }
    json['transportType'] = transportType.toShortString();
    json['provisionType'] = provisionType.toShortString();
    if (provisionDeviceKey != null) {
      json['provisionDeviceKey'] = provisionDeviceKey;
    }
    if (defaultRuleChainId != null) {
      json['defaultRuleChainId'] = defaultRuleChainId!.toJson();
    }
    if (defaultDashboardId != null) {
      json['defaultDashboardId'] = defaultDashboardId!.toJson();
    }
    if (defaultQueueName != null) {
      json['defaultQueueName'] = defaultQueueName;
    }
    if (firmwareId != null) {
      json['firmwareId'] = firmwareId!.toJson();
    }
    if (softwareId != null) {
      json['softwareId'] = softwareId!.toJson();
    }
    json['profileData'] = profileData.toJson();
    return json;
  }

  @override
  String getName() {
    return name;
  }

  @override
  TenantId? getTenantId() {
    return tenantId;
  }

  @override
  OtaPackageId? getFirmwareId() {
    return firmwareId;
  }

  @override
  OtaPackageId? getSoftwareId() {
    return softwareId;
  }

  @override
  String toString() {
    return 'DeviceProfile{${baseDataString('tenantId: $tenantId, name: $name, description: $description, '
        'isDefault: $isDefault, type: $type, image: ${image != null ? '[' + image!.substring(0, min(30, image!.length)) + '...]' : 'null'}, transportType: $transportType, provisionType: $provisionType, '
        'provisionDeviceKey: $provisionDeviceKey, defaultRuleChainId: $defaultRuleChainId, defaultDashboardId: $defaultDashboardId, defaultQueueName: $defaultQueueName, '
        'firmwareId: $firmwareId, softwareId: $softwareId, profileData: $profileData')}}';
  }
}

class DeviceProfileInfo extends EntityInfo {
  DeviceProfileType type;
  DeviceTransportType transportType;
  DashboardId? defaultDashboardId;
  String? image;

  DeviceProfileInfo(EntityId id, String name, this.image,
      this.defaultDashboardId, this.type, this.transportType)
      : super(id, name);

  DeviceProfileInfo.fromJson(Map<String, dynamic> json)
      : type = deviceProfileTypeFromString(json['type']),
        transportType = deviceTransportTypeFromString(json['transportType']),
        defaultDashboardId = json['defaultDashboardId'] != null
            ? DashboardId.fromJson(json['defaultDashboardId'])
            : null,
        image = json['image'],
        super.fromJson(json);

  @override
  String toString() {
    return 'DeviceProfileInfo{${entityInfoString('type: $type, transportType: $transportType, defaultDashboardId: $defaultDashboardId, '
        'image: ${image != null ? '[' + image!.substring(0, min(30, image!.length)) + '...]' : 'null'}')}}';
  }
}

abstract class DeviceConfiguration {
  DeviceConfiguration();

  DeviceProfileType getType();

  factory DeviceConfiguration.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('type')) {
      var deviceProfileType = deviceProfileTypeFromString(json['type']);
      switch (deviceProfileType) {
        case DeviceProfileType.DEFAULT:
          return DefaultDeviceConfiguration.fromJson(json);
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

class DefaultDeviceConfiguration extends DeviceConfiguration {
  DefaultDeviceConfiguration();

  @override
  DeviceProfileType getType() {
    return DeviceProfileType.DEFAULT;
  }

  DefaultDeviceConfiguration.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() => super.toJson();

  @override
  String toString() {
    return 'DefaultDeviceConfiguration{}';
  }
}

abstract class DeviceTransportConfiguration {
  DeviceTransportConfiguration();

  DeviceTransportType getType();

  factory DeviceTransportConfiguration.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('type')) {
      var deviceTransportType = deviceTransportTypeFromString(json['type']);
      switch (deviceTransportType) {
        case DeviceTransportType.DEFAULT:
          return DefaultDeviceTransportConfiguration.fromJson(json);
        case DeviceTransportType.MQTT:
          return MqttDeviceTransportConfiguration.fromJson(json);
        case DeviceTransportType.COAP:
          return CoapDeviceTransportConfiguration.fromJson(json);
        case DeviceTransportType.LWM2M:
          return Lwm2mDeviceTransportConfiguration.fromJson(json);
        case DeviceTransportType.SNMP:
          return SnmpDeviceTransportConfiguration.fromJson(json);
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

class DefaultDeviceTransportConfiguration extends DeviceTransportConfiguration {
  DefaultDeviceTransportConfiguration();

  @override
  DeviceTransportType getType() {
    return DeviceTransportType.DEFAULT;
  }

  DefaultDeviceTransportConfiguration.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() => super.toJson();

  @override
  String toString() {
    return 'DefaultDeviceTransportConfiguration{}';
  }
}

class MqttDeviceTransportConfiguration extends DeviceTransportConfiguration {
  Map<String, dynamic> properties;

  MqttDeviceTransportConfiguration() : properties = {};

  @override
  DeviceTransportType getType() {
    return DeviceTransportType.MQTT;
  }

  MqttDeviceTransportConfiguration.fromJson(Map<String, dynamic> json)
      : properties = json;

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...properties,
      };

  @override
  String toString() {
    return 'MqttDeviceTransportConfiguration{properties: $properties}';
  }
}

class CoapDeviceTransportConfiguration extends DeviceTransportConfiguration {
  Map<String, dynamic> properties;

  CoapDeviceTransportConfiguration() : properties = {};

  @override
  DeviceTransportType getType() {
    return DeviceTransportType.COAP;
  }

  CoapDeviceTransportConfiguration.fromJson(Map<String, dynamic> json)
      : properties = json;

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...properties,
      };

  @override
  String toString() {
    return 'CoapDeviceTransportConfiguration{properties: $properties}';
  }
}

class Lwm2mDeviceTransportConfiguration extends DeviceTransportConfiguration {
  Map<String, dynamic> properties;

  Lwm2mDeviceTransportConfiguration() : properties = {};

  @override
  DeviceTransportType getType() {
    return DeviceTransportType.LWM2M;
  }

  Lwm2mDeviceTransportConfiguration.fromJson(Map<String, dynamic> json)
      : properties = json;

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...properties,
      };

  @override
  String toString() {
    return 'Lwm2mDeviceTransportConfiguration{properties: $properties}';
  }
}

class SnmpDeviceTransportConfiguration extends DeviceTransportConfiguration {
  Map<String, dynamic> properties;

  SnmpDeviceTransportConfiguration() : properties = {};

  @override
  DeviceTransportType getType() {
    return DeviceTransportType.SNMP;
  }

  SnmpDeviceTransportConfiguration.fromJson(Map<String, dynamic> json)
      : properties = json;

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        ...properties,
      };

  @override
  String toString() {
    return 'SnmpDeviceTransportConfiguration{properties: $properties}';
  }
}

class DeviceData {
  DeviceConfiguration configuration;
  DeviceTransportConfiguration transportConfiguration;

  DeviceData()
      : configuration = DefaultDeviceConfiguration(),
        transportConfiguration = DefaultDeviceTransportConfiguration();

  DeviceData.fromJson(Map<String, dynamic> json)
      : configuration = DeviceConfiguration.fromJson(json['configuration']),
        transportConfiguration = DeviceTransportConfiguration.fromJson(
            json['transportConfiguration']);

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['configuration'] = configuration.toJson();
    json['transportConfiguration'] = transportConfiguration.toJson();
    return json;
  }

  @override
  String toString() {
    return 'DeviceData{configuration: $configuration, transportConfiguration: $transportConfiguration}';
  }
}

class Device extends AdditionalInfoBased<DeviceId>
    with HasName, HasTenantId, HasCustomerId, HasOtaPackage {
  TenantId? tenantId;
  CustomerId? customerId;
  String name;
  String type;
  String? label;
  DeviceProfileId? deviceProfileId;
  OtaPackageId? firmwareId;
  OtaPackageId? softwareId;
  DeviceData deviceData;
  List<AttributeKvEntry>? attributeList;

  bool get online {
    if (attributeList?.any((element) =>
        element.getKey() == 'active' && element.getBooleanValue() == true) == true) {
      return true;
    }
    try {
      var lastConnectTime = attributeList?.firstWhere((element) =>
      element.getKey() == 'lastConnectTime').getLongValue();
      var lastDisconnectTime = attributeList?.firstWhere((element) =>
      element.getKey() == 'lastDisconnectTime').getLongValue();
      if (lastConnectTime != null && lastDisconnectTime != null &&
          lastConnectTime > lastDisconnectTime) {
        return true;
      }
    } catch (e) {
      return false;
    }
    return false;
  }

  Device(this.name, this.type) : deviceData = DeviceData();

  Device.fromJson(Map<String, dynamic> json)
      : tenantId = TenantId.fromJson(json['tenantId']),
        customerId = json['customerId'] != null
            ? CustomerId.fromJson(json['customerId'])
            : null,
        name = json['name'],
        type = json['type'],
        label = json['label'],
        deviceProfileId = DeviceProfileId.fromJson(json['deviceProfileId']),
        firmwareId = json['firmwareId'] != null
            ? OtaPackageId.fromJson(json['firmwareId'])
            : null,
        softwareId = json['softwareId'] != null
            ? OtaPackageId.fromJson(json['softwareId'])
            : null,
        deviceData = DeviceData.fromJson(json['deviceData']),
        attributeList = json['attributeList'] != null
            ? RestJsonConverter.toAttributes(json['attributeList'])
            : null,
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (tenantId != null) {
      json['tenantId'] = tenantId!.toJson();
    }
    if (customerId != null) {
      json['customerId'] = customerId!.toJson();
    }
    json['name'] = name;
    json['type'] = type;
    if (label != null) {
      json['label'] = label;
    }
    if (deviceProfileId != null) {
      json['deviceProfileId'] = deviceProfileId!.toJson();
    }
    if (firmwareId != null) {
      json['firmwareId'] = firmwareId!.toJson();
    }
    if (softwareId != null) {
      json['softwareId'] = softwareId!.toJson();
    }
    json['deviceData'] = deviceData.toJson();
    return json;
  }

  @override
  String getName() {
    return name;
  }

  @override
  TenantId? getTenantId() {
    return tenantId;
  }

  @override
  CustomerId? getCustomerId() {
    return customerId;
  }

  @override
  OtaPackageId? getFirmwareId() {
    return firmwareId;
  }

  @override
  OtaPackageId? getSoftwareId() {
    return softwareId;
  }

  @override
  String toString() {
    return 'Device{${deviceString()}}';
  }

  String deviceString([String? toStringBody]) {
    return '${additionalInfoBasedString('tenantId: $tenantId, customerId: $customerId, name: $name, type: $type, '
        'label: $label, deviceProfileId: $deviceProfileId, firmwareId: $firmwareId, softwareId: $softwareId, deviceData: $deviceData${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class DeviceInfo extends Device {
  String? customerTitle;
  bool? customerIsPublic;
  String? deviceProfileName;

  DeviceInfo.fromJson(Map<String, dynamic> json)
      : customerTitle = json['customerTitle'],
        customerIsPublic = json['customerIsPublic'],
        deviceProfileName = json['deviceProfileName'],
        super.fromJson(json);

  @override
  String toString() {
    return 'DeviceInfo{${deviceString('deviceProfileName: $deviceProfileName, customerTitle: $customerTitle, customerIsPublic: $customerIsPublic')}}';
  }
}

class DeviceSearchQuery extends EntitySearchQuery {
  List<String> deviceTypes;

  DeviceSearchQuery(
      {required RelationsSearchParameters parameters,
      required this.deviceTypes,
      String? relationType})
      : super(parameters: parameters, relationType: relationType);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['deviceTypes'] = deviceTypes;
    return json;
  }

  @override
  String toString() {
    return 'DeviceSearchQuery{${entitySearchQueryString('deviceTypes: $deviceTypes')}}';
  }
}

class ClaimRequest {
  String secretKey;

  ClaimRequest({required this.secretKey});

  Map<String, dynamic> toJson() {
    return {'secretKey': secretKey};
  }

  @override
  String toString() {
    return 'ClaimRequest{secretKey: $secretKey}';
  }
}

enum ClaimResponse { SUCCESS, FAILURE, CLAIMED }

ClaimResponse claimResponseFromString(String value) {
  return ClaimResponse.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension ClaimResponseToString on ClaimResponse {
  String toShortString() {
    return toString().split('.').last;
  }
}

class ClaimResult {
  Device device;
  ClaimResponse response;

  ClaimResult.fromJson(Map<String, dynamic> json)
      : device = Device.fromJson(json['device']),
        response = claimResponseFromString(json['response']);

  @override
  String toString() {
    return 'ClaimResult{device: $device, response: $response}';
  }
}

enum DeviceCredentialsType {
  ACCESS_TOKEN,
  X509_CERTIFICATE,
  MQTT_BASIC,
  LWM2M_CREDENTIALS
}

DeviceCredentialsType deviceCredentialsTypeFromString(String value) {
  return DeviceCredentialsType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension DeviceCredentialsTypeToString on DeviceCredentialsType {
  String toShortString() {
    return toString().split('.').last;
  }
}

class DeviceCredentials extends BaseData<DeviceCredentialsId> {
  DeviceId deviceId;
  DeviceCredentialsType credentialsType;
  String credentialsId;
  String? credentialsValue;

  DeviceCredentials.fromJson(Map<String, dynamic> json)
      : deviceId = DeviceId.fromJson(json['deviceId']),
        credentialsType =
            deviceCredentialsTypeFromString(json['credentialsType']),
        credentialsId = json['credentialsId'],
        credentialsValue = json['credentialsValue'],
        super.fromJson(json, (id) => DeviceCredentialsId(id));

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['deviceId'] = deviceId.toJson();
    json['credentialsType'] = credentialsType.toShortString();
    json['credentialsId'] = credentialsId;
    if (credentialsValue != null) {
      json['credentialsValue'] = credentialsValue;
    }
    return json;
  }

  @override
  String toString() {
    return 'DeviceCredentials{${baseDataString('deviceId: $deviceId, credentialsType: ${credentialsType.toShortString()}, '
        'credentialsId: $credentialsId, credentialsValue: $credentialsValue')}}';
  }
}
