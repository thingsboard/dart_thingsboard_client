import 'dart:convert';

import '../http/http_utils.dart';
import '../model/page/page_link.dart';
import '../model/device_models.dart';
import '../model/page/page_data.dart';
import '../thingsboard_client_base.dart';

PageData<DeviceProfile> parseDeviceProfilePageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => DeviceProfile.fromJson(json));
}

PageData<DeviceProfileInfo> parseDeviceProfileInfoPageData(
    Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => DeviceProfileInfo.fromJson(json));
}

class DeviceProfileService {
  final ThingsboardClient _tbClient;

  factory DeviceProfileService(ThingsboardClient tbClient) {
    return DeviceProfileService._internal(tbClient);
  }

  DeviceProfileService._internal(this._tbClient);

  Future<PageData<DeviceProfile>> getDeviceProfiles(PageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/deviceProfiles',
        queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDeviceProfilePageData, response.data!);
  }

  Future<DeviceProfile?> getDeviceProfile(String deviceProfileId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/deviceProfile/$deviceProfileId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? DeviceProfile.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<DeviceProfile> saveDeviceProfile(DeviceProfile deviceProfile,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/deviceProfile',
        data: jsonEncode(deviceProfile),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return DeviceProfile.fromJson(response.data!);
  }

  Future<void> deleteDeviceProfile(String deviceProfileId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/deviceProfile/$deviceProfileId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<DeviceProfile> setDefaultDeviceProfile(String deviceProfileId,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/deviceProfile/$deviceProfileId/default',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return DeviceProfile.fromJson(response.data!);
  }

  Future<DeviceProfileInfo> getDefaultDeviceProfileInfo(
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/deviceProfileInfo/default',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return DeviceProfileInfo.fromJson(response.data!);
  }

  Future<DeviceProfileInfo?> getDeviceProfileInfo(String deviceProfileId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/deviceProfileInfo/$deviceProfileId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? DeviceProfileInfo.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<DeviceProfileInfo>> getDeviceProfileInfos(PageLink pageLink,
      {DeviceTransportType? transportType,
      RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    if (transportType != null) {
      queryParams['transportType'] = transportType.toShortString();
    }
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/deviceProfileInfos',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDeviceProfileInfoPageData, response.data!);
  }

  Future<List<String>> getDeviceProfileDevicesAttributesKeys(
      {String? deviceProfileId, RequestConfig? requestConfig}) async {
    var queryParams = <String, dynamic>{};
    if (deviceProfileId != null) {
      queryParams['deviceProfileId'] = deviceProfileId;
    }
    var response = await _tbClient.get<List<String>>(
        '/api/deviceProfile/devices/keys/attributes',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<List<String>> getDeviceProfileDevicesTimeseriesKeys(
      {String? deviceProfileId, RequestConfig? requestConfig}) async {
    var queryParams = <String, dynamic>{};
    if (deviceProfileId != null) {
      queryParams['deviceProfileId'] = deviceProfileId;
    }
    var response = await _tbClient.get<List<String>>(
        '/api/deviceProfile/devices/keys/timeseries',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }
}
