// Copyright © 2021-2026 ThingsBoard, Inc. and contributors
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';

import '../../api_serializers.dart';
import '../aggregation.dart';
import '../alarm_data.dart';
import '../alarm_data_query.dart';
import '../attribute_data.dart';
import '../attribute_scope.dart';
import '../entity_count_query.dart';
import '../entity_data.dart';
import '../entity_data_query.dart';
import '../entity_id.dart';
import '../entity_key.dart';
import '../key_filter.dart';
import '../entity_type.dart';
import '../notification.dart';
import '../page_data_alarm_data.dart';
import '../page_data_entity_data.dart';
import '../ts_value.dart';

/// The wire name of [value], a generated enum value with its [serializer].
///
/// An enum serializer only maps names, so it needs no registered serializers.
String _wireName<T extends Object>(Serializer<T> serializer, T value) =>
    (serializer as PrimitiveSerializer<T>).serialize(apiSerializers(), value)
        as String;

// The queries below are sent with the defaults the facade always sent filled in
// where they are unset: the server rejects an alarm subscription whose
// latestValues is missing ("keys" is null) once it starts its live updates.

EntityDataQuery _entityDataQueryWithDefaults(EntityDataQuery query) =>
    query.rebuild((b) {
      if (query.keyFilters == null) b.keyFilters = ListBuilder<KeyFilter>();
      if (query.entityFields == null) b.entityFields = ListBuilder<EntityKey>();
      if (query.latestValues == null) b.latestValues = ListBuilder<EntityKey>();
      if (query.pageLink != null) {
        b.pageLink.page ??= 0;
        b.pageLink.dynamic_ ??= false;
      }
    });

EntityCountQuery _entityCountQueryWithDefaults(EntityCountQuery query) =>
    query.rebuild((b) {
      if (query.keyFilters == null) b.keyFilters = ListBuilder<KeyFilter>();
    });

AlarmDataQuery _alarmDataQueryWithDefaults(AlarmDataQuery query) =>
    query.rebuild((b) {
      if (query.keyFilters == null) b.keyFilters = ListBuilder<KeyFilter>();
      if (query.entityFields == null) b.entityFields = ListBuilder<EntityKey>();
      if (query.latestValues == null) b.latestValues = ListBuilder<EntityKey>();
      if (query.pageLink != null) {
        b.pageLink.page ??= 0;
        b.pageLink.dynamic_ ??= false;
      }
    });

enum LatestTelemetry { LATEST_TELEMETRY }

extension LatestTelemetryToString on LatestTelemetry {
  String toShortString() {
    return toString().split('.').last;
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
  NOTIFICATIONS_UNSUBSCRIBE,
}

WsCmdType wsCmdTypeTypeFromString(String value) {
  return WsCmdType.values.firstWhere(
    (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase(),
  );
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

  Map<String, dynamic> toJson() => {
    'cmdId': cmdId,
    'type': type.toShortString(),
  };
}

abstract class TelemetryPluginCmd extends WebsocketCmd {
  final String? keys;

  TelemetryPluginCmd({super.cmdId, this.keys, required super.type});

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

  SubscriptionCmd({
    super.cmdId,
    super.keys,
    required this.entityType,
    required this.entityId,
    this.scope,
    this.unsubscribe = false,
    required super.type,
  });

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityType'] = _wireName(EntityType.serializer, entityType);
    json['entityId'] = entityId;
    if (scope != null) {
      json['scope'] = _wireName(AttributeScope.serializer, scope!);
    }
    json['unsubscribe'] = unsubscribe;
    return json;
  }
}

class AttributesSubscriptionCmd extends SubscriptionCmd {
  AttributesSubscriptionCmd({
    super.cmdId,
    super.keys,
    required super.entityType,
    required super.entityId,
    super.scope,
    super.unsubscribe,
  }) : super(type: WsCmdType.ATTRIBUTES);
}

class TimeseriesSubscriptionCmd extends SubscriptionCmd {
  final int? startTs;
  final int? timeWindow;
  final int? interval;
  final int? limit;
  final Aggregation? agg;

