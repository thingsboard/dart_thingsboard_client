import 'dart:convert';

import 'package:dio/dio.dart';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<OtaPackageInfo> parseOtaPackageInfoPageData(
    Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => OtaPackageInfo.fromJson(json));
}

class OtaPackageService {
  final ThingsboardClient _tbClient;

  factory OtaPackageService(ThingsboardClient tbClient) {
    return OtaPackageService._internal(tbClient);
  }

  OtaPackageService._internal(this._tbClient);

  Future<ResponseBody?> downloadOtaPackage(String otaPackageId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var options = defaultHttpOptionsFromConfig(requestConfig);
        options.responseType = ResponseType.stream;
        var response = await _tbClient.get<ResponseBody>(
            '/api/otaPackage/$otaPackageId/download',
            options: options);
        return response.data;
      },
      requestConfig: requestConfig,
    );
  }

  Future<OtaPackage?> getOtaPackage(String otaPackageId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/otaPackage/$otaPackageId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? OtaPackage.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<OtaPackageInfo?> getOtaPackageInfo(String otaPackageId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/otaPackage/info/$otaPackageId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? OtaPackageInfo.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<OtaPackageInfo> saveOtaPackageInfo(OtaPackageInfo otaPackageInfo,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/otaPackage',
        data: jsonEncode(otaPackageInfo),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return OtaPackageInfo.fromJson(response.data!);
  }

  Future<OtaPackageInfo> saveOtaPackageData(
      String otaPackageId, MultipartFile file,
      {required ChecksumAlgorithm checksumAlgorithm,
      String? checksum,
      RequestConfig? requestConfig}) async {
    var formData = FormData.fromMap({'file': file});
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/otaPackage/$otaPackageId',
        queryParameters: {
          'checksumAlgorithm': checksumAlgorithm.toShortString(),
          'checksum': checksum
        },
        data: formData,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return OtaPackageInfo.fromJson(response.data!);
  }

  Future<void> deleteOtaPackage(String otaPackageId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/otaPackage/$otaPackageId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<PageData<OtaPackageInfo>> getOtaPackages(PageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/otaPackages',
        queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseOtaPackageInfoPageData, response.data!);
  }

  Future<PageData<OtaPackageInfo>> getOtaPackagesByDeviceProfileId(
      String deviceProfileId, OtaPackageType type, PageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/otaPackages/$deviceProfileId/${type.toShortString()}',
        queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseOtaPackageInfoPageData, response.data!);
  }
}
