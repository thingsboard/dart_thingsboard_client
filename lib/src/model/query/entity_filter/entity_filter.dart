import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter_type.dart';

abstract class EntityFilter {
  EntityFilterType getType();

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = getType().toShortString();
    return json;
  }
}
