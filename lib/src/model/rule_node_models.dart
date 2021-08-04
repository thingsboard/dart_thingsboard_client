import 'has_name.dart';
import 'id/rule_chain_id.dart';
import 'id/rule_node_id.dart';
import 'additional_info_based.dart';

class RuleNode extends AdditionalInfoBased<RuleNodeId> with HasName {
  RuleChainId? ruleChainId;
  String type;
  String name;
  bool debugMode;
  Map<String, dynamic>? configuration;

  RuleNode(
      {required this.type,
      required this.name,
      this.debugMode = false,
      this.ruleChainId,
      this.configuration});

  RuleNode.fromJson(Map<String, dynamic> json)
      : ruleChainId = json['ruleChainId'] != null
            ? RuleChainId.fromJson(json['ruleChainId'])
            : null,
        type = json['type'],
        name = json['name'],
        debugMode = json['debugMode'],
        configuration = json['configuration'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (ruleChainId != null) {
      json['ruleChainId'] = ruleChainId!.toJson();
    }
    json['type'] = type;
    json['name'] = name;
    json['debugMode'] = debugMode;
    if (configuration != null) {
      json['configuration'] = configuration;
    }
    return json;
  }

  @override
  String getName() {
    return name;
  }

  @override
  String toString() {
    return 'RuleNode{${additionalInfoBasedString('ruleChainId: $ruleChainId, type: $type, name: $name, debugMode: $debugMode, configuration: $configuration')}}';
  }
}
