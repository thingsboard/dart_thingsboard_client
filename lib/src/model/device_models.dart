import 'base_data.dart';
import 'id/customer_id.dart';
import 'id/device_id.dart';
import 'id/entity_id.dart';
import 'id/tenant_id.dart';

class Device extends BaseData<DeviceId> {

  TenantId? tenantId;
  CustomerId? customerId;
  String type;
  Map<String, dynamic>? additionalInfo;

  Device.fromJson(Map<String, dynamic> json):
        tenantId = entityIdFromJson(json['tenantId']),
        customerId = json['customerId'] != null ? entityIdFromJson(json['customerId']) : null,
        type = json['type'],
        additionalInfo = json['additionalInfo'],
        super.fromJson(json);

  @override
  String toString() {
    return 'Device{id: $id, tenantId: $tenantId, customerId: $customerId, createdTime: $createdTime, name: $name, type: $type, label: $label, additionalInfo: $additionalInfo}';
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

fromJsonFunction<DeviceInfo> deviceInfoFromJson = (json) => DeviceInfo.fromJson(json);
