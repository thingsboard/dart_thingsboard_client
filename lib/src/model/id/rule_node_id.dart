import '../entity_type_models.dart';
import 'entity_id.dart';

class RuleNodeId extends EntityId {
  RuleNodeId(String id) : super(EntityType.RULE_NODE, id);

  @override
  factory RuleNodeId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as RuleNodeId;
  }

  @override
  String toString() {
    return 'RuleNodeId {id: $id}';
  }
}