  TimeseriesSubscriptionCmd({
    super.cmdId,
    super.keys,
    required super.entityType,
    required super.entityId,
    this.startTs,
    this.timeWindow,
    this.interval = 1000,
    this.limit,
    this.agg = Aggregation.NONE,
    super.scope,
    super.unsubscribe,
  }) : super(type: WsCmdType.TIMESERIES);

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
    if (agg != null) {
      json['agg'] = _wireName(Aggregation.serializer, agg!);
    }
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

  GetHistoryCmd({
    super.cmdId,
    super.keys,
    required this.entityType,
    required this.entityId,
    required this.startTs,
    required this.endTs,
    this.interval = 1000,
    this.limit,
    this.agg = Aggregation.NONE,
  }) : super(type: WsCmdType.TIMESERIES_HISTORY);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityType'] = _wireName(EntityType.serializer, entityType);
    json['entityId'] = entityId;
    json['startTs'] = startTs;
    json['endTs'] = endTs;
    json['interval'] = interval;
    if (limit != null) {
      json['limit'] = limit;
    }
    json['agg'] = _wireName(Aggregation.serializer, agg);
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

  EntityHistoryCmd({
    required this.keys,
    required this.startTs,
    required this.endTs,
    this.interval = 1000,
    this.limit,
    this.agg = Aggregation.NONE,
    this.fetchLatestPreviousPoint,
  });

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'keys': keys,
      'startTs': startTs,
      'endTs': endTs,
      'interval': interval,
      'agg': _wireName(Aggregation.serializer, agg),
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

  Map<String, dynamic> toJson() => {
    'keys': [
      for (final key in keys)
        apiSerializers(
          registerEntityKey,
        ).serializeWith(EntityKey.serializer, key),
    ],
  };
}

class TimeSeriesCmd {
  final List<String> keys;
  final int startTs;
  final int timeWindow;
  final int interval;
  final int? limit;
  final Aggregation agg;
  final bool? fetchLatestPreviousPoint;

  TimeSeriesCmd({
    required this.keys,
    required this.startTs,
    required this.timeWindow,
    this.interval = 1000,
    this.limit,
    this.agg = Aggregation.NONE,
    this.fetchLatestPreviousPoint,
  });

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'keys': keys,
      'startTs': startTs,
      'timeWindow': timeWindow,
      'interval': interval,
      'agg': _wireName(Aggregation.serializer, agg),
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

  AggKey({
    required this.id,
    required this.key,
    required this.agg,
    this.previousStartTs,
    this.previousEndTs,
    this.previousValueOnly,
  });

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'id': id,
      'key': key,
      'agg': _wireName(Aggregation.serializer, agg),
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

  AggHistoryCmd({
    required this.keys,
    required this.startTs,
    required this.endTs,
  });

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'keys': keys.map((k) => k.toJson()).toList(),
      'startTs': startTs,
      'endTs': endTs,
    };
    return json;
  }
}

class AggTimeSeriesCmd {
  final List<AggKey> keys;
  final int startTs;
  final int timeWindow;

  AggTimeSeriesCmd({
    required this.keys,
    required this.startTs,
    required this.timeWindow,
  });

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{
      'keys': keys.map((k) => k.toJson()).toList(),
      'startTs': startTs,
      'timeWindow': timeWindow,
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

  EntityDataCmd({
    super.cmdId,
    this.query,
    this.historyCmd,
    this.latestCmd,
    this.tsCmd,
    this.aggHistoryCmd,
    this.aggTsCmd,
  }) : super(type: WsCmdType.ENTITY_DATA);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (query != null) {
      json['query'] = apiSerializers(registerEntityDataQuery).serializeWith(
        EntityDataQuery.serializer,
        _entityDataQueryWithDefaults(query!),
      );
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

  EntityCountCmd({super.cmdId, this.query})
    : super(type: WsCmdType.ENTITY_COUNT);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (query != null) {
      json['query'] = apiSerializers(registerEntityCountQuery).serializeWith(
        EntityCountQuery.serializer,
        _entityCountQueryWithDefaults(query!),
      );
    }
    return json;
  }

  bool isEmpty() => query == null;
}

class AlarmDataCmd extends WebsocketCmd {
  final AlarmDataQuery? query;

