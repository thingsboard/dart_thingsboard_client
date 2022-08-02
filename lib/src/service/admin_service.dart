import 'dart:convert';

import '../../thingsboard_client.dart';

class AdminService {
  final ThingsboardClient _tbClient;

  factory AdminService(ThingsboardClient tbClient) {
    return AdminService._internal(tbClient);
  }

  AdminService._internal(this._tbClient);

  Future<AdminSettings?> getAdminSettings(String key,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/admin/settings/$key',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? AdminSettings.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<AdminSettings> saveAdminSettings(AdminSettings adminSettings,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/admin/settings',
        data: jsonEncode(adminSettings),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return AdminSettings.fromJson(response.data!);
  }

  Future<void> sendTestMail(AdminSettings adminSettings,
      {RequestConfig? requestConfig}) async {
    await _tbClient.post<Map<String, dynamic>>('/api/admin/settings/testMail',
        data: jsonEncode(adminSettings),
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<void> sendTestSms(TestSmsRequest testSmsRequest,
      {RequestConfig? requestConfig}) async {
    await _tbClient.post<Map<String, dynamic>>('/api/admin/settings/testSms',
        data: jsonEncode(testSmsRequest),
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<SecuritySettings?> getSecuritySettings(
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/admin/securitySettings',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? SecuritySettings.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<SecuritySettings> saveSecuritySettings(
      SecuritySettings securitySettings,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/admin/securitySettings',
        data: jsonEncode(securitySettings),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return SecuritySettings.fromJson(response.data!);
  }

  Future<UpdateMessage?> checkUpdates({RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/admin/updates',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? UpdateMessage.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<RepositorySettings?> getRepositorySettings(
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/admin/repositorySettings',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? RepositorySettings.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<bool> repositorySettingsExists({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<bool>(
        '/api/admin/repositorySettings/exists',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<RepositorySettings> saveRepositorySettings(
      RepositorySettings repositorySettings,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/admin/repositorySettings',
        data: jsonEncode(repositorySettings),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return RepositorySettings.fromJson(response.data!);
  }

  Future<void> deleteRepositorySettings({RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/admin/repositorySettings',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<void> checkRepositoryAccess(RepositorySettings repositorySettings,
      {RequestConfig? requestConfig}) async {
    await _tbClient.post<Map<String, dynamic>>(
        '/api/admin/repositorySettings/checkAccess',
        data: jsonEncode(repositorySettings),
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<AutoCommitSettings?> getAutoCommitSettings(
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/admin/autoCommitSettings',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? AutoCommitSettings.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<bool> autoCommitSettingsExists({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<bool>(
        '/api/admin/autoCommitSettings/exists',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<AutoCommitSettings> saveAutoCommitSettings(
      AutoCommitSettings autoCommitSettings,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/admin/autoCommitSettings',
        data: jsonEncode(autoCommitSettings),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return AutoCommitSettings.fromJson(response.data!);
  }

  Future<void> deleteAutoCommitSettings({RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/admin/autoCommitSettings',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }
}
