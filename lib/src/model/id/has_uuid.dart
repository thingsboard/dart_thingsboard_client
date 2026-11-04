// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'entity_id.dart';

const nullUuid = '13814000-1dd2-11b2-8080-808080808080';

abstract class HasUuid {
  String? id;

  HasUuid(this.id);

  factory HasUuid.fromJson(
    Map<String, dynamic> json, [
    FromIdFunction<HasUuid>? fromId,
  ]) {
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

  bool isNullUid() => nullUuid == id;

  Map<String, dynamic> toJson() {
    return {'id': id};
  }
}

typedef FromIdFunction<T> = T Function(String id);
