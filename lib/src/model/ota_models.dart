import 'dart:math';

import 'additional_info_based.dart';
import 'has_name.dart';
import 'has_tenant_id.dart';
import 'id/device_profile_id.dart';
import 'id/ota_package_id.dart';
import 'id/tenant_id.dart';

enum OtaPackageType { FIRMWARE, SOFTWARE }

OtaPackageType otaPackageTypeFromString(String value) {
  return OtaPackageType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension OtaPackageTypeToString on OtaPackageType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum ChecksumAlgorithm {
  MD5,
  SHA256,
  SHA384,
  SHA512,
  CRC32,
  MURMUR3_32,
  MURMUR3_128
}

ChecksumAlgorithm checksumAlgorithmFromString(String value) {
  return ChecksumAlgorithm.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension ChecksumAlgorithmToString on ChecksumAlgorithm {
  String toShortString() {
    return toString().split('.').last;
  }
}

class OtaPackageInfo extends AdditionalInfoBased<OtaPackageId>
    with HasName, HasTenantId {
  TenantId? tenantId;
  DeviceProfileId deviceProfileId;
  OtaPackageType type;
  String title;
  String version;
  String? url;
  bool? hasData;
  String? fileName;
  String? contentType;
  ChecksumAlgorithm? checksumAlgorithm;
  String? checksum;
  int? dataSize;

  OtaPackageInfo(this.deviceProfileId, this.type, this.title, this.version);

  OtaPackageInfo.fromJson(Map<String, dynamic> json)
      : tenantId = json['tenantId'] != null
            ? TenantId.fromJson(json['tenantId'])
            : null,
        deviceProfileId = DeviceProfileId.fromJson(json['deviceProfileId']),
        type = otaPackageTypeFromString(json['type']),
        title = json['title'],
        version = json['version'],
        url = json['url'],
        hasData = json['hasData'],
        fileName = json['fileName'],
        contentType = json['contentType'],
        checksumAlgorithm = json['checksumAlgorithm'] != null
            ? checksumAlgorithmFromString(json['checksumAlgorithm'])
            : null,
        checksum = json['checksum'],
        dataSize = json['dataSize'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (tenantId != null) {
      json['tenantId'] = tenantId!.toJson();
    }
    json['deviceProfileId'] = deviceProfileId.toJson();
    json['type'] = type.toShortString();
    json['title'] = title;
    json['version'] = version;
    if (url != null) {
      json['url'] = url;
    }
    if (hasData != null) {
      json['hasData'] = hasData;
    }
    if (fileName != null) {
      json['fileName'] = fileName;
    }
    if (contentType != null) {
      json['contentType'] = contentType;
    }
    if (checksumAlgorithm != null) {
      json['checksumAlgorithm'] = checksumAlgorithm!.toShortString();
    }
    if (checksum != null) {
      json['checksum'] = checksum;
    }
    if (dataSize != null) {
      json['dataSize'] = dataSize;
    }
    return json;
  }

  @override
  TenantId? getTenantId() {
    return tenantId;
  }

  @override
  String getName() {
    return title;
  }

  @override
  String toString() {
    return 'OtaPackageInfo{${otaPackageInfoString()}}';
  }

  String otaPackageInfoString([String? toStringBody]) {
    return '${additionalInfoBasedString('tenantId: $tenantId, deviceProfileId: $deviceProfileId, type: ${type.toShortString()}, title: $title, version: $version, '
        'url: $url, hasData: $hasData, fileName: $fileName, contentType: $contentType, checksumAlgorithm: ${checksumAlgorithm?.toShortString()}, '
        'checksum: $checksum, dataSize: $dataSize${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class OtaPackage extends OtaPackageInfo {
  String data;

  OtaPackage(DeviceProfileId deviceProfileId, OtaPackageType type, String title,
      String version, this.data)
      : super(deviceProfileId, type, title, version);

  OtaPackage.fromJson(Map<String, dynamic> json)
      : data = json['data'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['data'] = data;
    return json;
  }

  @override
  String toString() {
    return 'OtaPackage{${otaPackageInfoString('data: [${data.substring(0, min(30, data.length))}...]')}}';
  }
}
