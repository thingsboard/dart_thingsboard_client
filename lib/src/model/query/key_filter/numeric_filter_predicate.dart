import 'package:thingsboard_client/src/model/query/key_filter/filter_predicate_value.dart';
import 'package:thingsboard_client/src/model/query/key_filter/key_filter_predicate.dart';

enum NumericOperation {
  EQUAL,
  NOT_EQUAL,
  GREATER,
  LESS,
  GREATER_OR_EQUAL,
  LESS_OR_EQUAL
}

NumericOperation numericOperationFromString(String value) {
  return NumericOperation.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension NumericOperationToString on NumericOperation {
  String toShortString() {
    return toString().split('.').last;
  }
}

class NumericFilterPredicate extends SimpleKeyFilterPredicate<double> {
  NumericOperation operation;
  FilterPredicateValue<double> value;

  NumericFilterPredicate({required this.operation, required this.value});

  @override
  FilterPredicateType getType() {
    return FilterPredicateType.NUMERIC;
  }

  @override
  FilterPredicateValue<double> getValue() {
    return value;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['operation'] = operation.toShortString();
    json['value'] = value.toJson();
    return json;
  }

  @override
  String toString() {
    return 'NumericFilterPredicate{operation: $operation, value: $value}';
  }
}
