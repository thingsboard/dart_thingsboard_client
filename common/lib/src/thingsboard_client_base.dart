// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'error/thingsboard_error.dart';
import 'http/http_utils.dart';
import 'interceptor/http_interceptor.dart';
import 'model/login_models.dart';
import 'model/version_models.dart';
import 'model/user_models.dart';
import 'model/authority_enum.dart';
import 'model/constants.dart';
import 'model/telemetry/telemetry_models.dart';
import 'service/telemetry_websocket_service.dart';
import 'storage/in_memory_storage.dart';
import 'storage/tb_storage.dart';

// Callback typedefs
typedef TbComputeCallback<Q, R> = FutureOr<R> Function(Q message);
typedef TbCompute =
    Future<R> Function<Q, R>(TbComputeCallback<Q, R> callback, Q message);

typedef UserLoadedCallback = void Function();
typedef LoadStartedCallback = void Function();
typedef LoadFinishedCallback = void Function();
typedef MfaAuthCallback = void Function();
typedef ErrorCallback = void Function(ThingsboardError error);

TbCompute syncCompute = <Q, R>(TbComputeCallback<Q, R> callback, Q message) =>
    Future.value(callback(message));

class ThingsboardClientBase {
  final String _apiEndpoint;
  final Dio _dio;
  final TbStorage _storage;
  final UserLoadedCallback? _userLoadedCallback;
  final MfaAuthCallback? _mfaAuthCallback;
  final MfaAuthCallback? _mfaForceCallback;
  final ErrorCallback? _errorCallback;
  final LoadStartedCallback? _loadStartedCallback;
  final LoadFinishedCallback? _loadFinishedCallback;
  final TbCompute? _computeFunc;
  final bool debugMode;

  // Bounds connection setup only, never response time, so it is a safe default
  // for every request; without it an unreachable server stalls for minutes.
  static const _defaultConnectTimeout = Duration(seconds: 20);

  // Applied to the token-refresh call only, so it never truncates other
  // (legitimately long) requests.
  static const _defaultRefreshCallTimeout = Duration(seconds: 15);

  // Completer gate for token refresh (AUTH-03: only one refresh call for concurrent requests)
  Completer<void>? _tokenRefreshCompleter;

  String? _token;
  String? _refreshToken;
  AuthUser? _authUser;
  String? apiKey;

  TelemetryWebsocketService? _telemetryWebsocketService;

  factory ThingsboardClientBase(
    String apiEndpoint, {
    TbStorage? storage,
    String? apiKey,
    UserLoadedCallback? onUserLoaded,
    MfaAuthCallback? onMfaAuth,
    MfaAuthCallback? onMfaForce,
    ErrorCallback? onError,
    LoadStartedCallback? onLoadStarted,
    LoadFinishedCallback? onLoadFinished,
    TbCompute? computeFunc,
    bool debugMode = false,
  }) {
    final tbClient = ThingsboardClientBase._internal(
      apiEndpoint,
      _createDio(apiEndpoint),
      storage,
      apiKey,
      onUserLoaded,
      onMfaAuth,
      onMfaForce,
      onError,
      onLoadStarted,
      onLoadFinished,
      computeFunc ?? syncCompute,
      debugMode,
    );
    tbClient._installInterceptors();
    return tbClient;
  }

  ThingsboardClientBase._internal(
    this._apiEndpoint,
    this._dio,
    TbStorage? storage,
    this.apiKey,
    this._userLoadedCallback,
    this._mfaAuthCallback,
    this._mfaForceCallback,
    this._errorCallback,
    this._loadStartedCallback,
    this._loadFinishedCallback,
    this._computeFunc,
    this.debugMode,
  ) : _storage = storage ?? InMemoryStorage();

