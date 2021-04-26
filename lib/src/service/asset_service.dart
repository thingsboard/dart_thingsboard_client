import 'dart:convert';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<AssetInfo> parseAssetInfoPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => AssetInfo.fromJson(json));
}

class AssetService {
  final ThingsboardClient _tbClient;

  factory AssetService(ThingsboardClient tbClient) {
    return AssetService._internal(tbClient);
  }

  AssetService._internal(this._tbClient);

  Future<PageData<AssetInfo>> getTenantAssetInfos(PageLink pageLink,  {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/assetInfos', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAssetInfoPageData, response.data!);
  }

  Future<PageData<AssetInfo>> getCustomerAssetInfos(String customerId, PageLink pageLink,  {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/customer/$customerId/assetInfos', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAssetInfoPageData, response.data!);
  }

  Future<Asset> getAsset(String assetId, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/asset/$assetId',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return Asset.fromJson(response.data!);
  }

  Future<List<Asset>> getAssets(List<String> assetIds, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<Map<String, dynamic>>>('/api/assets', queryParameters: { 'assetIds': assetIds.join(',') },
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => Asset.fromJson(e)).toList();
  }

  Future<AssetInfo> getAssetInfo(String assetId, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/asset/info/$assetId',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return AssetInfo.fromJson(response.data!);
  }

  Future<Asset> saveAsset(Asset asset, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/asset', data: jsonEncode(asset),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return Asset.fromJson(response.data!);
  }

  Future<void> deleteAsset(String assetId, {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/asset/$assetId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

}
