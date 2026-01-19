import 'package:thingsboard_client/src/model/query/entity_key/entity_key.dart';

enum EntityDataSortOrderDirection { ASC, DESC }

EntityDataSortOrderDirection entityDataSortOrderDirectionFromString(
    String value) {
  return EntityDataSortOrderDirection.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension EntityDataSortOrderDirectionToString on EntityDataSortOrderDirection {
  String toShortString() {
    return toString().split('.').last;
  }
}

class EntityDataSortOrder {
  EntityKey key;
  EntityDataSortOrderDirection direction;

  EntityDataSortOrder({required this.key, required this.direction});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['key'] = key.toJson();
    json['direction'] = direction.toShortString();
    return json;
  }

  @override
  String toString() {
    return 'EntityDataSortOrder{key: $key, direction: $direction}';
  }
}
