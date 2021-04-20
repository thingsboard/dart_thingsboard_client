import 'id/has_uuid.dart';

typedef fromJsonFunction<T> = T Function(dynamic json);

abstract class BaseData<T extends HasUuid> {
  T id;
  int createdTime;
  String name;
  String? label;

  BaseData.fromJson(Map<String, dynamic> json, [fromIdFunction<T>? fromId]):
        id = hasUuidFromJson(json['id'], fromId),
        createdTime = json['createdTime'],
        name = json['name'],
        label = json['label'];

  @override
  String toString() {
    return 'BaseData{id: $id, createdTime: $createdTime, name: $name, label: $label}';
  }
}
