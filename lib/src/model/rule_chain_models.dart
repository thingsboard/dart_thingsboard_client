import 'has_name.dart';
import 'has_tenant_id.dart';
import 'id/rule_chain_id.dart';
import 'additional_info_based.dart';
import 'id/rule_node_id.dart';
import 'id/tenant_id.dart';
import 'rule_node_models.dart';

enum RuleChainType { CORE, EDGE }

RuleChainType ruleChainTypeFromString(String value) {
  return RuleChainType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension RuleChainTypeToString on RuleChainType {
  String toShortString() {
    return toString().split('.').last;
  }
}

class RuleChain extends AdditionalInfoBased<RuleChainId>
    with HasName, HasTenantId {
  TenantId? tenantId;
  String name;
  RuleChainType type;
  RuleNodeId firstRuleNodeId;
  bool root;
  bool debugMode;
  Map<String, dynamic>? configuration;

  RuleChain(
      {required this.name,
      required this.type,
      required this.firstRuleNodeId,
      this.root = false,
      this.debugMode = false,
      this.tenantId,
      this.configuration});

  RuleChain.fromJson(Map<String, dynamic> json)
      : tenantId = TenantId.fromJson(json['tenantId']),
        name = json['name'],
        type = ruleChainTypeFromString(json['type']),
        firstRuleNodeId = RuleNodeId.fromJson(json['firstRuleNodeId']),
        root = json['root'],
        debugMode = json['debugMode'],
        configuration = json['configuration'],
        super.fromJson(json);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (tenantId != null) {
      json['tenantId'] = tenantId!.toJson();
    }
    json['name'] = name;
    json['type'] = type.toShortString();
    json['firstRuleNodeId'] = firstRuleNodeId.toJson();
    json['root'] = root;
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
  TenantId? getTenantId() {
    return tenantId;
  }

  @override
  String toString() {
    return 'RuleChain{${additionalInfoBasedString('tenantId: $tenantId, name: $name, type: $type, firstRuleNodeId: $firstRuleNodeId, root: $root, debugMode: $debugMode, configuration: $configuration')}}';
  }
}

class NodeConnectionInfo {
  int fromIndex;
  int toIndex;
  String type;

  NodeConnectionInfo(
      {required this.fromIndex, required this.toIndex, required this.type});

  NodeConnectionInfo.fromJson(Map<String, dynamic> json)
      : fromIndex = json['fromIndex'],
        toIndex = json['toIndex'],
        type = json['type'];

  Map<String, dynamic> toJson() {
    return {'fromIndex': fromIndex, 'toIndex': toIndex, 'type': type};
  }

  @override
  String toString() {
    return 'NodeConnectionInfo{fromIndex: $fromIndex, toIndex: $toIndex, type: $type}';
  }
}

class RuleChainConnectionInfo {
  int fromIndex;
  RuleChainId targetRuleChainId;
  String type;
  Map<String, dynamic>? additionalInfo;

  RuleChainConnectionInfo(
      {required this.fromIndex,
      required this.targetRuleChainId,
      required this.type,
      this.additionalInfo});

  RuleChainConnectionInfo.fromJson(Map<String, dynamic> json)
      : fromIndex = json['fromIndex'],
        targetRuleChainId = RuleChainId.fromJson(json['toIndex']),
        type = json['type'],
        additionalInfo = json['additionalInfo'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'fromIndex': fromIndex,
      'targetRuleChainId': targetRuleChainId.toJson(),
      'type': type
    };
    if (additionalInfo != null) {
      json['additionalInfo'] = additionalInfo;
    }
    return json;
  }

  @override
  String toString() {
    return 'RuleChainConnectionInfo{fromIndex: $fromIndex, targetRuleChainId: $targetRuleChainId, type: $type, additionalInfo: $additionalInfo}';
  }
}

class RuleChainMetaData {
  RuleChainId ruleChainId;
  int? firstNodeIndex;
  List<RuleNode>? nodes;
  List<NodeConnectionInfo>? connections;
  List<RuleChainConnectionInfo>? ruleChainConnections;

  RuleChainMetaData(
      {required this.ruleChainId,
      this.firstNodeIndex,
      this.nodes,
      this.connections,
      this.ruleChainConnections});

  RuleChainMetaData.fromJson(Map<String, dynamic> json)
      : ruleChainId = RuleChainId.fromJson(json['ruleChainId']),
        firstNodeIndex = json['firstNodeIndex'],
        nodes = json['nodes'] != null
            ? (json['nodes'] as List<dynamic>)
                .map((e) => RuleNode.fromJson(e))
                .toList()
            : null,
        connections = json['connections'] != null
            ? (json['connections'] as List<dynamic>)
                .map((e) => NodeConnectionInfo.fromJson(e))
                .toList()
            : null,
        ruleChainConnections = json['ruleChainConnections'] != null
            ? (json['ruleChainConnections'] as List<dynamic>)
                .map((e) => RuleChainConnectionInfo.fromJson(e))
                .toList()
            : null;

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{'ruleChainId': ruleChainId.toJson()};
    if (firstNodeIndex != null) {
      json['firstNodeIndex'] = firstNodeIndex;
    }
    if (nodes != null) {
      json['nodes'] = nodes!.map((e) => e.toJson()).toList();
    }
    if (connections != null) {
      json['connections'] = connections!.map((e) => e.toJson()).toList();
    }
    if (ruleChainConnections != null) {
      json['ruleChainConnections'] =
          ruleChainConnections!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  String toString() {
    return 'RuleChainMetaData{ruleChainId: $ruleChainId, firstNodeIndex: $firstNodeIndex, nodes: $nodes, connections: $connections, ruleChainConnections: $ruleChainConnections}';
  }
}

class RuleChainData {
  List<RuleChain> ruleChains;
  List<RuleChainMetaData> metadata;

  RuleChainData({required this.ruleChains, required this.metadata});

  RuleChainData.fromJson(Map<String, dynamic> json)
      : ruleChains = (json['ruleChains'] as List<dynamic>)
            .map((e) => RuleChain.fromJson(e))
            .toList(),
        metadata = (json['metadata'] as List<dynamic>)
            .map((e) => RuleChainMetaData.fromJson(e))
            .toList();

  Map<String, dynamic> toJson() => {
        'ruleChains': ruleChains.map((e) => e.toJson()).toList(),
        'metadata': metadata.map((e) => e.toJson()).toList()
      };

  @override
  String toString() {
    return 'RuleChainData{ruleChains: $ruleChains, metadata: $metadata}';
  }
}
