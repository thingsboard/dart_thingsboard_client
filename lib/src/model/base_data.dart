import 'id/has_uuid.dart';

typedef fromJsonFunction<T> = T Function(dynamic json);

abstract class BaseData<T extends HasUuid> {
  T? id;
  int? createdTime;
  String name;
  String? label;

  BaseData(this.name);

  BaseData.fromJson(Map<String, dynamic> json, [fromIdFunction<T>? fromId]):
        id = HasUuid.fromJson(json['id'], fromId) as T,
        createdTime = json['createdTime'],
        name = json['name'],
        label = json['label'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (createdTime != null) {
      json['createdTime'] = createdTime;
    }
    json['name'] = name;
    if (label != null) {
      json['label'] = label;
    }
    return json;
  }

  @override
  String toString() {
    return 'BaseData{id: $id, createdTime: $createdTime, name: $name, label: $label}';
  }
}
