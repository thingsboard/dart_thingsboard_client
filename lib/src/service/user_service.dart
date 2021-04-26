import 'dart:convert';

import 'package:dio/dio.dart';

import '../thingsboard_client_base.dart';
import '../http/http_utils.dart';
import '../model/model.dart';

PageData<User> parseUserPageData(Map<String, dynamic> json) {
  return PageData.fromJson(json, (json) => User.fromJson(json));
}

class UserService {
  final ThingsboardClient _tbClient;

  factory UserService(ThingsboardClient tbClient) {
    return UserService._internal(tbClient);
  }

  UserService._internal(this._tbClient);

  Future<PageData<User>> getUsers(PageLink pageLink,  {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>('/api/users', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseUserPageData, response.data!);
  }

  Future<PageData<User>> getTenantAdmins(String tenantId, PageLink pageLink,  {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>('/api/tenant/$tenantId/users', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseUserPageData, response.data!);
  }

  Future<PageData<User>> getCustomerUsers(String customerId, PageLink pageLink,  {RequestConfig? requestConfig}) async {
    var queryParams = pageLink.toQueryParameters();
    var response = await _tbClient.get<Map<String, dynamic>>('/api/customer/$customerId/users', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
    return _tbClient.compute(parseUserPageData, response.data!);
  }

  Future<User> getUser(String userId, {RequestConfig? requestConfig}) async {
    var response = await _tbClient.get<Map<String, dynamic>>('/api/user/$userId',
        options: defaultHttpOptionsFromConfig(requestConfig));
    return User.fromJson(response.data!);
  }

  Future<User> saveUser(User user, {bool sendActivationMail = false, RequestConfig? requestConfig}) async {
    var queryParams = <String, dynamic>{
      'sendActivationMail': sendActivationMail
    };
    var response = await _tbClient.post<Map<String, dynamic>>('/api/user', queryParameters: queryParams, data: jsonEncode(user),
        options: defaultHttpOptionsFromConfig(requestConfig));
    return User.fromJson(response.data!);
  }

  Future<void> deleteUser(String userId, {RequestConfig? requestConfig}) async {
    await _tbClient.delete('/api/user/$userId',
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<String> getActivationLink(String userId,  {RequestConfig? requestConfig}) async {
    var options = defaultHttpOptionsFromConfig(requestConfig);
    options.responseType = ResponseType.plain;
    var response = await _tbClient.get<String>('/api/user/$userId/activationLink',
        options: options);
    return response.data!;
  }

  Future<void> sendActivationEmail(String email, {RequestConfig? requestConfig}) async {
    var queryParams = <String, dynamic>{
      'email': email
    };
    await _tbClient.post('/api/user/sendActivationMail', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<void> setUserCredentialsEnabled(String userId, {bool? userCredentialsEnabled, RequestConfig? requestConfig}) async {
    var queryParams = <String, dynamic>{};
    if (userCredentialsEnabled != null) {
      queryParams['userCredentialsEnabled'] = userCredentialsEnabled;
    }
    await _tbClient.post('/api/user/$userId/userCredentialsEnabled', queryParameters: queryParams,
        options: defaultHttpOptionsFromConfig(requestConfig));
  }

}
