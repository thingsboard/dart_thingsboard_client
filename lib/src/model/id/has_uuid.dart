import 'dart:mirrors';

import 'entity_id.dart';

const nullUuid = '13814000-1dd2-11b2-8080-808080808080';

abstract class HasUuid {
  String? id;
}

T hasUuidFromJson<T extends HasUuid>(Map<String, dynamic> json, [Type? type]) {
  if (json.containsKey('id')) {
    if (json.containsKey('entityType')) {
      return entityIdFromJson(json) as T;
    } else {
      String id = json['id'];
      return (reflectType(type!) as ClassMirror).newInstance(Symbol(''), [id]).reflectee as T;
    }
  } else {
    throw FormatException('Missing id!');
  }
}
