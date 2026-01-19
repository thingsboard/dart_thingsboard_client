import 'package:thingsboard_client/thingsboard_client.dart';

PageData<ApiKey> parseApiKeysPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => ApiKey.fromJson(json));
}

class ApiKeyService {
  final ThingsboardClient _tbClient;

  factory ApiKeyService(ThingsboardClient tbClient) {
    return ApiKeyService._internal(tbClient);
  }

  ApiKeyService._internal(this._tbClient);

  Future<PageData<ApiKey>> getApiKeys(ApiKeyQuery query,
      {RequestConfig? requestConfig}) async {
    final response = await _tbClient.get<Map<String, dynamic>>(
        '/api/apiKeys/${query.userId}',
        queryParameters: query.pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseApiKeysPageData, response.data!);
  }

  Future<ApiKey> updateKeyDescription(String keyId, String description,
      {RequestConfig? requestConfig}) async {
    final response = await _tbClient.put<Map<String, dynamic>>(
        '/api/apiKey/$keyId/description',
        data: description,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return ApiKey.fromJson(response.data!);
  }

  Future<ApiKey> updateKeyStatus(String keyId, bool enabled,
      {RequestConfig? requestConfig}) async {
    final response = await _tbClient.put<Map<String, dynamic>>(
        '/api/apiKey/$keyId/enabled/$enabled',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return ApiKey.fromJson(response.data!);
  }

  Future<void> deleteApiKey(String keyId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete<Map<String, dynamic>>('/api/apiKey/$keyId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<ApiKey> postApiKey(ApiKey key, {RequestConfig? requestConfig}) async {
    final response = await _tbClient.post<Map<String, dynamic>>('/api/apiKey',
        data: key.toJson(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return ApiKey.fromJson(response.data!);
  }
}
