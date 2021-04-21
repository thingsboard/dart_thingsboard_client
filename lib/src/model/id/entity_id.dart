import 'customer_id.dart';
import 'device_id.dart';
import 'tenant_id.dart';

import '../entity_type_models.dart';
import './has_uuid.dart';

abstract class EntityId extends HasUuid {

  EntityType entityType;

  EntityId(this.entityType, String id) : super(id);

  factory EntityId.fromJson(Map<String, dynamic> json) {
    if (json.containsKey('entityType') && json.containsKey('id')) {
      var entityType = entityTypeFromString(json['entityType']);
      String uuid = json['id'];
      return EntityId.fromTypeAndUuid(entityType, uuid);
    } else {
      throw FormatException('Missing entityType or id!');
    }
  }

  factory EntityId.fromTypeAndUuid(EntityType type, String uuid) {
    switch(type) {
      case EntityType.TENANT:
        return TenantId(uuid);
      case EntityType.TENANT_PROFILE:
      // TODO: Handle this case.
        break;
      case EntityType.CUSTOMER:
        return CustomerId(uuid);
      case EntityType.USER:
      // TODO: Handle this case.
        break;
      case EntityType.DASHBOARD:
      // TODO: Handle this case.
        break;
      case EntityType.ASSET:
      // TODO: Handle this case.
        break;
      case EntityType.DEVICE:
        return DeviceId(uuid);
      case EntityType.DEVICE_PROFILE:
      // TODO: Handle this case.
        break;
    }
    throw UnimplementedError('Not implemented!');
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityType'] = entityType.toShortString();
    return json;
  }

}
