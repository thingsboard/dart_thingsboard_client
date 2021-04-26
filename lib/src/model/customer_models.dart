import 'has_customer_id.dart';
import 'has_tenant_id.dart';
import 'id/customer_id.dart';
import 'id/tenant_id.dart';
import 'contact_based_model.dart';

class Customer extends ContactBased<CustomerId> with HasTenantId, HasCustomerId {

  TenantId? tenantId;
  String title;

  Customer(this.title);

  Customer.fromJson(Map<String, dynamic> json):
        tenantId = TenantId.fromJson(json['tenantId']),
        title = json['title'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (tenantId != null) {
      json['tenantId'] = tenantId!.toJson();
    }
    json['title'] = title;
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
  CustomerId? getCustomerId() {
    return id;
  }

  @override
  String toString() {
    return 'Customer{${contactBasedString('tenantId: $tenantId, title: $title')}}';
  }

}

class ShortCustomerInfo {
  CustomerId customerId;
  String title;
  bool isPublic;

  ShortCustomerInfo.fromJson(Map<String, dynamic> json):
        customerId = CustomerId.fromJson(json['customerId']),
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