  /// Generative constructor for subclasses (edition-specific clients).
  ///
  /// Performs the same Dio setup and interceptor registration as the factory
  /// constructor so that subclass constructors can call [super.create(...)].
  ThingsboardClientBase.create(
    String apiEndpoint, {
    TbStorage? storage,
    this.apiKey,
    UserLoadedCallback? onUserLoaded,
    MfaAuthCallback? onMfaAuth,
    MfaAuthCallback? onMfaForce,
    ErrorCallback? onError,
    LoadStartedCallback? onLoadStarted,
    LoadFinishedCallback? onLoadFinished,
    TbCompute? computeFunc,
    this.debugMode = false,
  }) : _apiEndpoint = apiEndpoint,
       _dio = _createDio(apiEndpoint),
       _userLoadedCallback = onUserLoaded,
       _mfaAuthCallback = onMfaAuth,
       _mfaForceCallback = onMfaForce,
       _errorCallback = onError,
       _loadStartedCallback = onLoadStarted,
       _loadFinishedCallback = onLoadFinished,
       _computeFunc = computeFunc ?? syncCompute,
       _storage = storage ?? InMemoryStorage() {
    _installInterceptors();
  }

  static Dio _createDio(String apiEndpoint) => Dio(
    BaseOptions(baseUrl: apiEndpoint, connectTimeout: _defaultConnectTimeout),
  );

