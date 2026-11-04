// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../id/has_uuid.dart';
import '../id/id_based.dart';

typedef FromJsonFunction<T> = T Function(dynamic json);

abstract class BaseData<T extends HasUuid> extends IdBased<T> {
  int? createdTime;

  BaseData();

  BaseData.fromJson(Map<String, dynamic> json, [FromIdFunction<T>? fromId])
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

  int? getCreatedTime() {
    return createdTime;
  }

  void setCreatedTime(int? createdTime) {
    this.createdTime = createdTime;
  }

  String baseDataString([String? toStringBody]) {
    return '${idBasedString()}, createdTime: $createdTime${toStringBody != null ? ', ' + toStringBody : ''}';
  }
}
