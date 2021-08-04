import 'dart:math';

import 'has_name.dart';
import 'has_tenant_id.dart';
import 'id/tb_resource_id.dart';
import 'base_data.dart';
import 'id/tenant_id.dart';

enum ResourceType { LWM2M_MODEL, JKS, PKCS_12 }

ResourceType resourceTypeFromString(String value) {
  return ResourceType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension ResourceTypeToString on ResourceType {
  String toShortString() {
    return toString().split('.').last;
  }
}

class TbResourceInfo extends BaseData<TbResourceId> with HasName, HasTenantId {
  TenantId? tenantId;
  String title;
  ResourceType resourceType;
  String resourceKey;

  TbResourceInfo(this.title, this.resourceType, this.resourceKey);

  TbResourceInfo.fromJson(Map<String, dynamic> json)
      : tenantId = json['tenantId'] != null
            ? TenantId.fromJson(json['tenantId'])
            : null,
        title = json['title'],
        resourceType = resourceTypeFromString(json['resourceType']),
        resourceKey = json['resourceKey'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (tenantId != null) {
      json['tenantId'] = tenantId!.toJson();
    }
    json['title'] = title;
    json['resourceType'] = resourceType.toShortString();
    json['resourceKey'] = resourceKey;
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
    return 'TbResourceInfo{${resourceInfoString()}}';
  }

  String resourceInfoString([String? toStringBody]) {
    return '${baseDataString('tenantId: $tenantId, title: $title, resourceType: ${resourceType.toShortString()}, resourceKey: $resourceKey${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class TbResource extends TbResourceInfo {
  String fileName;
  String data;

  TbResource(String title, ResourceType resourceType, String resourceKey,
      this.fileName, this.data)
      : super(title, resourceType, resourceKey);

  TbResource.fromJson(Map<String, dynamic> json)
      : fileName = json['fileName'],
        data = json['data'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['fileName'] = fileName;
    json['data'] = data;
    return json;
  }

  @override
  String toString() {
    return 'TbResource{${resourceInfoString('fileName: $fileName, data: [${data.substring(0, min(30, data.length))}...]')}}';
  }
}
