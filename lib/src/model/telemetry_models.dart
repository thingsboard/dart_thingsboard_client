import 'dart:async';
import 'dart:math';

import 'id/entity_id.dart';
import 'page/page_data.dart';
import 'query/query_models.dart';
import '../error/thingsboard_error.dart';
import 'entity_type_models.dart';

enum DataType { STRING, LONG, BOOLEAN, DOUBLE, JSON }

DataType dataTypeFromString(String value) {
  return DataType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension DataTypeToString on DataType {
  String toShortString() {
    return toString().split('.').last;
  }
}

abstract class KvEntry {
  String getKey();

  DataType getDataType();

  String? getStrValue();

  int? getLongValue();

  bool? getBooleanValue();

  double? getDoubleValue();

  String? getJsonValue();

  String getValueAsString();

  dynamic getValue();
}

abstract class AttributeKvEntry extends KvEntry {
  int getLastUpdateTs();
}

abstract class TsKvEntry extends KvEntry {
  int getTs();

  int getDataPoints();
}

class BaseAttributeKvEntry implements AttributeKvEntry {
  final int lastUpdateTs;
  final KvEntry kv;

  BaseAttributeKvEntry(this.kv, this.lastUpdateTs);

  @override
  int getLastUpdateTs() => lastUpdateTs;

  @override
  String getKey() => kv.getKey();

  @override
  DataType getDataType() => kv.getDataType();

  @override
  String? getStrValue() => kv.getStrValue();

  @override
  int? getLongValue() => kv.getLongValue();

  @override
  bool? getBooleanValue() => kv.getBooleanValue();

  @override
  double? getDoubleValue() => kv.getDoubleValue();

  @override
  String? getJsonValue() => kv.getJsonValue();

  @override
  String getValueAsString() => kv.getValueAsString();

  @override
  dynamic getValue() => kv.getValue();

  @override
  String toString() {
    return 'BaseAttributeKvEntry{lastUpdateTs: $lastUpdateTs, kv: $kv}';
  }
}

class BasicTsKvEntry implements TsKvEntry {
  static final int MAX_CHARS_PER_DATA_POINT = 512;

  final int ts;
  final KvEntry kv;

  BasicTsKvEntry(this.ts, this.kv);

  @override
  int getTs() => ts;

  @override
  String getKey() => kv.getKey();

  @override
  DataType getDataType() => kv.getDataType();

  @override
  String? getStrValue() => kv.getStrValue();

  @override
  int? getLongValue() => kv.getLongValue();

  @override
  bool? getBooleanValue() => kv.getBooleanValue();

  @override
  double? getDoubleValue() => kv.getDoubleValue();

  @override
  String? getJsonValue() => kv.getJsonValue();

  @override
  String getValueAsString() => kv.getValueAsString();

  @override
  dynamic getValue() => kv.getValue();

  @override
  int getDataPoints() {
    int length;
    switch (getDataType()) {
      case DataType.STRING:
        length = getStrValue()!.length;
        break;
      case DataType.JSON:
        length = getJsonValue()!.length;
        break;
      default:
        return 1;
    }
    return max(1,
            (length + MAX_CHARS_PER_DATA_POINT - 1) / MAX_CHARS_PER_DATA_POINT)
        .toInt();
  }

  @override
  String toString() {
    return 'BasicTsKvEntry{ts: $ts, kv: $kv}';
  }
}

abstract class BasicKvEntry implements KvEntry {
  final String key;

  BasicKvEntry(this.key);

  @override
  String getKey() => key;

  @override
  String? getStrValue() => null;

  @override
  int? getLongValue() => null;

  @override
  bool? getBooleanValue() => null;

  @override
  double? getDoubleValue() => null;

  @override
  String? getJsonValue() => null;

  @override
  String toString() {
    return 'BasicKvEntry{key: $key}';
  }
}

class BooleanDataEntry extends BasicKvEntry {
  final bool value;

  BooleanDataEntry(String key, this.value) : super(key);

  @override
  DataType getDataType() => DataType.BOOLEAN;

  @override
  bool? getBooleanValue() => value;

  @override
  dynamic getValue() => value;

  @override
  String getValueAsString() => value.toString();

  @override
  String toString() {
    return 'BooleanDataEntry{value: $value} ' + super.toString();
  }
}

class StringDataEntry extends BasicKvEntry {
  final String value;

  StringDataEntry(String key, this.value) : super(key);

  @override
  DataType getDataType() => DataType.STRING;

  @override
  String? getStrValue() => value;

  @override
  dynamic getValue() => value;

  @override
  String getValueAsString() => value;

  @override
  String toString() {
    return 'StringDataEntry{value: $value} ' + super.toString();
  }
}

class LongDataEntry extends BasicKvEntry {
  final int value;

  LongDataEntry(String key, this.value) : super(key);

  @override
  DataType getDataType() => DataType.LONG;

  @override
  int? getLongValue() => value;

  @override
  dynamic getValue() => value;

  @override
  String getValueAsString() => value.toString();

  @override
  String toString() {
    return 'LongDataEntry{value: $value} ' + super.toString();
  }
}

class DoubleDataEntry extends BasicKvEntry {
  final double value;

  DoubleDataEntry(String key, this.value) : super(key);

  @override
  DataType getDataType() => DataType.DOUBLE;

  @override
  double? getDoubleValue() => value;

  @override
  dynamic getValue() => value;

  @override
  String getValueAsString() => value.toString();

  @override
  String toString() {
    return 'DoubleDataEntry{value: $value} ' + super.toString();
  }
}

class JsonDataEntry extends BasicKvEntry {
  final String value;

  JsonDataEntry(String key, this.value) : super(key);

  @override
  DataType getDataType() => DataType.JSON;

  @override
  String? getJsonValue() => value;

  @override
  dynamic getValue() => value;

  @override
  String getValueAsString() => value;

  @override
  String toString() {
    return 'JsonDataEntry{value: $value} ' + super.toString();
  }
}

enum Aggregation { MIN, MAX, AVG, SUM, COUNT, NONE }

Aggregation aggregationFromString(String value) {
  return Aggregation.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension AggregationToString on Aggregation {
  String toShortString() {
    return toString().split('.').last;
  }
}

abstract class RestJsonConverter {
  static final String KEY = 'key';
  static final String VALUE = 'value';
  static final String LAST_UPDATE_TS = 'lastUpdateTs';
  static final String TS = 'ts';

  static final String CAN_T_PARSE_VALUE = 'Can\'t parse value: ';

  static List<AttributeKvEntry> toAttributes(List<dynamic>? attributes) {
    if (attributes != null && attributes.isNotEmpty) {
      return attributes.map((attr) {
        var entry = _parseValue(attr[KEY] as String, attr[VALUE]);
        return BaseAttributeKvEntry(entry, attr[LAST_UPDATE_TS] as int);
      }).toList();
    } else {
      return [];
    }
  }

  static List<TsKvEntry> toTimeseries(Map<String, dynamic>? timeseries) {
    if (timeseries != null && timeseries.isNotEmpty) {
      var result = <TsKvEntry>[];
      timeseries.forEach((key, value) {
        var values = value as List<dynamic>;
        result.addAll(values.map((ts) {
          var entry = _parseValue(key, ts[VALUE]);
          return BasicTsKvEntry(ts[TS] as int, entry);
        }));
      });
      return result;
    } else {
      return [];
    }
  }

  static KvEntry _parseValue(String key, dynamic value) {
    if (!(value is Map)) {
      if (value is bool) {
        return BooleanDataEntry(key, value);
      } else if (value is num) {
        return _parseNumericValue(key, value);
      } else if (value is String) {
        return StringDataEntry(key, value);
      } else {
        throw ThingsboardError(
            message: CAN_T_PARSE_VALUE + value,
            errorCode: ThingsBoardErrorCode.invalidArguments);
      }
    } else {
      return JsonDataEntry(key, value.toString());
    }
  }

  static KvEntry _parseNumericValue(String key, num value) {
    if (value is int) {
      return LongDataEntry(key, value);
    } else {
      return DoubleDataEntry(key, value.toDouble());
    }
  }
}

enum LatestTelemetry { LATEST_TELEMETRY }

extension LatestTelemetryToString on LatestTelemetry {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum AttributeScope { CLIENT_SCOPE, SERVER_SCOPE, SHARED_SCOPE }

extension AttributeScopeToString on AttributeScope {
  String toShortString() {
    return toString().split('.').last;
  }
}

AttributeScope attributeScopeFromString(String value) {
  return AttributeScope.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

class AttributeData {
  int? lastUpdateTs;
  String key;
  dynamic value;

  AttributeData({this.lastUpdateTs, required this.key, this.value});

  @override
  String toString() {
    return 'AttributeData{lastUpdateTs: $lastUpdateTs, key: $key, value: $value}';
  }
}

enum TelemetryFeature { ATTRIBUTES, TIMESERIES }

abstract class WebsocketCmd {
  int? cmdId;

  WebsocketCmd({this.cmdId});

  Map<String, dynamic> toJson() => {'cmdId': cmdId};
}

abstract class TelemetryPluginCmd extends WebsocketCmd {
  final String? keys;

  TelemetryPluginCmd({int? cmdId, this.keys}) : super(cmdId: cmdId);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (keys != null) {
      json['keys'] = keys;
    }
    return json;
  }
}

abstract class SubscriptionCmd extends TelemetryPluginCmd {
  final EntityType entityType;
  final String entityId;
  final AttributeScope? scope;
  bool unsubscribe;

  SubscriptionCmd(
      {int? cmdId,
      String? keys,
      required this.entityType,
      required this.entityId,
      this.scope,
      this.unsubscribe = false})
      : super(cmdId: cmdId, keys: keys);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityType'] = entityType.toShortString();
    json['entityId'] = entityId;
    if (scope != null) {
      json['scope'] = scope!.toShortString();
    }
    json['unsubscribe'] = unsubscribe;
    return json;
  }

  TelemetryFeature getType();
}

class AttributesSubscriptionCmd extends SubscriptionCmd {
  AttributesSubscriptionCmd(
      {int? cmdId,
      String? keys,
      required EntityType entityType,
      required String entityId,
      AttributeScope? scope,
      bool unsubscribe = false})
      : super(
            cmdId: cmdId,
            keys: keys,
            entityType: entityType,
            entityId: entityId,
            scope: scope,
            unsubscribe: unsubscribe);

  @override
  TelemetryFeature getType() => TelemetryFeature.ATTRIBUTES;
}

class TimeseriesSubscriptionCmd extends SubscriptionCmd {
  final int? startTs;
  final int? timeWindow;
  final int? interval;
  final int? limit;
  final Aggregation agg;

  TimeseriesSubscriptionCmd(
      {int? cmdId,
      String? keys,
      required EntityType entityType,
      required String entityId,
      this.startTs,
      this.timeWindow,
      this.interval = 1000,
      this.limit,
      this.agg = Aggregation.NONE,
      AttributeScope? scope,
      bool unsubscribe = false})
      : super(
            cmdId: cmdId,
            keys: keys,
            entityType: entityType,
            entityId: entityId,
            scope: scope,
            unsubscribe: unsubscribe);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (startTs != null) {
      json['startTs'] = startTs;
    }
    if (timeWindow != null) {
      json['timeWindow'] = timeWindow;
    }
    if (interval != null) {
      json['interval'] = interval;
    }
    if (limit != null) {
      json['limit'] = limit;
    }
    json['agg'] = agg.toShortString();
    return json;
  }

  @override
  TelemetryFeature getType() => TelemetryFeature.TIMESERIES;
}

class GetHistoryCmd extends TelemetryPluginCmd {
  final EntityType entityType;
  final String entityId;
  final int startTs;
  final int endTs;
  final int interval;
  final int? limit;
  final Aggregation agg;

  GetHistoryCmd(
      {int? cmdId,
      String? keys,
      required this.entityType,
      required this.entityId,
      required this.startTs,
      required this.endTs,
      this.interval = 1000,
      this.limit,
      this.agg = Aggregation.NONE})
      : super(cmdId: cmdId, keys: keys);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityType'] = entityType.toShortString();
    json['entityId'] = entityId;
    json['startTs'] = startTs;
    json['endTs'] = endTs;
    json['interval'] = interval;
    if (limit != null) {
      json['limit'] = limit;
    }
    json['agg'] = agg.toShortString();
    return json;
  }
}

