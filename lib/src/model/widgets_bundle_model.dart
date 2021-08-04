import 'dart:math';

import 'base_data.dart';
import 'has_tenant_id.dart';
import 'id/tenant_id.dart';
import 'id/widgets_bundle_id.dart';

class WidgetsBundle extends BaseData<WidgetsBundleId> with HasTenantId {
  TenantId? tenantId;
  String? alias;
  String title;
  String? image;
  String? description;

  WidgetsBundle(this.title);

  WidgetsBundle.fromJson(Map<String, dynamic> json)
      : tenantId = json['tenantId'] != null
            ? TenantId.fromJson(json['tenantId'])
            : null,
        alias = json['alias'],
        title = json['title'],
        image = json['image'],
        description = json['description'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['title'] = title;
    if (tenantId != null) {
      json['tenantId'] = tenantId!.toJson();
    }
    if (alias != null) {
      json['alias'] = alias;
    }
    if (image != null) {
      json['image'] = image;
    }
    if (description != null) {
      json['description'] = description;
    }
    return json;
  }

  @override
  TenantId? getTenantId() {
    return tenantId;
  }

  @override
  String toString() {
    return 'WidgetsBundle{${baseDataString('tenantId: $tenantId, alias: $alias, title: $title, image: ${image != null ? '[' + image!.substring(0, min(30, image!.length)) + '...]' : 'null'}, description: $description')}}';
  }
}
