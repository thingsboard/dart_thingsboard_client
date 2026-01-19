import 'package:thingsboard_client/src/model/alarm_models.dart';
import 'package:thingsboard_client/src/model/id/entity_id.dart';
import 'package:thingsboard_client/src/model/query/entity_key/entity_key_type.dart';
import 'package:thingsboard_client/src/model/telemetry_models.dart';

class AlarmData extends AlarmInfo {
  final EntityId entityId;
  final Map<EntityKeyType, Map<String, TsValue>> latest;

  AlarmData.fromJson(Map<String, dynamic> json)
      : entityId = EntityId.fromJson(json['entityId']),
        latest = json['latest'] != null
            ? (json['latest'] as Map<String, dynamic>).map((key, value) =>
                MapEntry(
                    entityKeyTypeFromString(key),
                    (value as Map<String, dynamic>).map((key, value) =>
                        MapEntry(key, TsValue.fromJson(value)))))
            : {},
        super.fromJson(json);

  @override
  String toString() {
    return 'AlarmData{${alarmInfoString('entityId: $entityId, latest: $latest')}}';
  }
}
