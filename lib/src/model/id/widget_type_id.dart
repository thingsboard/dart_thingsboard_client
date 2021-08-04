import '../entity_type_models.dart';
import 'entity_id.dart';

class WidgetTypeId extends EntityId {
  WidgetTypeId(String id) : super(EntityType.WIDGET_TYPE, id);

  @override
  factory WidgetTypeId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as WidgetTypeId;
  }

  @override
  String toString() {
    return 'WidgetTypeId {id: $id}';
  }
}
