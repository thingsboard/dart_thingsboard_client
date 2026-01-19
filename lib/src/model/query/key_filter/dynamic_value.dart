enum DynamicValueSourceType {
  CURRENT_TENANT,
  CURRENT_CUSTOMER,
  CURRENT_USER,
  CURRENT_DEVICE
}

DynamicValueSourceType dynamicValueSourceTypeFromString(String value) {
  return DynamicValueSourceType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension DynamicValueSourceTypeToString on DynamicValueSourceType {
  String toShortString() {
    return toString().split('.').last;
  }
}

class DynamicValue<T> {
  DynamicValueSourceType sourceType;
  String sourceAttribute;
  bool inherit;

  DynamicValue(
      {required this.sourceType,
      required this.sourceAttribute,
      this.inherit = false});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['sourceType'] = sourceType.toShortString();
    json['sourceAttribute'] = sourceAttribute;
    json['inherit'] = inherit;
    return json;
  }

  @override
  String toString() {
    return 'DynamicValue{sourceType: $sourceType, sourceAttribute: $sourceAttribute, inherit: $inherit}';
  }
}
