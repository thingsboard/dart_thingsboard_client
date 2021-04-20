import 'customer_id.dart';
import 'device_id.dart';
import 'tenant_id.dart';

import '../entity_type_models.dart';
import './has_uuid.dart';

abstract class EntityId extends HasUuid {
  EntityType? entityType;

  @override
  String? id;
}

T? entityIdFromJson<T extends EntityId>(Map<String, dynamic> json) {
  if (json.containsKey('entityType') && json.containsKey('id')) {
    var entityType = entityTypeFromString(json['entityType']);
    String uuid = json['id'];
    return getByTypeAndUuid(entityType, uuid);
  } else {
    throw FormatException('Missing entityType or id!');
  }
}

T? getByTypeAndUuid<T extends EntityId>(EntityType type, String uuid) {
  switch(type) {
    case EntityType.TENANT:
      return TenantId(uuid) as T;
    case EntityType.TENANT_PROFILE:
      // TODO: Handle this case.
      break;
    case EntityType.CUSTOMER:
      return CustomerId(uuid) as T;
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
      return DeviceId(uuid) as T;
    case EntityType.DEVICE_PROFILE:
      // TODO: Handle this case.
      break;
  }
}
