import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'error/thingsboard_error.dart';
import 'http/http_utils.dart';
import 'interceptor/http_interceptor.dart';
import 'model/model.dart';
import 'service/service.dart';
import 'storage/storage.dart';

typedef TbComputeCallback<Q, R> = FutureOr<R> Function(Q message);
typedef TbCompute = Future<R> Function<Q, R>(TbComputeCallback<Q, R> callback, Q message);

typedef UserLoadedCallback = void Function();
typedef LoadStartedCallback = void Function();
typedef LoadFinishedCallback = void Function();
typedef ErrorCallback = void Function(ThingsboardError error);

TbCompute syncCompute = <Q,R>(TbComputeCallback<Q, R> callback, Q message) => Future.value(callback(message));

class ThingsboardClient {
  final String _apiEndpoint;
  final Dio _dio;
  final TbStorage? _storage;
  final UserLoadedCallback? _userLoadedCallback;
  final ErrorCallback? _errorCallback;
  final LoadStartedCallback? _loadStartedCallback;
  final LoadFinishedCallback? _loadFinishedCallback;
  final TbCompute? _computeFunc;
  bool _refreshTokenPending = false;
  String? _token;
  String? _refreshToken;
  AuthUser? _authUser;

  AssetService? _assetService;
  CustomerService? _customerService;
  DashboardService? _dashboardService;
  DeviceProfileService? _deviceProfileService;
  DeviceService? _deviceService;
  TenantService? _tenantService;
  UserService? _userService;
  AlarmService? _alarmService;
  EntityQueryService? _entityQueryService;
  OAuth2Service? _oauth2service;
  AuditLogService? _auditLogService;
  AdminService? _adminService;
  ComponentDescriptorService? _componentDescriptorService;
  EntityRelationService? _entityRelationService;
  EntityViewService? _entityViewService;
  RuleChainService? _ruleChainService;
  AttributeService? _attributeService;
  TenantProfileService? _tenantProfileService;
  WidgetService? _widgetService;
  EdgeService? _edgeService;
  ResourceService? _resourceService;
  OtaPackageService? _otaPackageService;
  TelemetryWebsocketService? _telemetryWebsocketService;

  factory ThingsboardClient(String apiEndpoint, {TbStorage? storage, UserLoadedCallback? onUserLoaded,
                                                 ErrorCallback? onError, LoadStartedCallback? onLoadStarted,
                                                 LoadFinishedCallback? onLoadFinished, TbCompute? computeFunc}) {
    var dio = Dio();
    dio.options.baseUrl = apiEndpoint;
    final tbClient = ThingsboardClient._internal(apiEndpoint, dio, storage, onUserLoaded, onError, onLoadStarted, onLoadFinished, computeFunc ?? syncCompute);
    dio.interceptors.clear();
    dio.interceptors.add(HttpInterceptor(dio, tbClient, tbClient._loadStarted, tbClient._loadFinished, tbClient._onError));
    return tbClient;
  }

