import 'dart:convert';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<EntityViewInfo> parseEntityViewInfoPageData(
    Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => EntityViewInfo.fromJson(json));
}

PageData<EntityView> parseEntityViewPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => EntityView.fromJson(json));
}

class EntityViewService {
  final ThingsboardClient _tbClient;

  factory EntityViewService(ThingsboardClient tbClient) {
    return EntityViewService._internal(tbClient);
  }

  EntityViewService._internal(this._tbClient);

  Future<EntityView?> getEntityView(String entityViewId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/entityView/$entityViewId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? EntityView.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<EntityViewInfo?> getEntityViewInfo(String entityViewId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/entityView/info/$entityViewId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? EntityViewInfo.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<EntityView> saveEntityView(EntityView entityView,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/entityView',
        data: jsonEncode(entityView),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return EntityView.fromJson(response.data!);
  }

  Future<void> deleteEntityView(String entityViewId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/entityView/$entityViewId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<EntityView?> assignEntityViewToCustomer(
      String customerId, String entityViewId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>(
            '/api/customer/$customerId/entityView/$entityViewId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? EntityView.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<EntityView?> unassignEntityViewFromCustomer(String entityViewId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.delete<Map<String, dynamic>>(
            '/api/customer/entityView/$entityViewId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? EntityView.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<EntityView?> assignEntityViewToPublicCustomer(String entityViewId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>(
            '/api/customer/public/entityView/$entityViewId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? EntityView.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<EntityView>> getTenantEntityViews(PageLink pageLink,
      {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/tenant/entityViews',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEntityViewPageData, response.data!);
  }

  Future<PageData<EntityViewInfo>> getTenantEntityViewInfos(PageLink pageLink,
      {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/tenant/entityViewInfos',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEntityViewInfoPageData, response.data!);
  }

  Future<EntityView?> getTenantEntityView(String entityViewName,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/tenant/entityViews',
            queryParameters: {'entityViewName': entityViewName},
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? EntityView.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<EntityView>> getCustomerEntityViews(
      String customerId, PageLink pageLink,
      {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/customer/$customerId/entityViews',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEntityViewPageData, response.data!);
  }

  Future<PageData<EntityViewInfo>> getCustomerEntityViewInfos(
      String customerId, PageLink pageLink,
      {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/customer/$customerId/entityViewInfos',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEntityViewInfoPageData, response.data!);
  }

  Future<List<EntityView>> findByQuery(EntityViewSearchQuery query,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<List<dynamic>>('/api/entityViews',
        data: jsonEncode(query),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => EntityView.fromJson(e)).toList();
  }

  Future<List<EntitySubtype>> getEntityViewTypes(
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/entityView/types',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => EntitySubtype.fromJson(e)).toList();
  }

  Future<EntityView?> assignEntityViewToEdge(String edgeId, String entityViewId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>(
            '/api/edge/$edgeId/entityView/$entityViewId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? EntityView.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<EntityView?> unassignEntityViewFromEdge(
      String edgeId, String entityViewId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.delete<Map<String, dynamic>>(
            '/api/edge/$edgeId/entityView/$entityViewId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? EntityView.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<EntityView>> getEdgeEntityViews(
      String edgeId, PageLink pageLink,
      {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/edge/$edgeId/entityViews',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseEntityViewPageData, response.data!);
  }
}
