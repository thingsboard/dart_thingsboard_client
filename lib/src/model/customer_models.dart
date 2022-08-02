import 'exportable_entity.dart';
import 'has_customer_id.dart';
import 'has_tenant_id.dart';
import 'id/customer_id.dart';
import 'id/tenant_id.dart';
import 'contact_based_model.dart';

class Customer extends ContactBased<CustomerId>
    with HasTenantId, HasCustomerId, ExportableEntity<CustomerId> {
  TenantId? tenantId;
  String title;
  CustomerId? externalId;

  Customer(this.title);

  Customer.fromJson(Map<String, dynamic> json)
      : tenantId = TenantId.fromJson(json['tenantId']),
        title = json['title'],
        externalId = json['externalId'] != null
            ? CustomerId.fromJson(json['externalId'])
            : null,
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (tenantId != null) {
      json['tenantId'] = tenantId!.toJson();
    }
    json['title'] = title;
    if (externalId != null) {
      json['externalId'] = externalId!.toJson();
    }
    return json;
  }

  @override
  String getName() {
    return title;
  }

  @override
  TenantId? getTenantId() {
    return tenantId;
  }

  @override
  void setTenantId(TenantId? tenantId) {
    this.tenantId = tenantId;
  }

  @override
  CustomerId? getCustomerId() {
    return id;
  }

  @override
  CustomerId? getExternalId() {
    return externalId;
  }

  @override
  void setExternalId(CustomerId? externalId) {
    this.externalId = externalId;
  }

  @override
  String toString() {
    return 'Customer{${contactBasedString('tenantId: $tenantId, title: $title, externalId: $externalId')}}';
  }
}

class ShortCustomerInfo {
  CustomerId customerId;
  String title;
  bool isPublic;

  ShortCustomerInfo.fromJson(Map<String, dynamic> json)
      : customerId = CustomerId.fromJson(json['customerId']),
        title = json['title'],
        isPublic = json['isPublic'] ?? false;

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'customerId': customerId.toJson(),
      'title': title,
      'isPublic': isPublic
    };
    return json;
  }

  @override
  String toString() {
    return 'ShortCustomerInfo{customerId: $customerId, title: $title, isPublic: $isPublic}';
  }
}
