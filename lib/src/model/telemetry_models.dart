import 'dart:async';
import 'dart:math';

import '../error/thingsboard_error.dart';
import 'entity_type_models.dart';
import 'id/entity_id.dart';
import 'notification_models.dart';
import 'page/page_data.dart';
import 'query/query_models.dart';

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
  static const int MAX_CHARS_PER_DATA_POINT = 512;

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
  static const String KEY = 'key';
  static const String VALUE = 'value';
  static const String LAST_UPDATE_TS = 'lastUpdateTs';
  static const String TS = 'ts';

  static const String CAN_T_PARSE_VALUE = 'Can\'t parse value: ';

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
    if (!(value is Map || value is List)) {
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

enum WsCmdType {
  AUTH,

  ATTRIBUTES,
  TIMESERIES,
  TIMESERIES_HISTORY,
  ENTITY_DATA,
  ENTITY_COUNT,
  ALARM_DATA,
  ALARM_COUNT,

  NOTIFICATIONS,
  NOTIFICATIONS_COUNT,
  MARK_NOTIFICATIONS_AS_READ,
  MARK_ALL_NOTIFICATIONS_AS_READ,

  ALARM_DATA_UNSUBSCRIBE,
  ALARM_COUNT_UNSUBSCRIBE,
  ENTITY_DATA_UNSUBSCRIBE,
  ENTITY_COUNT_UNSUBSCRIBE,
  NOTIFICATIONS_UNSUBSCRIBE
}

WsCmdType wsCmdTypeTypeFromString(String value) {
  return WsCmdType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension WsCmdTypeTypeToString on WsCmdType {
  String toShortString() {
    return toString().split('.').last;
  }
}

abstract class WebsocketCmd {
  int? cmdId;
  WsCmdType type;

  WebsocketCmd({this.cmdId, required this.type});

  Map<String, dynamic> toJson() =>
      {'cmdId': cmdId, 'type': type.toShortString()};
}

abstract class TelemetryPluginCmd extends WebsocketCmd {
  final String? keys;

  TelemetryPluginCmd({int? cmdId, this.keys, required WsCmdType type})
      : super(cmdId: cmdId, type: type);

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
      this.unsubscribe = false,
      required WsCmdType type})
      : super(cmdId: cmdId, keys: keys, type: type);

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
            unsubscribe: unsubscribe,
            type: WsCmdType.ATTRIBUTES);
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
            unsubscribe: unsubscribe,
            type: WsCmdType.TIMESERIES);

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
      : super(cmdId: cmdId, keys: keys, type: WsCmdType.TIMESERIES_HISTORY);

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

class AggKey {
  final int id;
  final String key;
  final Aggregation agg;
  final int? previousStartTs;
  final int? previousEndTs;
  final bool? previousValueOnly;

  AggKey(
      {required this.id,
      required this.key,
      required this.agg,
      this.previousStartTs,
      this.previousEndTs,
      this.previousValueOnly});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'id': id,
      'key': key,
      'agg': agg.toShortString()
    };
    if (previousStartTs != null) {
      json['previousStartTs'] = previousStartTs;
    }
    if (previousEndTs != null) {
      json['previousEndTs'] = previousEndTs;
    }
    if (previousValueOnly != null) {
      json['previousValueOnly'] = previousValueOnly;
    }
    return json;
  }
}

class AggHistoryCmd {
  final List<AggKey> keys;
  final int startTs;
  final int endTs;

  AggHistoryCmd(
      {required this.keys, required this.startTs, required this.endTs});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'keys': keys.map((k) => k.toJson()).toList(),
      'startTs': startTs,
      'endTs': endTs
    };
    return json;
  }
}

class AggTimeSeriesCmd {
  final List<AggKey> keys;
  final int startTs;
  final int timeWindow;

  AggTimeSeriesCmd(
      {required this.keys, required this.startTs, required this.timeWindow});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'keys': keys.map((k) => k.toJson()).toList(),
      'startTs': startTs,
      'timeWindow': timeWindow
    };
    return json;
  }
}

class EntityDataCmd extends WebsocketCmd {
  final EntityDataQuery? query;
  final EntityHistoryCmd? historyCmd;
  final LatestValueCmd? latestCmd;
  final TimeSeriesCmd? tsCmd;
  final AggHistoryCmd? aggHistoryCmd;
  final AggTimeSeriesCmd? aggTsCmd;

  EntityDataCmd(
      {int? cmdId,
      this.query,
      this.historyCmd,
      this.latestCmd,
      this.tsCmd,
      this.aggHistoryCmd,
      this.aggTsCmd})
      : super(cmdId: cmdId, type: WsCmdType.ENTITY_DATA);

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
    if (aggHistoryCmd != null) {
      json['aggHistoryCmd'] = aggHistoryCmd!.toJson();
    }
    if (aggTsCmd != null) {
      json['aggTsCmd'] = aggTsCmd!.toJson();
    }
    return json;
  }

  bool isEmpty() =>
      query == null &&
      historyCmd == null &&
      latestCmd == null &&
      tsCmd == null &&
      aggHistoryCmd == null &&
      aggTsCmd == null;
}

