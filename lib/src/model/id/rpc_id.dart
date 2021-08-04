import '../entity_type_models.dart';
import 'entity_id.dart';

class RpcId extends EntityId {
  RpcId(String id) : super(EntityType.RPC, id);

  @override
  factory RpcId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as RpcId;
  }

  @override
  String toString() {
    return 'RpcId {id: $id}';
  }
}
