import 'additional_info_based.dart';
import 'authority_enum.dart';
import 'has_customer_id.dart';
import 'has_name.dart';
import 'has_tenant_id.dart';
import 'id/customer_id.dart';
import 'id/tenant_id.dart';
import 'id/user_id.dart';

class AuthUser {
  late String sub;
  late List<String> scopes;
  late String? userId;
  late String? firstName;
  late String? lastName;
  late bool? enabled;
  late String tenantId;
  late String? customerId;
  late bool? isPublic;
  late Authority authority;
  late Map<String, dynamic> additionalData;

  AuthUser.fromJson(Map<String, dynamic> json) {
    var claims = Map.of(json);
    sub = claims.remove('sub');
    scopes = (claims.remove('scopes') as List<dynamic>).cast<String>();
    userId = claims.remove('userId');
    firstName = claims.remove('firstName');
    lastName = claims.remove('lastName');
    enabled = claims.remove('enabled');
    tenantId = claims.remove('tenantId');
    customerId = claims.remove('customerId');
    isPublic = claims.remove('isPublic');
    authority = scopes.isNotEmpty
        ? authorityFromString(scopes[0])
        : Authority.ANONYMOUS;
    additionalData = claims;
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

  bool isPreVerificationToken() {
    return authority == Authority.PRE_VERIFICATION_TOKEN;
  }

  @override
  String toString() {
    return 'AuthUser{sub: $sub, scopes: $scopes, userId: $userId, firstName: $firstName, lastName: $lastName, enabled: $enabled, '
        'tenantId: $tenantId, customerId: $customerId, isPublic: $isPublic, authority: ${authority.toShortString()}, additionalData: $additionalData';
  }
}

class User extends AdditionalInfoBased<UserId>
    with HasName, HasTenantId, HasCustomerId {
  TenantId? tenantId;
  CustomerId? customerId;
  String email;
  Authority authority;
  String? firstName;
  String? lastName;
  String? phone;

  User(this.email, this.authority);

  User.fromJson(Map<String, dynamic> json)
      : tenantId = json['tenantId'] != null
            ? TenantId.fromJson(json['tenantId'])
            : null,
        customerId = json['customerId'] != null
            ? CustomerId.fromJson(json['customerId'])
            : null,
        email = json['email'],
        authority = authorityFromString(json['authority']),
        firstName = json['firstName'],
        lastName = json['lastName'],
        phone = json['phone'],
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
    if (phone != null) {
      json['phone'] = phone;
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
    return 'User{${additionalInfoBasedString('tenantId: $tenantId, customerId: $customerId, email: $email, '
        'authority: ${authority.toShortString()}, firstName: $firstName, lastName: $lastName, phone: $phone')}}';
  }
}

class UserInfo {
  final UserId id;
  String email;
  String? firstName;
  String? lastName;

  UserInfo.fromJson(Map<String, dynamic> json)
      : id = UserId.fromJson(json['id']),
        email = json['email'],
        firstName = json['firstName'],
        lastName = json['lastName'];
}
