import '../model/oauth2_models.dart';
import '../../thingsboard_client.dart';

class OAuth2Service {
  final ThingsboardClient _tbClient;

  factory OAuth2Service(ThingsboardClient tbClient) {
    return OAuth2Service._internal(tbClient);
  }

  OAuth2Service._internal(this._tbClient);

  Future<List<OAuth2ClientInfo>> getOAuth2Clients({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<Map<String, dynamic>>>('/api/noauth/oauth2Clients',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => OAuth2ClientInfo.fromJson(e)).toList();
  }

}
