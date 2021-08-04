import 'id/has_uuid.dart';
import 'id/id_based.dart';

typedef fromJsonFunction<T> = T Function(dynamic json);

abstract class BaseData<T extends HasUuid> extends IdBased<T> {
  int? createdTime;

  BaseData();

  BaseData.fromJson(Map<String, dynamic> json, [fromIdFunction<T>? fromId])
      : createdTime = json['createdTime'],
        super.fromJson(json, fromId);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (createdTime != null) {
      json['createdTime'] = createdTime;
    }
    return json;
  }

  @override
  String toString() {
    return 'BaseData{${baseDataString()}}';
  }

  String baseDataString([String? toStringBody]) {
    return '${idBasedString()}, createdTime: $createdTime${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}
