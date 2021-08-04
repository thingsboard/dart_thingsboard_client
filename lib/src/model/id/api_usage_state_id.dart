import '../entity_type_models.dart';
import 'entity_id.dart';

class ApiUsageStateId extends EntityId {
  ApiUsageStateId(String id) : super(EntityType.API_USAGE_STATE, id);

  @override
  factory ApiUsageStateId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as ApiUsageStateId;
  }

  @override
  String toString() {
    return 'ApiUsageStateId {id: $id}';
  }
}
