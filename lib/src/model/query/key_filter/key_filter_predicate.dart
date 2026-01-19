import 'package:thingsboard_client/src/model/query/key_filter/filter_predicate_value.dart';

enum FilterPredicateType { STRING, NUMERIC, BOOLEAN, COMPLEX }

FilterPredicateType filterPredicateTypeFromString(String value) {
  return FilterPredicateType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension FilterPredicateTypeToString on FilterPredicateType {
  String toShortString() {
    return toString().split('.').last;
  }
}

abstract class KeyFilterPredicate {
  FilterPredicateType getType();

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = getType().toShortString();
    return json;
  }
}

abstract class SimpleKeyFilterPredicate<T> extends KeyFilterPredicate {
  FilterPredicateValue<T> getValue();
}
