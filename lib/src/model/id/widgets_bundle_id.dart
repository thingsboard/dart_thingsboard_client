import '../entity_type_models.dart';
import 'entity_id.dart';

class WidgetsBundleId extends EntityId {
  WidgetsBundleId(String id) : super(EntityType.WIDGETS_BUNDLE, id);

  @override
  factory WidgetsBundleId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as WidgetsBundleId;
  }

  @override
  String toString() {
    return 'WidgetsBundleId {id: $id}';
  }
}