  void _installInterceptors() {
    _dio.interceptors.clear();
    if (debugMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
        ),
      );
    }
    _dio.interceptors.add(
      HttpInterceptor(_dio, this, _loadStarted, _loadFinished, _onError),
    );
  }

  // ---- Public accessors ----

  Dio get dio => _dio;

  String get apiEndpoint => _apiEndpoint;

  TelemetryService getTelemetryService() {
    _telemetryWebsocketService ??= TelemetryWebsocketService(
      this,
      _apiEndpoint,
    );
    return _telemetryWebsocketService!;
  }

  String? getJwtToken() => _token;

  String? getRefreshToken() => _refreshToken;

  AuthUser? getAuthUser() => _authUser;

  bool isApiKeyAuth() => apiKey?.isNotEmpty ?? false;

  bool isAuthenticated() => _authUser != null;

  bool isJwtTokenValid() => _isTokenValid(_token);

  bool refreshTokenPending() => _tokenRefreshCompleter != null;

  bool isSystemAdmin() => _authUser != null && _authUser!.isSystemAdmin();

  bool isTenantAdmin() => _authUser != null && _authUser!.isTenantAdmin();

  bool isCustomerUser() => _authUser != null && _authUser!.isCustomerUser();

  bool isPreVerificationToken() =>
      _authUser != null && _authUser!.isPreVerificationToken();

  bool isMfaConfigurationToken() =>
      _authUser != null && _authUser!.isMfaConfigurationToken();

  // ---- Auth lifecycle ----

  /// Restores the session persisted in storage, refreshing an expired access
  /// token first.
  ///
  /// When that refresh fails because the server could not be reached, the
  /// stale session is restored anyway: [isAuthenticated] becomes true and the
  /// next authenticated request retries the refresh through the interceptor,
  /// so a user holding a still-valid refresh token is not logged out for being
  /// offline. Throws a [ThingsboardError] when the server rejects the refresh
  /// token; the session is cleared in that case.
  Future<void> init() async {
    try {
      var jwtToken = await _storage.getItem('jwt_token');
      var refreshToken = await _storage.getItem('refresh_token');
      if (_isTokenValid(jwtToken)) {
        await _setUserFromJwtToken(jwtToken, refreshToken, true);
      } else {
        await _refreshStoredSession(jwtToken, refreshToken);
      }
    } catch (e) {
      throw toThingsboardError(e);
    }
    // Version check: only if authenticated (SYS_ADMIN callers get enforcement;
    // Tenant Admin / Customer User / unauthenticated get a silent skip). A
    // session restored offline is skipped too: the server was just unreachable
    // and the check is best-effort, so retrying would only stall startup.
    if (isAuthenticated() && isJwtTokenValid()) {
      await _checkServerVersion();
    }
  }

  Future<void> _checkServerVersion() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/admin/updates',
        options: defaultHttpOptions(ignoreLoading: true, ignoreErrors: true),
      );
      final currentVersion = response.data?['currentVersion'] as String?;
      if (currentVersion != null &&
          !isVersionSufficient(currentVersion, tbMinServerVersion)) {
        throw ThingsboardError(
          message:
              'ThingsBoard server version $currentVersion is below '
              'the minimum required version $tbMinServerVersion.',
          errorCode: ThingsBoardErrorCode.general,
        );
      }
    } on ThingsboardError {
      rethrow; // version-too-old error must propagate
    } catch (_) {
      // Silently ignore: 401 (not authenticated), 403 (not SYS_ADMIN),
      // network errors, or unexpected response format.
      // The version check is best-effort; it must not block non-admin users.
    }
  }

  Future<LoginResponse> login(
    LoginRequest loginRequest, {
    RequestConfig? requestConfig,
  }) async {
    var response = await post(
      '/api/auth/login',
      data: jsonEncode(loginRequest),
      options: defaultHttpOptionsFromConfig(requestConfig),
    );
    var loginResponse = LoginResponse.fromJson(response.data);
    await _setUserFromJwtToken(
      loginResponse.token,
      loginResponse.refreshToken,
      true,
    );
    if (Authority.PRE_VERIFICATION_TOKEN == loginResponse.scope) {
      _mfaAuth();
    }
    if (Authority.MFA_CONFIGURATION_TOKEN == loginResponse.scope) {
      _mfaForce();
    }
    return loginResponse;
  }

  Future<void> logout({
    RequestConfig? requestConfig,
    bool notifyUser = true,
  }) async {
    if (_telemetryWebsocketService != null) {
      _telemetryWebsocketService!.reset(true);
    }
    try {
      await post(
        '/api/auth/logout',
        options: defaultHttpOptionsFromConfig(requestConfig),
      );
      await _clearJwtToken(notifyUser: notifyUser);
    } catch (e) {
      await _clearJwtToken(notifyUser: notifyUser);
    }
  }

  /// Refreshes the JWT token using the Completer gate pattern (AUTH-03).
  /// If a refresh is already in progress, waits for it to complete instead of
  /// issuing a second HTTP call.
  ///
  /// Throws when the refresh fails. The session is cleared only when the
  /// server rejects the refresh token (HTTP 401); a transport failure keeps it
  /// so a later attempt can still recover.
  Future<void> refreshJwtToken({
    String? refreshToken,
    bool? notify,
    Dio? internalDio,
    bool interceptRefreshToken = false,
  }) async {
    // Completer gate: if refresh already in progress, await it
    if (_tokenRefreshCompleter != null) {
      await _tokenRefreshCompleter!.future;
      return;
    }

    final completer = Completer<void>();
    _tokenRefreshCompleter = completer;
    // Concurrent callers observe a failure through their own await; without a
    // listener of its own a failed refresh would surface as an unhandled
    // async error.
    completer.future.ignore();
    try {
      refreshToken ??= _refreshToken;
      if (_isTokenValid(refreshToken)) {
        var refreshTokenRequest = RefreshTokenRequest(refreshToken!);
        try {
          var targetDio = internalDio ?? _dio;
          var response = await targetDio.post(
            Constants.entryPoints['tokenRefresh']!,
            data: jsonEncode(refreshTokenRequest),
            options: Options(
              sendTimeout: _defaultRefreshCallTimeout,
              receiveTimeout: _defaultRefreshCallTimeout,
            ),
          );
          var loginResponse = LoginResponse.fromJson(response.data);
          await _setUserFromJwtToken(
            loginResponse.token,
            loginResponse.refreshToken,
            notify,
          );
        } catch (e) {
          // A 403 is deliberately not treated as a rejected token: the refresh
          // endpoint answers with 401, so a 403 is more likely an intermediary
          // (proxy, WAF) than the auth server. See PROD-8704.
          if (toThingsboardError(e).isUnauthorized) {
            await _clearJwtToken();
          }
          rethrow;
        }
      } else {
        await _clearJwtToken();
        if (interceptRefreshToken) {
          throw ThingsboardError(
            message: 'Session expired!',
            errorCode: ThingsBoardErrorCode.jwtTokenExpired,
          );
        }
      }
      completer.complete();
    } catch (e) {
      completer.completeError(e);
      rethrow;
    } finally {
      _tokenRefreshCompleter = null;
    }
  }

  Future<void> setUserFromJwtToken(
    String? jwtToken,
    String? refreshToken,
    bool? notify,
  ) async {
    await _setUserFromJwtToken(jwtToken, refreshToken, notify);
  }

  // ---- Private helpers ----

  Future<void> _refreshStoredSession(
    String? jwtToken,
    String? refreshToken,
  ) async {
    try {
      await refreshJwtToken(refreshToken: refreshToken, notify: true);
    } catch (e) {
      if (toThingsboardError(e).isUnauthorized) {
        rethrow;
      }
      // The server was unreachable: keep the stale session so the interceptor
      // retries the refresh on the next request instead of logging out.
      await _setUserFromJwtToken(jwtToken, refreshToken, true);
    }
  }

  bool _isTokenValid(String? jwtToken) {
    if (jwtToken != null) {
      try {
        return !JwtDecoder.isExpired(jwtToken);
      } catch (e) {
        return false;
      }
    }
    return false;
  }

  Future<void> _setUserFromJwtToken(
    String? jwtToken,
    String? refreshToken,
    bool? notify,
  ) async {
    if (jwtToken == null) {
      _token = null;
      _refreshToken = null;
      _authUser = null;
      await _storage.deleteItem('jwt_token');
      await _storage.deleteItem('refresh_token');
    } else {
      _token = jwtToken;
      _refreshToken = refreshToken;
      var decodedToken = JwtDecoder.decode(jwtToken);
      _authUser = AuthUser.fromJson(decodedToken);
      await _storage.setItem('jwt_token', jwtToken);
      if (refreshToken != null) {
        await _storage.setItem('refresh_token', refreshToken);
      } else {
        await _storage.deleteItem('refresh_token');
      }
    }
    if (notify == true) {
      await _userLoaded();
    }
  }

  Future<void> _clearJwtToken({bool notifyUser = true}) async {
    await _setUserFromJwtToken(null, null, notifyUser);
  }

  Future<void> _userLoaded() async {
    final cb = _userLoadedCallback;
    if (cb != null) {
      Future(() => cb());
    }
    if (_telemetryWebsocketService != null) {
      _telemetryWebsocketService!.reset(true);
    }
  }

  void _mfaAuth() {
    final cb = _mfaAuthCallback;
    if (cb != null) {
      Future(() => cb());
    }
  }

  void _mfaForce() {
    final cb = _mfaForceCallback;
    if (cb != null) {
      Future(() => cb());
    }
  }

  void _onError(ThingsboardError error) {
    final cb = _errorCallback;
    if (cb != null) {
      Future(() => cb(error));
    }
  }

  void _loadStarted() {
    final cb = _loadStartedCallback;
    if (cb != null) {
      Future(() => cb());
    }
  }

  void _loadFinished() {
    final cb = _loadFinishedCallback;
    if (cb != null) {
      Future(() => cb());
    }
  }

  // ---- HTTP convenience methods ----

  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      throw toThingsboardError(e);
    }
  }

  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      throw toThingsboardError(e);
    }
  }

  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } catch (e) {
      throw toThingsboardError(e);
    }
  }

  Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    try {
      return await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
    } catch (e) {
      throw toThingsboardError(e);
    }
  }

  Future<R> compute<Q, R>(TbComputeCallback<Q, R> callback, Q message) {
    return _computeFunc!(callback, message);
  }
}
