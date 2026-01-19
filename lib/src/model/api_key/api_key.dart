import 'package:thingsboard_client/src/model/base_data.dart';
import 'package:thingsboard_client/src/model/id/api_key_id.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

class ApiKey extends BaseData<ApiKeyId> with HasTenantId {
  TenantId? tenantId;
  UserId userId;
  String description;
  int expirationTs;
  bool enabled;
  bool expired;
  String? value;
  ApiKey(
    this.userId,
    this.description,
    this.enabled,
    this.expirationTs, {
    this.expired = false,
  });

  ApiKey.fromJson(Map<String, dynamic> json)
      : tenantId = json['tenantId'] != null
            ? TenantId.fromJson(json['tenantId'])
            : null,
        userId = UserId.fromJson(json['userId']),
        description = json['description'],
        enabled = json['enabled'] ?? false,
        expired = json['expired'] ?? false,
        expirationTs = json['expirationTime'] ?? 0,
        value = json['value']?.toString(),
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['tenantId'] = tenantId?.toJson();
    json['userId'] = userId.toJson();
    json['description'] = description;
    json['enabled'] = enabled;
    json['expirationTime'] = expirationTs;
    return json;
  }

  @override
  String toString() {
    return 'ApiKey($id, $description,$userId, $tenantId, $enabled, $expirationTs, $expired, $createdTime, $value)';
  }

  @override
  TenantId? getTenantId() {
    return tenantId;
  }
}
