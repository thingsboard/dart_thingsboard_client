import '../entity_type_models.dart';
import 'entity_id.dart';

class TbResourceId extends EntityId {
  TbResourceId(String id) : super(EntityType.TB_RESOURCE, id);

  @override
  factory TbResourceId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as TbResourceId;
  }

  @override
  String toString() {
    return 'TbResourceId {id: $id}';
  }
}
