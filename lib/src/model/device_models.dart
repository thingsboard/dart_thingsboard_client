import 'id/device_profile_id.dart';
import 'id/firmware_id.dart';
import 'additional_info_based.dart';
import 'has_name.dart';
import 'has_customer_id.dart';
import 'has_tenant_id.dart';
import 'id/customer_id.dart';
import 'id/device_id.dart';
import 'id/tenant_id.dart';

enum DeviceProfileType {
  DEFAULT
}

DeviceProfileType deviceProfileTypeFromString(String value) {
  return DeviceProfileType.values.firstWhere((e)=>e.toString().split('.')[1].toUpperCase()==value.toUpperCase());
}

extension DeviceProfileTypeToString on DeviceProfileType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum DeviceTransportType {
  DEFAULT,
  MQTT,
  COAP,
  LWM2M
}

DeviceTransportType deviceTransportTypeFromString(String value) {
  return DeviceTransportType.values.firstWhere((e)=>e.toString().split('.')[1].toUpperCase()==value.toUpperCase());
}

extension DeviceTransportTypeToString on DeviceTransportType {
  String toShortString() {
    return toString().split('.').last;
  }
}

abstract class DeviceConfiguration {

  DeviceConfiguration();

  DeviceProfileType getType();

  factory DeviceConfiguration.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('type')) {
      var deviceProfileType = deviceProfileTypeFromString(json['type']);
      switch(deviceProfileType) {
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

  MqttDeviceTransportConfiguration(): properties = {};

  @override
  DeviceTransportType getType() {
    return DeviceTransportType.MQTT;
  }

  MqttDeviceTransportConfiguration.fromJson(Map<String, dynamic> json):
        properties = json;

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

  CoapDeviceTransportConfiguration(): properties = {};

  @override
  DeviceTransportType getType() {
    return DeviceTransportType.COAP;
  }

  CoapDeviceTransportConfiguration.fromJson(Map<String, dynamic> json):
        properties = json;

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

  Lwm2mDeviceTransportConfiguration(): properties = {};

  @override
  DeviceTransportType getType() {
    return DeviceTransportType.LWM2M;
  }

  Lwm2mDeviceTransportConfiguration.fromJson(Map<String, dynamic> json):
        properties = json;

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

class DeviceData {

  DeviceConfiguration configuration;
  DeviceTransportConfiguration transportConfiguration;

  DeviceData(): configuration = DefaultDeviceConfiguration(),
                transportConfiguration = DefaultDeviceTransportConfiguration();

  DeviceData.fromJson(Map<String, dynamic> json):
      configuration = DeviceConfiguration.fromJson(json['configuration']),
      transportConfiguration = DeviceTransportConfiguration.fromJson(json['transportConfiguration']);

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

class Device extends AdditionalInfoBased<DeviceId> with HasName, HasTenantId, HasCustomerId {

  TenantId? tenantId;
  CustomerId? customerId;
  String name;
  String type;
  String? label;
  DeviceProfileId? deviceProfileId;
  FirmwareId? firmwareId;
  DeviceData deviceData;

  Device(this.name, this.type): deviceData = DeviceData();

  Device.fromJson(Map<String, dynamic> json):
        tenantId = TenantId.fromJson(json['tenantId']),
        customerId = json['customerId'] != null ? CustomerId.fromJson(json['customerId']) : null,
        name = json['name'],
        type = json['type'],
        label = json['label'],
        deviceProfileId = DeviceProfileId.fromJson(json['deviceProfileId']),
        firmwareId = json['firmwareId'] != null ? FirmwareId.fromJson(json['firmwareId']) : null,
        deviceData = DeviceData.fromJson(json['deviceData']),
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
  String toString() {
    return 'Device{${additionalInfoBasedString('tenantId: $tenantId, customerId: $customerId, name: $name, type: $type, '
        'label: $label, deviceProfileId: $deviceProfileId, firmwareId: $firmwareId, deviceData: $deviceData')}}';
  }

}

class DeviceInfo extends Device {
  String? customerTitle;
  bool? customerIsPublic;
  String? deviceProfileName;

  DeviceInfo.fromJson(Map<String, dynamic> json):
        customerTitle = json['customerTitle'],
        customerIsPublic = json['customerIsPublic'],
        deviceProfileName = json['deviceProfileName'],
        super.fromJson(json);
}
