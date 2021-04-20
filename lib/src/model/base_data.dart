import 'id/has_uuid.dart';

abstract class BaseData<T extends HasUuid> {
  T id;
  int createdTime;
  String name;
  String? label;

  BaseData.fromJson(Map<String, dynamic> json, [Type? idType]):
        id = hasUuidFromJson(json['id'], idType),
        createdTime = json['createdTime'],
        name = json['name'],
        label = json['label'];

  @override
  String toString() {
    return 'BaseData{id: $id, createdTime: $createdTime, name: $name, label: $label}';
  }
}
