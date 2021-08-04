import '../entity_type_models.dart';
import 'entity_id.dart';

class AlarmId extends EntityId {
  AlarmId(String id) : super(EntityType.ALARM, id);

  @override
  factory AlarmId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as AlarmId;
  }

  @override
  String toString() {
    return 'AlarmId {id: $id}';
  }
}
