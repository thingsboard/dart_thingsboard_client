// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api/auth_controller_api.dart';
import 'api/qr_code_settings_controller_api.dart';
import 'api/two_factor_auth_controller_api.dart';
import 'api_serializers.dart';
import 'error/thingsboard_error.dart';
import 'http/http_utils.dart';
import 'interceptor/http_interceptor.dart';
import 'model/change_password_request.dart';
import 'model/jwt_pair.dart';
import 'model/login_request.dart';
import 'model/login_response.dart';
import 'model/refresh_token_request.dart';
import 'model/two_fa_provider_type.dart';
import 'model/version_models.dart';
import 'model/user_models.dart';
import 'model/authority_enum.dart';
import 'model/constants.dart';
import 'model/telemetry/telemetry_models.dart';
import 'service/telemetry_websocket_service.dart';
import 'storage/in_memory_storage.dart';
import 'storage/tb_storage.dart';

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
  final TbCompute _computeFunc;
  final bool debugMode;

  // Bounds connection setup only, never response time; without it an
  // unreachable server stalls for minutes.
  static const _defaultConnectTimeout = Duration(seconds: 20);

  // For the token-refresh call only, so it never truncates long requests.
  static const _defaultRefreshCallTimeout = Duration(seconds: 15);

  // Single-flight gate: concurrent requests share one refresh call.
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

  /// Generative constructor for subclasses (edition-specific clients); does the
  /// same Dio and interceptor setup as the factory constructor.
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

  bool isSystemAdmin() => _authUser?.isSystemAdmin() ?? false;

  bool isTenantAdmin() => _authUser?.isTenantAdmin() ?? false;

  bool isCustomerUser() => _authUser?.isCustomerUser() ?? false;

  bool isPreVerificationToken() => _authUser?.isPreVerificationToken() ?? false;

  bool isMfaConfigurationToken() =>
      _authUser?.isMfaConfigurationToken() ?? false;

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
    // Skipped for a session restored offline: the server was just unreachable.
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
      rethrow;
    } catch (_) {
      // Best-effort: 401/403 (only SYS_ADMIN may read /api/admin/updates),
      // network errors and unexpected responses must not block startup.
    }
  }

  Future<LoginResponse> login(
    LoginRequest loginRequest, {
    RequestConfig? requestConfig,
  }) async {
    var response = await post(
      '/api/auth/login',
      data: jsonEncode(
        apiSerializers(
          registerLoginRequest,
        ).serializeWith(LoginRequest.serializer, loginRequest),
      ),
      options: defaultHttpOptionsFromConfig(requestConfig),
    );
    var loginResponse = apiSerializers(
      registerLoginResponse,
    ).deserializeWith(LoginResponse.serializer, response.data)!;
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

  /// Changes the password of the current user and stores the new tokens the
  /// server returns, without calling `onUserLoaded`.
  ///
  /// Calls [AuthControllerApi.changePassword]. Throws a [ThingsboardError] on
  /// failure; the session is then unchanged.
  Future<void> changePassword(
    String currentPassword,
    String newPassword,
  ) async {
    final JwtPair jwtPair;
    try {
      final response = await AuthControllerApi(_dio).changePassword(
        changePasswordRequest: ChangePasswordRequest(
          (b) => b
            ..currentPassword = currentPassword
            ..newPassword = newPassword,
        ),
      );
      jwtPair = _requireJwtPair(response.data);
    } catch (e, s) {
      throw toThingsboardError(e, s);
    }
    await _setUserFromJwtToken(jwtPair.token, jwtPair.refreshToken, false);
  }

  /// Verifies a two-factor authentication code for the pre-verification
  /// session of [login], then stores the full session tokens and calls
  /// `onUserLoaded`.
  ///
  /// Calls [TwoFactorAuthControllerApi.checkTwoFaVerificationCode]. Throws a
  /// [ThingsboardError] on failure (for example a wrong code); the session is
  /// then unchanged.
  Future<LoginResponse> checkTwoFaVerificationCode(
    TwoFaProviderType providerType,
    String verificationCode,
  ) async {
    final LoginResponse loginResponse;
    try {
      final response = await TwoFactorAuthControllerApi(_dio)
          .checkTwoFaVerificationCode(
            providerType: providerType,
            verificationCode: verificationCode,
          );
      loginResponse = _toLoginResponse(response.data);
    } catch (e, s) {
      throw toThingsboardError(e, s);
    }
    await _setUserFromJwtToken(
      loginResponse.token,
      loginResponse.refreshToken,
      true,
    );
    return loginResponse;
  }

  /// Test hook only, not part of the supported API: when set, supplies the
  /// [HttpClientAdapter] of the Dio that [getLoginDataBySecretKey] creates.
  /// Leave it `null` in applications.
  static HttpClientAdapter Function()? qrLoginAdapterFactoryForTesting;

  /// Exchanges the short-lived secret [key] of a login QR code for the user's
  /// tokens on the ThingsBoard server at [host] (for example
  /// `https://thingsboard.example.com`), which can differ from [apiEndpoint].
  ///
  /// Calls [QrCodeSettingsControllerApi.getUserTokenByMobileSecret] on a new
  /// Dio with its default [HttpClientAdapter]: no auth headers, interceptors or
  /// adapter configuration of this client (client certificates, proxy) are
  /// used for [host]. The session of this client is not changed: pass the
  /// tokens to [setUserFromJwtToken] to use them. [logging] logs the request
  /// and response. Throws a [ThingsboardError] on failure.
  Future<LoginResponse> getLoginDataBySecretKey({
    required String host,
    required String key,
    bool logging = false,
  }) async {
    final dio = Dio(BaseOptions(baseUrl: host));
    final adapterFactory = qrLoginAdapterFactoryForTesting;
    if (adapterFactory != null) {
      dio.httpClientAdapter = adapterFactory();
    }
    if (logging) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseHeader: true,
          responseBody: true,
        ),
      );
    }
    try {
      final response = await QrCodeSettingsControllerApi(
        dio,
      ).getUserTokenByMobileSecret(secret: key);
      return _toLoginResponse(response.data);
    } catch (e, s) {
      throw toThingsboardError(e, s);
    }
  }

  JwtPair _requireJwtPair(JwtPair? jwtPair) {
    if (jwtPair?.token == null) {
      throw ThingsboardError(
        message: 'The server response has no token.',
        errorCode: ThingsBoardErrorCode.general,
      );
    }
    return jwtPair!;
  }

  LoginResponse _toLoginResponse(JwtPair? jwtPair) {
    final pair = _requireJwtPair(jwtPair);
    return LoginResponse(
      (b) => b
        ..token = pair.token
        ..refreshToken = pair.refreshToken
        ..scope = pair.scope,
    );
  }

  Future<void> logout({
    RequestConfig? requestConfig,
    bool notifyUser = true,
  }) async {
    _telemetryWebsocketService?.reset(true);
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

  /// Refreshes the JWT token. If a refresh is already in progress, waits for it
  /// instead of issuing a second HTTP call.
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
    if (_tokenRefreshCompleter != null) {
      await _tokenRefreshCompleter!.future;
      return;
    }

    final completer = Completer<void>();
    _tokenRefreshCompleter = completer;
    // Without a listener of its own a failed refresh would surface as an
    // unhandled async error when no concurrent caller is awaiting it.
    completer.future.ignore();
    try {
      refreshToken ??= _refreshToken;
      if (_isTokenValid(refreshToken)) {
        final refreshTokenRequest = RefreshTokenRequest(
          (b) => b..refreshToken = refreshToken,
        );
        try {
          var targetDio = internalDio ?? _dio;
          var response = await targetDio.post(
            Constants.entryPoints['tokenRefresh']!,
            data: jsonEncode(
              apiSerializers(registerRefreshTokenRequest).serializeWith(
                RefreshTokenRequest.serializer,
                refreshTokenRequest,
              ),
            ),
            options: Options(
              sendTimeout: _defaultRefreshCallTimeout,
              receiveTimeout: _defaultRefreshCallTimeout,
            ),
          );
          var loginResponse = apiSerializers(
            registerLoginResponse,
          ).deserializeWith(LoginResponse.serializer, response.data)!;
          await _setUserFromJwtToken(
            loginResponse.token,
            loginResponse.refreshToken,
            notify,
          );
        } catch (e) {
          // A 403 is not a rejected token: the refresh endpoint answers 401, so
          // 403 is more likely a proxy or WAF. See PROD-8704.
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
      // Server unreachable: keep the stale session; the interceptor retries
      // the refresh on the next request.
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
    _schedule(_userLoadedCallback);
    _telemetryWebsocketService?.reset(true);
  }

  void _mfaAuth() => _schedule(_mfaAuthCallback);

  void _mfaForce() => _schedule(_mfaForceCallback);

  void _onError(ThingsboardError error) {
    final cb = _errorCallback;
    if (cb != null) {
      Future(() => cb(error));
    }
  }

  void _loadStarted() => _schedule(_loadStartedCallback);

  void _loadFinished() => _schedule(_loadFinishedCallback);

  void _schedule(void Function()? callback) {
    if (callback != null) {
      Future(() => callback());
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
    return _computeFunc(callback, message);
  }
}
