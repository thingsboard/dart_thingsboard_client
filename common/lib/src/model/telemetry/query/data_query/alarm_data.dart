// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../id/entity_id.dart';
import '../../alarm_models.dart';
import '../../ts_value.dart';
import '../entity_key/entity_key_type.dart';

class AlarmData extends AlarmInfo {
  final EntityId entityId;
  final Map<EntityKeyType, Map<String, TsValue>> latest;

  AlarmData.fromJson(super.json)
    : entityId = EntityId.fromJson(json['entityId']),
      latest = json['latest'] != null
          ? (json['latest'] as Map<String, dynamic>).map(
              (key, value) => MapEntry(
                entityKeyTypeFromString(key),
                (value as Map<String, dynamic>).map(
                  (key, value) => MapEntry(key, TsValue.fromJson(value)),
                ),
              ),
            )
          : {},
      super.fromJson();

  @override
  String toString() {
    return 'AlarmData{${alarmInfoString('entityId: $entityId, latest: $latest')}}';
  }
}
