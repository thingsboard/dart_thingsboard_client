import 'package:thingsboard_client/src/model/query/key_filter/filter_predicate_value.dart';
import 'package:thingsboard_client/src/model/query/key_filter/key_filter_predicate.dart';

enum StringOperation {
  EQUAL,
  NOT_EQUAL,
  STARTS_WITH,
  ENDS_WITH,
  CONTAINS,
  NOT_CONTAINS,
   IN,
   NOT_IN
}

StringOperation stringOperationFromString(String value) {
  return StringOperation.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension StringOperationToString on StringOperation {
  String toShortString() {
    return toString().split('.').last;
  }
}

class StringFilterPredicate extends SimpleKeyFilterPredicate<String> {
  StringOperation operation;
  FilterPredicateValue<String> value;
  bool ignoreCase;

  StringFilterPredicate(
      {required this.operation, required this.value, this.ignoreCase = false});

  @override
  FilterPredicateType getType() {
    return FilterPredicateType.STRING;
  }

  @override
  FilterPredicateValue<String> getValue() {
    return value;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['operation'] = operation.toShortString();
    json['value'] = value.toJson();
    json['ignoreCase'] = ignoreCase;
    return json;
  }

  @override
  String toString() {
    return 'StringFilterPredicate{operation: $operation, value: $value, ignoreCase: $ignoreCase}';
  }
}
