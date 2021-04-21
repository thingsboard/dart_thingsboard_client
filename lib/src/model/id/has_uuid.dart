import 'entity_id.dart';

const nullUuid = '13814000-1dd2-11b2-8080-808080808080';

abstract class HasUuid {

  String? id;

  HasUuid(this.id);

  factory HasUuid.fromJson(Map<String, dynamic> json, [fromIdFunction<HasUuid>? fromId]) {
    if (json.containsKey('id')) {
      if (json.containsKey('entityType')) {
        return EntityId.fromJson(json);
      } else {
        String id = json['id'];
        return fromId!(id);
      }
    } else {
      throw FormatException('Missing id!');
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id
    };
  }
}

typedef fromIdFunction<T> = T Function(String id);
