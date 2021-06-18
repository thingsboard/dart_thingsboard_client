enum RuleChainType {
  CORE,
  EDGE
}

RuleChainType ruleChainTypeFromString(String value) {
  return RuleChainType.values.firstWhere((e)=>e.toString().split('.')[1].toUpperCase()==value.toUpperCase());
}

extension RuleChainTypeToString on RuleChainType {
  String toShortString() {
    return toString().split('.').last;
  }
}
