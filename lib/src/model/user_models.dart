import 'authority_enum.dart';

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

  @override
  String toString() {
    return 'AuthUser{sub: $sub, scopes: $scopes, userId: $userId, firstName: $firstName, lastName: $lastName, enabled: $enabled, '
        'tenantId: $tenantId, customerId: $customerId, isPublic: $isPublic, authority: ${authority.toShortString()}';
  }
}