  ThingsboardClient._internal(this._apiEndpoint, this._dio, this._storage, this._userLoadedCallback, this._errorCallback, this._loadStartedCallback, this._loadFinishedCallback, this._computeFunc);

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
    if (_telemetryWebsocketService != null) {
      _telemetryWebsocketService!.reset(true);
    }
    if (_userLoadedCallback != null) {
      Future(() => _userLoadedCallback!());
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

  ThingsboardError toThingsboardError(error, [StackTrace? stackTrace]) {
    ThingsboardError? tbError;
    if (error is DioError) {
      if (error.response != null && error.response!.data != null) {
        var data = error.response!.data;
        if (data is ThingsboardError) {
          tbError = data;
        } else if (data is Map<String, dynamic>) {
          tbError = ThingsboardError.fromJson(data);
        }
      } else if (error.error != null) {
        if (error.error is ThingsboardError) {
          tbError = error.error;
        } else if (error.error is SocketException) {
          tbError = ThingsboardError(error: error, message: 'Unable to connect', errorCode: ThingsBoardErrorCode.general);
        } else {
          tbError = ThingsboardError(error: error, message: error.error.toString(), errorCode: ThingsBoardErrorCode.general);
        }
      }
      if (tbError == null && error.response != null && error.response!.statusCode != null) {
        var httpStatus = error.response!.statusCode!;
        var message = (httpStatus.toString() + ': ' + (error.response!.statusMessage != null ? error.response!.statusMessage! : 'Unknown'));
        tbError = ThingsboardError(error: error, message: message, errorCode: httpStatusToThingsboardErrorCode(httpStatus), status: httpStatus);
      }
    } else if (error is ThingsboardError) {
      tbError = error;
    }
    tbError ??= ThingsboardError(error: error, message: error.toString(), errorCode: ThingsBoardErrorCode.general);

    var errorStackTrace;
    if (tbError.error is Error) {
      errorStackTrace = tbError.error.stackTrace;
    }

    tbError.stackTrace = stackTrace ??
        tbError.getStackTrace() ??
        errorStackTrace ??
        StackTrace.current;

    return tbError;
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

  Future<Response<T>> delete<T>(
      String path, {
        data,
        Map<String, dynamic>? queryParameters,
        Options? options,
        CancelToken? cancelToken,
      }) async {
    try {
      return await _dio.delete(path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken);
    } catch (e) {
      throw toThingsboardError(e);
    }
  }

  Future<R> compute<Q, R>(TbComputeCallback<Q, R> callback, Q message) {
    return _computeFunc!(callback, message);
  }

  Future<LoginResponse> login(LoginRequest loginRequest, {RequestConfig? requestConfig}) async {
    var response = await post('/api/auth/login', data: jsonEncode(loginRequest), options: defaultHttpOptionsFromConfig(requestConfig));
    var loginResponse = LoginResponse.fromJson(response.data);
    await _setUserFromJwtToken(loginResponse.token, loginResponse.refreshToken, true);
    return loginResponse;
  }

  Future<void> setUserFromJwtToken(String? jwtToken, String? refreshToken, bool? notify) async {
    await _setUserFromJwtToken(jwtToken, refreshToken, notify);
  }

  Future<void> logout({RequestConfig? requestConfig}) async {
    try {
      await post('/api/auth/logout', options: defaultHttpOptionsFromConfig(requestConfig));
      await _clearJwtToken();
    } catch (e) {
      await _clearJwtToken();
    }
  }

  Future<void> sendResetPasswordLink(String email, {RequestConfig? requestConfig}) async {
    await post('/api/noauth/resetPasswordByEmail', data: {'email': email}, options: defaultHttpOptionsFromConfig(requestConfig));
  }

  Future<void> changePassword(String currentPassword, String newPassword, {RequestConfig? requestConfig}) async {
    var changePasswordRequest = {
      'currentPassword': currentPassword,
      'newPassword': newPassword
    };
    var response = await post('/api/auth/changePassword', data: jsonEncode(changePasswordRequest), options: defaultHttpOptionsFromConfig(requestConfig));
    var loginResponse = LoginResponse.fromJson(response.data);
    await _setUserFromJwtToken(loginResponse.token, loginResponse.refreshToken, false);
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

  String? getRefreshToken() {
    return _refreshToken;
  }

  AuthUser? getAuthUser() {
    return _authUser;
  }

  bool isAuthenticated() {
    return _authUser != null;
  }

  bool isSystemAdmin() {
    return _authUser != null && _authUser!.isSystemAdmin();
  }

  bool isTenantAdmin() {
    return _authUser != null && _authUser!.isTenantAdmin();
  }

  bool isCustomerUser() {
    return _authUser != null && _authUser!.isCustomerUser();
  }

  AssetService getAssetService() {
    _assetService ??= AssetService(this);
    return _assetService!;
  }

  CustomerService getCustomerService() {
    _customerService ??= CustomerService(this);
    return _customerService!;
  }

  DashboardService getDashboardService() {
    _dashboardService ??= DashboardService(this);
    return _dashboardService!;
  }

  DeviceProfileService getDeviceProfileService() {
    _deviceProfileService ??= DeviceProfileService(this);
    return _deviceProfileService!;
  }

  DeviceService getDeviceService() {
    _deviceService ??= DeviceService(this);
    return _deviceService!;
  }

  TenantService getTenantService() {
    _tenantService ??= TenantService(this);
    return _tenantService!;
  }

  UserService getUserService() {
    _userService ??= UserService(this);
    return _userService!;
  }

  AlarmService getAlarmService() {
    _alarmService ??= AlarmService(this);
    return _alarmService!;
  }

  EntityQueryService getEntityQueryService() {
    _entityQueryService ??= EntityQueryService(this);
    return _entityQueryService!;
  }

  OAuth2Service getOAuth2Service() {
    _oauth2service ??= OAuth2Service(this);
    return _oauth2service!;
  }

  AuditLogService getAuditLogService() {
    _auditLogService ??= AuditLogService(this);
    return _auditLogService!;
  }

  AdminService getAdminService() {
    _adminService ??= AdminService(this);
    return _adminService!;
  }

  ComponentDescriptorService getComponentDescriptorService() {
    _componentDescriptorService ??= ComponentDescriptorService(this);
    return _componentDescriptorService!;
  }

  EntityRelationService getEntityRelationService() {
    _entityRelationService ??= EntityRelationService(this);
    return _entityRelationService!;
  }

  EntityViewService getEntityViewService() {
    _entityViewService ??= EntityViewService(this);
    return _entityViewService!;
  }

  RuleChainService getRuleChainService() {
    _ruleChainService ??= RuleChainService(this);
    return _ruleChainService!;
  }

  AttributeService getAttributeService() {
    _attributeService ??= AttributeService(this);
    return _attributeService!;
  }

  TenantProfileService getTenantProfileService() {
    _tenantProfileService ??= TenantProfileService(this);
    return _tenantProfileService!;
  }

  WidgetService getWidgetService() {
    _widgetService ??= WidgetService(this);
    return _widgetService!;
  }

  EdgeService getEdgeService() {
    _edgeService ??= EdgeService(this);
    return _edgeService!;
  }

  ResourceService getResourceService() {
    _resourceService ??= ResourceService(this);
    return _resourceService!;
  }

  OtaPackageService getOtaPackageService() {
    _otaPackageService ??= OtaPackageService(this);
    return _otaPackageService!;
  }

  TelemetryService getTelemetryService() {
    _telemetryWebsocketService ??= TelemetryWebsocketService(this, _apiEndpoint);
    return _telemetryWebsocketService!;
  }

}
