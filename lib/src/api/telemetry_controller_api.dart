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

import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/api_util.dart';
import 'package:thingsboard_client/src/model/attribute_data.dart';
import 'package:thingsboard_client/src/model/base_read_ts_kv_query.dart';
import 'package:thingsboard_client/src/model/read_ts_kv_query_result.dart';
import 'package:thingsboard_client/src/model/thingsboard_error_response.dart';
import 'package:thingsboard_client/src/model/ts_data.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class TelemetryControllerApi {

  final Dio _dio;

  final Serializers? _serializers;

  const TelemetryControllerApi(this._dio, [this._serializers]);

  /// Delete device attributes (deleteDeviceAttributes)
  /// Delete device attributes using provided Device Id, scope and a list of keys. Referencing a non-existing Device Id will cause an error  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [deviceId] - A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [scope] - A string value representing the attributes scope. For example, 'SERVER_SCOPE'.
  /// * [keys] - A string value representing the comma-separated list of attributes keys. For example, 'active,inactivityAlarmTime'. If attribute keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key
  /// * [key] - Repeatable key query parameter (alternative to comma-separated 'keys')
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> deleteDeviceAttributes({ 
    required String deviceId,
    required String scope,
    String? keys,
    BuiltList<String>? key,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfString);
    final _path = r'/api/plugins/telemetry/{deviceId}/{scope}'.replaceAll('{' r'deviceId' '}', encodeQueryParameter(_serializers, deviceId, const FullType(String)).toString()).replaceAll('{' r'scope' '}', encodeQueryParameter(_serializers, scope, const FullType(String)).toString());
    final _options = Options(
      method: r'DELETE',
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
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (keys != null) r'keys': encodeQueryParameter(_serializers, keys, const FullType(String)),
      if (key != null) r'key': encodeCollectionQueryParameter<String>(_serializers, key, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
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

  /// Delete entity attributes (deleteEntityAttributes)
  /// Delete entity attributes using provided Entity Id, scope and a list of keys. This operation is idempotent: keys that do not exist are silently ignored and the response is still 200 OK. Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [scope] - A string value representing the attributes scope. For example, 'SERVER_SCOPE'.
  /// * [keys] - A string value representing the comma-separated list of attributes keys. For example, 'active,inactivityAlarmTime'. If attribute keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key
  /// * [key] - Repeatable key query parameter (alternative to comma-separated 'keys')
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> deleteEntityAttributes({ 
    required String entityType,
    required String entityId,
    required String scope,
    String? keys,
    BuiltList<String>? key,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfString);
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/{scope}'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString()).replaceAll('{' r'scope' '}', encodeQueryParameter(_serializers, scope, const FullType(String)).toString());
    final _options = Options(
      method: r'DELETE',
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
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (keys != null) r'keys': encodeQueryParameter(_serializers, keys, const FullType(String)),
      if (key != null) r'key': encodeCollectionQueryParameter<String>(_serializers, key, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
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

  /// Delete entity time series data (deleteEntityTimeseries)
  /// Delete time series for selected entity based on entity id, entity type and keys. Use &#39;deleteAllDataForKeys&#39; to delete all time series data. Use &#39;startTs&#39; and &#39;endTs&#39; to specify time-range instead.  Use &#39;deleteLatest&#39; to delete latest value (stored in separate table for performance) if the value&#39;s timestamp matches the time-range.  Use &#39;rewriteLatestIfDeleted&#39; to rewrite latest value (stored in separate table for performance) if the value&#39;s timestamp matches the time-range and &#39;deleteLatest&#39; param is true. The replacement value will be fetched from the &#39;time series&#39; table, and its timestamp will be the most recent one before the defined time-range.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [keys] - A string value representing the comma-separated list of telemetry keys. If keys are not selected, the result will return all latest time series. For example, 'temperature,humidity'. If telemetry keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key
  /// * [deleteAllDataForKeys] - A boolean value to specify if should be deleted all data for selected keys or only data that are in the selected time range.
  /// * [startTs] - A long value representing the start timestamp of removal time range in milliseconds.
  /// * [endTs] - A long value representing the end timestamp of removal time range in milliseconds.
  /// * [deleteLatest] - If the parameter is set to true, the latest telemetry can be removed, otherwise, in case that parameter is set to false the latest value will not removed.
  /// * [rewriteLatestIfDeleted] - If the parameter is set to true, the latest telemetry will be rewritten in case that current latest value was removed, otherwise, in case that parameter is set to false the new latest value will not set.
  /// * [key] - Repeatable key query parameter (alternative to comma-separated 'keys')
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> deleteEntityTimeseries({ 
    required String entityType,
    required String entityId,
    String? keys,
    bool? deleteAllDataForKeys = false,
    int? startTs,
    int? endTs,
    bool? deleteLatest = true,
    bool? rewriteLatestIfDeleted = false,
    BuiltList<String>? key,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfString);
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/timeseries/delete'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString());
    final _options = Options(
      method: r'DELETE',
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
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (keys != null) r'keys': encodeQueryParameter(_serializers, keys, const FullType(String)),
      if (deleteAllDataForKeys != null) r'deleteAllDataForKeys': encodeQueryParameter(_serializers, deleteAllDataForKeys, const FullType(bool)),
      if (startTs != null) r'startTs': encodeQueryParameter(_serializers, startTs, const FullType(int)),
      if (endTs != null) r'endTs': encodeQueryParameter(_serializers, endTs, const FullType(int)),
      if (deleteLatest != null) r'deleteLatest': encodeQueryParameter(_serializers, deleteLatest, const FullType(bool)),
      if (rewriteLatestIfDeleted != null) r'rewriteLatestIfDeleted': encodeQueryParameter(_serializers, rewriteLatestIfDeleted, const FullType(bool)),
      if (key != null) r'key': encodeCollectionQueryParameter<String>(_serializers, key, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
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

  /// Get all attribute keys (getAttributeKeys)
  /// Returns a set of unique attribute key names for the selected entity. The response will include merged key names set for all attribute scopes:   * SERVER_SCOPE - supported for all entity types;  * CLIENT_SCOPE - supported for devices;  * SHARED_SCOPE - supported for devices.   Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<String>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<String>>> getAttributeKeys({ 
    required String entityType,
    required String entityId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfString);
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/keys/attributes'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<String>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      ) as BuiltList<String>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<String>>(
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

  /// Get all attribute keys by scope (getAttributeKeysByScope)
  /// Returns a set of unique attribute key names for the selected entity and attributes scope:    * SERVER_SCOPE - supported for all entity types;  * CLIENT_SCOPE - supported for devices;  * SHARED_SCOPE - supported for devices.   Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [scope] - A string value representing the attributes scope. For example, 'SERVER_SCOPE'.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<String>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<String>>> getAttributeKeysByScope({ 
    required String entityType,
    required String entityId,
    required String scope,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfString);
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/keys/attributes/{scope}'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString()).replaceAll('{' r'scope' '}', encodeQueryParameter(_serializers, scope, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<String>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      ) as BuiltList<String>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<String>>(
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

  /// Get attributes (getAttributes)
  /// Returns all attributes that belong to specified entity. Use optional &#39;keys&#39; parameter to return specific attributes.  Example of the result:   &#x60;&#x60;&#x60;json [   {\&quot;key\&quot;: \&quot;stringAttributeKey\&quot;, \&quot;value\&quot;: \&quot;value\&quot;, \&quot;lastUpdateTs\&quot;: 1609459200000},   {\&quot;key\&quot;: \&quot;booleanAttributeKey\&quot;, \&quot;value\&quot;: false, \&quot;lastUpdateTs\&quot;: 1609459200001},   {\&quot;key\&quot;: \&quot;doubleAttributeKey\&quot;, \&quot;value\&quot;: 42.2, \&quot;lastUpdateTs\&quot;: 1609459200002},   {\&quot;key\&quot;: \&quot;longKeyExample\&quot;, \&quot;value\&quot;: 73, \&quot;lastUpdateTs\&quot;: 1609459200003},   {\&quot;key\&quot;: \&quot;jsonKeyExample\&quot;,     \&quot;value\&quot;: {       \&quot;someNumber\&quot;: 42,       \&quot;someArray\&quot;: [1,2,3],       \&quot;someNestedObject\&quot;: {\&quot;key\&quot;: \&quot;value\&quot;}     },     \&quot;lastUpdateTs\&quot;: 1609459200004   } ] &#x60;&#x60;&#x60;   Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [keys] - A string value representing the comma-separated list of attributes keys. For example, 'active,inactivityAlarmTime'. If attribute keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key
  /// * [key] - Repeatable key query parameter (alternative to comma-separated 'keys')
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<AttributeData>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<AttributeData>>> getAttributes({ 
    required String entityType,
    required String entityId,
    String? keys,
    BuiltList<String>? key,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfAttributeDataAndListOfString);
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/values/attributes'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
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
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (keys != null) r'keys': encodeQueryParameter(_serializers, keys, const FullType(String)),
      if (key != null) r'key': encodeCollectionQueryParameter<String>(_serializers, key, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<AttributeData>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(AttributeData)]),
      ) as BuiltList<AttributeData>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<AttributeData>>(
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

  /// Get attributes by scope (getAttributesByScope)
  /// Returns all attributes of a specified scope that belong to specified entity. List of possible attribute scopes depends on the entity type:    * SERVER_SCOPE - supported for all entity types;  * SHARED_SCOPE - supported for devices;  * CLIENT_SCOPE - supported for devices.   Use optional &#39;keys&#39; parameter to return specific attributes.  Example of the result:   &#x60;&#x60;&#x60;json [   {\&quot;key\&quot;: \&quot;stringAttributeKey\&quot;, \&quot;value\&quot;: \&quot;value\&quot;, \&quot;lastUpdateTs\&quot;: 1609459200000},   {\&quot;key\&quot;: \&quot;booleanAttributeKey\&quot;, \&quot;value\&quot;: false, \&quot;lastUpdateTs\&quot;: 1609459200001},   {\&quot;key\&quot;: \&quot;doubleAttributeKey\&quot;, \&quot;value\&quot;: 42.2, \&quot;lastUpdateTs\&quot;: 1609459200002},   {\&quot;key\&quot;: \&quot;longKeyExample\&quot;, \&quot;value\&quot;: 73, \&quot;lastUpdateTs\&quot;: 1609459200003},   {\&quot;key\&quot;: \&quot;jsonKeyExample\&quot;,     \&quot;value\&quot;: {       \&quot;someNumber\&quot;: 42,       \&quot;someArray\&quot;: [1,2,3],       \&quot;someNestedObject\&quot;: {\&quot;key\&quot;: \&quot;value\&quot;}     },     \&quot;lastUpdateTs\&quot;: 1609459200004   } ] &#x60;&#x60;&#x60;   Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [scope] - A string value representing the attributes scope. For example, 'SERVER_SCOPE'.
  /// * [keys] - A string value representing the comma-separated list of attributes keys. For example, 'active,inactivityAlarmTime'. If attribute keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key
  /// * [key] - Repeatable key query parameter (alternative to comma-separated 'keys')
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<AttributeData>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<AttributeData>>> getAttributesByScope({ 
    required String entityType,
    required String entityId,
    required String scope,
    String? keys,
    BuiltList<String>? key,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfAttributeDataAndListOfString);
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/values/attributes/{scope}'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString()).replaceAll('{' r'scope' '}', encodeQueryParameter(_serializers, scope, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
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
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (keys != null) r'keys': encodeQueryParameter(_serializers, keys, const FullType(String)),
      if (key != null) r'key': encodeCollectionQueryParameter<String>(_serializers, key, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<AttributeData>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(AttributeData)]),
      ) as BuiltList<AttributeData>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<AttributeData>>(
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

  /// Get latest time series value (getLatestTimeseries)
  /// Returns all time series that belong to specified entity. Use optional &#39;keys&#39; parameter to return specific time series. The result is a JSON object. The format of the values depends on the &#39;useStrictDataTypes&#39; parameter. By default, all time series values are converted to strings:   &#x60;&#x60;&#x60;json {   \&quot;stringTsKey\&quot;: [{ \&quot;value\&quot;: \&quot;value\&quot;, \&quot;ts\&quot;: 1609459200000}],   \&quot;booleanTsKey\&quot;: [{ \&quot;value\&quot;: \&quot;false\&quot;, \&quot;ts\&quot;: 1609459200000}],   \&quot;doubleTsKey\&quot;: [{ \&quot;value\&quot;: \&quot;42.2\&quot;, \&quot;ts\&quot;: 1609459200000}],   \&quot;longTsKey\&quot;: [{ \&quot;value\&quot;: \&quot;73\&quot;, \&quot;ts\&quot;: 1609459200000}],   \&quot;jsonTsKey\&quot;: [{ \&quot;value\&quot;: \&quot;{\\\&quot;someNumber\\\&quot;: 42,\\\&quot;someArray\\\&quot;: [1,2,3],\\\&quot;someNestedObject\\\&quot;: {\\\&quot;key\\\&quot;: \\\&quot;value\\\&quot;}}\&quot;, \&quot;ts\&quot;: 1609459200000}] }  &#x60;&#x60;&#x60;   However, it is possible to request the values without conversion (&#39;useStrictDataTypes&#39;&#x3D;true):   &#x60;&#x60;&#x60;json {   \&quot;stringTsKey\&quot;: [{ \&quot;value\&quot;: \&quot;value\&quot;, \&quot;ts\&quot;: 1609459200000}],   \&quot;booleanTsKey\&quot;: [{ \&quot;value\&quot;: false, \&quot;ts\&quot;: 1609459200000}],   \&quot;doubleTsKey\&quot;: [{ \&quot;value\&quot;: 42.2, \&quot;ts\&quot;: 1609459200000}],   \&quot;longTsKey\&quot;: [{ \&quot;value\&quot;: 73, \&quot;ts\&quot;: 1609459200000}],   \&quot;jsonTsKey\&quot;: [{      \&quot;value\&quot;: {       \&quot;someNumber\&quot;: 42,       \&quot;someArray\&quot;: [1,2,3],       \&quot;someNestedObject\&quot;: {\&quot;key\&quot;: \&quot;value\&quot;}     },      \&quot;ts\&quot;: 1609459200000}] }  &#x60;&#x60;&#x60;   Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [keys] - A string value representing the comma-separated list of telemetry keys. If keys are not selected, the result will return all latest time series. For example, 'temperature,humidity'. If telemetry keys contain comma, duplicate 'key' parameter for each key, for example '?key=my,key&key=my,second,key
  /// * [useStrictDataTypes] - Enables/disables conversion of telemetry values to strings. Conversion is enabled by default. Set parameter to 'true' in order to disable the conversion.
  /// * [key] - Repeatable key query parameter (alternative to comma-separated 'keys')
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltMap<String, BuiltList<TsData>>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltMap<String, BuiltList<TsData>>>> getLatestTimeseries({ 
    required String entityType,
    required String entityId,
    String? keys,
    bool? useStrictDataTypes = false,
    BuiltList<String>? key,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfStringAndMapOfStringToList);
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/values/timeseries'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
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
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (keys != null) r'keys': encodeQueryParameter(_serializers, keys, const FullType(String)),
      if (useStrictDataTypes != null) r'useStrictDataTypes': encodeQueryParameter(_serializers, useStrictDataTypes, const FullType(bool)),
      if (key != null) r'key': encodeCollectionQueryParameter<String>(_serializers, key, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltMap<String, BuiltList<TsData>>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList)]),
      ) as BuiltMap<String, BuiltList<TsData>>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltMap<String, BuiltList<TsData>>>(
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

  /// Get time series data by read queries (getTimeseriesByReadTsKvQueries)
  /// Returns aggregated time series values according to queries for specified entity. &#x60;&#x60;&#x60;json [   {     \&quot;queryId\&quot;: 49,     \&quot;data\&quot;: [       {         \&quot;ts\&quot;: 1751450399999,         \&quot;kv\&quot;: {           \&quot;key\&quot;: \&quot;temperature\&quot;,           \&quot;value\&quot;: 26,           \&quot;doubleValue\&quot;: 26,           \&quot;valueAsString\&quot;: \&quot;26.0\&quot;,           \&quot;dataType\&quot;: \&quot;DOUBLE\&quot;,           \&quot;longValue\&quot;: null,           \&quot;booleanValue\&quot;: null,           \&quot;jsonValue\&quot;: null,           \&quot;strValue\&quot;: null         },         \&quot;version\&quot;: null       }     ],     \&quot;lastEntryTs\&quot;: 1750264592675   },   {     \&quot;queryId\&quot;: 50,     \&quot;data\&quot;: [],     \&quot;lastEntryTs\&quot;: 1751317200000   } ] &#x60;&#x60;&#x60;  Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [baseReadTsKvQuery] - A JSON array of time series read queries.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<ReadTsKvQueryResult>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<ReadTsKvQueryResult>>> getTimeseriesByReadTsKvQueries({ 
    required String entityType,
    required String entityId,
    required BuiltList<BaseReadTsKvQuery> baseReadTsKvQuery,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfBaseReadTsKvQueryAndListOfReadTsKvQueryResult);
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/values/timeseries'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString());
    final _options = Options(
      method: r'POST',
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
      const _type = FullType(BuiltList, [FullType(BaseReadTsKvQuery)]);
      _bodyData = _serializers.serialize(baseReadTsKvQuery, specifiedType: _type);

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

    BuiltList<ReadTsKvQueryResult>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(ReadTsKvQueryResult)]),
      ) as BuiltList<ReadTsKvQueryResult>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<ReadTsKvQueryResult>>(
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

  /// Get time series data (getTimeseriesHistory)
  /// Returns a range of time series values for specified entity. Returns not aggregated data by default. Use aggregation function (&#39;agg&#39;) and aggregation interval (&#39;interval&#39;) to enable aggregation of the results on the database / server side. The aggregation is generally more efficient then fetching all records.   &#x60;&#x60;&#x60;json {   \&quot;temperature\&quot;: [     {       \&quot;value\&quot;: 36.7,       \&quot;ts\&quot;: 1609459200000     },     {       \&quot;value\&quot;: 36.6,       \&quot;ts\&quot;: 1609459201000     }   ] } &#x60;&#x60;&#x60;  Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [startTs] - A long value representing the start timestamp of the time range in milliseconds, UTC.
  /// * [endTs] - A long value representing the end timestamp of the time range in milliseconds, UTC.
  /// * [keys] - A string value representing the comma-separated list of telemetry keys.
  /// * [intervalType] - A string value representing the type fo the interval.
  /// * [interval] - A long value representing the aggregation interval range in milliseconds.
  /// * [timeZone] - A string value representing the timezone that will be used to calculate exact timestamps for 'WEEK', 'WEEK_ISO', 'MONTH' and 'QUARTER' interval types.
  /// * [limit] - An integer value that represents a max number of time series data points to fetch. This parameter is used only in the case if 'agg' parameter is set to 'NONE'.
  /// * [agg] - A string value representing the aggregation function. If the interval is not specified, 'agg' parameter will use 'NONE' value.
  /// * [orderBy] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [useStrictDataTypes] - Enables/disables conversion of telemetry values to strings. Conversion is enabled by default. Set parameter to 'true' in order to disable the conversion.
  /// * [key] - Repeatable key query parameter (alternative to comma-separated 'keys')
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltMap<String, BuiltList<TsData>>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltMap<String, BuiltList<TsData>>>> getTimeseriesHistory({ 
    required String entityType,
    required String entityId,
    required int startTs,
    required int endTs,
    String? keys,
    String? intervalType,
    int? interval = 0,
    String? timeZone,
    String? limit,
    String? agg,
    String? orderBy,
    bool? useStrictDataTypes = false,
    BuiltList<String>? key,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfStringAndMapOfStringToList);
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/values/timeseries/history'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
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
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (keys != null) r'keys': encodeQueryParameter(_serializers, keys, const FullType(String)),
      r'startTs': encodeQueryParameter(_serializers, startTs, const FullType(int)),
      r'endTs': encodeQueryParameter(_serializers, endTs, const FullType(int)),
      if (intervalType != null) r'intervalType': encodeQueryParameter(_serializers, intervalType, const FullType(String)),
      if (interval != null) r'interval': encodeQueryParameter(_serializers, interval, const FullType(int)),
      if (timeZone != null) r'timeZone': encodeQueryParameter(_serializers, timeZone, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(String)),
      if (agg != null) r'agg': encodeQueryParameter(_serializers, agg, const FullType(String)),
      if (orderBy != null) r'orderBy': encodeQueryParameter(_serializers, orderBy, const FullType(String)),
      if (useStrictDataTypes != null) r'useStrictDataTypes': encodeQueryParameter(_serializers, useStrictDataTypes, const FullType(bool)),
      if (key != null) r'key': encodeCollectionQueryParameter<String>(_serializers, key, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltMap<String, BuiltList<TsData>>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList)]),
      ) as BuiltMap<String, BuiltList<TsData>>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltMap<String, BuiltList<TsData>>>(
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

  /// Get time series keys (getTimeseriesKeys)
  /// Returns a set of unique time series key names for the selected entity.   Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<String>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<String>>> getTimeseriesKeys({ 
    required String entityType,
    required String entityId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfString);
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/keys/timeseries'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<String>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      ) as BuiltList<String>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<String>>(
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

  /// Save device attributes (saveDeviceAttributes)
  /// Creates or updates the device attributes based on device id and specified attribute scope. The request payload is a JSON object with key-value format of attributes to create or update. For example:  &#x60;&#x60;&#x60;json {  \&quot;stringKey\&quot;:\&quot;value1\&quot;,   \&quot;booleanKey\&quot;:true,   \&quot;doubleKey\&quot;:42.0,   \&quot;longKey\&quot;:73,   \&quot;jsonKey\&quot;: {     \&quot;someNumber\&quot;: 42,     \&quot;someArray\&quot;: [1,2,3],     \&quot;someNestedObject\&quot;: {\&quot;key\&quot;: \&quot;value\&quot;}  } } &#x60;&#x60;&#x60;   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [deviceId] - A string value representing the device id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [scope] - A string value representing the attributes scope. For example, 'SERVER_SCOPE'.
  /// * [body] - A string value representing the json object. For example, '{\"key\":\"value\"}'. See API call description for more details.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> saveDeviceAttributes({ 
    required String deviceId,
    required String scope,
    required String body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/plugins/telemetry/{deviceId}/{scope}'.replaceAll('{' r'deviceId' '}', encodeQueryParameter(_serializers, deviceId, const FullType(String)).toString()).replaceAll('{' r'scope' '}', encodeQueryParameter(_serializers, scope, const FullType(String)).toString());
    final _options = Options(
      method: r'POST',
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
      contentType: 'text/plain',
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

  /// Save entity attributes (saveEntityAttributesV1)
  /// Creates or updates the entity attributes based on Entity Id and the specified attribute scope.  List of possible attribute scopes depends on the entity type:    * SERVER_SCOPE - supported for all entity types;  * SHARED_SCOPE - supported for devices.  The request payload is a JSON object with key-value format of attributes to create or update. For example:  &#x60;&#x60;&#x60;json {  \&quot;stringKey\&quot;:\&quot;value1\&quot;,   \&quot;booleanKey\&quot;:true,   \&quot;doubleKey\&quot;:42.0,   \&quot;longKey\&quot;:73,   \&quot;jsonKey\&quot;: {     \&quot;someNumber\&quot;: 42,     \&quot;someArray\&quot;: [1,2,3],     \&quot;someNestedObject\&quot;: {\&quot;key\&quot;: \&quot;value\&quot;}  } } &#x60;&#x60;&#x60; Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [scope] - A string value representing the attributes scope. For example, 'SERVER_SCOPE'.
  /// * [body] - A string value representing the json object. For example, '{\"key\":\"value\"}'. See API call description for more details.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> saveEntityAttributesV1({ 
    required String entityType,
    required String entityId,
    required String scope,
    required String body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/{scope}'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString()).replaceAll('{' r'scope' '}', encodeQueryParameter(_serializers, scope, const FullType(String)).toString());
    final _options = Options(
      method: r'POST',
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
      contentType: 'text/plain',
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

  /// Save entity attributes (saveEntityAttributesV2)
  /// Creates or updates the entity attributes based on Entity Id and the specified attribute scope.  List of possible attribute scopes depends on the entity type:    * SERVER_SCOPE - supported for all entity types;  * SHARED_SCOPE - supported for devices.  The request payload is a JSON object with key-value format of attributes to create or update. For example:  &#x60;&#x60;&#x60;json {  \&quot;stringKey\&quot;:\&quot;value1\&quot;,   \&quot;booleanKey\&quot;:true,   \&quot;doubleKey\&quot;:42.0,   \&quot;longKey\&quot;:73,   \&quot;jsonKey\&quot;: {     \&quot;someNumber\&quot;: 42,     \&quot;someArray\&quot;: [1,2,3],     \&quot;someNestedObject\&quot;: {\&quot;key\&quot;: \&quot;value\&quot;}  } } &#x60;&#x60;&#x60; Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [scope] - A string value representing the attributes scope. For example, 'SERVER_SCOPE'.
  /// * [body] - A string value representing the json object. For example, '{\"key\":\"value\"}'. See API call description for more details.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> saveEntityAttributesV2({ 
    required String entityType,
    required String entityId,
    required String scope,
    required String body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/attributes/{scope}'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString()).replaceAll('{' r'scope' '}', encodeQueryParameter(_serializers, scope, const FullType(String)).toString());
    final _options = Options(
      method: r'POST',
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
      contentType: 'text/plain',
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

  /// Save or update time series data (saveEntityTelemetry)
  /// Creates or updates the entity time series data based on the Entity Id and request payload.The request payload is a JSON document with three possible formats:  Simple format without timestamp. In such a case, current server time will be used:   &#x60;&#x60;&#x60;json {\&quot;temperature\&quot;: 26} &#x60;&#x60;&#x60;   Single JSON object with timestamp:   &#x60;&#x60;&#x60;json {\&quot;ts\&quot;:1634712287000,\&quot;values\&quot;:{\&quot;temperature\&quot;:26, \&quot;humidity\&quot;:87}} &#x60;&#x60;&#x60;   JSON array with timestamps:   &#x60;&#x60;&#x60;json [{\&quot;ts\&quot;:1634712287000,\&quot;values\&quot;:{\&quot;temperature\&quot;:26, \&quot;humidity\&quot;:87}}, {\&quot;ts\&quot;:1634712588000,\&quot;values\&quot;:{\&quot;temperature\&quot;:25, \&quot;humidity\&quot;:88}}] &#x60;&#x60;&#x60;   The scope parameter is not used in the API call implementation but should be specified whatever value because it is used as a path variable. Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [scope] - Value is deprecated, reserved for backward compatibility and not used in the API call implementation. Specify any scope for compatibility
  /// * [body] - A JSON with the telemetry values. See API call description for more details.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> saveEntityTelemetry({ 
    required String entityType,
    required String entityId,
    required String scope,
    required String body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/timeseries/{scope}'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString()).replaceAll('{' r'scope' '}', encodeQueryParameter(_serializers, scope, const FullType(String)).toString());
    final _options = Options(
      method: r'POST',
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
      contentType: 'text/plain',
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

  /// Save or update time series data with TTL (saveEntityTelemetryWithTTL)
  /// Creates or updates the entity time series data based on the Entity Id and request payload.The request payload is a JSON document with three possible formats:  Simple format without timestamp. In such a case, current server time will be used:   &#x60;&#x60;&#x60;json {\&quot;temperature\&quot;: 26} &#x60;&#x60;&#x60;   Single JSON object with timestamp:   &#x60;&#x60;&#x60;json {\&quot;ts\&quot;:1634712287000,\&quot;values\&quot;:{\&quot;temperature\&quot;:26, \&quot;humidity\&quot;:87}} &#x60;&#x60;&#x60;   JSON array with timestamps:   &#x60;&#x60;&#x60;json [{\&quot;ts\&quot;:1634712287000,\&quot;values\&quot;:{\&quot;temperature\&quot;:26, \&quot;humidity\&quot;:87}}, {\&quot;ts\&quot;:1634712588000,\&quot;values\&quot;:{\&quot;temperature\&quot;:25, \&quot;humidity\&quot;:88}}] &#x60;&#x60;&#x60;   The scope parameter is not used in the API call implementation but should be specified whatever value because it is used as a path variable.   The ttl parameter takes affect only in case of Cassandra DB.Referencing a non-existing entity Id or invalid entity type will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [scope] - Value is deprecated, reserved for backward compatibility and not used in the API call implementation. Specify any scope for compatibility
  /// * [ttl] - A long value representing TTL (Time to Live) parameter.
  /// * [body] - A JSON with the telemetry values. See API call description for more details.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> saveEntityTelemetryWithTTL({ 
    required String entityType,
    required String entityId,
    required String scope,
    required int ttl,
    required String body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/plugins/telemetry/{entityType}/{entityId}/timeseries/{scope}/{ttl}'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString()).replaceAll('{' r'scope' '}', encodeQueryParameter(_serializers, scope, const FullType(String)).toString()).replaceAll('{' r'ttl' '}', encodeQueryParameter(_serializers, ttl, const FullType(int)).toString());
    final _options = Options(
      method: r'POST',
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
      contentType: 'text/plain',
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
