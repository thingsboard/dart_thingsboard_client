import 'dart:convert';

import '../http/http_utils.dart';
import '../model/asset_models.dart';
import '../model/page/page_data.dart';
import '../model/page/page_link.dart';
import '../thingsboard_client_base.dart';

PageData<AssetProfile> parseAssetProfilePageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => AssetProfile.fromJson(json));
}

PageData<AssetProfileInfo> parseAssetProfileInfoPageData(
    Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => AssetProfileInfo.fromJson(json));
}

class AssetProfileService {
  final ThingsboardClient _tbClient;

  factory AssetProfileService(ThingsboardClient tbClient) {
    return AssetProfileService._internal(tbClient);
  }

  AssetProfileService._internal(this._tbClient);

  Future<PageData<AssetProfile>> getAssetProfiles(PageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/assetProfiles',
        queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAssetProfilePageData, response.data!);
  }

  Future<AssetProfile?> getAssetProfile(String assetProfileId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/assetProfile/$assetProfileId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? AssetProfile.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<AssetProfile> saveAssetProfile(AssetProfile assetProfile,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/assetProfile',
        data: jsonEncode(assetProfile),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return AssetProfile.fromJson(response.data!);
  }

  Future<void> deleteAssetProfile(String assetProfileId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/assetProfile/$assetProfileId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<AssetProfile> setDefaultAssetProfile(String assetProfileId,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/assetProfile/$assetProfileId/default',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return AssetProfile.fromJson(response.data!);
  }

  Future<AssetProfileInfo> getDefaultAssetProfileInfo(
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/assetProfileInfo/default',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return AssetProfileInfo.fromJson(response.data!);
  }

  Future<AssetProfileInfo?> getAssetProfileInfo(String assetProfileId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/assetProfileInfo/$assetProfileId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? AssetProfileInfo.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<AssetProfileInfo>> getAssetProfileInfos(PageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/assetProfileInfos',
        queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAssetProfileInfoPageData, response.data!);
  }
}
