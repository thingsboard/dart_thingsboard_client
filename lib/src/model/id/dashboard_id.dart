import '../entity_type_models.dart';
import 'entity_id.dart';

class DashboardId extends EntityId {
  DashboardId(String id) : super(EntityType.DASHBOARD, id);

  @override
  factory DashboardId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as DashboardId;
  }

  @override
  String toString() {
    return 'DashboardId {id: $id}';
  }
}
