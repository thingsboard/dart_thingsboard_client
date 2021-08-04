import 'dart:convert';

import 'package:dio/dio.dart';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<TbResourceInfo> parseResourceInfoPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => TbResourceInfo.fromJson(json));
}

class ResourceService {
  final ThingsboardClient _tbClient;

  factory ResourceService(ThingsboardClient tbClient) {
    return ResourceService._internal(tbClient);
  }

  ResourceService._internal(this._tbClient);

  Future<ResponseBody?> downloadResource(String resourceId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var options = defaultHttpOptionsFromConfig(requestConfig);
        options.responseType = ResponseType.stream;
        var response = await _tbClient.get<ResponseBody>(
            '/api/resource/$resourceId/download',
            options: options);
        return response.data;
      },
      requestConfig: requestConfig,
    );
  }

  Future<TbResource?> getResource(String resourceId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/resource/$resourceId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? TbResource.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<TbResourceInfo?> getResourceInfo(String resourceId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/resource/info/$resourceId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? TbResourceInfo.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<TbResource> saveResource(TbResource resource,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/resource',
        data: jsonEncode(resource),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return TbResource.fromJson(response.data!);
  }

  Future<void> deleteResource(String resourceId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/resource/$resourceId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<PageData<TbResourceInfo>> getResources(PageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/resource',
        queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseResourceInfoPageData, response.data!);
  }
}
