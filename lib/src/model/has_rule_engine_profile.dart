import 'id/rule_chain_id.dart';

abstract class HasRuleEngineProfile {
  RuleChainId? getDefaultRuleChainId();

  String? getDefaultQueueName();
}
