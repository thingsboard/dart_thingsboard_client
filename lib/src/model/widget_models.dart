import 'dart:math';

import 'base_data.dart';
import 'has_tenant_id.dart';
import 'id/tenant_id.dart';
import 'id/widget_type_id.dart';

class BaseWidgetType extends BaseData<WidgetTypeId> with HasTenantId {
  TenantId? tenantId;
  String name;
  String fqn;
  bool? deprecated;

  BaseWidgetType(this.name, this.fqn);

  BaseWidgetType.fromJson(Map<String, dynamic> json)
      : tenantId = json['tenantId'] != null
            ? TenantId.fromJson(json['tenantId'])
            : null,
        name = json['name'],
        fqn = json['fqn'],
        deprecated = json['deprecated'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['name'] = name;
    json['fqn'] = fqn;
    if (tenantId != null) {
      json['tenantId'] = tenantId!.toJson();
    }
    if (deprecated != null) {
      json['deprecated'] = deprecated;
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
    return '${baseDataString('tenantId: $tenantId, name: $name, fqn: $fqn, deprecated: $deprecated, ${toStringBody != null ? ', ' + toStringBody : ''}')}';
  }
}

class WidgetTypeInfo extends BaseWidgetType {
  String? image;
  String? description;
  String widgetType;

  WidgetTypeInfo(String name, String fqn, this.widgetType) : super(name, fqn);

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

  WidgetType(String name, String fqn, this.descriptor) : super(name, fqn);

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
  WidgetTypeId? externalId;

  WidgetTypeDetails(String name, String fqn, Map<String, dynamic> descriptor)
      : super(name, fqn, descriptor);

  WidgetTypeDetails.fromJson(Map<String, dynamic> json)
      : image = json['image'],
        description = json['description'],
        externalId = json['externalId'],
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
    if (externalId != null) {
      json['externalId'] = externalId;
    }
    return json;
  }

  @override
  String toString() {
    return 'WidgetTypeDetails{${widgetTypeString('image: ${image != null ? '[' + image!.substring(0, min(30, image!.length)) + '...]' : 'null'}, '
        'description: $description, externalId: $externalId')}}';
  }
}
