enum EntityKeyType {
  ATTRIBUTE,
  CLIENT_ATTRIBUTE,
  SHARED_ATTRIBUTE,
  SERVER_ATTRIBUTE,
  TIME_SERIES,
  ENTITY_FIELD,
  ALARM_FIELD
}

EntityKeyType entityKeyTypeFromString(String value) {
  return EntityKeyType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension EntityKeyTypeToString on EntityKeyType {
  String toShortString() {
    return toString().split('.').last;
  }
}
