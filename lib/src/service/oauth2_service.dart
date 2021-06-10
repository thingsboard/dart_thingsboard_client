import '../model/oauth2_models.dart';
import '../../thingsboard_client.dart';

class OAuth2Service {
  final ThingsboardClient _tbClient;

  factory OAuth2Service(ThingsboardClient tbClient) {
    return OAuth2Service._internal(tbClient);
  }

  OAuth2Service._internal(this._tbClient);

  Future<List<OAuth2ClientInfo>> getOAuth2Clients({String? pkgName, PlatformType? platform, RequestConfig? requestConfig}) async {
    var queryParams = <String, dynamic>{};
    if (pkgName != null) {
      queryParams['pkgName'] = pkgName;
    }
    if (platform != null) {
      queryParams['platform'] = platform.toShortString();
    }
    var response = await _tbClient.post<List<dynamic>>('/api/noauth/oauth2Clients',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => OAuth2ClientInfo.fromJson(e)).toList();
  }

}
