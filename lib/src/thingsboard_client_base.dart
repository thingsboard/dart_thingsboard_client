import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'error/thingsboard_error.dart';
import 'http/http_utils.dart';
import 'interceptor/http_interceptor.dart';
import 'model/model.dart';
import 'service/service.dart';

typedef UserLoadedCallback = void Function(
    ThingsboardClient tbClient,
    bool isAuthenticated,
);

typedef LoadStartedCallback = void Function();
typedef LoadFinishedCallback = void Function();
typedef ErrorCallback = void Function(ThingsboardError error);

class ThingsboardClient {
  final Dio _dio;
  final TbStorage? _storage;
  final UserLoadedCallback? _userLoadedCallback;
  final ErrorCallback? _errorCallback;
  final LoadStartedCallback? _loadStartedCallback;
  final LoadFinishedCallback? _loadFinishedCallback;
  bool _refreshTokenPending = false;
  String? _token;
  String? _refreshToken;
  AuthUser? _authUser;
  DeviceService? _deviceService;

  factory ThingsboardClient(String apiEndpoint, {TbStorage? storage, UserLoadedCallback? onUserLoaded,
                                                 ErrorCallback? onError, LoadStartedCallback? onLoadStarted,
                                                 LoadFinishedCallback? onLoadFinished}) {
    var dio = Dio();
    dio.options.baseUrl = apiEndpoint;
    final tbClient = ThingsboardClient._internal(dio, storage, onUserLoaded, onError, onLoadStarted, onLoadFinished);
    dio.interceptors.clear();
    dio.interceptors.add(HttpInterceptor(dio, tbClient, tbClient._loadStarted, tbClient._loadFinished, tbClient._onError));
    return tbClient;
  }

  ThingsboardClient._internal(this._dio, this._storage, this._userLoadedCallback, this._errorCallback, this._loadStartedCallback, this._loadFinishedCallback);

  Future<void> _clearJwtToken() async {
    await _setUserFromJwtToken(null, null, true);
  }

  Future<void> _setUserFromJwtToken(String? jwtToken, String? refreshToken, bool? notify) async {
    if (jwtToken == null) {
      _token = null;
      _refreshToken = null;
      _authUser = null;
      if (_storage != null) {
        await _storage!.deleteItem('jwt_token');
        await _storage!.deleteItem('refresh_token');
      }
    } else {
      _token = jwtToken;
      _refreshToken = refreshToken;
      var decodedToken = JwtDecoder.decode(jwtToken);
      _authUser = AuthUser.fromJson(decodedToken);
      if (_storage != null) {
        await _storage!.setItem('jwt_token', jwtToken);
        await _storage!.setItem('refresh_token', refreshToken!);
      }
    }
    if (notify == true) {
      _userLoaded();
    }
  }

  bool _isTokenValid(String? jwtToken) {
    if (jwtToken != null) {
      try {
        return !JwtDecoder.isExpired(jwtToken);
      } catch(e) {
        return false;
      }
    } else {
      return false;
    }
  }

  void _userLoaded() {
    if (_userLoadedCallback != null) {
      Future(() => _userLoadedCallback!(this, isAuthenticated()));
    }
  }

  void _onError(ThingsboardError error) {
    if (_errorCallback != null) {
      Future(() => _errorCallback!(error));
    }
  }

  void _loadStarted() {
    if (_loadStartedCallback != null) {
      Future(() => _loadStartedCallback!());
    }
  }

  void _loadFinished() {
    if (_loadFinishedCallback != null) {
      Future(() => _loadFinishedCallback!());
    }
  }

  ThingsboardError toThingsboardError(error) {
    if (error is DioError) {
      if (error.response != null && error.response!.data != null) {
        var data = error.response!.data;
        if (data is ThingsboardError) {
          return data;
        } else if (data is Map<String, dynamic>) {
          return ThingsboardError.fromJson(data);
        }
      } else if (error.error != null) {
        if (error.error is ThingsboardError) {
          return error.error;
        } else if (error.error is SocketException) {
          return ThingsboardError(message: 'Unable to connect');
        } else {
          return ThingsboardError(message: error.error.toString(), errorCode: thingsboardErrorCodes['general']);
        }
      }
    } else if (error is ThingsboardError) {
      return error;
    }
    return ThingsboardError(message: error.toString(), errorCode: thingsboardErrorCodes['general']);
  }

  Future<void> init() async {
    try {
      if (_storage != null) {
        var jwtToken = await _storage!.getItem('jwt_token');
        var refreshToken = await _storage!.getItem('refresh_token');
        if (!_isTokenValid(jwtToken)) {
          await refreshJwtToken(refreshToken: refreshToken, notify: true);
        } else {
          await _setUserFromJwtToken(jwtToken, refreshToken, true);
        }
      } else {
        await _clearJwtToken();
      }
    }
    catch (e) {
      throw toThingsboardError(e);
    }
  }

  Future<Response<T>> get<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onReceiveProgress,
      }) async {
    try {
      return await _dio.get(path,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress);
    } catch (e) {
      throw toThingsboardError(e);
    }
  }

  Future<Response<T>> post<T>(
      String path, {
        data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
      }) async {
    try {
      return await _dio.post(path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);
    } catch (e) {
      throw toThingsboardError(e);
    }
  }

  Future<LoginResponse> login(LoginRequest loginRequest, {RequestConfig? requestConfig}) async {
    var response = await post('/api/auth/login', data: jsonEncode(loginRequest), options: defaultHttpOptionsFromConfig(requestConfig));
    var loginResponse = LoginResponse.fromJson(response.data);
    await _setUserFromJwtToken(loginResponse.token, loginResponse.refreshToken, true);
    return loginResponse;
  }

  Future<void> logout({RequestConfig? requestConfig}) async {
    try {
      await post('/api/auth/logout', options: defaultHttpOptionsFromConfig(requestConfig));
      await _clearJwtToken();
    } catch (e) {
      await _clearJwtToken();
    }
  }

  Future<void> refreshJwtToken({String? refreshToken, bool? notify, Dio? internalDio, bool interceptRefreshToken = false}) async {
    _refreshTokenPending = true;
    try {
      refreshToken ??= _refreshToken;
      if (_isTokenValid(refreshToken)) {
        var refreshTokenRequest = RefreshTokenRequest(refreshToken!);
        try {
          var targetDio = internalDio ?? _dio;
          var response = await targetDio.post(
              '/api/auth/token', data: jsonEncode(refreshTokenRequest));
          var loginResponse = LoginResponse.fromJson(response.data);
          await _setUserFromJwtToken(
              loginResponse.token, loginResponse.refreshToken, notify);
        } catch (e) {
          await _clearJwtToken();
          rethrow;
        }
      } else {
        await _clearJwtToken();
        if (interceptRefreshToken) {
          throw ThingsboardError(message: 'Session expired!', errorCode: 11);
        }
      }
    } finally {
      _refreshTokenPending = false;
    }
  }

  bool isJwtTokenValid() {
    return _isTokenValid(_token);
  }

  bool refreshTokenPending() {
    return _refreshTokenPending;
  }

  String? getJwtToken() {
    return _token;
  }

  AuthUser? getAuthUser() {
    return _authUser;
  }

  bool isAuthenticated() {
    return _authUser != null;
  }

  DeviceService getDeviceService() {
    _deviceService ??= DeviceService(this);
    return _deviceService!;
  }

}
