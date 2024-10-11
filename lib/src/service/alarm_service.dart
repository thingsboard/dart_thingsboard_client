import 'dart:convert';

import 'package:thingsboard_client/thingsboard_client.dart';

PageData<AlarmInfo> parseAlarmInfoPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => AlarmInfo.fromJson(json));
}

PageData<AlarmType> parseAlarmTypeData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => AlarmType.fromJson(json));
}

PageData<AlarmCommentInfo> parseAlarmComments(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => AlarmCommentInfo.fromJson(json));
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

  Future<AlarmInfo> ackAlarm(String alarmId,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post('/api/alarm/$alarmId/ack',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return AlarmInfo.fromJson(response.data!);
  }

  Future<AlarmInfo> clearAlarm(String alarmId,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post('/api/alarm/$alarmId/clear',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return AlarmInfo.fromJson(response.data!);
  }

  Future<void> deleteAlarm(String alarmId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/alarm/$alarmId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<AlarmInfo> assignAlarm(String alarmId, String assigneeId,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post(
        '/api/alarm/$alarmId/assign/$assigneeId',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return AlarmInfo.fromJson(response.data!);
  }

  Future<AlarmInfo> unassignAlarm(String alarmId,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.delete('/api/alarm/$alarmId/assign',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return AlarmInfo.fromJson(response.data!);
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

  Future<PageData<AlarmInfo>> getAlarmsV2(AlarmQueryV2 query,
      {RequestConfig? requestConfig}) async {
    var queryParams = query.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/v2/alarm/${query.affectedEntityId!.entityType.toShortString()}/${query.affectedEntityId!.id}',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAlarmInfoPageData, response.data!);
  }

  Future<PageData<AlarmInfo>> getAllAlarmsV2(AlarmQueryV2 query,
      {RequestConfig? requestConfig}) async {
    var queryParams = query.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>('/api/v2/alarms',
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

  Future<PageData<AlarmType>> getAlarmTypes(
    PageLink pageLink, {
    RequestConfig? requestConfig,
  }) async {
    final response = await _tbClient.get<Map<String, dynamic>>(
        '/api/alarm/types',
        queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));

    return _tbClient.compute(parseAlarmTypeData, response.data!);
  }

  Future<PageData<AlarmCommentInfo>> getAlarmComments(
    AlarmCommentsQuery query, {
    RequestConfig? requestConfig,
  }) async {
    final response = await _tbClient.get<Map<String, dynamic>>(
      '/api/alarm/${query.id.id}/comment',
      queryParameters: query.toQueryParameters(),
      options: defaultHttpOptionsFromConfig(requestConfig),
    );

    return _tbClient.compute(parseAlarmComments, response.data!);
  }

  Future<AlarmCommentInfo> postAlarmComment(
    String comment, {
    required AlarmId alarmId,
    RequestConfig? requestConfig,
  }) async {
    final response = await _tbClient.post<Map<String, dynamic>>(
      '/api/alarm/${alarmId.id}/comment',
      data: jsonEncode(
        {
          'comment': {'text': comment}
        },
      ),
      options: defaultHttpOptionsFromConfig(requestConfig),
    );

    return AlarmCommentInfo.fromJson(response.data!);
  }

  Future<AlarmCommentInfo> updatedAlarmComment(
    String comment, {
    required AlarmId alarmId,
    required String commentId,
    RequestConfig? requestConfig,
  }) async {
    final response = await _tbClient.post<Map<String, dynamic>>(
      '/api/alarm/${alarmId.id}/comment',
      data: jsonEncode(
        {
          'id': {'id': commentId},
          'comment': {'text': comment},
        },
      ),
      options: defaultHttpOptionsFromConfig(requestConfig),
    );

    return AlarmCommentInfo.fromJson(response.data!);
  }

  Future<void> deleteAlarmComment(
    String id, {
    required AlarmId alarmId,
    RequestConfig? requestConfig,
  }) async {
    await _tbClient.delete(
      '/api/alarm/${alarmId.id}/comment/$id',
      options: defaultHttpOptionsFromConfig(requestConfig),
    );
  }
}
