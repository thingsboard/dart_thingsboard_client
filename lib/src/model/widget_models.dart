import 'dart:math';

import 'base_data.dart';
import 'has_tenant_id.dart';
import 'id/tenant_id.dart';
import 'id/widget_type_id.dart';

class BaseWidgetType extends BaseData<WidgetTypeId> with HasTenantId {
  TenantId? tenantId;
  String name;
  String bundleAlias;
  String? alias;

  BaseWidgetType(this.name, this.bundleAlias);

  BaseWidgetType.fromJson(Map<String, dynamic> json)
      : tenantId = json['tenantId'] != null
            ? TenantId.fromJson(json['tenantId'])
            : null,
        name = json['name'],
        bundleAlias = json['bundleAlias'],
        alias = json['alias'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['name'] = name;
    json['bundleAlias'] = bundleAlias;
    if (tenantId != null) {
      json['tenantId'] = tenantId!.toJson();
    }
    if (alias != null) {
      json['alias'] = alias;
    }
    return json;
  }

  @override
  TenantId? getTenantId() {
    return tenantId;
  }

  @override
  String toString() {
    return 'BaseWidgetType{${baseWidgetTypeString()}}';
  }

  String baseWidgetTypeString([String? toStringBody]) {
    return '${baseDataString('tenantId: $tenantId, name: $name, bundleAlias: $bundleAlias, alias: $alias${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class WidgetTypeInfo extends BaseWidgetType {
  String? image;
  String? description;
  String widgetType;

  WidgetTypeInfo(String name, String bundleAlias, this.widgetType)
      : super(name, bundleAlias);

  WidgetTypeInfo.fromJson(Map<String, dynamic> json)
      : image = json['image'],
        description = json['description'],
        widgetType = json['widgetType'],
        super.fromJson(json);

  @override
  String toString() {
    return 'WidgetTypeInfo{${baseWidgetTypeString('widgetType: $widgetType, image: ${image != null ? '[' + image!.substring(0, min(30, image!.length)) + '...]' : 'null'}, description: $description')}}';
  }
}

class WidgetType extends BaseWidgetType {
  Map<String, dynamic> descriptor;

  WidgetType(String name, String bundleAlias, this.descriptor)
      : super(name, bundleAlias);

  WidgetType.fromJson(Map<String, dynamic> json)
      : descriptor = json['descriptor'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['descriptor'] = descriptor;
    return json;
  }

  @override
  String toString() {
    return 'WidgetType{${widgetTypeString()}}';
  }

  String widgetTypeString([String? toStringBody]) {
    return '${baseWidgetTypeString('descriptor: $descriptor${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class WidgetTypeDetails extends WidgetType {
  String? image;
  String? description;

  WidgetTypeDetails(
      String name, String bundleAlias, Map<String, dynamic> descriptor)
      : super(name, bundleAlias, descriptor);

  WidgetTypeDetails.fromJson(Map<String, dynamic> json)
      : image = json['image'],
        description = json['description'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (image != null) {
      json['image'] = image;
    }
    if (description != null) {
      json['description'] = description;
    }
    return json;
  }

  @override
  String toString() {
    return 'WidgetTypeDetails{${widgetTypeString('image: ${image != null ? '[' + image!.substring(0, min(30, image!.length)) + '...]' : 'null'}, description: $description')}}';
  }
}
