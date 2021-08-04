import 'has_id.dart';
import 'has_uuid.dart';

abstract class IdBased<I extends HasUuid> extends HasId<I> {
  I? id;

  IdBased();

  IdBased.fromJson(Map<String, dynamic> json, [fromIdFunction<I>? fromId])
      : id = HasUuid.fromJson(json['id'], fromId) as I;

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    return json;
  }

  @override
  I? getId() {
    return id;
  }

  @override
  String toString() {
    return 'IdBased{${idBasedString()}}';
  }

  String idBasedString() {
    return 'id: $id';
  }
}
