import 'package:thingsboard_client/thingsboard_client.dart';

class EntitySubType with HasTenantId {
  final TenantId? tenantId;
  final EntityType entityType;
  final String type;
  EntitySubType(this.entityType, this.tenantId, this.type);

  factory EntitySubType.fromJson(Map<String, dynamic> json) {
    return EntitySubType(
        entityTypeFromString(json['entityType']),
        json['tenantId'] != null ? TenantId.fromJson(json['tenantId']) : null,
        json['type']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    json['entityType'] = entityType.toShortString();
    json['type'] = type;
    json['tenantId'] = tenantId?.toJson();
    return json;
  }

  EntityType getEntityType() {
    return entityType;
  }

  String getType() {
    return type;
  }

  @override
  TenantId? getTenantId() {
    return tenantId;
  }
}
