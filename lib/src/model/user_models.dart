import 'additional_info_based.dart';
import 'id/customer_id.dart';
import 'id/tenant_id.dart';

import 'authority_enum.dart';
import 'has_customer_id.dart';
import 'has_name.dart';
import 'has_tenant_id.dart';
import 'id/user_id.dart';

class AuthUser {
  late String sub;
  late List<String> scopes;
  late String userId;
  late String? firstName;
  late String? lastName;
  late bool enabled;
  late String tenantId;
  late String customerId;
  late bool isPublic;
  late Authority authority;

  AuthUser.fromJson(Map<String, dynamic> json) {
    sub = json['sub'];
    scopes = (json['scopes'] as List<dynamic>).cast<String>();
    userId = json['userId'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    enabled = json['enabled'];
    tenantId = json['tenantId'];
    customerId = json['customerId'];
    isPublic = json['isPublic'];
    authority = scopes.isNotEmpty ? authorityFromString(scopes[0]) : Authority.ANONYMOUS;
  }

  bool isSystemAdmin() {
    return authority == Authority.SYS_ADMIN;
  }

  bool isTenantAdmin() {
    return authority == Authority.TENANT_ADMIN;
  }

  bool isCustomerUser() {
    return authority == Authority.CUSTOMER_USER;
  }

  @override
  String toString() {
    return 'AuthUser{sub: $sub, scopes: $scopes, userId: $userId, firstName: $firstName, lastName: $lastName, enabled: $enabled, '
        'tenantId: $tenantId, customerId: $customerId, isPublic: $isPublic, authority: ${authority.toShortString()}';
  }
}

class User extends AdditionalInfoBased<UserId> with HasName, HasTenantId, HasCustomerId {

  TenantId? tenantId;
  CustomerId? customerId;
  String email;
  Authority authority;
  String? firstName;
  String? lastName;

  User(this.email, this.authority);

  User.fromJson(Map<String, dynamic> json):
        tenantId = json['tenantId'] != null ? TenantId.fromJson(json['tenantId']) : null,
        customerId = json['customerId'] != null ? CustomerId.fromJson(json['customerId']) : null,
        email = json['email'],
        authority = authorityFromString(json['authority']),
        firstName = json['firstName'],
        lastName = json['lastName'],
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
    json['email'] = email;
    json['authority'] = authority.toShortString();
    if (firstName != null) {
      json['firstName'] = firstName;
    }
    if (lastName != null) {
      json['lastName'] = lastName;
    }
    return json;
  }

  @override
  String getName() {
    return email;
  }

  @override
  TenantId? getTenantId() {
    return tenantId;
  }

  @override
  CustomerId? getCustomerId() {
    return customerId;
  }


  bool isSystemAdmin() {
    return authority == Authority.SYS_ADMIN;
  }

  bool isTenantAdmin() {
    return authority == Authority.TENANT_ADMIN;
  }

  bool isCustomerUser() {
    return authority == Authority.CUSTOMER_USER;
  }

  @override
  String toString() {
    return 'User{${additionalInfoBasedString('tenantId: $tenantId, customerId: $customerId, email: $email, authority: ${authority.toShortString()}, firstName: $firstName, lastName: $lastName')}}';
  }
}
