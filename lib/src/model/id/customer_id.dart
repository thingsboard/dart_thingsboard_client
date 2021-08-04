import '../entity_type_models.dart';
import 'entity_id.dart';

class CustomerId extends EntityId {
  CustomerId(String id) : super(EntityType.CUSTOMER, id);

  @override
  factory CustomerId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as CustomerId;
  }

  @override
  String toString() {
    return 'CustomerId {id: $id}';
  }
}
