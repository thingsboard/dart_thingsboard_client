import 'id/entity_id.dart';

class EntityInfo {
  EntityId id;
  String name;

  EntityInfo(this.id, this.name);

  EntityInfo.fromJson(Map<String, dynamic> json)
      : id = EntityId.fromJson(json['id']),
        name = json['name'];

  @override
  String toString() {
    return 'EntityInfo{${entityInfoString()}}';
  }

  String entityInfoString([String? toStringBody]) {
    return 'id: $id, name: $name${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}