class EntityHistoryCmd {
  final List<String> keys;
  final int startTs;
  final int endTs;
  final int interval;
  final int? limit;
  final Aggregation agg;
  final bool? fetchLatestPreviousPoint;

  EntityHistoryCmd(
      {required this.keys,
      required this.startTs,
      required this.endTs,
      this.interval = 1000,
      this.limit,
      this.agg = Aggregation.NONE,
      this.fetchLatestPreviousPoint});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'keys': keys,
      'startTs': startTs,
      'endTs': endTs,
      'interval': interval,
      'agg': agg.toShortString()
    };
    if (limit != null) {
      json['limit'] = limit;
    }
    if (fetchLatestPreviousPoint != null) {
      json['fetchLatestPreviousPoint'] = fetchLatestPreviousPoint;
    }
    return json;
  }
}

class LatestValueCmd {
  final List<EntityKey> keys;

  LatestValueCmd({required this.keys});

  Map<String, dynamic> toJson() =>
      {'keys': keys.map((e) => e.toJson()).toList()};
}

class TimeSeriesCmd {
  final List<String> keys;
  final int startTs;
  final int timeWindow;
  final int interval;
  final int? limit;
  final Aggregation agg;
  final bool? fetchLatestPreviousPoint;

  TimeSeriesCmd(
      {required this.keys,
      required this.startTs,
      required this.timeWindow,
      this.interval = 1000,
      this.limit,
      this.agg = Aggregation.NONE,
      this.fetchLatestPreviousPoint});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'keys': keys,
      'startTs': startTs,
      'timeWindow': timeWindow,
      'interval': interval,
      'agg': agg.toShortString()
    };
    if (limit != null) {
      json['limit'] = limit;
    }
    if (fetchLatestPreviousPoint != null) {
      json['fetchLatestPreviousPoint'] = fetchLatestPreviousPoint;
    }
    return json;
  }
}

