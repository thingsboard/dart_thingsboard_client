import 'package:dio/dio.dart';

import '../error/thingsboard_error.dart';
import '../interceptor/interceptor_config.dart';

class RequestConfig {
  bool ignoreLoading;
  bool ignoreErrors;
  bool resendRequest;
  bool followRedirect;

  RequestConfig(
      {this.ignoreLoading = false,
      this.ignoreErrors = false,
      this.resendRequest = false,
      this.followRedirect = true});
}

Options defaultHttpOptionsFromConfig(RequestConfig? config) {
  config ??= RequestConfig();
  return defaultHttpOptions(
      ignoreLoading: config.ignoreLoading,
      ignoreErrors: config.ignoreErrors,
      resendRequest: config.resendRequest,
      followRedirect: config.followRedirect);
}

Options defaultHttpOptions(
    {bool ignoreLoading = false,
    bool ignoreErrors = false,
    bool resendRequest = false,
    bool followRedirect = true}) {
  var interceptorConfig = InterceptorConfig(
      ignoreLoading: ignoreLoading,
      ignoreErrors: ignoreErrors,
      resendRequest: resendRequest);
  var options = Options(
      headers: {'Content-Type': 'application/json'},
      extra: interceptorConfig.toExtra(),
      followRedirects: followRedirect,
      maxRedirects: !followRedirect ? 0 : null);
  return options;
}

Future<T?> nullIfNotFound<T>(
    Future<T?> Function(RequestConfig requestConfig) fetchFunction,
    {RequestConfig? requestConfig}) async {
  try {
    return await fetchFunction(
        requestConfig ?? RequestConfig(ignoreErrors: true));
  } catch (e) {
    if (e is ThingsboardError &&
        e.errorCode == ThingsBoardErrorCode.itemNotFound) {
      return null;
    } else {
      rethrow;
    }
  }
}

Future<bool> isSuccessful(
    Future<Response<dynamic>> Function(RequestConfig requestConfig)
        requestFunction,
    {RequestConfig? requestConfig}) async {
  try {
    var response = await requestFunction(
        requestConfig ?? RequestConfig(ignoreErrors: true));
    if (response.statusCode != null) {
      var seriesCode = response.statusCode! ~/ 100;
      return seriesCode == 2;
    }
    return false;
  } catch (e) {
    return false;
  }
}
