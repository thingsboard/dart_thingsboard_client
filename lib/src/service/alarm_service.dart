import 'dart:convert';

import '../model/id/entity_id.dart';
import '../model/page/page_data.dart';
import '../http/http_utils.dart';
import '../model/alarm_models.dart';
import '../model/entity_type_models.dart';
import '../thingsboard_client_base.dart';

PageData<AlarmInfo> parseAlarmInfoPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => AlarmInfo.fromJson(json));
}

class AlarmService {
  final ThingsboardClient _tbClient;

  factory AlarmService(ThingsboardClient tbClient) {
    return AlarmService._internal(tbClient);
  }

  AlarmService._internal(this._tbClient);

  Future<Alarm?> getAlarm(String alarmId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/alarm/$alarmId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Alarm.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<AlarmInfo?> getAlarmInfo(String alarmId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/alarm/info/$alarmId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? AlarmInfo.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Alarm> saveAlarm(Alarm alarm, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/alarm',
        data: jsonEncode(alarm),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return Alarm.fromJson(response.data!);
  }

  Future<void> ackAlarm(String alarmId, {RequestConfig? requestConfig}) async {
    await _tbClient.post('/api/alarm/$alarmId/ack',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<void> clearAlarm(String alarmId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.post('/api/alarm/$alarmId/clear',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<void> deleteAlarm(String alarmId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/alarm/$alarmId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<PageData<AlarmInfo>> getAlarms(AlarmQuery query,
      {RequestConfig? requestConfig}) async {
    var queryParams = query.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/alarm/${query.affectedEntityId!.entityType.toShortString()}/${query.affectedEntityId!.id}',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAlarmInfoPageData, response.data!);
  }

  Future<PageData<AlarmInfo>> getAllAlarms(AlarmQuery query,
      {RequestConfig? requestConfig}) async {
    var queryParams = query.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>('/api/alarms',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAlarmInfoPageData, response.data!);
  }

  Future<AlarmSeverity?> getHighestAlarmSeverity(EntityId entityId,
      {AlarmSearchStatus? alarmSearchStatus,
      AlarmStatus? alarmStatus,
      RequestConfig? requestConfig}) async {
    var queryParams = <String, dynamic>{};
    if (alarmSearchStatus != null) {
      queryParams['searchStatus'] = alarmSearchStatus.toShortString();
    } else if (alarmStatus != null) {
      queryParams['status'] = alarmStatus.toShortString();
    }
    var response = await _tbClient.get<String>(
        '/api/alarm/highestSeverity/${entityId.entityType.toShortString()}/${entityId.id}',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data != null
        ? alarmSeverityFromString(response.data!)
        : null;
  }
}
