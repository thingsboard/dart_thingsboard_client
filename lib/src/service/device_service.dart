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
}
