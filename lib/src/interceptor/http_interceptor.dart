import 'dart:async';
import 'dart:math';

import 'package:dio/dio.dart';
import '../error/thingsboard_error.dart';
import 'interceptor_config.dart';
import '../model/constants.dart';

import '../thingsboard_client_base.dart';

class HttpInterceptor extends Interceptor {
  static const String _authScheme = 'Bearer ';
  static const _authHeaderName = 'X-Authorization';

  final Dio _dio;
  final Dio _internalDio;
  final ThingsboardClient _tbClient;
  final void Function() _loadStart;
  final void Function() _loadFinish;
  final void Function(ThingsboardError error) _onError;

  final _internalUrlPrefixes = ['/api/auth/token', '/api/plugins/rpc'];

  int _activeRequests = 0;

  HttpInterceptor(
      this._dio,
      this._tbClient,
      void Function() onLoadStart,
      void Function() onLoadFinish,
      void Function(ThingsboardError error) onError)
      : _internalDio = Dio(BaseOptions(baseUrl: _dio.options.baseUrl)),
        _loadStart = onLoadStart,
        _loadFinish = onLoadFinish,
        _onError = onError;

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.path.startsWith('/api/')) {
      var config = _getInterceptorConfig(options);
      var isLoading = !_isInternalUrlPrefix(options.path);
      if (!config.isRetry) {
        _updateLoadingState(config, isLoading);
      }
      if (_isTokenBasedAuthEntryPoint(options.path)) {
        if (_tbClient.getJwtToken() == null &&
            !_tbClient.refreshTokenPending()) {
          return _handleRequestError(
              options, handler, ThingsboardError(message: 'Unauthorized!'));
        } else if (!_tbClient.isJwtTokenValid()) {
          return _handleRequestError(
              options, handler, ThingsboardError(refreshTokenPending: true));
        } else {
          return _jwtIntercept(options, handler);
        }
      } else {
        return _handleRequest(options, handler);
      }
    } else {
      return handler.next(options);
    }
  }

  Future _jwtIntercept(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (_updateAuthorizationHeader(options)) {
      return _handleRequest(options, handler);
    } else {
      return _handleRequestError(options, handler,
          ThingsboardError(message: 'Could not get JWT token from store.'));
    }
  }

  Future _handleRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }

  Future _handleRequestError(RequestOptions options,
      RequestInterceptorHandler handler, ThingsboardError error) async {
    var response =
        Response<ThingsboardError>(requestOptions: options, data: error);
    return handler.reject(
        DioError(response: response, requestOptions: options), true);
  }

  @override
  Future onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    var config = _getInterceptorConfig(response.requestOptions);
    if (response.requestOptions.path.startsWith('/api/')) {
      _updateLoadingState(config, false);
    }
    return handler.next(response);
  }

  @override
  Future onError(DioError error, ErrorInterceptorHandler handler) async {
    var config = _getInterceptorConfig(error.requestOptions);
    var notify = true;
    var ignoreErrors = config.ignoreErrors;
    var resendRequest = config.resendRequest;
    var tbError = _tbClient.toThingsboardError(error);
    var errorCode = tbError.errorCode;
    var refreshToken = false;
    if (tbError.refreshTokenPending == true ||
        error.response?.statusCode == 401) {
      if (tbError.refreshTokenPending == true ||
          errorCode == ThingsBoardErrorCode.jwtTokenExpired) {
        refreshToken = true;
      } else if (errorCode == ThingsBoardErrorCode.credentialsExpired) {
        notify = false;
      }
    }
    if (refreshToken) {
      return _refreshTokenAndRetry(error, handler, config);
    }
    if (error.response?.statusCode == 429 && resendRequest) {
      return _retryRequestWithTimeout(error, handler);
    }
    if (error.requestOptions.path.startsWith('/api/')) {
      _updateLoadingState(config, false);
    }
    return _handleError(
        tbError, error.requestOptions, handler, notify && !ignoreErrors);
  }

  Future _refreshTokenAndRetry(DioError error, ErrorInterceptorHandler handler,
      InterceptorConfig config) async {
    _dio.interceptors.requestLock.lock();
    _dio.interceptors.responseLock.lock();
    try {
      await _tbClient.refreshJwtToken(
          internalDio: _internalDio, interceptRefreshToken: true);
    } catch (e) {
      if (error.requestOptions.path.startsWith('/api/')) {
        _updateLoadingState(config, false);
      }
      return _handleError(e, error.requestOptions, handler, true);
    } finally {
      _dio.interceptors.requestLock.unlock();
      _dio.interceptors.responseLock.unlock();
    }
    return _retryRequest(error, handler);
  }

  Future _retryRequestWithTimeout(
      DioError error, ErrorInterceptorHandler handler) async {
    var rng = Random();
    var timeout = 1000 + rng.nextInt(3000);
    return _retryRequest(error, handler, timeout: timeout);
  }

  Future _retryRequest(DioError error, ErrorInterceptorHandler handler,
      {int? timeout}) async {
    if (timeout != null) {
      return Future.delayed(
          Duration(milliseconds: timeout), () => _retryRequest(error, handler));
    } else {
      var options = error.requestOptions;
      var extra = options.extra;
      extra['isRetry'] = true;
      var response = await _dio.request(options.path,
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
          ));
      return handler.resolve(response);
    }
  }

  Future _handleError(error, RequestOptions requestOptions,
      ErrorInterceptorHandler handler, bool notify) async {
    var tbError = _tbClient.toThingsboardError(error);
    if (notify) {
      _onError(tbError);
    }
    return handler
        .next(DioError(requestOptions: requestOptions, error: tbError));
  }

  InterceptorConfig _getInterceptorConfig(RequestOptions options) {
    return InterceptorConfig.fromExtra(options.extra);
  }

  bool _updateAuthorizationHeader(RequestOptions options) {
    var jwtToken = _tbClient.getJwtToken();
    if (jwtToken != null) {
      options.headers[_authHeaderName] = _authScheme + jwtToken;
      return true;
    } else {
      return false;
    }
  }

  bool _isInternalUrlPrefix(String url) {
    for (var prefix in _internalUrlPrefixes) {
      if (url.startsWith(prefix)) {
        return true;
      }
    }
    return false;
  }

  bool _isTokenBasedAuthEntryPoint(String url) {
    return url.startsWith('/api/') &&
        !url.startsWith(Constants.entryPoints['login']!) &&
        !url.startsWith(Constants.entryPoints['tokenRefresh']!) &&
        !url.startsWith(Constants.entryPoints['nonTokenBased']!);
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
