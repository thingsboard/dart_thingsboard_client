import '../entity_type_models.dart';
import 'entity_id.dart';

class RuleChainId extends EntityId {
  RuleChainId(String id) : super(EntityType.RULE_CHAIN, id);

  @override
  factory RuleChainId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as RuleChainId;
  }

  @override
  String toString() {
    return 'RuleChainId {id: $id}';
  }
}
