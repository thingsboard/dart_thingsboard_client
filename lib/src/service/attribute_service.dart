import 'dart:convert';

import '../model/model.dart';
import '../http/http_utils.dart';
import '../thingsboard_client_base.dart';

class AttributeService {
  final ThingsboardClient _tbClient;

  factory AttributeService(ThingsboardClient tbClient) {
    return AttributeService._internal(tbClient);
  }

  AttributeService._internal(this._tbClient);

  Future<List<String>> getAttributeKeys(EntityId entityId,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<String>>(
        '/api/plugins/telemetry/${entityId.entityType.toShortString()}/${entityId.id}/keys/attributes',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<List<String>> getAttributeKeysByScope(EntityId entityId, String scope,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<String>>(
        '/api/plugins/telemetry/${entityId.entityType.toShortString()}/${entityId.id}/keys/attributes/$scope',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<List<AttributeKvEntry>> getAttributeKvEntries(
      EntityId entityId, List<String> keys,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>(
        '/api/plugins/telemetry/${entityId.entityType.toShortString()}/${entityId.id}/values/attributes',
        queryParameters: {'keys': keys.join(',')},
        options: defaultHttpOptionsFromConfig(requestConfig));
    return RestJsonConverter.toAttributes(response.data);
  }

  Future<List<AttributeKvEntry>> getAttributesByScope(
      EntityId entityId, String scope, List<String> keys,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>(
        '/api/plugins/telemetry/${entityId.entityType.toShortString()}/${entityId.id}/values/attributes/$scope',
        queryParameters: {'keys': keys.join(',')},
        options: defaultHttpOptionsFromConfig(requestConfig));
    return RestJsonConverter.toAttributes(response.data);
  }

  Future<List<String>> getTimeseriesKeys(EntityId entityId,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<String>>(
        '/api/plugins/telemetry/${entityId.entityType.toShortString()}/${entityId.id}/keys/timeseries',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<List<TsKvEntry>> getLatestTimeseries(
      EntityId entityId, List<String> keys,
      {bool useStrictDataTypes = true, RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/plugins/telemetry/${entityId.entityType.toShortString()}/${entityId.id}/values/timeseries',
        queryParameters: {
          'keys': keys.join(','),
          'useStrictDataTypes': useStrictDataTypes
        },
        options: defaultHttpOptionsFromConfig(requestConfig));
    return RestJsonConverter.toTimeseries(response.data);
  }

  Future<List<TsKvEntry>> getTimeseries(EntityId entityId, List<String> keys,
      {int? interval,
      Aggregation? agg,
      Direction? sortOrder,
      int? startTime,
      int? endTime,
      int? limit,
      bool useStrictDataTypes = true,
      RequestConfig? requestConfig}) async {
    var queryParameters = <String, dynamic>{
      'keys': keys.join(','),
      'interval': interval == null ? '0' : interval.toString(),
      'agg': agg == null ? 'NONE' : agg.toShortString(),
      'limit': limit != null ? limit.toString() : '100',
      'orderBy': sortOrder != null ? sortOrder.toShortString() : 'DESC',
      'useStrictDataTypes': useStrictDataTypes
    };

    if (startTime != null) {
      queryParameters['startTs'] = startTime.toString();
    }

    if (endTime != null) {
      queryParameters['endTs'] = endTime.toString();
    }

    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/plugins/telemetry/${entityId.entityType.toShortString()}/${entityId.id}/values/timeseries',
        queryParameters: queryParameters,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return RestJsonConverter.toTimeseries(response.data);
  }

  Future<bool> saveDeviceAttributes(
      String deviceId, String scope, dynamic request,
      {RequestConfig? requestConfig}) async {
    return isSuccessful(
      (RequestConfig requestConfig) async {
        return _tbClient.post('/api/plugins/telemetry/$deviceId/$scope',
            data: jsonEncode(request),
            options: defaultHttpOptionsFromConfig(requestConfig));
      },
      requestConfig: requestConfig,
    );
  }

  Future<bool> saveEntityAttributesV1(
      EntityId entityId, String scope, dynamic request,
      {RequestConfig? requestConfig}) async {
    return isSuccessful(
      (RequestConfig requestConfig) async {
        return _tbClient.post(
            '/api/plugins/telemetry/${entityId.entityType.toShortString()}/${entityId.id}/$scope',
            data: jsonEncode(request),
            options: defaultHttpOptionsFromConfig(requestConfig));
      },
      requestConfig: requestConfig,
    );
  }

  Future<bool> saveEntityAttributesV2(
      EntityId entityId, String scope, dynamic request,
      {RequestConfig? requestConfig}) async {
    return isSuccessful(
      (RequestConfig requestConfig) async {
        return _tbClient.post(
            '/api/plugins/telemetry/${entityId.entityType.toShortString()}/${entityId.id}/attributes/$scope',
            data: jsonEncode(request),
            options: defaultHttpOptionsFromConfig(requestConfig));
      },
      requestConfig: requestConfig,
    );
  }

  Future<bool> saveEntityTelemetry(
      EntityId entityId, String scope, dynamic request,
      {RequestConfig? requestConfig}) async {
    return isSuccessful(
      (RequestConfig requestConfig) async {
        return _tbClient.post(
            '/api/plugins/telemetry/${entityId.entityType.toShortString()}/${entityId.id}/timeseries/$scope',
            data: jsonEncode(request),
            options: defaultHttpOptionsFromConfig(requestConfig));
      },
      requestConfig: requestConfig,
    );
  }

  Future<bool> saveEntityTelemetryWithTTL(
      EntityId entityId, String scope, int ttl, dynamic request,
      {RequestConfig? requestConfig}) async {
    return isSuccessful(
      (RequestConfig requestConfig) async {
        return _tbClient.post(
            '/api/plugins/telemetry/${entityId.entityType.toShortString()}/${entityId.id}/timeseries/$scope/$ttl',
            data: jsonEncode(request),
            options: defaultHttpOptionsFromConfig(requestConfig));
      },
      requestConfig: requestConfig,
    );
  }

  Future<bool> deleteEntityTimeseries(EntityId entityId, List<String> keys,
      {required bool deleteAllDataForKeys,
      required int startTs,
      required int endTs,
      required bool rewriteLatestIfDeleted,
      RequestConfig? requestConfig}) async {
    var queryParameters = <String, dynamic>{
      'keys': keys.join(','),
      'deleteAllDataForKeys': deleteAllDataForKeys.toString(),
      'startTs': startTs.toString(),
      'endTs': endTs.toString(),
      'rewriteLatestIfDeleted': rewriteLatestIfDeleted.toString()
    };

    return isSuccessful(
      (RequestConfig requestConfig) async {
        return _tbClient.delete(
            '/api/plugins/telemetry/${entityId.entityType.toShortString()}/${entityId.id}/timeseries/delete',
            queryParameters: queryParameters,
            options: defaultHttpOptionsFromConfig(requestConfig));
      },
      requestConfig: requestConfig,
    );
  }

  Future<bool> deleteDeviceAttributes(
      String deviceId, String scope, List<String> keys,
      {RequestConfig? requestConfig}) async {
    return isSuccessful(
      (RequestConfig requestConfig) async {
        return _tbClient.delete('/api/plugins/telemetry/$deviceId/$scope',
            queryParameters: {'keys': keys.join(',')},
            options: defaultHttpOptionsFromConfig(requestConfig));
      },
      requestConfig: requestConfig,
    );
  }

  Future<bool> deleteEntityAttributes(
      EntityId entityId, String scope, List<String> keys,
      {RequestConfig? requestConfig}) async {
    return isSuccessful(
      (RequestConfig requestConfig) async {
        return _tbClient.delete(
            '/api/plugins/telemetry/${entityId.entityType.toShortString()}/${entityId.id}/$scope',
            queryParameters: {'keys': keys.join(',')},
            options: defaultHttpOptionsFromConfig(requestConfig));
      },
      requestConfig: requestConfig,
    );
  }
}