  AlarmDataCmd({super.cmdId, this.query}) : super(type: WsCmdType.ALARM_DATA);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (query != null) {
      json['query'] = apiSerializers(registerAlarmDataQuery).serializeWith(
        AlarmDataQuery.serializer,
        _alarmDataQueryWithDefaults(query!),
      );
    }
    return json;
  }

  bool isEmpty() => query == null;
}

class UnreadCountSubCmd extends WebsocketCmd {
  UnreadCountSubCmd({super.cmdId}) : super(type: WsCmdType.NOTIFICATIONS_COUNT);
}

class UnreadSubCmd extends WebsocketCmd {
  final int limit;

  UnreadSubCmd({super.cmdId, required this.limit})
    : super(type: WsCmdType.NOTIFICATIONS);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['limit'] = limit;
    return json;
  }
}

class MarkAsReadCmd extends WebsocketCmd {
  final List<String> notifications;

  MarkAsReadCmd({super.cmdId, required this.notifications})
    : super(type: WsCmdType.MARK_NOTIFICATIONS_AS_READ);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['notifications'] = notifications;
    return json;
  }
}

class MarkAllAsReadCmd extends WebsocketCmd {
  MarkAllAsReadCmd({super.cmdId})
    : super(type: WsCmdType.MARK_ALL_NOTIFICATIONS_AS_READ);
}

class EntityDataUnsubscribeCmd extends WebsocketCmd {
  EntityDataUnsubscribeCmd({super.cmdId})
    : super(type: WsCmdType.ENTITY_DATA_UNSUBSCRIBE);
}

class EntityCountUnsubscribeCmd extends WebsocketCmd {
  EntityCountUnsubscribeCmd({super.cmdId})
    : super(type: WsCmdType.ENTITY_COUNT_UNSUBSCRIBE);
}

class AlarmDataUnsubscribeCmd extends WebsocketCmd {
  AlarmDataUnsubscribeCmd({super.cmdId})
    : super(type: WsCmdType.ALARM_DATA_UNSUBSCRIBE);
}

class UnsubscribeCmd extends WebsocketCmd {
  UnsubscribeCmd({super.cmdId})
    : super(type: WsCmdType.NOTIFICATIONS_UNSUBSCRIBE);
}

class AuthCmd extends WebsocketCmd {
  String? token;

  /// API key the session authenticates with instead of [token].
  String? apiKey;

  AuthCmd({super.cmdId, this.token, this.apiKey}) : super(type: WsCmdType.AUTH);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (token != null) {
      json['token'] = token;
    }
    if (apiKey != null) {
      json['apiKey'] = apiKey;
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
    authCmd = AuthCmd(cmdId: 0, token: token);
  }

  void setApiKeyAuth(String apiKey) {
    authCmd = AuthCmd(cmdId: 0, apiKey: apiKey);
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
    Map<String, dynamic> json = {'cmds': cmds.map((e) => e.toJson()).toList()};
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
    : data = ((json['data'] as Map<String, dynamic>?) ?? {}).map(
        (key, value) => MapEntry(key, [
          for (final tsValue in value as List<dynamic>)
            _tsValueFromList(tsValue as List<dynamic>),
        ]),
      );

  /// A `[ts, value]` pair of a subscription update.
  static TsValue _tsValueFromList(List<dynamic> json) {
    final value = json[1];
    return TsValue(
      (b) => b
        ..ts = json[0] as int
        ..value = value == null || value is String ? value : jsonEncode(value),
    );
  }

  @override
  String toString() {
    return 'SubscriptionDataHolder{data: $data}';
  }
}

class SubscriptionUpdate extends SubscriptionDataHolder {
  final int subscriptionId;
  final int? errorCode;
  final String? errorMsg;

