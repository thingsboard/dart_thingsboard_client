import 'dart:convert';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<DeviceInfo> parseDeviceInfoPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => DeviceInfo.fromJson(json));
}

class DeviceService {
  final ThingsboardClient _tbClient;

  factory DeviceService(ThingsboardClient tbClient) {
    return DeviceService._internal(tbClient);
  }

  DeviceService._internal(this._tbClient);

  Future<PageData<DeviceInfo>> getTenantDeviceInfos(PageLink pageLink,  {String type = '', RequestConfig? requestConfig}) async {
     var queryParams = pageLink.toQueryParameters();
     queryParams['type'] = type;
     var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/deviceInfos', queryParameters: queryParams,
         options: defaultHttpOptionsFromConfig(requestConfig));
     return _tbClient.compute(parseDeviceInfoPageData, response.data!);
  }

  Future<PageData<DeviceInfo>> getTenantDeviceInfosByDeviceProfileId(PageLink pageLink,  {String deviceProfileId = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['deviceProfileId'] = deviceProfileId;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/deviceInfos', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDeviceInfoPageData, response.data!);
  }

  Future<PageData<DeviceInfo>> getCustomerDeviceInfos(String customerId, PageLink pageLink,  {String type = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['type'] = type;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/customer/$customerId/deviceInfos', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDeviceInfoPageData, response.data!);
  }

  Future<PageData<DeviceInfo>> getCustomerDeviceInfosByDeviceProfileId(String customerId, PageLink pageLink,  {String deviceProfileId = '', RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    queryParams['deviceProfileId'] = deviceProfileId;
    var response = await _tbClient.get<Map<String, dynamic>>('/api/customer/$customerId/deviceInfos', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseDeviceInfoPageData, response.data!);
  }

  Future<Device> getDevice(String deviceId, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/device/$deviceId',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return Device.fromJson(response.data!);
  }

  Future<List<Device>> getDevices(List<String> deviceIds, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<Map<String, dynamic>>>('/api/devices', queryParameters: { 'deviceIds': deviceIds.join(',') },
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => Device.fromJson(e)).toList();
  }

  Future<DeviceInfo> getDeviceInfo(String deviceId, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/device/info/$deviceId',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return DeviceInfo.fromJson(response.data!);
  }

  Future<Device> saveDevice(Device device, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>('/api/device', data: jsonEncode(device),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return Device.fromJson(response.data!);
  }

  Future<void> deleteDevice(String deviceId, {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/device/$deviceId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

}