class EntityCountCmd extends WebsocketCmd {
  final EntityCountQuery? query;

  EntityCountCmd({int? cmdId, this.query})
      : super(cmdId: cmdId, type: WsCmdType.ENTITY_COUNT);

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

  AlarmDataCmd({int? cmdId, this.query})
      : super(cmdId: cmdId, type: WsCmdType.ALARM_DATA);

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

class UnreadCountSubCmd extends WebsocketCmd {
  UnreadCountSubCmd({int? cmdId})
      : super(cmdId: cmdId, type: WsCmdType.NOTIFICATIONS_COUNT);
}

class UnreadSubCmd extends WebsocketCmd {
  final int limit;

  UnreadSubCmd({int? cmdId, required this.limit})
      : super(cmdId: cmdId, type: WsCmdType.NOTIFICATIONS);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['limit'] = limit;
    return json;
  }
}

class MarkAsReadCmd extends WebsocketCmd {
  final List<String> notifications;

  MarkAsReadCmd({int? cmdId, required this.notifications})
      : super(cmdId: cmdId, type: WsCmdType.MARK_NOTIFICATIONS_AS_READ);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['notifications'] = notifications;
    return json;
  }
}

class MarkAllAsReadCmd extends WebsocketCmd {
  MarkAllAsReadCmd({int? cmdId})
      : super(cmdId: cmdId, type: WsCmdType.MARK_ALL_NOTIFICATIONS_AS_READ);
}

class EntityDataUnsubscribeCmd extends WebsocketCmd {
  EntityDataUnsubscribeCmd({int? cmdId})
      : super(cmdId: cmdId, type: WsCmdType.ENTITY_DATA_UNSUBSCRIBE);
}

class EntityCountUnsubscribeCmd extends WebsocketCmd {
  EntityCountUnsubscribeCmd({int? cmdId})
      : super(cmdId: cmdId, type: WsCmdType.ENTITY_COUNT_UNSUBSCRIBE);
}

class AlarmDataUnsubscribeCmd extends WebsocketCmd {
  AlarmDataUnsubscribeCmd({int? cmdId})
      : super(cmdId: cmdId, type: WsCmdType.ALARM_DATA_UNSUBSCRIBE);
}

class UnsubscribeCmd extends WebsocketCmd {
  UnsubscribeCmd({int? cmdId})
      : super(cmdId: cmdId, type: WsCmdType.NOTIFICATIONS_UNSUBSCRIBE);
}

class AuthCmd extends WebsocketCmd {
  String? token;

  AuthCmd({int? cmdId, this.token}) : super(cmdId: cmdId, type: WsCmdType.AUTH);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (token != null) {
      json['token'] = token;
    }
    return json;
  }
}

class TelemetryPluginCmdsWrapper {
  List<WebsocketCmd> cmds;
  AuthCmd? authCmd;

  TelemetryPluginCmdsWrapper() : cmds = [];

  bool hasCommands() => cmds.isNotEmpty;

  void clear() {
    cmds.clear();
  }

  void setAuth(String token) {
    authCmd = new AuthCmd(cmdId: 0, token: token);
  }

  TelemetryPluginCmdsWrapper preparePublishCommands(int maxCommands) {
    var preparedWrapper = TelemetryPluginCmdsWrapper();
    if (authCmd != null) {
      preparedWrapper.authCmd = authCmd;
      authCmd = null;
    }
    preparedWrapper.cmds = _popCmds(cmds, maxCommands);
    return preparedWrapper;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {
      'cmds': cmds.map((e) => e.toJson()).toList(),
    };
    if (authCmd != null) {
      json['authCmd'] = authCmd!.toJson();
    }
    return json;
  }

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

class ComparisonTsValue {
  final TsValue current;
  final TsValue? previous;

  ComparisonTsValue({required this.current, this.previous});

  ComparisonTsValue.fromJson(Map<String, dynamic> json)
      : current = TsValue.fromJson(json['current']),
        previous = json['previous'] != null
            ? TsValue.fromJson(json['previous'])
            : null;

