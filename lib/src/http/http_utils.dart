// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:dio/dio.dart';

import '../interceptor/interceptor_config.dart';

class RequestConfig {
  bool ignoreLoading;
  bool ignoreErrors;
  bool resendRequest;
  bool followRedirect;

  RequestConfig({
    this.ignoreLoading = false,
    this.ignoreErrors = false,
    this.resendRequest = false,
    this.followRedirect = true,
  });
}

Options defaultHttpOptionsFromConfig(RequestConfig? config) {
  config ??= RequestConfig();
  return defaultHttpOptions(
    ignoreLoading: config.ignoreLoading,
    ignoreErrors: config.ignoreErrors,
    resendRequest: config.resendRequest,
    followRedirect: config.followRedirect,
  );
}

Options defaultHttpOptions({
  bool ignoreLoading = false,
  bool ignoreErrors = false,
  bool resendRequest = false,
  bool followRedirect = true,
}) {
  var interceptorConfig = InterceptorConfig(
    ignoreLoading: ignoreLoading,
    ignoreErrors: ignoreErrors,
    resendRequest: resendRequest,
  );
  var options = Options(
    headers: {'Content-Type': 'application/json'},
    extra: interceptorConfig.toExtra(),
    followRedirects: followRedirect,
    maxRedirects: !followRedirect ? 0 : null,
  );
  return options;
}
