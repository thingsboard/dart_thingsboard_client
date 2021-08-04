import 'dart:convert';

import 'package:dio/dio.dart';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<User> parseUserPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => User.fromJson(json));
}

const ACTIVATE_TOKEN_REGEX = '/api/noauth/activate?activateToken=';

class UserService {
  final ThingsboardClient _tbClient;

  factory UserService(ThingsboardClient tbClient) {
    return UserService._internal(tbClient);
  }

  UserService._internal(this._tbClient);

  Future<User?> getUserById(String userId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/user/$userId',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null ? User.fromJson(response.data!) : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<bool> isUserTokenAccessEnabled({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<bool>('/api/user/tokenAccessEnabled',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return response.data!;
  }

  Future<LoginResponse?> getUserToken(String userId,
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/user/$userId/token',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? LoginResponse.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<User> saveUser(User user,
      {bool sendActivationMail = false, RequestConfig? requestConfig}) async {
    var queryParams = <String, dynamic>{
      'sendActivationMail': sendActivationMail
    };
    var response = await _tbClient.post<Map<String, dynamic>>('/api/user',
        queryParameters: queryParams,
        data: jsonEncode(user),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return User.fromJson(response.data!);
  }

  Future<void> sendActivationEmail(String email,
      {RequestConfig? requestConfig}) async {
    await _tbClient.post('/api/user/sendActivationMail',
        queryParameters: {'email': email},
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<String> getActivationLink(String userId,
      {RequestConfig? requestConfig}) async {
    var options = defaultHttpOptionsFromConfig(requestConfig);
    options.responseType = ResponseType.plain;
    var response = await _tbClient
        .get<String>('/api/user/$userId/activationLink', options: options);
    return response.data!;
  }

  Future<void> deleteUser(String userId, {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/user/$userId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<PageData<User>> getUsers(PageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/users',
        queryParameters: pageLink.toQueryParameters(),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseUserPageData, response.data!);
  }

  Future<PageData<User>> getTenantAdmins(String tenantId, PageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/tenant/$tenantId/users',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseUserPageData, response.data!);
  }

  Future<PageData<User>> getCustomerUsers(String customerId, PageLink pageLink,
      {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>(
        '/api/customer/$customerId/users',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseUserPageData, response.data!);
  }

  Future<void> setUserCredentialsEnabled(String userId,
      {bool? userCredentialsEnabled, RequestConfig? requestConfig}) async {
    var queryParams = <String, dynamic>{};
    if (userCredentialsEnabled != null) {
      queryParams['userCredentialsEnabled'] = userCredentialsEnabled;
    }
    await _tbClient.post('/api/user/$userId/userCredentialsEnabled',
        queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<User> getUser({RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/auth/user',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return User.fromJson(response.data!);
  }

  Future<UserPasswordPolicy?> getUserPasswordPolicy(
      {RequestConfig? requestConfig}) async {
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.get<Map<String, dynamic>>(
            '/api/noauth/userPasswordPolicy',
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? UserPasswordPolicy.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }

  Future<String> getActivateToken(String userId,
      {RequestConfig? requestConfig}) async {
    var activationLink =
        await getActivationLink(userId, requestConfig: requestConfig);
    return activationLink.substring(
        activationLink.lastIndexOf(ACTIVATE_TOKEN_REGEX) +
            ACTIVATE_TOKEN_REGEX.length);
  }

  Future<String> checkActivateToken(String userId,
      {RequestConfig? requestConfig}) async {
    var activateToken =
        await getActivateToken(userId, requestConfig: requestConfig);
    var options = defaultHttpOptionsFromConfig(requestConfig);
    options.responseType = ResponseType.plain;
    var response = await _tbClient.get<String>('/api/noauth/activate',
        queryParameters: {'activateToken': activateToken}, options: options);
    return response.data!;
  }

  Future<LoginResponse?> activateUser(String userId, String password,
      {bool sendActivationMail = true, RequestConfig? requestConfig}) async {
    var activateToken =
        await getActivateToken(userId, requestConfig: requestConfig);
    return nullIfNotFound(
      (RequestConfig requestConfig) async {
        var response = await _tbClient.post<Map<String, dynamic>>(
            '/api/noauth/activate',
            queryParameters: {'sendActivationMail': sendActivationMail},
            data: jsonEncode(
                {'activateToken': activateToken, 'password': password}),
            options: defaultHttpOptionsFromConfig(requestConfig));
        return response.data != null
            ? LoginResponse.fromJson(response.data!)
            : null;
      },
      requestConfig: requestConfig,
    );
  }
}
