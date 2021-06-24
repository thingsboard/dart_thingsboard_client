import 'dart:convert';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<DeviceInfo> parseDeviceInfoPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => DeviceInfo.fromJson(json));
}

PageData<Device> parseDevicePageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => Device.fromJson(json));
}

class DeviceService {
  final ThingsboardClient _tbClient;

  factory DeviceService(ThingsboardClient tbClient) {
    return DeviceService._internal(tbClient);
  }

  DeviceService._internal(this._tbClient);


  Future<Device?> getDevice(String deviceId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>('/api/device/$deviceId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Device.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<DeviceInfo?> getDeviceInfo(String deviceId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>('/api/device/info/$deviceId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? DeviceInfo.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Device> saveDevice(Device device, {String? accessToken, RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/device', data: jsonEncode(device),
        queryParameters: {'accessToken': accessToken},
        options: defaultHttpOptionsFromConfig(requestConfig));
    return Device.fromJson(response.data!);
  }

  Future<void> deleteDevice(String deviceId, {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/device/$deviceId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<Device?> assignDeviceToCustomer(String customerId, String deviceId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>('/api/customer/$customerId/device/$deviceId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Device.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Device?> unassignDeviceFromCustomer(String deviceId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.delete<Map<String, dynamic>>('/api/customer/device/$deviceId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Device.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Device?> assignDeviceToPublicCustomer(String deviceId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>('/api/customer/public/device/$deviceId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Device.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<Device>> getTenantDevices(PageLink pageLink,  {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/devices', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDevicePageData, response.data!);
  }

  Future<PageData<DeviceInfo>> getTenantDeviceInfos(PageLink pageLink,  {String type = '', String deviceProfileId = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    queryParams['deviceProfileId'] = deviceProfileId;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/deviceInfos', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDeviceInfoPageData, response.data!);
  }

  Future<Device?> getTenantDevice(String deviceName, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/devices', queryParameters: {'deviceName': deviceName},
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Device.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<Device>> getCustomerDevices(String customerId, PageLink pageLink,  {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/customer/$customerId/devices', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDevicePageData, response.data!);
  }

  Future<PageData<DeviceInfo>> getCustomerDeviceInfos(String customerId, PageLink pageLink,  {String type = '', String deviceProfileId = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    queryParams['deviceProfileId'] = deviceProfileId;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/customer/$customerId/deviceInfos', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDeviceInfoPageData, response.data!);
  }

  Future<List<Device>> getDevicesByIds(List<String> deviceIds, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/devices', queryParameters: { 'deviceIds': deviceIds.join(',') },
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => Device.fromJson(e)).toList();
  }

  Future<List<Device>> findByQuery(DeviceSearchQuery query, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<List<dynamic>>('/api/devices', data: jsonEncode(query),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => Device.fromJson(e)).toList();
  }

  Future<List<EntitySubtype>> getDeviceTypes({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/device/types',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => EntitySubtype.fromJson(e)).toList();
  }

  Future<ClaimResult> claimDevice(String deviceName, ClaimRequest claimRequest, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/customer/device/$deviceName/claim', data: jsonEncode(claimRequest),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return ClaimResult.fromJson(response.data!);
  }

  Future<void> reClaimDevice(String deviceName, {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/customer/device/$deviceName/claim',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<Device?> assignDeviceToTenant(String tenantId, String deviceId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>('/api/tenant/$tenantId/device/$deviceId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Device.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<int> countDevicesByDeviceProfileIdAndEmptyOtaPackage(OtaPackageType otaPackageType, String deviceProfileId, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<int>('/api/devices/count/${otaPackageType.toShortString()}', queryParameters: {'deviceProfileId': deviceProfileId},
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<DeviceCredentials?> getDeviceCredentialsByDeviceId(String deviceId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>('/api/device/$deviceId/credentials',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? DeviceCredentials.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<DeviceCredentials> saveDeviceCredentials(DeviceCredentials deviceCredentials, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/device/credentials', data: jsonEncode(deviceCredentials),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return DeviceCredentials.fromJson(response.data!);
  }

  Future<void> handleOneWayDeviceRPCRequest(String deviceId, dynamic requestBody, {RequestConfig? requestConfig}) async {
    await _tbClient.post('/api/plugins/rpc/oneway/$deviceId', data: jsonEncode(requestBody),
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<dynamic> handleTwoWayDeviceRPCRequest(String deviceId, dynamic requestBody, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post('/api/plugins/rpc/twoway/$deviceId', data: jsonEncode(requestBody),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data;
  }

  Future<Device?> assignDeviceToEdge(String edgeId, String deviceId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>('/api/edge/$edgeId/device/$deviceId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Device.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<Device?> unassignDeviceFromEdge(String edgeId, String deviceId, {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
          (RequestConfig requestConfig) async {
        var response = await _tbClient.delete<Map<String, dynamic>>('/api/edge/$edgeId/device/$deviceId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? Device.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PageData<Device>> getEdgeDevices(String edgeId, PageLink pageLink,  {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/edge/$edgeId/devices', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDevicePageData, response.data!);
  }

}
