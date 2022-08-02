import 'dart:convert';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<Queue> parseQueuePageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => Queue.fromJson(json));
}

class QueueService {
  final ThingsboardClient _tbClient;

  factory QueueService(ThingsboardClient tbClient) {
    return QueueService._internal(tbClient);
  }

  QueueService._internal(this._tbClient);

  Future<Queue?> getQueue(String queueId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/queues/$queueId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Queue.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Queue?> getQueueByName(String queueName,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/queues/name/$queueName',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Queue.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Queue> saveQueue(Queue queue, ServiceType serviceType,
      {RequestConfig? requestConfig}) async {
    var queryParams = <String, dynamic>{
      'serviceType': serviceType.toShortString()
    };
    var response = await _tbClient.post<Map<String, dynamic>>('/api/queues',
        queryParameters: queryParams,
        data: jsonEncode(queue),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return Queue.fromJson(response.data!);
  }

  Future<void> deleteQueue(String queueId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/queues/$queueId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<PageData<Queue>> getTenantQueuesByServiceType(
      PageLink pageLink, ServiceType serviceType,
      {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['serviceType'] = serviceType.toShortString();
    var response = await _tbClient.get<Map<String, dynamic>>('/api/queues',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseQueuePageData, response.data!);
  }
}
