import 'dart:convert';

import '../http/http_utils.dart';
import '../model/page/page_data.dart';
import '../model/query/query_models.dart';

import '../thingsboard_client_base.dart';

PageData<EntityData> parseEntityDataPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => EntityData.fromJson(json));
}

PageData<AlarmData> parseAlarmDataPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => AlarmData.fromJson(json));
}

class EntityQueryService {
  final ThingsboardClient _tbClient;

  factory EntityQueryService(ThingsboardClient tbClient) {
    return EntityQueryService._internal(tbClient);
  }

  EntityQueryService._internal(this._tbClient);

  Future<int> countEntitiesByQuery(EntityCountQuery query,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<int>('/api/entitiesQuery/count',
        data: jsonEncode(query),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<PageData<EntityData>> findEntityDataByQuery(EntityDataQuery query,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/entitiesQuery/find',
        data: jsonEncode(query),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEntityDataPageData, response.data!);
  }

  Future<PageData<AlarmData>> findAlarmDataByQuery(AlarmDataQuery query,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/alarmsQuery/find',
        data: jsonEncode(query),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAlarmDataPageData, response.data!);
  }
}
