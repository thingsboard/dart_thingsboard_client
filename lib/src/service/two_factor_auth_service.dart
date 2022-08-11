import 'dart:convert';
import '../thingsboard_client_base.dart';
import '../model/model.dart';
import '../http/http_utils.dart';

class TwoFactorAuthService {
  final ThingsboardClient _tbClient;

  factory TwoFactorAuthService(ThingsboardClient tbClient) {
    return TwoFactorAuthService._internal(tbClient);
  }

  TwoFactorAuthService._internal(this._tbClient);

  Future<PlatformTwoFaSettings?> getPlatformTwoFaSettings(
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<dynamic>('/api/2fa/settings',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null && response.data != ""
            ? PlatformTwoFaSettings.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<PlatformTwoFaSettings> savePlatformTwoFaSettings(
      PlatformTwoFaSettings platformTwoFaSettings,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/2fa/settings',
        data: jsonEncode(platformTwoFaSettings),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return PlatformTwoFaSettings.fromJson(response.data!);
  }

  Future<List<TwoFaProviderType>> getAvailableTwoFaProviders(
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/2fa/providers',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => twoFaProviderTypeFromString(e)).toList();
  }

  Future<List<TwoFaProviderInfo>> getAvailableLoginTwoFaProviders(
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>('/api/auth/2fa/providers',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => TwoFaProviderInfo.fromJson(e)).toList();
  }

  Future<TwoFaAccountConfig> generateTwoFaAccountConfig(
      TwoFaProviderType providerType,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/2fa/account/config/generate',
        queryParameters: {'providerType': providerType.toShortString()},
        options: defaultHttpOptionsFromConfig(requestConfig));
    return TwoFaAccountConfig.fromJson(response.data!);
  }

  Future<AccountTwoFaSettings?> getAccountTwoFaSettings(
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<dynamic>('/api/2fa/account/settings',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null && response.data != ""
            ? AccountTwoFaSettings.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<AccountTwoFaSettings> updateTwoFaAccountConfig(
      TwoFaProviderType providerType, bool useByDefault,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/2fa/account/config',
        queryParameters: {'providerType': providerType.toShortString()},
        data: jsonEncode({'useByDefault': useByDefault}),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return AccountTwoFaSettings.fromJson(response.data!);
  }

  Future<void> submitTwoFaAccountConfig(TwoFaAccountConfig accountConfig,
      {RequestConfig? requestConfig}) async {
    await _tbClient.post('/api/2fa/account/config/submit',
        data: jsonEncode(accountConfig),
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<AccountTwoFaSettings> verifyAndSaveTwoFaAccountConfig(
      TwoFaAccountConfig accountConfig,
      {String? verificationCode,
      RequestConfig? requestConfig}) async {
    var queryParameters = <String, dynamic>{};
    if (verificationCode != null) {
      queryParameters['verificationCode'] = verificationCode;
    }
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/2fa/account/config',
        queryParameters: queryParameters,
        data: jsonEncode(accountConfig),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return AccountTwoFaSettings.fromJson(response.data!);
  }

  Future<AccountTwoFaSettings> deleteTwoFaAccountConfig(
      TwoFaProviderType providerType,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.delete<Map<String, dynamic>>(
        '/api/2fa/account/config',
        queryParameters: {'providerType': providerType.toShortString()},
        options: defaultHttpOptionsFromConfig(requestConfig));
    return AccountTwoFaSettings.fromJson(response.data!);
  }

  Future<void> requestTwoFaVerificationCode(TwoFaProviderType providerType,
      {RequestConfig? requestConfig}) async {
    await _tbClient.post('/api/auth/2fa/verification/send',
        queryParameters: {'providerType': providerType.toShortString()},
        options: defaultHttpOptionsFromConfig(requestConfig));
  }
}
