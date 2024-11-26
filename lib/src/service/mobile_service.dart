import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:thingsboard_pe_client/thingsboard_client.dart';

class MobileService {
  MobileService._internal(this._tbClient);

  factory MobileService(ThingsboardClient tbClient) =>
      MobileService._internal(tbClient);

  final ThingsboardClient _tbClient;

  Future<MobileBasicInfo?> getUserMobileInfo(
    MobileInfoQuery query, {
    RequestConfig? requestConfig,
  }) async {
    final queryParams = query.toQueryParameters();
    final response = await _tbClient.get<Map<String, dynamic>>(
      '/api/mobile',
      queryParameters: queryParams,
      options: defaultHttpOptionsFromConfig(requestConfig),
    );

    return response.data != null
        ? MobileBasicInfo.fromJson(response.data!)
        : null;
  }

  Future<LoginMobileInfo?> getLoginMobileInfo(
    MobileInfoQuery query, {
    RequestConfig? requestConfig,
  }) async {
    final queryParams = query.toQueryParameters();
    final response = await _tbClient.get<Map<String, dynamic>>(
      '/api/noauth/mobile',
      queryParameters: queryParams,
      options: defaultHttpOptionsFromConfig(requestConfig),
    );

    return response.data != null
        ? LoginMobileInfo.fromJson(response.data!)
        : null;
  }

  Future<SignUpResult> signup(
    MobileSignUpRequest signUpRequest, {
    RequestConfig? requestConfig,
  }) async {
    final options = defaultHttpOptionsFromConfig(requestConfig);
    options.responseType = ResponseType.plain;

    final response = await _tbClient.post<String>(
      '/api/noauth/signup',
      data: signUpRequest.toJson(),
      options: options,
    );

    return signUpResultFromString(jsonDecode(response.data!));
  }
}