  SubscriptionUpdate.fromJson(super.json)
    : subscriptionId = json['subscriptionId'],
      errorCode = json['errorCode'],
      errorMsg = json['errorMsg'],
      super.fromJson();

  void prepareData(List<String>? keys) {
    if (keys != null) {
      for (var key in keys) {
        if (!data.containsKey(key)) {
          data[key] = [];
        }
      }
    }
  }

  /// [current] with the latest value of every key of this update applied, as a
  /// new list; [current] is left unchanged.
  List<AttributeData> updateAttributeData(List<AttributeData> current) {
    final result = List.of(current);
    data.forEach((key, keyData) {
      if (keyData.isNotEmpty) {
        final latest = keyData[0];
        final attribute = AttributeData(
          (b) => b
            ..key = key
            ..lastUpdateTs = latest.ts
            ..value = latest.value == null ? null : JsonObject(latest.value!),
        );
        final index = result.indexWhere((e) => e.key == key);
        if (index >= 0) {
          result[index] = attribute;
        } else {
          result.add(attribute);
        }
      }
    });
    return result;
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
  NOTIFICATIONS,
}

CmdUpdateType cmdUpdateTypeFromString(String value) {
  return CmdUpdateType.values.firstWhere(
    (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase(),
  );
}

abstract class CmdUpdate extends WebsocketDataMsg {
  final int cmdId;
  final int? errorCode;
  final String? errorMsg;

  CmdUpdate({required this.cmdId, this.errorCode, this.errorMsg});

  CmdUpdate.fromJson(Map<String, dynamic> json)
    : cmdId = json['cmdId'],
      errorCode = json['errorCode'],
      errorMsg = json['errorMsg'];
}

/// [tsValue] moved by [tsOffset]; the value too when it is a timestamp
/// ([isTime]), which the server sends as a string.
TsValue _shiftTsValue(TsValue tsValue, int tsOffset, bool isTime) {
  return tsValue.rebuild((b) {
    if (b.ts != null) {
      b.ts = b.ts! + tsOffset;
    }
    final time = isTime && b.value != null ? int.tryParse(b.value!) : null;
    if (time != null) {
      b.value = (time + tsOffset).toString();
    }
  });
}

/// [latest] (entity key type to key to value) moved by [tsOffset], with the
/// values of [timeKeys] shifted as timestamps.
MapBuilder<String, BuiltMap<String, TsValue>> _shiftLatest(
  BuiltMap<String, BuiltMap<String, TsValue>> latest,
  int tsOffset,
  Set<String> timeKeys,
) {
  return MapBuilder(
    latest.map(
      (keyType, values) => MapEntry(
        keyType,
        values.map(
          (key, tsValue) => MapEntry(
            key,
            _shiftTsValue(tsValue, tsOffset, timeKeys.contains(key)),
          ),
        ),
      ),
    ),
  );
}

const _entityTimeKeys = {'createdTime'};

EntityData _shiftEntityData(EntityData entityData, int tsOffset) {
  return entityData.rebuild((b) {
    final timeseries = entityData.timeseries;
    if (timeseries != null) {
      b.timeseries = MapBuilder(
        timeseries.map(
          (key, values) => MapEntry(
            key,
            BuiltList<TsValue>(
              values.map((v) => _shiftTsValue(v, tsOffset, false)),
            ),
          ),
        ),
      );
    }
    final latest = entityData.latest;
    if (latest != null) {
      b.latest = _shiftLatest(latest, tsOffset, _entityTimeKeys);
    }
  });
}

const _alarmTimeKeys = {
  'createdTime',
  'startTime',
  'endTime',
  'ackTime',
  'clearTime',
};

AlarmData _shiftAlarmData(AlarmData alarmData, int tsOffset) {
  int? shift(int? ts) => ts == null ? null : ts + tsOffset;
  return alarmData.rebuild((b) {
    b
      ..createdTime = shift(alarmData.createdTime)
      ..ackTs = shift(alarmData.ackTs)
      ..clearTs = shift(alarmData.clearTs)
      ..endTs = shift(alarmData.endTs);
    final latest = alarmData.latest;
    if (latest != null) {
      b.latest = _shiftLatest(latest, tsOffset, _alarmTimeKeys);
    }
  });
}

class EntityDataUpdate extends CmdUpdate {
  final PageDataEntityData? data;
  final BuiltList<EntityData>? update;

  EntityDataUpdate({
    required super.cmdId,
    super.errorCode,
    super.errorMsg,
    this.data,
    this.update,
  });

  EntityDataUpdate.fromJson(super.json)
    : data = json['data'] != null
          ? apiSerializers(
              registerPageDataEntityData,
            ).deserializeWith(PageDataEntityData.serializer, json['data'])
          : null,
      update = json['update'] != null
          ? BuiltList<EntityData>([
              for (final e in json['update'] as List<dynamic>)
                apiSerializers(
                  registerEntityData,
                ).deserializeWith(EntityData.serializer, e)!,
            ])
          : null,
      super.fromJson();

  /// This update with every timestamp moved by [tsOffset] (the difference
  /// between the server clock and the local one).
  EntityDataUpdate withTsOffset(int tsOffset) {
    EntityData shift(EntityData e) => _shiftEntityData(e, tsOffset);
    return EntityDataUpdate(
      cmdId: cmdId,
      errorCode: errorCode,
      errorMsg: errorMsg,
      data: data?.rebuild((b) {
        final entities = data!.data;
        if (entities != null) {
          b.data = ListBuilder<EntityData>(entities.map(shift));
        }
      }),
      update: update == null ? null : BuiltList(update!.map(shift)),
    );
  }

  @override
  String toString() {
    return 'EntityDataUpdate{cmdId: $cmdId, data: $data, update: $update}';
  }
}

class AlarmDataUpdate extends CmdUpdate {
  final PageDataAlarmData? data;
  final BuiltList<AlarmData>? update;
  final int? allowedEntities;
  final int? totalEntities;

  AlarmDataUpdate({
    required super.cmdId,
    super.errorCode,
    super.errorMsg,
    this.data,
    this.update,
    this.allowedEntities,
    this.totalEntities,
  });

  AlarmDataUpdate.fromJson(super.json)
    : data = json['data'] != null
          ? apiSerializers(
              registerPageDataAlarmData,
            ).deserializeWith(PageDataAlarmData.serializer, json['data'])
          : null,
      update = json['update'] != null
          ? BuiltList<AlarmData>([
              for (final e in json['update'] as List<dynamic>)
                apiSerializers(
                  registerAlarmData,
                ).deserializeWith(AlarmData.serializer, e)!,
            ])
          : null,
      allowedEntities = json['allowedEntities'],
      totalEntities = json['totalEntities'],
      super.fromJson();

  /// This update with every timestamp moved by [tsOffset] (the difference
  /// between the server clock and the local one).
  AlarmDataUpdate withTsOffset(int tsOffset) {
    AlarmData shift(AlarmData a) => _shiftAlarmData(a, tsOffset);
    return AlarmDataUpdate(
      cmdId: cmdId,
      errorCode: errorCode,
      errorMsg: errorMsg,
      data: data?.rebuild((b) {
        final alarms = data!.data;
        if (alarms != null) {
          b.data = ListBuilder<AlarmData>(alarms.map(shift));
        }
      }),
      update: update == null ? null : BuiltList(update!.map(shift)),
      allowedEntities: allowedEntities,
      totalEntities: totalEntities,
    );
  }

  @override
  String toString() {
    return 'AlarmDataUpdate{cmdId: $cmdId, data: $data, update: $update, '
        'allowedEntities: $allowedEntities, totalEntities: $totalEntities}';
  }
}

class EntityCountUpdate extends CmdUpdate {
  final int count;

  EntityCountUpdate.fromJson(super.json)
    : count = json['count'],
      super.fromJson();

  @override
  String toString() {
    return 'EntityCountUpdate{count: $count}';
  }
}

class NotificationCountUpdate extends CmdUpdate {
  final int totalUnreadCount;

  NotificationCountUpdate.fromJson(super.json)
    : totalUnreadCount = json['totalUnreadCount'],
      super.fromJson();

  @override
  String toString() {
    return 'NotificationCountUpdate{totalUnreadCount: $totalUnreadCount}';
  }
}

class NotificationsUpdate extends NotificationCountUpdate {
  final Notification? update;

  /// The unread notifications, newest first. [TelemetrySubscriber] inserts
  /// each later [update] into the list of its last update.
  final List<Notification>? notifications;

  NotificationsUpdate.fromJson(super.json)
    : update = _notification(json['update']),
      notifications = (json['notifications'] as List<dynamic>?)
          ?.map((e) => _notification(e)!)
          .toList(),
      super.fromJson();

  static Notification? _notification(Object? json) => json == null
      ? null
      : apiSerializers(
          registerNotification,
        ).deserializeWith(Notification.serializer, json);

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
  final StreamController<NotificationCountUpdate>
  _notificationCountStreamController;
  final StreamController<NotificationsUpdate>
  _notificationUpdateStreamController;
  final StreamController<void> _reconnectStreamController;

  NotificationsUpdate? lastUpdatedNotification;

  int? _tsOffset;

  TelemetrySubscriber(
    TelemetryService telemetryService,
    List<WebsocketCmd> subscriptionCommands,
  ) : _telemetryService = telemetryService,
      _subscriptionCommands = subscriptionCommands,
      _dataStreamController = StreamController.broadcast(),
      _entityDataStreamController = StreamController.broadcast(),
      _alarmDataStreamController = StreamController.broadcast(),
      _entityCountStreamController = StreamController.broadcast(),
      _notificationCountStreamController = StreamController.broadcast(),
      _notificationUpdateStreamController = StreamController.broadcast(),
      _reconnectStreamController = StreamController.broadcast();

  static TelemetrySubscriber createEntityAttributesSubscription({
    required TelemetryService telemetryService,
    required EntityId entityId,
    required String attributeScope,
    List<String>? keys,
  }) {
    SubscriptionCmd subscriptionCommand;
    var subscriptionKeys = keys?.join(',');
    if (attributeScope == LatestTelemetry.LATEST_TELEMETRY.toShortString()) {
      subscriptionCommand = TimeseriesSubscriptionCmd(
        entityId: entityId.id,
        entityType: entityId.entityType,
        keys: subscriptionKeys,
      );
    } else {
      var scope = AttributeScope.values.firstWhereOrNull(
        (e) =>
            e != AttributeScope.unknownDefaultOpenApi &&
            _wireName(AttributeScope.serializer, e) ==
                attributeScope.toUpperCase(),
      );
      if (scope == null) {
        throw ArgumentError.value(
          attributeScope,
          'attributeScope',
          'Not LATEST_TELEMETRY or an attribute scope',
        );
      }
      subscriptionCommand = AttributesSubscriptionCmd(
        entityId: entityId.id,
        entityType: entityId.entityType,
        keys: subscriptionKeys,
        scope: scope,
      );
    }
    return TelemetrySubscriber(telemetryService, [subscriptionCommand]);
  }

  static TelemetrySubscriber createNotificationCountSubscription({
    required TelemetryService telemetryService,
  }) {
    UnreadCountSubCmd subscriptionCommand = UnreadCountSubCmd();
    return TelemetrySubscriber(telemetryService, [subscriptionCommand]);
  }

  static TelemetrySubscriber createNotificationsSubscription({
    required TelemetryService telemetryService,
    int limit = 10,
  }) {
    UnreadSubCmd subscriptionCommand = UnreadSubCmd(limit: limit);
    return TelemetrySubscriber(telemetryService, [subscriptionCommand]);
  }

  static TelemetrySubscriber createMarkAsReadCommand({
    required TelemetryService telemetryService,
    required List<String> notifications,
  }) {
    MarkAsReadCmd subscriptionCommand = MarkAsReadCmd(
      notifications: notifications,
    );
    return TelemetrySubscriber(telemetryService, [subscriptionCommand]);
  }

  static TelemetrySubscriber createMarkAllAsReadCommand({
    required TelemetryService telemetryService,
  }) {
    MarkAllAsReadCmd subscriptionCommand = MarkAllAsReadCmd();
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
    _notificationCountStreamController.close();
    _notificationUpdateStreamController.close();
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
    var foundCmd = _subscriptionCommands.where(
      (command) => command.cmdId == cmdId,
    );
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
    } else if (message is NotificationsUpdate) {
      _onNotificationData(message);
    } else if (message is NotificationCountUpdate) {
      _onNotificationCount(message);
    }
  }

  void onReconnected() {
    _reconnectStreamController.add(null);
  }

  void _onEntityData(EntityDataUpdate message) {
    final tsOffset = _tsOffset;
    _entityDataStreamController.add(
      tsOffset != null ? message.withTsOffset(tsOffset) : message,
    );
  }

  void _onAlarmData(AlarmDataUpdate message) {
    final tsOffset = _tsOffset;
    _alarmDataStreamController.add(
      tsOffset != null ? message.withTsOffset(tsOffset) : message,
    );
  }

  void _onEntityCount(EntityCountUpdate message) {
    _entityCountStreamController.add(message);
  }

  void _onNotificationCount(NotificationCountUpdate message) {
    _notificationCountStreamController.add(message);
  }

  Future<void> _onNotificationData(NotificationsUpdate message) async {
    NotificationsUpdate processMessage = message;
    if (lastUpdatedNotification != null && message.update != null) {
      lastUpdatedNotification!.notifications?.insert(0, message.update!);
      WebsocketCmd? foundCmd = _subscriptionCommands.firstWhereOrNull(
        (command) => command.cmdId == message.cmdId,
      );
      if (foundCmd != null &&
          lastUpdatedNotification!.notifications!.length >
              (foundCmd as UnreadSubCmd).limit) {
        lastUpdatedNotification!.notifications?.removeLast();
      }
      processMessage = lastUpdatedNotification!;
    }
    _notificationUpdateStreamController.add(processMessage);
    _notificationCountStreamController.add(processMessage);
    lastUpdatedNotification = processMessage;
  }

  List<WebsocketCmd> get subscriptionCommands => _subscriptionCommands;

  Stream<SubscriptionUpdate> get dataStream => _dataStreamController.stream;

  Stream<EntityDataUpdate> get entityDataStream =>
      _entityDataStreamController.stream;

  Stream<AlarmDataUpdate> get alarmDataStream =>
      _alarmDataStreamController.stream;

  Stream<EntityCountUpdate> get entityCountStream =>
      _entityCountStreamController.stream;

  Stream<NotificationCountUpdate> get notificationCountStream =>
      _notificationCountStreamController.stream;

  Stream<NotificationsUpdate> get notificationStream =>
      _notificationUpdateStreamController.stream;

  Stream<void> get reconnectStream => _reconnectStreamController.stream;

  /// The attributes of every update so far: each update emits a new list.
  Stream<List<AttributeData>> get attributeDataStream {
    var attributeData = <AttributeData>[];
    return dataStream.map(
      (message) => attributeData = message.updateAttributeData(attributeData),
    );
  }
}
