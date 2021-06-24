import 'dart:convert';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<DashboardInfo> parseDashboardInfoPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => DashboardInfo.fromJson(json));
}

class DashboardService {
  final ThingsboardClient _tbClient;

  factory DashboardService(ThingsboardClient tbClient) {
    return DashboardService._internal(tbClient);
  }

  DashboardService._internal(this._tbClient);

  Future<int> getServerTime({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<int>('/api/dashboard/serverTime',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<int> getMaxDatapointsLimit({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<int>('/api/dashboard/maxDatapointsLimit',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<PageData<DashboardInfo>> getTenantDashboards(PageLink pageLink,  {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/dashboards', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDashboardInfoPageData, response.data!);
  }

  Future<PageData<DashboardInfo>> getTenantDashboardsByTenantId(String tenantId, PageLink pageLink,  {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/$tenantId/dashboards', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDashboardInfoPageData, response.data!);
  }

  Future<PageData<DashboardInfo>> getCustomerDashboards(String customerId, PageLink pageLink,  {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>('/api/customer/$customerId/dashboards', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDashboardInfoPageData, response.data!);
  }

  Future<Dashboard?> getDashboard(String dashboardId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
            var response = await _tbClient.get<Map<String, dynamic>>('/api/dashboard/$dashboardId',
                options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Dashboard.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<DashboardInfo?> getDashboardInfo(String dashboardId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
            var response = await _tbClient.get<Map<String, dynamic>>('/api/dashboard/info/$dashboardId',
                options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? DashboardInfo.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Dashboard> saveDashboard(Dashboard dashboard, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/dashboard', data: jsonEncode(dashboard),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return Dashboard.fromJson(response.data!);
  }

  Future<void> deleteDashboard(String dashboardId, {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/dashboard/$dashboardId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<Dashboard?> assignDashboardToCustomer(String customerId, String dashboardId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
            var response = await _tbClient.post<Map<String, dynamic>>('/api/customer/$customerId/dashboard/$dashboardId',
                options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Dashboard.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Dashboard?> unassignDashboardFromCustomer(String customerId, String dashboardId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
            var response = await _tbClient.delete<Map<String, dynamic>>('/api/customer/$customerId/dashboard/$dashboardId',
                options: defaultHttpOptionsFromConfig(requestConfig));
            return response.data != null ? Dashboard.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Dashboard?> makeDashboardPublic(String dashboardId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
            var response = await _tbClient.post<Map<String, dynamic>>('/api/customer/public/dashboard/$dashboardId',
                options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Dashboard.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Dashboard?> makeDashboardPrivate(String dashboardId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
            var response = await _tbClient.delete<Map<String, dynamic>>('/api/customer/public/dashboard/$dashboardId',
                options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Dashboard.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Dashboard?> updateDashboardCustomers(String dashboardId, Set<String> customerIds, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
            var response = await _tbClient.post<Map<String, dynamic>>('/api/dashboard/$dashboardId/customers', data: jsonEncode(customerIds),
                options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Dashboard.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Dashboard?> addDashboardCustomers(String dashboardId, Set<String> customerIds, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
            var response = await _tbClient.post<Map<String, dynamic>>('/api/dashboard/$dashboardId/customers/add', data: jsonEncode(customerIds),
                options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Dashboard.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Dashboard?> removeDashboardCustomers(String dashboardId, Set<String> customerIds, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
            var response = await _tbClient.post<Map<String, dynamic>>('/api/dashboard/$dashboardId/customers/remove', data: jsonEncode(customerIds),
                options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Dashboard.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<HomeDashboard?> getHomeDashboard({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<dynamic>('/api/dashboard/home',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data != null && response.data is Map ? HomeDashboard.fromJson(response.data!) : null;
  }

  Future<HomeDashboardInfo?> getHomeDashboardInfo({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<dynamic>('/api/dashboard/home/info',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data != null && response.data is Map ? HomeDashboardInfo.fromJson(response.data!) : null;
  }

  Future<HomeDashboardInfo> getTenantHomeDashboardInfo({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/dashboard/home/info',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return HomeDashboardInfo.fromJson(response.data!);
  }

  Future<void> setTenantHomeDashboardInfo(HomeDashboardInfo homeDashboardInfo, {RequestConfig? requestConfig}) async {
    await _tbClient.post<Map<String, dynamic>>('/api/tenant/dashboard/home/info', data: jsonEncode(homeDashboardInfo),
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<Dashboard?> assignDashboadToEdge(String edgeId, String dashboardId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>('/api/edge/$edgeId/dashboard/$dashboardId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Dashboard.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Dashboard?> unassignDashboardFromEdge(String edgeId, String dashboardId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.delete<Map<String, dynamic>>('/api/edge/$edgeId/dashboard/$dashboardId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Dashboard.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<DashboardInfo>> getEdgeDashboards(String edgeId, PageLink pageLink,  {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/edge/$edgeId/dashboards', queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDashboardInfoPageData, response.data!);
  }

}