class EntityDataCmd extends WebsocketCmd {
  final EntityDataQuery? query;
  final EntityHistoryCmd? historyCmd;
  final LatestValueCmd? latestCmd;
  final TimeSeriesCmd? tsCmd;

  EntityDataCmd(
      {int? cmdId, this.query, this.historyCmd, this.latestCmd, this.tsCmd})
      : super(cmdId: cmdId);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (query != null) {
      json['query'] = query!.toJson();
    }
    if (historyCmd != null) {
      json['historyCmd'] = historyCmd!.toJson();
    }
    if (latestCmd != null) {
      json['latestCmd'] = latestCmd!.toJson();
    }
    if (tsCmd != null) {
      json['tsCmd'] = tsCmd!.toJson();
    }
    return json;
  }

  bool isEmpty() =>
      query == null && historyCmd == null && latestCmd == null && tsCmd == null;
}

class EntityCountCmd extends WebsocketCmd {
  final EntityCountQuery? query;

  EntityCountCmd({int? cmdId, this.query}) : super(cmdId: cmdId);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (query != null) {
      json['query'] = query!.toJson();
    }
    return json;
  }

  bool isEmpty() => query == null;
}

class AlarmDataCmd extends WebsocketCmd {
  final AlarmDataQuery? query;

  AlarmDataCmd({int? cmdId, this.query}) : super(cmdId: cmdId);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (query != null) {
      json['query'] = query!.toJson();
    }
    return json;
  }

  bool isEmpty() => query == null;
}

