import 'package:dio/dio.dart';
import '../interceptor/interceptor_config.dart';

class RequestConfig {
  bool ignoreLoading;
  bool ignoreErrors;
  bool resendRequest;
  RequestConfig({this.ignoreLoading = false, this.ignoreErrors = false, this.resendRequest = false});
}

Options defaultHttpOptionsFromConfig(RequestConfig? config) {
  config ??= RequestConfig();
  return defaultHttpOptions(ignoreLoading: config.ignoreLoading, ignoreErrors: config.ignoreErrors, resendRequest: config.resendRequest);
}

Options defaultHttpOptions({bool ignoreLoading = false,
                            bool ignoreErrors = false,
                            bool resendRequest = false}) {
  var interceptorConfig = InterceptorConfig(ignoreLoading: ignoreLoading, ignoreErrors: ignoreErrors, resendRequest: resendRequest);
  var options = Options(
    headers: {
      'Content-Type': 'application/json'
    },
    extra: interceptorConfig.toExtra()
  );
  return options;
}
