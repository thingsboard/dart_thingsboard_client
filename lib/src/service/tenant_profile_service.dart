import 'dart:convert';

import '../http/http_utils.dart';
import '../model/entity_models.dart';
import '../model/page/page_data.dart';
import '../model/page/page_link.dart';
import '../model/tenant_models.dart';
import '../thingsboard_client_base.dart';

PageData<TenantProfile> parseTenantProfilePageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => TenantProfile.fromJson(json));
}

PageData<EntityInfo> parseTenantProfileInfoPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => EntityInfo.fromJson(json));
}

class TenantProfileService {
  final ThingsboardClient _tbClient;

  factory TenantProfileService(ThingsboardClient tbClient) {
    return TenantProfileService._internal(tbClient);
  }

  TenantProfileService._internal(this._tbClient);

  Future<TenantProfile?> getTenantProfile(String tenantProfileId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/tenantProfile/$tenantProfileId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? TenantProfile.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<EntityInfo?> getTenantProfileInfo(String tenantProfileId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/tenantProfileInfo/$tenantProfileId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? EntityInfo.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<EntityInfo> getDefaultTenantProfileInfo(
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/tenantProfileInfo/default',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return EntityInfo.fromJson(response.data!);
  }

  Future<TenantProfile> saveTenantProfile(TenantProfile tenantProfile,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/tenantProfile',
        data: jsonEncode(tenantProfile),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return TenantProfile.fromJson(response.data!);
  }

  Future<void> deleteTenantProfile(String tenantProfileId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/tenantProfile/$tenantProfileId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<TenantProfile> setDefaultTenantProfile(String tenantProfileId,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/tenantProfile/$tenantProfileId/default',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return TenantProfile.fromJson(response.data!);
  }

  Future<PageData<TenantProfile>> getTenantProfiles(PageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/tenantProfiles',
        queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseTenantProfilePageData, response.data!);
  }

  Future<PageData<EntityInfo>> getTenantProfileInfos(PageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/tenantProfileInfos',
        queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseTenantProfileInfoPageData, response.data!);
  }
}
