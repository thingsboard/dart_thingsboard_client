import 'package:thingsboard_client/src/model/query/entity_key/entity_key_type.dart';

class EntityKey {
  EntityKeyType type;
  String key;

  EntityKey({required this.type, required this.key});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = type.toShortString();
    json['key'] = key;
    return json;
  }

  @override
  String toString() {
    return 'EntityKey{type: $type, key: $key}';
  }
}
