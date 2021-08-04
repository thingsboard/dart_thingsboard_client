import 'dart:convert';

import 'package:dio/dio.dart';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<EdgeInfo> parseEdgeInfoPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => EdgeInfo.fromJson(json));
}

PageData<Edge> parseEdgePageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => Edge.fromJson(json));
}

PageData<EdgeEvent> parseEdgeEventPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => EdgeEvent.fromJson(json));
}

class EdgeService {
  final ThingsboardClient _tbClient;

  factory EdgeService(ThingsboardClient tbClient) {
    return EdgeService._internal(tbClient);
  }

  EdgeService._internal(this._tbClient);

  Future<bool> isEdgesSupportEnabled({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<bool>('/api/edges/enabled',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<Edge?> getEdge(String edgeId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/edge/$edgeId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Edge.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<EdgeInfo?> getEdgeInfo(String edgeId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/edge/info/$edgeId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? EdgeInfo.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Edge> saveEdge(Edge edge, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/edge',
        data: jsonEncode(edge),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return Edge.fromJson(response.data!);
  }

  Future<void> deleteEdge(String edgeId, {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/edge/$edgeId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<PageData<Edge>> getEdges(PageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/edges',
        queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEdgePageData, response.data!);
  }

  Future<Edge?> assignEdgeToCustomer(String customerId, String edgeId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>(
            '/api/customer/$customerId/edge/$edgeId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Edge.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Edge?> unassignEdgeFromCustomer(String edgeId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.delete<Map<String, dynamic>>(
            '/api/customer/edge/$edgeId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Edge.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Edge?> assignAssetToPublicCustomer(String edgeId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>(
            '/api/customer/public/edge/$edgeId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Edge.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<Edge>> getTenantEdges(PageLink pageLink,
      {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/tenant/edges',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEdgePageData, response.data!);
  }

  Future<PageData<EdgeInfo>> getTenantEdgeInfos(PageLink pageLink,
      {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/tenant/edgeInfos',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEdgeInfoPageData, response.data!);
  }

  Future<Edge?> getTenantEdge(String edgeName,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/tenant/edges',
            queryParameters: {'edgeName': edgeName},
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Edge.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Edge?> setRootRuleChain(String edgeId, String ruleChainId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>(
            '/api/edge/$edgeId/$ruleChainId/root',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Edge.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<Edge>> getCustomerEdges(String customerId, PageLink pageLink,
      {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/customer/$customerId/edges',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEdgePageData, response.data!);
  }

  Future<PageData<EdgeInfo>> getCustomerEdgeInfos(
      String customerId, PageLink pageLink,
      {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/customer/$customerId/edgeInfos',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEdgeInfoPageData, response.data!);
  }

  Future<List<Edge>> getEdgesByIds(List<String> edgeIds,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/edges',
        queryParameters: {'edgeIds': edgeIds.join(',')},
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => Edge.fromJson(e)).toList();
  }

  Future<List<Edge>> findByQuery(EdgeSearchQuery query,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<List<dynamic>>('/api/edges',
        data: jsonEncode(query),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => Edge.fromJson(e)).toList();
  }

  Future<List<EntitySubtype>> getEdgeTypes(
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/edge/types',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => EntitySubtype.fromJson(e)).toList();
  }

  Future<void> syncEdge(String edgeId, {RequestConfig? requestConfig}) async {
    await _tbClient.post('/api/edge/sync/$edgeId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<String> findMissingToRelatedRuleChains(String edgeId,
      {RequestConfig? requestConfig}) async {
    var options = defaultHttpOptionsFromConfig(requestConfig);
    options.responseType = ResponseType.plain;
    var response = await _tbClient.get<String>(
        '/api/edge/missingToRelatedRuleChains/$edgeId',
        options: options);
    return response.data!;
  }

  Future<PageData<EdgeEvent>> getEdgeEvents(
      String edgeId, TimePageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/edge/$edgeId/events',
        queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEdgeEventPageData, response.data!);
  }
}