class EntityDataUnsubscribeCmd extends WebsocketCmd {
  EntityDataUnsubscribeCmd({int? cmdId}) : super(cmdId: cmdId);
}

class EntityCountUnsubscribeCmd extends WebsocketCmd {
  EntityCountUnsubscribeCmd({int? cmdId}) : super(cmdId: cmdId);
}

class AlarmDataUnsubscribeCmd extends WebsocketCmd {
  AlarmDataUnsubscribeCmd({int? cmdId}) : super(cmdId: cmdId);
}

class TelemetryPluginCmdsWrapper {
  List<AttributesSubscriptionCmd> attrSubCmds;
  List<TimeseriesSubscriptionCmd> tsSubCmds;
  List<GetHistoryCmd> historyCmds;
  List<EntityDataCmd> entityDataCmds;
  List<EntityDataUnsubscribeCmd> entityDataUnsubscribeCmds;
  List<AlarmDataCmd> alarmDataCmds;
  List<AlarmDataUnsubscribeCmd> alarmDataUnsubscribeCmds;
  List<EntityCountCmd> entityCountCmds;
  List<EntityCountUnsubscribeCmd> entityCountUnsubscribeCmds;

  TelemetryPluginCmdsWrapper()
      : attrSubCmds = [],
        tsSubCmds = [],
        historyCmds = [],
        entityDataCmds = [],
        entityDataUnsubscribeCmds = [],
        alarmDataCmds = [],
        alarmDataUnsubscribeCmds = [],
        entityCountCmds = [],
        entityCountUnsubscribeCmds = [];

