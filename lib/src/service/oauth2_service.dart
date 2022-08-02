import 'dart:convert';

import 'package:dio/dio.dart';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

List<OAuth2ClientRegistrationTemplate> parseOauth2ClientRegistrationTemplates(
    List<dynamic> json) {
  return json.map((e) => OAuth2ClientRegistrationTemplate.fromJson(e)).toList();
}

class OAuth2Service {
  final ThingsboardClient _tbClient;

  factory OAuth2Service(ThingsboardClient tbClient) {
    return OAuth2Service._internal(tbClient);
  }

  OAuth2Service._internal(this._tbClient);

  Future<List<OAuth2ClientInfo>> getOAuth2Clients(
      {String? pkgName,
      PlatformType? platform,
      RequestConfig? requestConfig}) async {
    var queryParams = <String, dynamic>{};
    if (pkgName != null) {
      queryParams['pkgName'] = pkgName;
    }
    if (platform != null) {
      queryParams['platform'] = platform.toShortString();
    }
    var response = await _tbClient.post<List<dynamic>>(
        '/api/noauth/oauth2Clients',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!.map((e) => OAuth2ClientInfo.fromJson(e)).toList();
  }

  Future<OAuth2ClientRegistrationTemplate> saveClientRegistrationTemplate(
      OAuth2ClientRegistrationTemplate clientRegistrationTemplate,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/oauth2/config/template',
        data: jsonEncode(clientRegistrationTemplate),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return OAuth2ClientRegistrationTemplate.fromJson(response.data!);
  }

  Future<void> deleteClientRegistrationTemplate(
      String oAuth2ClientRegistrationTemplateId,
      {RequestConfig? requestConfig}) async {
    await _tbClient.delete(
        '/api/oauth2/config/template/$oAuth2ClientRegistrationTemplateId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<List<OAuth2ClientRegistrationTemplate>> getClientRegistrationTemplates(
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<List<dynamic>>(
        '/api/oauth2/config/template',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(
        parseOauth2ClientRegistrationTemplates, response.data!);
  }

  Future<OAuth2Info> getCurrentOAuth2Info(
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/oauth2/config',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return OAuth2Info.fromJson(response.data!);
  }

  Future<OAuth2Info> saveOAuth2Info(OAuth2Info oAuth2Info,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.post<Map<String, dynamic>>(
        '/api/oauth2/config',
        data: jsonEncode(oAuth2Info),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return OAuth2Info.fromJson(response.data!);
  }

  Future<String> getLoginProcessingUrl({RequestConfig? requestConfig}) async {
    var options = defaultHttpOptionsFromConfig(requestConfig);
    options.responseType = ResponseType.plain;
    var response = await _tbClient.get<String>('/api/oauth2/loginProcessingUrl',
        options: options);
    return response.data!;
  }
}
