import 'package:thingsboard_client/src/model/id/entity_id.dart';
import 'package:thingsboard_client/src/model/query/entity_key/entity_key_type.dart';
import 'package:thingsboard_client/src/model/telemetry_models.dart';

class EntityData {
  final EntityId entityId;
  final Map<EntityKeyType, Map<String, TsValue>> latest;
  final Map<String, List<TsValue>> timeseries;
  final Map<int, ComparisonTsValue> aggLatest;

  EntityData(
      {required this.entityId,
      required this.latest,
      required this.timeseries,
      required this.aggLatest});

  EntityData.fromJson(Map<String, dynamic> json)
      : entityId = EntityId.fromJson(json['entityId']),
        latest = json['latest'] != null
            ? (json['latest'] as Map<String, dynamic>).map((key, value) =>
                MapEntry(
                    entityKeyTypeFromString(key),
                    (value as Map<String, dynamic>).map((key, value) =>
                        MapEntry(key, TsValue.fromJson(value)))))
            : {},
        timeseries = json['timeseries'] != null
            ? (json['timeseries'] as Map<String, dynamic>).map((key, value) =>
                MapEntry(
                    key,
                    (value as List<dynamic>)
                        .map((e) => TsValue.fromJson(e))
                        .toList()))
            : {},
        aggLatest = json['aggLatest'] != null
            ? (json['aggLatest'] as Map<String, dynamic>).map((key, value) =>
                MapEntry(int.parse(key), ComparisonTsValue.fromJson(value)))
            : {};

  String? field(String name) {
    return _latest(name, EntityKeyType.ENTITY_FIELD);
  }

  String? attribute(String name) {
    return _latest(name, EntityKeyType.ATTRIBUTE);
  }

  String? serverAttribute(String name) {
    return _latest(name, EntityKeyType.SERVER_ATTRIBUTE);
  }

  String? sharedAttribute(String name) {
    return _latest(name, EntityKeyType.SHARED_ATTRIBUTE);
  }

  String? clientAttribute(String name) {
    return _latest(name, EntityKeyType.CLIENT_ATTRIBUTE);
  }

  int? get createdTime {
    var strTime = field('createdTime');
    if (strTime != null) {
      return int.parse(strTime);
    }
    return null;
  }

  String? _latest(String name, EntityKeyType keyType) {
    var fields = latest[keyType];
    if (fields != null) {
      var tsValue = fields[name];
      if (tsValue != null) {
        return tsValue.value;
      }
    }
    return null;
  }

  @override
  String toString() {
    return 'EntityData{entityId: $entityId, latest: $latest, timeseries: $timeseries, aggLatest: $aggLatest}';
  }
}