  bool hasCommands() =>
      tsSubCmds.isNotEmpty ||
      historyCmds.isNotEmpty ||
      attrSubCmds.isNotEmpty ||
      entityDataCmds.isNotEmpty ||
      entityDataUnsubscribeCmds.isNotEmpty ||
      alarmDataCmds.isNotEmpty ||
      alarmDataUnsubscribeCmds.isNotEmpty ||
      entityCountCmds.isNotEmpty ||
      entityCountUnsubscribeCmds.isNotEmpty;

  void clear() {
    attrSubCmds.clear();
    tsSubCmds.clear();
    historyCmds.clear();
    entityDataCmds.clear();
    entityDataUnsubscribeCmds.clear();
    alarmDataCmds.clear();
    alarmDataUnsubscribeCmds.clear();
    entityCountCmds.clear();
    entityCountUnsubscribeCmds.clear();
  }

  TelemetryPluginCmdsWrapper preparePublishCommands(int maxCommands) {
    var preparedWrapper = TelemetryPluginCmdsWrapper();
    var leftCount = maxCommands;
    preparedWrapper.tsSubCmds = _popCmds(tsSubCmds, leftCount);
    leftCount -= preparedWrapper.tsSubCmds.length;
    preparedWrapper.historyCmds = _popCmds(historyCmds, leftCount);
    leftCount -= preparedWrapper.historyCmds.length;
    preparedWrapper.attrSubCmds = _popCmds(attrSubCmds, leftCount);
    leftCount -= preparedWrapper.attrSubCmds.length;
    preparedWrapper.entityDataCmds = _popCmds(entityDataCmds, leftCount);
    leftCount -= preparedWrapper.entityDataCmds.length;
    preparedWrapper.entityDataUnsubscribeCmds =
        _popCmds(entityDataUnsubscribeCmds, leftCount);
    leftCount -= preparedWrapper.entityDataUnsubscribeCmds.length;
    preparedWrapper.alarmDataCmds = _popCmds(alarmDataCmds, leftCount);
    leftCount -= preparedWrapper.alarmDataCmds.length;
    preparedWrapper.alarmDataUnsubscribeCmds =
        _popCmds(alarmDataUnsubscribeCmds, leftCount);
    leftCount -= preparedWrapper.alarmDataUnsubscribeCmds.length;
    preparedWrapper.entityCountCmds = _popCmds(entityCountCmds, leftCount);
    leftCount -= preparedWrapper.entityCountCmds.length;
    preparedWrapper.entityCountUnsubscribeCmds =
        _popCmds(entityCountUnsubscribeCmds, leftCount);
    return preparedWrapper;
  }

  Map<String, dynamic> toJson() => {
        'attrSubCmds': attrSubCmds.map((e) => e.toJson()).toList(),
        'tsSubCmds': tsSubCmds.map((e) => e.toJson()).toList(),
        'historyCmds': historyCmds.map((e) => e.toJson()).toList(),
        'entityDataCmds': entityDataCmds.map((e) => e.toJson()).toList(),
        'entityDataUnsubscribeCmds':
            entityDataUnsubscribeCmds.map((e) => e.toJson()).toList(),
        'alarmDataCmds': alarmDataCmds.map((e) => e.toJson()).toList(),
        'alarmDataUnsubscribeCmds':
            alarmDataUnsubscribeCmds.map((e) => e.toJson()).toList(),
        'entityCountCmds': entityCountCmds.map((e) => e.toJson()).toList(),
        'entityCountUnsubscribeCmds':
            entityCountUnsubscribeCmds.map((e) => e.toJson()).toList()
      };