  @override
  String toString() {
    return 'ComparisonTsValue{current: $current, previous: $previous}';
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
        case CmdUpdateType.NOTIFICATIONS_COUNT:
          return NotificationCountUpdate.fromJson(json);
        case CmdUpdateType.NOTIFICATIONS:
          return NotificationsUpdate.fromJson(json);
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

enum CmdUpdateType {
  ENTITY_DATA,
  ALARM_DATA,
  COUNT_DATA,
  NOTIFICATIONS_COUNT,
  NOTIFICATIONS
}

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

class NotificationCountUpdate extends CmdUpdate {
  final int totalUnreadCount;

  NotificationCountUpdate.fromJson(Map<String, dynamic> json)
      : totalUnreadCount = json['totalUnreadCount'],
        super.fromJson(json);

  @override
  String toString() {
    return 'NotificationCountUpdate{totalUnreadCount: $totalUnreadCount}';
  }
}

class NotificationsUpdate extends NotificationCountUpdate {
  final Notification? update;
  final List<Notification>? notifications;

  NotificationsUpdate.fromJson(Map<String, dynamic> json)
      : update = json['update'] != null
            ? Notification.fromJson(json['update'])
            : null,
        notifications = json['notifications'] != null
            ? (json['notifications'] as List<dynamic>)
                .map((e) => Notification.fromJson(e))
                .toList()
            : null,
        super.fromJson(json);

  @override
  String toString() {
    return 'NotificationsUpdate{totalUnreadCount: $totalUnreadCount, update: $update, '
        'notifications: $notifications}';
  }
}

abstract class TelemetryService {
  void subscribe(TelemetrySubscriber subscriber);
  void update(TelemetrySubscriber subscriber);
  void unsubscribe(TelemetrySubscriber subscriber);
  void reset(bool close);
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

class NotificationSubscriber {
  final TelemetryService _telemetryService;

  final List<WebsocketCmd> _subscriptionCommands;
  final StreamController<NotificationCountUpdate>
      _notificationCountStreamController;
  final StreamController<NotificationsUpdate>
      _notificationUpdateStreamController;
  final StreamController<void> _reconnectStreamController;

  NotificationsUpdate? lastUpdatedNotification;

  NotificationSubscriber(TelemetryService telemetryService,
      List<WebsocketCmd> subscriptionCommands)
      : _telemetryService = telemetryService,
        _subscriptionCommands = subscriptionCommands,
        _notificationCountStreamController = StreamController.broadcast(),
        _notificationUpdateStreamController = StreamController.broadcast(),
        _reconnectStreamController = StreamController.broadcast();

  void subscribe() {
    _telemetryService.subscribe(this as TelemetrySubscriber);
  }

  void update() {
    _telemetryService.update(this as TelemetrySubscriber);
  }

  void unsubscribe() {
    _telemetryService.unsubscribe(this as TelemetrySubscriber);
    _close();
  }

  void _close() {
    _notificationCountStreamController.close();
    _notificationUpdateStreamController.close();
    _reconnectStreamController.close();
  }

  void onReconnected() {
    _reconnectStreamController.add(null);
  }

  List<WebsocketCmd> get subscriptionCommands => _subscriptionCommands;

  Stream<NotificationCountUpdate> get notificationCountStream =>
      _notificationCountStreamController.stream;

  Stream<NotificationsUpdate> get notificationStream =>
      _notificationUpdateStreamController.stream;

  Stream<void> get reconnectStream => _reconnectStreamController.stream;

  static NotificationSubscriber createNotificationCountSubscription(
      {required TelemetryService telemetryService}) {
    UnreadCountSubCmd subscriptionCommand = UnreadCountSubCmd();
    return NotificationSubscriber(telemetryService, [subscriptionCommand]);
  }

  static NotificationSubscriber createNotificationsSubscription(
      {required TelemetryService telemetryService, int limit = 10}) {
    UnreadSubCmd subscriptionCommand = UnreadSubCmd(limit: limit);
    return NotificationSubscriber(telemetryService, [subscriptionCommand]);
  }

  static NotificationSubscriber createMarkAsReadCommand(
      {required TelemetryService telemetryService,
      required List<String> notifications}) {
    MarkAsReadCmd subscriptionCommand =
        MarkAsReadCmd(notifications: notifications);
    return NotificationSubscriber(telemetryService, [subscriptionCommand]);
  }

  static NotificationSubscriber createMarkAllAsReadCommand(
      {required TelemetryService telemetryService}) {
    MarkAllAsReadCmd subscriptionCommand = MarkAllAsReadCmd();
    return NotificationSubscriber(telemetryService, [subscriptionCommand]);
  }

  void onCmdUpdate(CmdUpdate message) {
    if (message is NotificationsUpdate) {
      _onNotificationData(message);
    } else if (message is NotificationCountUpdate) {
      _onNotificationCount(message);
    }
  }

  void _onNotificationCount(NotificationCountUpdate message) {
    _notificationCountStreamController.add(message);
  }

  Future<void> _onNotificationData(NotificationsUpdate message) async {
    NotificationsUpdate processMessage = message;
    if (lastUpdatedNotification != null && message.update != null) {
      lastUpdatedNotification!.notifications?.insert(0, message.update!);
      var foundCmd = _subscriptionCommands
          .where((command) => command.cmdId == message.cmdId);
      if (foundCmd.isNotEmpty &&
          lastUpdatedNotification!.notifications!.length >
              (foundCmd as Iterable<UnreadSubCmd>).first.limit) {
        lastUpdatedNotification!.notifications?.removeLast();
      }
      processMessage = lastUpdatedNotification!;
    }
    _notificationUpdateStreamController.add(processMessage);
    _notificationCountStreamController.add(processMessage);
    lastUpdatedNotification = processMessage;
  }
}
