import '../entity_type_models.dart';
import 'entity_id.dart';

class CustomerId implements EntityId {

  @override
  EntityType? entityType = EntityType.CUSTOMER;

  @override
  String? id;

  CustomerId(this.id);

  @override
  String toString() {
    return 'CustomerId{id: $id}';
  }
}
