import 'entity_id.dart';
import '../entity_type_models.dart';

class JobId extends EntityId {
  JobId(String id) : super(EntityType.JOB, id);

  @override
  factory JobId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as JobId;
  }

  @override
  String toString() {
    return 'JobId {id: $id}';
  }
}
