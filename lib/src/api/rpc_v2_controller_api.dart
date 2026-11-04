// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:thingsboard_client/src/api_util.dart';
import 'package:thingsboard_client/src/model/rpc.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class RpcV2ControllerApi {
  final Dio _dio;

  final Serializers? _serializers;

  const RpcV2ControllerApi(this._dio, [this._serializers]);

  /// Delete persistent RPC
  /// Deletes the persistent RPC request.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [rpcId] - A string value representing the rpc id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deleteRpc({
    required String rpcId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/rpc/persistent/{rpcId}'.replaceAll(
      '{'
      r'rpcId'
      '}',
      encodeQueryParameter(
        _serializers,
        rpcId,
        const FullType(String),
      ).toString(),
    );
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },
          {'type': 'http', 'scheme': 'loginPassword', 'name': 'HttpLoginForm'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// Get persistent RPC request
  /// Get information about the status of the RPC call.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [rpcId] - A string value representing the rpc id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Rpc] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Rpc>> getPersistedRpc({
    required String rpcId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerRpc);
    final _path = r'/api/rpc/persistent/{rpcId}'.replaceAll(
      '{'
      r'rpcId'
      '}',
      encodeQueryParameter(
        _serializers,
        rpcId,
        const FullType(String),
      ).toString(),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },
          {'type': 'http', 'scheme': 'loginPassword', 'name': 'HttpLoginForm'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Rpc? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(Rpc),
                )
                as Rpc;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Rpc>(
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

  /// Get persistent RPC requests
  /// Allows to query RPC calls for specific device using pagination.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [deviceId] - A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [rpcStatus] - Status of the RPC
  /// * [textSearch] - Not implemented. Leave empty.
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> getPersistedRpcByDevice({
    required String deviceId,
    required int pageSize,
    required int page,
    String? rpcStatus,
    String? textSearch,
    String? sortProperty,
    String? sortOrder,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/rpc/persistent/device/{deviceId}'.replaceAll(
      '{'
      r'deviceId'
      '}',
      encodeQueryParameter(
        _serializers,
        deviceId,
        const FullType(String),
      ).toString(),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },
          {'type': 'http', 'scheme': 'loginPassword', 'name': 'HttpLoginForm'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'pageSize': encodeQueryParameter(
        _serializers,
        pageSize,
        const FullType(int),
      ),
      r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (rpcStatus != null)
        r'rpcStatus': encodeQueryParameter(
          _serializers,
          rpcStatus,
          const FullType(String),
        ),
      if (textSearch != null)
        r'textSearch': encodeQueryParameter(
          _serializers,
          textSearch,
          const FullType(String),
        ),
      if (sortProperty != null)
        r'sortProperty': encodeQueryParameter(
          _serializers,
          sortProperty,
          const FullType(String),
        ),
      if (sortOrder != null)
        r'sortOrder': encodeQueryParameter(
          _serializers,
          sortOrder,
          const FullType(String),
        ),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    String? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as String;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<String>(
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

  /// Send one-way RPC request (handleOneWayDeviceRPCRequestV2)
  /// Sends the one-way remote-procedure call (RPC) request to device. Sends the one-way remote-procedure call (RPC) request to device. The RPC call is A JSON that contains the method name (&#39;method&#39;), parameters (&#39;params&#39;) and multiple optional fields. See example below. We will review the properties of the RPC call one-by-one below.   &#x60;&#x60;&#x60;json {   \&quot;method\&quot;: \&quot;setGpio\&quot;,   \&quot;params\&quot;: {     \&quot;pin\&quot;: 7,     \&quot;value\&quot;: 1   },   \&quot;persistent\&quot;: false,   \&quot;timeout\&quot;: 5000 } &#x60;&#x60;&#x60;  ### Server-side RPC structure  The body of server-side RPC request consists of multiple fields:  * **method** - mandatory, name of the method to distinct the RPC calls.   For example, \&quot;getCurrentTime\&quot; or \&quot;getWeatherForecast\&quot;. The value of the parameter is a string. * **params** - mandatory, parameters used for processing of the request. The value is a JSON. Leave empty JSON \&quot;{}\&quot; if no parameters needed. * **timeout** - optional, value of the processing timeout in milliseconds. The default value is 10000 (10 seconds). The minimum value is 5000 (5 seconds). * **expirationTime** - optional, value of the epoch time (in milliseconds, UTC timezone). Overrides **timeout** if present. * **persistent** - optional, indicates persistent RPC. The default value is \&quot;false\&quot;. * **retries** - optional, defines how many times persistent RPC will be re-sent in case of failures on the network and/or device side. * **additionalInfo** - optional, defines metadata for the persistent RPC that will be added to the persistent RPC events.  ### RPC Result In case of persistent RPC, the result of this call is &#39;rpcId&#39; UUID. In case of lightweight RPC, the result of this call is either 200 OK if the message was sent to device, or 504 Gateway Timeout if device is offline.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [deviceId] - A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [body] - A JSON object representing the RPC request.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> handleOneWayDeviceRPCRequestV2({
    required String deviceId,
    required String body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/rpc/oneway/{deviceId}'.replaceAll(
      '{'
      r'deviceId'
      '}',
      encodeQueryParameter(
        _serializers,
        deviceId,
        const FullType(String),
      ).toString(),
    );
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },
          {'type': 'http', 'scheme': 'loginPassword', 'name': 'HttpLoginForm'},
        ],
        ...?extra,
      },
      contentType: 'text/plain',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = body;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
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

    String? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as String;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<String>(
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

  /// Send two-way RPC request (handleTwoWayDeviceRPCRequestV2)
  /// Sends the two-way remote-procedure call (RPC) request to device. Sends the one-way remote-procedure call (RPC) request to device. The RPC call is A JSON that contains the method name (&#39;method&#39;), parameters (&#39;params&#39;) and multiple optional fields. See example below. We will review the properties of the RPC call one-by-one below.   &#x60;&#x60;&#x60;json {   \&quot;method\&quot;: \&quot;setGpio\&quot;,   \&quot;params\&quot;: {     \&quot;pin\&quot;: 7,     \&quot;value\&quot;: 1   },   \&quot;persistent\&quot;: false,   \&quot;timeout\&quot;: 5000 } &#x60;&#x60;&#x60;  ### Server-side RPC structure  The body of server-side RPC request consists of multiple fields:  * **method** - mandatory, name of the method to distinct the RPC calls.   For example, \&quot;getCurrentTime\&quot; or \&quot;getWeatherForecast\&quot;. The value of the parameter is a string. * **params** - mandatory, parameters used for processing of the request. The value is a JSON. Leave empty JSON \&quot;{}\&quot; if no parameters needed. * **timeout** - optional, value of the processing timeout in milliseconds. The default value is 10000 (10 seconds). The minimum value is 5000 (5 seconds). * **expirationTime** - optional, value of the epoch time (in milliseconds, UTC timezone). Overrides **timeout** if present. * **persistent** - optional, indicates persistent RPC. The default value is \&quot;false\&quot;. * **retries** - optional, defines how many times persistent RPC will be re-sent in case of failures on the network and/or device side. * **additionalInfo** - optional, defines metadata for the persistent RPC that will be added to the persistent RPC events.  ### RPC Result In case of persistent RPC, the result of this call is &#39;rpcId&#39; UUID. In case of lightweight RPC, the result of this call is the response from device, or 504 Gateway Timeout if device is offline.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [deviceId] - A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [body] - A JSON object representing the RPC request.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> handleTwoWayDeviceRPCRequestV2({
    required String deviceId,
    required String body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/rpc/twoway/{deviceId}'.replaceAll(
      '{'
      r'deviceId'
      '}',
      encodeQueryParameter(
        _serializers,
        deviceId,
        const FullType(String),
      ).toString(),
    );
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'ApiKeyForm',
            'keyName': 'X-Authorization',
            'where': 'header',
          },
          {'type': 'http', 'scheme': 'loginPassword', 'name': 'HttpLoginForm'},
        ],
        ...?extra,
      },
      contentType: 'text/plain',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = body;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
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

    String? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as String;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<String>(
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
