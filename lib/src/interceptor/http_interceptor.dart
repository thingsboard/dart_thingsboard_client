// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:math';

import 'package:dio/dio.dart';

import '../error/thingsboard_error.dart';
import '../model/constants.dart';
import '../thingsboard_client_base.dart';
import 'interceptor_config.dart';
import 'key_intercept_config.dart';

class HttpInterceptor extends QueuedInterceptor {
  final Dio _dio;
  // Internal Dio used for token refresh to avoid interceptor recursion (HTTP-07)
  // Exposed for testing purposes only (allows injecting a mock adapter)
  final Dio internalDio;
  final ThingsboardClientBase _tbClient;
  final void Function() _loadStart;
  final void Function() _loadFinish;
  final void Function(ThingsboardError error) _onError;

  // RPC calls legitimately wait on a device, so they never drive the load
  // callbacks (nor does the background token refresh, see _isInternalUrl).
  static const _rpcUrlPrefix = '/api/plugins/rpc';

  int _activeRequests = 0;

  HttpInterceptor(
    this._dio,
    this._tbClient,
    void Function() onLoadStart,
    void Function() onLoadFinish,
    void Function(ThingsboardError error) onError,
  )
    // internalDio bypasses this interceptor, so it mirrors the connection
    // settings of the client Dio, which is fully configured before the
    // interceptor is installed.
    : internalDio = Dio(
        BaseOptions(
          baseUrl: _dio.options.baseUrl,
          connectTimeout: _dio.options.connectTimeout,
        ),
      ),
      _loadStart = onLoadStart,
      _loadFinish = onLoadFinish,
      _onError = onError;

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.path.startsWith('/api/')) {
      var config = _getInterceptorConfig(options);
      if (!config.isRetry && _tracksLoading(options.path)) {
        _updateLoadingState(config, true);
      }
      if (_isTokenBasedAuthEntryPoint(options.path)) {
        if (_tbClient.isApiKeyAuth()) {
          return _intercept(
            options,
            handler,
            KeyInterceptConfig.apiKey(_tbClient.apiKey),
          );
        }
        if (_tbClient.getJwtToken() == null &&
            !_tbClient.refreshTokenPending()) {
          return _handleRequestError(
            options,
            handler,
            ThingsboardError(message: 'Unauthorized!'),
          );
        } else if (!_tbClient.isJwtTokenValid()) {
          return _handleRequestError(
            options,
            handler,
            ThingsboardError(refreshTokenPending: true),
          );
        } else {
          return _intercept(
            options,
            handler,
            KeyInterceptConfig.jwt(_tbClient.getJwtToken()),
          );
        }
      } else {
        return _handleRequest(options, handler);
      }
    } else {
      return handler.next(options);
    }
  }

  Future _intercept(
    RequestOptions options,
    RequestInterceptorHandler handler,
    KeyInterceptConfig config,
  ) async {
    if (_updateAuthorizationHeader(options, config)) {
      return _handleRequest(options, handler);
    } else {
      return _handleRequestError(
        options,
        handler,
        ThingsboardError(message: 'Could not get token from store.'),
      );
    }
  }

  Future _handleRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    return handler.next(options);
  }

  Future _handleRequestError(
    RequestOptions options,
    RequestInterceptorHandler handler,
    ThingsboardError error,
  ) async {
    var response = Response<ThingsboardError>(
      requestOptions: options,
      data: error,
    );
    return handler.reject(
      DioException(response: response, requestOptions: options),
      true,
    );
  }

  @override
  Future onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    var config = _getInterceptorConfig(response.requestOptions);
    _finishLoading(response.requestOptions, config);
    return handler.next(response);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    var config = _getInterceptorConfig(err.requestOptions);
    var tbError = toThingsboardError(err);
    if (_isTokenRefreshRequest(err.requestOptions.path)) {
      // The refresh call itself reaches this interceptor when refreshJwtToken()
      // runs on the client Dio (e.g. from init()). Re-entering the refresh here
      // would deadlock on its completer gate, and its caller already owns the
      // failure, so it is neither retried nor reported a second time.
      return _handleError(tbError, err.requestOptions, handler, false);
    }
    var notify = true;
    var ignoreErrors = config.ignoreErrors;
    var resendRequest = config.resendRequest;
    var errorCode = tbError.errorCode;
    var refreshToken = false;
    if (tbError.refreshTokenPending == true || tbError.isUnauthorized) {
      if (tbError.refreshTokenPending == true ||
          errorCode == ThingsBoardErrorCode.jwtTokenExpired) {
        refreshToken = true;
      } else if (errorCode == ThingsBoardErrorCode.credentialsExpired) {
        notify = false;
      }
    }
    if (refreshToken) {
      return _refreshTokenAndRetry(err, handler, config);
    }
    if (err.response?.statusCode == 429 && resendRequest) {
      return _retryRequestWithTimeout(err, handler);
    }
    _finishLoading(err.requestOptions, config);
    return _handleError(
      tbError,
      err.requestOptions,
      handler,
      notify && !ignoreErrors,
    );
  }

  Future _refreshTokenAndRetry(
    DioException error,
    ErrorInterceptorHandler handler,
    InterceptorConfig config,
  ) async {
    try {
      await _tbClient.refreshJwtToken(
        internalDio: internalDio,
        interceptRefreshToken: true,
      );
    } catch (e) {
      _finishLoading(error.requestOptions, config);
      return _handleError(
        e,
        error.requestOptions,
        handler,
        !config.ignoreErrors,
      );
    }
    return _retryRequest(error, handler);
  }

  Future _retryRequestWithTimeout(
    DioException error,
    ErrorInterceptorHandler handler,
  ) async {
    var rng = Random();
    var timeout = 1000 + rng.nextInt(3000);
    return _retryRequest(error, handler, timeout: timeout);
  }

  Future _retryRequest(
    DioException error,
    ErrorInterceptorHandler handler, {
    int? timeout,
  }) async {
    if (timeout != null) {
      return Future.delayed(
        Duration(milliseconds: timeout),
        () => _retryRequest(error, handler),
      );
    } else {
      var options = error.requestOptions;
      var extra = options.extra;
      extra['isRetry'] = true;
      Response response;
      try {
        response = await _dio.request(
          options.path,
          data: options.data,
          queryParameters: options.queryParameters,
          cancelToken: options.cancelToken,
          onReceiveProgress: options.onReceiveProgress,
          onSendProgress: options.onSendProgress,
          options: Options(
            method: options.method,
            sendTimeout: options.sendTimeout,
            receiveTimeout: options.receiveTimeout,
            extra: extra,
            headers: options.headers,
            responseType: options.responseType,
            contentType: options.contentType,
            validateStatus: options.validateStatus,
            receiveDataWhenStatusError: options.receiveDataWhenStatusError,
            followRedirects: options.followRedirects,
            maxRedirects: options.maxRedirects,
            requestEncoder: options.requestEncoder,
            responseDecoder: options.responseDecoder,
            listFormat: options.listFormat,
          ),
        );
      } catch (e) {
        return _handleError(e, options, handler, false);
      }
      return handler.resolve(response);
    }
  }

  Future _handleError(
    Object error,
    RequestOptions requestOptions,
    ErrorInterceptorHandler handler,
    bool notify,
  ) async {
    var tbError = toThingsboardError(error);
    if (notify) {
      _onError(tbError);
    }
    return handler.next(
      DioException(requestOptions: requestOptions, error: tbError),
    );
  }

  InterceptorConfig _getInterceptorConfig(RequestOptions options) {
    return InterceptorConfig.fromExtra(options.extra);
  }

  bool _updateAuthorizationHeader(
    RequestOptions options,
    KeyInterceptConfig config,
  ) {
    if (config.key != null) {
      options.headers[config.header] = config.prefix + config.key!;
      return true;
    } else {
      return false;
    }
  }

  bool _isTokenRefreshRequest(String url) {
    return url.startsWith(Constants.entryPoints['tokenRefresh']!);
  }

  bool _isInternalUrl(String url) {
    return _isTokenRefreshRequest(url) || url.startsWith(_rpcUrlPrefix);
  }

  bool _tracksLoading(String url) {
    return url.startsWith('/api/') && !_isInternalUrl(url);
  }

  bool _isTokenBasedAuthEntryPoint(String url) {
    return url.startsWith('/api/') &&
        !url.startsWith(Constants.entryPoints['login']!) &&
        !_isTokenRefreshRequest(url) &&
        !url.startsWith(Constants.entryPoints['nonTokenBased']!);
  }

  void _finishLoading(RequestOptions options, InterceptorConfig config) {
    if (_tracksLoading(options.path)) {
      _updateLoadingState(config, false);
    }
  }

  void _updateLoadingState(InterceptorConfig config, bool isLoading) {
    if (!config.ignoreLoading) {
      if (isLoading) {
        _activeRequests++;
      } else {
        _activeRequests--;
      }
      if (_activeRequests == 1 && isLoading) {
        _loadStart();
      } else if (_activeRequests == 0) {
        _loadFinish();
      }
    }
  }
}