  List<T> _popCmds<T>(List<T> cmds, int leftCount) {
    var toPublish = min(cmds.length, leftCount);
    if (toPublish > 0) {
      var res = cmds.sublist(0, toPublish);
      cmds.removeRange(0, toPublish);
      return res;
    } else {
      return [];
    }
  }
}

class TsValue {
  int ts;
  String? value;

  TsValue({required this.ts, this.value});

  TsValue.fromJson(Map<String, dynamic> json)
      : ts = json['ts'],
        value = json['value'];

  TsValue.fromJsonList(List<dynamic> json)
      : ts = json[0],
        value = json[1];

  @override
  String toString() {
    return 'TsValue{ts: $ts, value: $value}';
  }
}

abstract class WebsocketDataMsg {
  WebsocketDataMsg();

  factory WebsocketDataMsg.fromJson(Map<String, dynamic> json) {
    var cmdUpdateTypeVal = json['cmdUpdateType'];
    if (cmdUpdateTypeVal == null) {
      var subscriptionIdVal = json['subscriptionId'];
      if (subscriptionIdVal != null) {
        return SubscriptionUpdate.fromJson(json);
      }
    } else {
      var cmdUpdateType = cmdUpdateTypeFromString(cmdUpdateTypeVal);
      switch (cmdUpdateType) {
        case CmdUpdateType.ENTITY_DATA:
          return EntityDataUpdate.fromJson(json);
        case CmdUpdateType.ALARM_DATA:
          return AlarmDataUpdate.fromJson(json);
        case CmdUpdateType.COUNT_DATA:
          return EntityCountUpdate.fromJson(json);
      }
    }
    throw ArgumentError('Unexpected type of websocket data');
  }
}

class SubscriptionDataHolder extends WebsocketDataMsg {
  final Map<String, List<TsValue>> data;

  SubscriptionDataHolder.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as Map<String, dynamic>).map((key, value) {
          var tsList = value as List<dynamic>;
          var tsValuesList =
              tsList.map((e) => TsValue.fromJsonList(e)).toList();
          return MapEntry(key, tsValuesList);
        });

  @override
  String toString() {
    return 'SubscriptionDataHolder{data: $data}';
  }
}

class SubscriptionUpdate extends SubscriptionDataHolder {
  final int subscriptionId;
  final int? errorCode;
  final String? errorMsg;

  SubscriptionUpdate.fromJson(Map<String, dynamic> json)
      : subscriptionId = json['subscriptionId'],
        errorCode = json['errorCode'],
        errorMsg = json['errorMsg'],
        super.fromJson(json);

  void prepareData(List<String>? keys) {
    if (keys != null) {
      keys.forEach((key) {
        if (!data.containsKey(key)) {
          data[key] = [];
        }
      });
    }
  }

  List<AttributeData> updateAttributeData(List<AttributeData> origData) {
    data.forEach((key, keyData) {
      if (keyData.isNotEmpty) {
        final existing = origData.where((data) => data.key == key);
        if (existing.isNotEmpty) {
          var existingData = existing.first;
          existingData.lastUpdateTs = keyData[0].ts;
          existingData.value = keyData[0].value;
        } else {
          origData.add(AttributeData(
              key: key, lastUpdateTs: keyData[0].ts, value: keyData[0].value));
        }
      }
    });
    return origData;
  }

  @override
  String toString() {
    return 'SubscriptionUpdate{subscriptionId: $subscriptionId, data: $data, errorCode: $errorCode, errorMsg: $errorMsg}';
  }
}

enum CmdUpdateType { ENTITY_DATA, ALARM_DATA, COUNT_DATA }

