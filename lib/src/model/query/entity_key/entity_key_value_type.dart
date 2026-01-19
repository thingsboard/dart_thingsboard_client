enum EntityKeyValueType { STRING, NUMERIC, BOOLEAN, DATE_TIME }

EntityKeyValueType entityKeyValueTypeFromString(String value) {
  return EntityKeyValueType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension EntityKeyValueTypeToString on EntityKeyValueType {
  String toShortString() {
    return toString().split('.').last;
  }
}
