// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'dart:typed_data';
import 'package:built_value/json_object.dart';
import 'package:thingsboard_client/src/api_util.dart';
import 'package:thingsboard_client/src/model/dashboard_report_config.dart';
import 'package:thingsboard_client/src/model/thingsboard_error_response.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class DashboardReportControllerApi {

  final Dio _dio;

  final Serializers? _serializers;

  const DashboardReportControllerApi(this._dio, [this._serializers]);

  /// Download dashboard report (downloadDashboardReport)
  /// Generate and download a report from the specified dashboard. The request payload is a JSON object with params of report. For example:  &#x60;&#x60;&#x60;json {     \&quot;type\&quot;: \&quot;pdf\&quot;,     \&quot;timezone\&quot;: \&quot;Europe/Kiev\&quot;,     \&quot;timewindow\&quot;: {         \&quot;displayValue\&quot;: \&quot;\&quot;,         \&quot;hideInterval\&quot;: false,         \&quot;hideLastInterval\&quot;: false,         \&quot;hideQuickInterval\&quot;: false,         \&quot;hideAggregation\&quot;: false,         \&quot;hideAggInterval\&quot;: false,         \&quot;hideTimezone\&quot;: false,         \&quot;selectedTab\&quot;: 0,         \&quot;realtime\&quot;: {             \&quot;realtimeType\&quot;: 0,             \&quot;interval\&quot;: 1000,             \&quot;timewindowMs\&quot;: 60000,             \&quot;quickInterval\&quot;: \&quot;CURRENT_DAY\&quot;         },         \&quot;history\&quot;: {             \&quot;historyType\&quot;: 0,             \&quot;interval\&quot;: 1000,             \&quot;timewindowMs\&quot;: 60000,             \&quot;fixedTimewindow\&quot;: {                 \&quot;startTimeMs\&quot;: 1703687976592,                 \&quot;endTimeMs\&quot;: 1703774376592             },             \&quot;quickInterval\&quot;: \&quot;CURRENT_DAY\&quot;         },         \&quot;aggregation\&quot;: {             \&quot;type\&quot;: \&quot;AVG\&quot;,             \&quot;limit\&quot;: 25000         }     },     \&quot;state\&quot;: null } &#x60;&#x60;&#x60;   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [dashboardId] - A string value representing the dashboard id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [body] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> downloadDashboardReport({ 
    required String dashboardId,
    JsonObject? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/report/{dashboardId}/download'.replaceAll('{' r'dashboardId' '}', encodeQueryParameter(_serializers, dashboardId, const FullType(String)).toString());
    final _options = Options(
      method: r'POST',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'loginPassword',
            'name': 'HttpLoginForm',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = body;

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Download test report (downloadTestReport)
  /// Generate and download test report.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [dashboardReportConfig] 
  /// * [reportsServerEndpointUrl] - A string value representing the report server endpoint.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Uint8List] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Uint8List>> downloadTestReport({ 
    required DashboardReportConfig dashboardReportConfig,
    String? reportsServerEndpointUrl,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerDashboardReportConfig);
    final _path = r'/api/report/test';
    final _options = Options(
      method: r'POST',
      responseType: ResponseType.bytes,
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'loginPassword',
            'name': 'HttpLoginForm',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (reportsServerEndpointUrl != null) r'reportsServerEndpointUrl': encodeQueryParameter(_serializers, reportsServerEndpointUrl, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(DashboardReportConfig);
      _bodyData = _serializers.serialize(dashboardReportConfig, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Uint8List? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as Uint8List;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Uint8List>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
