import 'id/rule_chain_id.dart';

abstract mixin class HasRuleEngineProfile {
  RuleChainId? getDefaultRuleChainId();

  String? getDefaultQueueName();
}
