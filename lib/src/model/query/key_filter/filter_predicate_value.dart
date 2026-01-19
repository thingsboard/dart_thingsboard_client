import 'package:thingsboard_client/src/model/query/key_filter/dynamic_value.dart';

class FilterPredicateValue<T> {
  T defaultValue;
  T? userValue;
  DynamicValue<T>? dynamicValue;

  FilterPredicateValue(this.defaultValue, {this.userValue, this.dynamicValue});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['defaultValue'] = defaultValue;
    if (userValue != null) {
      json['userValue'] = userValue;
    }
    if (dynamicValue != null) {
      json['dynamicValue'] = dynamicValue!.toJson();
    }
    return json;
  }

  @override
  String toString() {
    return 'FilterPredicateValue{defaultValue: $defaultValue, userValue: $userValue, dynamicValue: $dynamicValue}';
  }
}
