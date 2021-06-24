import 'dart:convert';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<AssetInfo> parseAssetInfoPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => AssetInfo.fromJson(json));
}

PageData<Asset> parseAssetPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => Asset.fromJson(json));
}

class AssetService {
  final ThingsboardClient _tbClient;

  factory AssetService(ThingsboardClient tbClient) {
    return AssetService._internal(tbClient);
  }

  AssetService._internal(this._tbClient);

  Future<Asset?> getAsset(String assetId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
            var response = await _tbClient.get<Map<String, dynamic>>('/api/asset/$assetId',
                options: defaultHttpOptionsFromConfig(requestConfig));
            return response.data != null ? Asset.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<AssetInfo?> getAssetInfo(String assetId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
            var response = await _tbClient.get<Map<String, dynamic>>('/api/asset/info/$assetId',
                options: defaultHttpOptionsFromConfig(requestConfig));
            return response.data != null ? AssetInfo.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
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

  Future<Asset?> assignAssetToCustomer(String customerId, String assetId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
            var response = await _tbClient.post<Map<String, dynamic>>('/api/customer/$customerId/asset/$assetId',
                options: defaultHttpOptionsFromConfig(requestConfig));
            return response.data != null ? Asset.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Asset?> unassignAssetFromCustomer(String assetId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.delete<Map<String, dynamic>>('/api/customer/asset/$assetId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Asset.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Asset?> assignAssetToPublicCustomer(String assetId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>('/api/customer/public/asset/$assetId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Asset.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<Asset>> getTenantAssets(PageLink pageLink,  {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/assets', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAssetPageData, response.data!);
  }

  Future<PageData<AssetInfo>> getTenantAssetInfos(PageLink pageLink,  {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/assetInfos', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAssetInfoPageData, response.data!);
  }

  Future<Asset?> getTenantAsset(String assetName, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/assets', queryParameters: {'assetName': assetName},
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Asset.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<Asset>> getCustomerAssets(String customerId, PageLink pageLink,  {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/customer/$customerId/assets', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAssetPageData, response.data!);
  }

  Future<PageData<AssetInfo>> getCustomerAssetInfos(String customerId, PageLink pageLink,  {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/customer/$customerId/assetInfos', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAssetInfoPageData, response.data!);
  }

  Future<List<Asset>> getAssetsByIds(List<String> assetIds, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/assets', queryParameters: {'assetIds': assetIds.join(',')},
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => Asset.fromJson(e)).toList();
  }

  Future<List<Asset>> findByQuery(AssetSearchQuery query, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<List<dynamic>>('/api/assets', data: jsonEncode(query),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => Asset.fromJson(e)).toList();
  }

  Future<List<EntitySubtype>> getAssetTypes({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/asset/types',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => EntitySubtype.fromJson(e)).toList();
  }

  Future<Asset?> assignAssetToEdge(String edgeId, String assetId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>('/api/edge/$edgeId/asset/$assetId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Asset.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Asset?> unassignAssetFromEdge(String edgeId, String assetId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.delete<Map<String, dynamic>>('/api/edge/$edgeId/asset/$assetId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Asset.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<Asset>> getEdgeAssets(String edgeId, PageLink pageLink,  {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/edge/$edgeId/assets', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseAssetPageData, response.data!);
  }

}
