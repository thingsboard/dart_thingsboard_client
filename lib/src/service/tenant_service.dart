import 'dart:convert';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<Tenant> parseTenantPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => Tenant.fromJson(json));
}

PageData<TenantInfo> parseTenantInfoPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => TenantInfo.fromJson(json));
}

class TenantService {
  final ThingsboardClient _tbClient;

  factory TenantService(ThingsboardClient tbClient) {
    return TenantService._internal(tbClient);
  }

  TenantService._internal(this._tbClient);

  Future<PageData<Tenant>> getTenants(PageLink pageLink,  {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenants', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseTenantPageData, response.data!);
  }

  Future<PageData<TenantInfo>> getTenantInfos(PageLink pageLink,  {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenantInfos', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseTenantInfoPageData, response.data!);
  }

  Future<Tenant> getTenant(String tenantId, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/$tenantId',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return Tenant.fromJson(response.data!);
  }

  Future<TenantInfo> getTenantInfo(String tenantId, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/info/$tenantId',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return TenantInfo.fromJson(response.data!);
  }

  Future<Tenant> saveTenant(Tenant tenant, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/tenant', data: jsonEncode(tenant),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return Tenant.fromJson(response.data!);
  }

  Future<void> deleteTenant(String tenantId, {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/tenant/$tenantId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

}
