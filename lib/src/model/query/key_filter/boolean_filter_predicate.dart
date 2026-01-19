import 'package:thingsboard_client/src/model/query/key_filter/filter_predicate_value.dart';
import 'package:thingsboard_client/src/model/query/key_filter/key_filter_predicate.dart';

enum BooleanOperation { EQUAL, NOT_EQUAL }

BooleanOperation booleanOperationFromString(String value) {
  return BooleanOperation.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension BooleanOperationToString on BooleanOperation {
  String toShortString() {
    return toString().split('.').last;
  }
}

class BooleanFilterPredicate extends SimpleKeyFilterPredicate<bool> {
  BooleanOperation operation;
  FilterPredicateValue<bool> value;

  BooleanFilterPredicate({required this.operation, required this.value});

  @override
  FilterPredicateType getType() {
    return FilterPredicateType.BOOLEAN;
  }

  @override
  FilterPredicateValue<bool> getValue() {
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
    return 'BooleanFilterPredicate{operation: $operation, value: $value}';
  }
}