CmdUpdateType cmdUpdateTypeFromString(String value) {
  return CmdUpdateType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

abstract class CmdUpdate extends WebsocketDataMsg {
  final int cmdId;
  final int? errorCode;
  final String? errorMsg;

  CmdUpdate.fromJson(Map<String, dynamic> json)
      : cmdId = json['cmdId'],
        errorCode = json['errorCode'],
        errorMsg = json['errorMsg'];
}

abstract class DataUpdate<T> extends CmdUpdate {
  final PageData<T>? data;
  final List<T>? update;

  DataUpdate.fromJson(Map<String, dynamic> json,
      T Function(Map<String, dynamic> json) dataFromJson)
      : data = json['data'] != null
            ? PageData.fromJson(json['data'], (json) => dataFromJson(json))
            : null,
        update = json['update'] != null
            ? (json['update'] as List<dynamic>)
                .map((e) => dataFromJson(e))
                .toList()
            : null,
        super.fromJson(json);

  @override
  String toString() {
    return 'DataUpdate{data: $data, update: $update}';
  }
}

class EntityDataUpdate extends DataUpdate<EntityData> {
  EntityDataUpdate.fromJson(Map<String, dynamic> json)
      : super.fromJson(json, (json) => EntityData.fromJson(json));

  void prepareData(int tsOffset) {
    if (data != null) {
      _processEntityData(data!.data, tsOffset);
    }
    if (update != null) {
      _processEntityData(update!, tsOffset);
    }
  }

  void _processEntityData(List<EntityData> data, int tsOffset) {
    data.forEach((entityData) {
      entityData.timeseries.forEach((key, tsValues) {
        tsValues.forEach((tsValue) {
          tsValue.ts += tsOffset;
        });
      });
      entityData.latest.forEach((key, keyTypeValues) {
        keyTypeValues.forEach((key, tsValue) {
          tsValue.ts += tsOffset;
          if (key == 'createdTime' && tsValue.value != null) {
            tsValue.value = (int.parse(tsValue.value!) + tsOffset).toString();
          }
        });
      });
    });
  }
}

class AlarmDataUpdate extends DataUpdate<AlarmData> {
  final int? allowedEntities;
  final int? totalEntities;

  AlarmDataUpdate.fromJson(Map<String, dynamic> json)
      : allowedEntities = json['allowedEntities'],
        totalEntities = json['totalEntities'],
        super.fromJson(json, (json) => AlarmData.fromJson(json));

  void prepareData(int tsOffset) {
    if (data != null) {
      _processAlarmData(data!.data, tsOffset);
    }
    if (update != null) {
      _processAlarmData(update!, tsOffset);
    }
  }

  void _processAlarmData(List<AlarmData> data, int tsOffset) {
    data.forEach((alarmData) {
      alarmData.createdTime = alarmData.createdTime! + tsOffset;
      alarmData.ackTs += tsOffset;
      alarmData.clearTs += tsOffset;
      alarmData.endTs += tsOffset;
      alarmData.latest.forEach((key, keyTypeValues) {
        keyTypeValues.forEach((key, tsValue) {
          tsValue.ts += tsOffset;
          if (['createdTime', 'startTime', 'endTime', 'ackTime', 'clearTime']
                  .contains(key) &&
              tsValue.value != null) {
            tsValue.value = (int.parse(tsValue.value!) + tsOffset).toString();
          }
        });
      });
    });
  }
}

class EntityCountUpdate extends CmdUpdate {
  final int count;

  EntityCountUpdate.fromJson(Map<String, dynamic> json)
      : count = json['count'],
        super.fromJson(json);

  @override
  String toString() {
    return 'EntityCountUpdate{count: $count}';
  }
}

abstract class TelemetryService {
  void subscribe(TelemetrySubscriber subscriber);
  void update(TelemetrySubscriber subscriber);
  void unsubscribe(TelemetrySubscriber subscriber);
}

class TelemetrySubscriber {
  final TelemetryService _telemetryService;

  final List<WebsocketCmd> _subscriptionCommands;
  final StreamController<SubscriptionUpdate> _dataStreamController;
  final StreamController<EntityDataUpdate> _entityDataStreamController;
  final StreamController<AlarmDataUpdate> _alarmDataStreamController;
  final StreamController<EntityCountUpdate> _entityCountStreamController;
  final StreamController<void> _reconnectStreamController;

  int? _tsOffset;

  TelemetrySubscriber(TelemetryService telemetryService,
      List<WebsocketCmd> subscriptionCommands)
      : _telemetryService = telemetryService,
        _subscriptionCommands = subscriptionCommands,
        _dataStreamController = StreamController.broadcast(),
        _entityDataStreamController = StreamController.broadcast(),
        _alarmDataStreamController = StreamController.broadcast(),
        _entityCountStreamController = StreamController.broadcast(),
        _reconnectStreamController = StreamController.broadcast();

  static TelemetrySubscriber createEntityAttributesSubscription(
      {required TelemetryService telemetryService,
      required EntityId entityId,
      required String attributeScope,
      List<String>? keys}) {
    SubscriptionCmd subscriptionCommand;
    var subscriptionKeys = keys != null ? keys.join(',') : null;
    if (attributeScope == LatestTelemetry.LATEST_TELEMETRY.toShortString()) {
      subscriptionCommand = TimeseriesSubscriptionCmd(
          entityId: entityId.id!,
          entityType: entityId.entityType,
          keys: subscriptionKeys);
    } else {
      var scope = attributeScopeFromString(attributeScope);
      subscriptionCommand = AttributesSubscriptionCmd(
          entityId: entityId.id!,
          entityType: entityId.entityType,
          keys: subscriptionKeys,
          scope: scope);
    }
    return TelemetrySubscriber(telemetryService, [subscriptionCommand]);
  }

  void subscribe() {
    _telemetryService.subscribe(this);
  }

  void update() {
    _telemetryService.update(this);
  }

  void unsubscribe() {
    _telemetryService.unsubscribe(this);
    _close();
  }

  void _close() {
    _dataStreamController.close();
    _entityDataStreamController.close();
    _alarmDataStreamController.close();
    _entityCountStreamController.close();
    _reconnectStreamController.close();
  }

  bool setTsOffset(int tsOffset) {
    if (_tsOffset != tsOffset) {
      var changed = _tsOffset != null;
      _tsOffset = tsOffset;
      return changed;
    } else {
      return false;
    }
  }

  void onData(SubscriptionUpdate message) {
    var cmdId = message.subscriptionId;
    List<String>? keys;
    var foundCmd =
        _subscriptionCommands.where((command) => command.cmdId == cmdId);
    if (foundCmd.isNotEmpty) {
      var cmd = foundCmd.first;
      var telemetryPluginCmd = cmd as TelemetryPluginCmd;
      if (telemetryPluginCmd.keys != null &&
          telemetryPluginCmd.keys!.isNotEmpty) {
        keys = telemetryPluginCmd.keys!.split(',');
      }
    }
    message.prepareData(keys);
    _dataStreamController.add(message);
  }

  void onCmdUpdate(CmdUpdate message) {
    if (message is EntityDataUpdate) {
      _onEntityData(message);
    } else if (message is AlarmDataUpdate) {
      _onAlarmData(message);
    } else if (message is EntityCountUpdate) {
      _onEntityCount(message);
    }
  }

  void onReconnected() {
    _reconnectStreamController.add(null);
  }

  void _onEntityData(EntityDataUpdate message) {
    if (_tsOffset != null) {
      message.prepareData(_tsOffset!);
    }
    _entityDataStreamController.add(message);
  }

  void _onAlarmData(AlarmDataUpdate message) {
    if (_tsOffset != null) {
      message.prepareData(_tsOffset!);
    }
    _alarmDataStreamController.add(message);
  }

  void _onEntityCount(EntityCountUpdate message) {
    _entityCountStreamController.add(message);
  }

  List<WebsocketCmd> get subscriptionCommands => _subscriptionCommands;

  Stream<SubscriptionUpdate> get dataStream => _dataStreamController.stream;

  Stream<EntityDataUpdate> get entityDataStream =>
      _entityDataStreamController.stream;

  Stream<AlarmDataUpdate> get alarmDataStream =>
      _alarmDataStreamController.stream;

  Stream<EntityCountUpdate> get entityCountStream =>
      _entityCountStreamController.stream;

  Stream<void> get reconnectStream => _reconnectStreamController.stream;

  Stream<List<AttributeData>> get attributeDataStream {
    final attributeData = <AttributeData>[];
    return dataStream
        .map((message) => message.updateAttributeData(attributeData));
  }
}
