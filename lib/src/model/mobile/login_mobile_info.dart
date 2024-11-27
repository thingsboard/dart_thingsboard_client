import 'package:thingsboard_client/thingsboard_client.dart'
    show OAuth2ClientInfo, VersionInfo, StoreInfo;

class LoginMobileInfo {
  const LoginMobileInfo({
    required this.oAuth2Clients,
    required this.storeInfo,
    required this.versionInfo,
  });

  final List<OAuth2ClientInfo> oAuth2Clients;
  final StoreInfo? storeInfo;
  final VersionInfo? versionInfo;

  factory LoginMobileInfo.fromJson(Map<String, dynamic> json) {
    return LoginMobileInfo(
      oAuth2Clients: json['oAuth2ClientLoginInfos']
          .map<OAuth2ClientInfo>((e) => OAuth2ClientInfo.fromJson(e))
          .toList(),
      storeInfo: json['storeInfo'] != null
          ? StoreInfo.fromJson(json['storeInfo'])
          : null,
      versionInfo: json['versionInfo'] != null
          ? VersionInfo.fromJson(json['versionInfo'])
          : null,
    );
  }
}
