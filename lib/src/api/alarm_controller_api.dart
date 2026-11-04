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

import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/api_util.dart';
import 'package:thingsboard_client/src/model/alarm.dart';
import 'package:thingsboard_client/src/model/alarm_info.dart';
import 'package:thingsboard_client/src/model/alarm_severity.dart';
import 'package:thingsboard_client/src/model/page_data_alarm_info.dart';
import 'package:thingsboard_client/src/model/page_data_entity_subtype.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class AlarmControllerApi {
  final Dio _dio;

  final Serializers? _serializers;

  const AlarmControllerApi(this._dio, [this._serializers]);

  /// Acknowledge Alarm (ackAlarm)
  /// Acknowledge the Alarm. Once acknowledged, the &#39;ack_ts&#39; field will be set to current timestamp and special rule chain event &#39;ALARM_ACK&#39; will be generated. Referencing non-existing Alarm Id will cause an error.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority. Security check is performed to verify that the user has &#39;WRITE&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [alarmId] - A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AlarmInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AlarmInfo>> ackAlarm({
    required String alarmId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAlarmInfo);
    final _path = r'/api/alarm/{alarmId}/ack'.replaceAll(
      '{'
      r'alarmId'
      '}',
      encodeQueryParameter(
        _serializers,
        alarmId,
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AlarmInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(AlarmInfo),
                )
                as AlarmInfo;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AlarmInfo>(
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

  /// Assign/Reassign Alarm (assignAlarm)
  /// Assign the Alarm. Once assigned, the &#39;assign_ts&#39; field will be set to current timestamp and special rule chain event &#39;ALARM_ASSIGNED&#39; (or ALARM_REASSIGNED in case of assigning already assigned alarm) will be generated. Referencing non-existing Alarm Id will cause an error.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [alarmId] - A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [assigneeId] - A string value representing the user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Alarm] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Alarm>> assignAlarm({
    required String alarmId,
    required String assigneeId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAlarm);
    final _path = r'/api/alarm/{alarmId}/assign/{assigneeId}'
        .replaceAll(
          '{'
          r'alarmId'
          '}',
          encodeQueryParameter(
            _serializers,
            alarmId,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'assigneeId'
          '}',
          encodeQueryParameter(
            _serializers,
            assigneeId,
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Alarm? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(Alarm),
                )
                as Alarm;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Alarm>(
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

  /// Clear Alarm (clearAlarm)
  /// Clear the Alarm. Once cleared, the &#39;clear_ts&#39; field will be set to current timestamp and special rule chain event &#39;ALARM_CLEAR&#39; will be generated. Referencing non-existing Alarm Id will cause an error.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority. Security check is performed to verify that the user has &#39;WRITE&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [alarmId] - A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AlarmInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AlarmInfo>> clearAlarm({
    required String alarmId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAlarmInfo);
    final _path = r'/api/alarm/{alarmId}/clear'.replaceAll(
      '{'
      r'alarmId'
      '}',
      encodeQueryParameter(
        _serializers,
        alarmId,
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AlarmInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(AlarmInfo),
                )
                as AlarmInfo;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AlarmInfo>(
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

  /// Delete Alarm (deleteAlarm)
  /// Deletes the Alarm. Referencing non-existing Alarm Id will cause an error.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority. Security check is performed to verify that the user has &#39;DELETE&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [alarmId] - A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [bool] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<bool>> deleteAlarm({
    required String alarmId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/alarm/{alarmId}'.replaceAll(
      '{'
      r'alarmId'
      '}',
      encodeQueryParameter(
        _serializers,
        alarmId,
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

    bool? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : rawResponse as bool;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<bool>(
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

  /// Get Alarm (getAlarmById)
  /// Fetch the Alarm object based on the provided Alarm Id.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority. Security check is performed to verify that the user has &#39;READ&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [alarmId] - A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Alarm] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Alarm>> getAlarmById({
    required String alarmId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAlarm);
    final _path = r'/api/alarm/{alarmId}'.replaceAll(
      '{'
      r'alarmId'
      '}',
      encodeQueryParameter(
        _serializers,
        alarmId,
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

    Alarm? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(Alarm),
                )
                as Alarm;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Alarm>(
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

  /// Get Alarm Info (getAlarmInfoById)
  /// Fetch the Alarm Info object based on the provided Alarm Id. Alarm Info is an extension of the default Alarm object that also contains name of the alarm originator.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority. Security check is performed to verify that the user has &#39;READ&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [alarmId] - A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AlarmInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AlarmInfo>> getAlarmInfoById({
    required String alarmId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAlarmInfo);
    final _path = r'/api/alarm/info/{alarmId}'.replaceAll(
      '{'
      r'alarmId'
      '}',
      encodeQueryParameter(
        _serializers,
        alarmId,
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

    AlarmInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(AlarmInfo),
                )
                as AlarmInfo;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AlarmInfo>(
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

  /// Get Alarm Types (getAlarmTypes)
  /// Returns a set of unique alarm types based on alarms that are either owned by the tenant or assigned to the customer which user is performing the request.
  ///
  /// Parameters:
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [textSearch] - The case insensitive 'substring' filter based on of next alarm fields: type, severity or status
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataEntitySubtype] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataEntitySubtype>> getAlarmTypes({
    required int pageSize,
    required int page,
    String? textSearch,
    String? sortOrder,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerPageDataEntitySubtype);
    final _path = r'/api/alarm/types';
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
      if (textSearch != null)
        r'textSearch': encodeQueryParameter(
          _serializers,
          textSearch,
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

    PageDataEntitySubtype? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(PageDataEntitySubtype),
                )
                as PageDataEntitySubtype;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataEntitySubtype>(
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

  /// Get Alarms (getAlarmsByEntity)
  /// Returns a page of alarms for the selected entity. Specifying both parameters &#39;searchStatus&#39; and &#39;status&#39; at the same time will cause an error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority. Security check is performed to verify that the user has &#39;READ&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [searchStatus] - A string value representing one of the AlarmSearchStatus enumeration value
  /// * [status] - A string value representing one of the AlarmStatus enumeration value
  /// * [assigneeId] - A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [textSearch] - The case insensitive 'substring' filter based on of next alarm fields: type, severity or status
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [startTime] - The start timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
  /// * [endTime] - The end timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
  /// * [fetchOriginator] - A boolean value to specify if the alarm originator name will be filled in the AlarmInfo object  field: 'originatorName' or will returns as null.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataAlarmInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataAlarmInfo>> getAlarmsByEntity({
    required String entityType,
    required String entityId,
    required int pageSize,
    required int page,
    String? searchStatus,
    String? status,
    String? assigneeId,
    String? textSearch,
    String? sortProperty,
    String? sortOrder,
    int? startTime,
    int? endTime,
    bool? fetchOriginator,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerPageDataAlarmInfo);
    final _path = r'/api/alarm/{entityType}/{entityId}'
        .replaceAll(
          '{'
          r'entityType'
          '}',
          encodeQueryParameter(
            _serializers,
            entityType,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'entityId'
          '}',
          encodeQueryParameter(
            _serializers,
            entityId,
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
      if (searchStatus != null)
        r'searchStatus': encodeQueryParameter(
          _serializers,
          searchStatus,
          const FullType(String),
        ),
      if (status != null)
        r'status': encodeQueryParameter(
          _serializers,
          status,
          const FullType(String),
        ),
      if (assigneeId != null)
        r'assigneeId': encodeQueryParameter(
          _serializers,
          assigneeId,
          const FullType(String),
        ),
      r'pageSize': encodeQueryParameter(
        _serializers,
        pageSize,
        const FullType(int),
      ),
      r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
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
      if (startTime != null)
        r'startTime': encodeQueryParameter(
          _serializers,
          startTime,
          const FullType(int),
        ),
      if (endTime != null)
        r'endTime': encodeQueryParameter(
          _serializers,
          endTime,
          const FullType(int),
        ),
      if (fetchOriginator != null)
        r'fetchOriginator': encodeQueryParameter(
          _serializers,
          fetchOriginator,
          const FullType(bool),
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

    PageDataAlarmInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(PageDataAlarmInfo),
                )
                as PageDataAlarmInfo;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataAlarmInfo>(
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

  /// Get Alarms (getAlarmsV2)
  /// Returns a page of alarms for the selected entity. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [statusList] - A list of string values separated by comma ',' representing one of the AlarmSearchStatus enumeration value
  /// * [severityList] - A list of string values separated by comma ',' representing one of the AlarmSeverity enumeration value
  /// * [typeList] - A list of string values separated by comma ',' representing alarm types
  /// * [assigneeId] - A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [textSearch] - The case insensitive 'substring' filter based on of next alarm fields: type, severity or status
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [startTime] - The start timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
  /// * [endTime] - The end timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataAlarmInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataAlarmInfo>> getAlarmsV2({
    required String entityType,
    required String entityId,
    required int pageSize,
    required int page,
    BuiltList<String>? statusList,
    BuiltList<String>? severityList,
    BuiltList<String>? typeList,
    String? assigneeId,
    String? textSearch,
    String? sortProperty,
    String? sortOrder,
    int? startTime,
    int? endTime,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerPageDataAlarmInfo);
    final _path = r'/api/v2/alarm/{entityType}/{entityId}'
        .replaceAll(
          '{'
          r'entityType'
          '}',
          encodeQueryParameter(
            _serializers,
            entityType,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'entityId'
          '}',
          encodeQueryParameter(
            _serializers,
            entityId,
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
      if (statusList != null)
        r'statusList': encodeCollectionQueryParameter<String>(
          _serializers,
          statusList,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (severityList != null)
        r'severityList': encodeCollectionQueryParameter<String>(
          _serializers,
          severityList,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (typeList != null)
        r'typeList': encodeCollectionQueryParameter<String>(
          _serializers,
          typeList,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (assigneeId != null)
        r'assigneeId': encodeQueryParameter(
          _serializers,
          assigneeId,
          const FullType(String),
        ),
      r'pageSize': encodeQueryParameter(
        _serializers,
        pageSize,
        const FullType(int),
      ),
      r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
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
      if (startTime != null)
        r'startTime': encodeQueryParameter(
          _serializers,
          startTime,
          const FullType(int),
        ),
      if (endTime != null)
        r'endTime': encodeQueryParameter(
          _serializers,
          endTime,
          const FullType(int),
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

    PageDataAlarmInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(PageDataAlarmInfo),
                )
                as PageDataAlarmInfo;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataAlarmInfo>(
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

  /// Get All Alarms (getAllAlarms)
  /// Returns a page of alarms that belongs to the current user owner. If the user has the authority of &#39;Tenant Administrator&#39;, the server returns alarms that belongs to the tenant of current user. If the user has the authority of &#39;Customer User&#39;, the server returns alarms that belongs to the customer of current user. Specifying both parameters &#39;searchStatus&#39; and &#39;status&#39; at the same time will cause an error. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority. Security check is performed to verify that the user has &#39;READ&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [searchStatus] - A string value representing one of the AlarmSearchStatus enumeration value
  /// * [status] - A string value representing one of the AlarmStatus enumeration value
  /// * [assigneeId] - A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [textSearch] - The case insensitive 'substring' filter based on of next alarm fields: type, severity or status
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [startTime] - The start timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
  /// * [endTime] - The end timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
  /// * [fetchOriginator] - A boolean value to specify if the alarm originator name will be filled in the AlarmInfo object  field: 'originatorName' or will returns as null.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataAlarmInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataAlarmInfo>> getAllAlarms({
    required int pageSize,
    required int page,
    String? searchStatus,
    String? status,
    String? assigneeId,
    String? textSearch,
    String? sortProperty,
    String? sortOrder,
    int? startTime,
    int? endTime,
    bool? fetchOriginator,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerPageDataAlarmInfo);
    final _path = r'/api/alarms';
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
      if (searchStatus != null)
        r'searchStatus': encodeQueryParameter(
          _serializers,
          searchStatus,
          const FullType(String),
        ),
      if (status != null)
        r'status': encodeQueryParameter(
          _serializers,
          status,
          const FullType(String),
        ),
      if (assigneeId != null)
        r'assigneeId': encodeQueryParameter(
          _serializers,
          assigneeId,
          const FullType(String),
        ),
      r'pageSize': encodeQueryParameter(
        _serializers,
        pageSize,
        const FullType(int),
      ),
      r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
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
      if (startTime != null)
        r'startTime': encodeQueryParameter(
          _serializers,
          startTime,
          const FullType(int),
        ),
      if (endTime != null)
        r'endTime': encodeQueryParameter(
          _serializers,
          endTime,
          const FullType(int),
        ),
      if (fetchOriginator != null)
        r'fetchOriginator': encodeQueryParameter(
          _serializers,
          fetchOriginator,
          const FullType(bool),
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

    PageDataAlarmInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(PageDataAlarmInfo),
                )
                as PageDataAlarmInfo;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataAlarmInfo>(
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

  /// Get All Alarms (getAllAlarmsV2)
  /// Returns a page of alarms that belongs to the current user owner. If the user has the authority of &#39;Tenant Administrator&#39;, the server returns alarms that belongs to the tenant of current user. If the user has the authority of &#39;Customer User&#39;, the server returns alarms that belongs to the customer of current user. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [statusList] - A list of string values separated by comma ',' representing one of the AlarmSearchStatus enumeration value
  /// * [severityList] - A list of string values separated by comma ',' representing one of the AlarmSeverity enumeration value
  /// * [typeList] - A list of string values separated by comma ',' representing alarm types
  /// * [assigneeId] - A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [textSearch] - The case insensitive 'substring' filter based on of next alarm fields: type, severity or status
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [startTime] - The start timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
  /// * [endTime] - The end timestamp in milliseconds of the search time range over the Alarm class field: 'createdTime'.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataAlarmInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataAlarmInfo>> getAllAlarmsV2({
    required int pageSize,
    required int page,
    BuiltList<String>? statusList,
    BuiltList<String>? severityList,
    BuiltList<String>? typeList,
    String? assigneeId,
    String? textSearch,
    String? sortProperty,
    String? sortOrder,
    int? startTime,
    int? endTime,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerPageDataAlarmInfo);
    final _path = r'/api/v2/alarms';
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
      if (statusList != null)
        r'statusList': encodeCollectionQueryParameter<String>(
          _serializers,
          statusList,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (severityList != null)
        r'severityList': encodeCollectionQueryParameter<String>(
          _serializers,
          severityList,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (typeList != null)
        r'typeList': encodeCollectionQueryParameter<String>(
          _serializers,
          typeList,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (assigneeId != null)
        r'assigneeId': encodeQueryParameter(
          _serializers,
          assigneeId,
          const FullType(String),
        ),
      r'pageSize': encodeQueryParameter(
        _serializers,
        pageSize,
        const FullType(int),
      ),
      r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
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
      if (startTime != null)
        r'startTime': encodeQueryParameter(
          _serializers,
          startTime,
          const FullType(int),
        ),
      if (endTime != null)
        r'endTime': encodeQueryParameter(
          _serializers,
          endTime,
          const FullType(int),
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

    PageDataAlarmInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(PageDataAlarmInfo),
                )
                as PageDataAlarmInfo;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataAlarmInfo>(
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

  /// Get Highest Alarm Severity (getHighestAlarmSeverity)
  /// Search the alarms by originator (&#39;entityType&#39; and entityId&#39;) and optional &#39;status&#39; or &#39;searchStatus&#39; filters and returns the highest AlarmSeverity(CRITICAL, MAJOR, MINOR, WARNING or INDETERMINATE). Specifying both parameters &#39;searchStatus&#39; and &#39;status&#39; at the same time will cause an error.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority. Security check is performed to verify that the user has &#39;READ&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [searchStatus] - A string value representing one of the AlarmSearchStatus enumeration value
  /// * [status] - A string value representing one of the AlarmStatus enumeration value
  /// * [assigneeId] - A string value representing the assignee user id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AlarmSeverity] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AlarmSeverity>> getHighestAlarmSeverity({
    required String entityType,
    required String entityId,
    String? searchStatus,
    String? status,
    String? assigneeId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerAlarmSeverity);
    final _path = r'/api/alarm/highestSeverity/{entityType}/{entityId}'
        .replaceAll(
          '{'
          r'entityType'
          '}',
          encodeQueryParameter(
            _serializers,
            entityType,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'entityId'
          '}',
          encodeQueryParameter(
            _serializers,
            entityId,
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
      if (searchStatus != null)
        r'searchStatus': encodeQueryParameter(
          _serializers,
          searchStatus,
          const FullType(String),
        ),
      if (status != null)
        r'status': encodeQueryParameter(
          _serializers,
          status,
          const FullType(String),
        ),
      if (assigneeId != null)
        r'assigneeId': encodeQueryParameter(
          _serializers,
          assigneeId,
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

    AlarmSeverity? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(AlarmSeverity),
                )
                as AlarmSeverity;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AlarmSeverity>(
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

  /// Create or Update Alarm (saveAlarm)
  /// Creates or Updates the Alarm. When creating alarm, platform generates Alarm Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Alarm id will be present in the response. Specify existing Alarm id to update the alarm. Referencing non-existing Alarm Id will cause &#39;Not Found&#39; error.   Platform also deduplicate the alarms based on the entity id of originator and alarm &#39;type&#39;. For example, if the user or system component create the alarm with the type &#39;HighTemperature&#39; for device &#39;Device A&#39; the new active alarm is created. If the user tries to create &#39;HighTemperature&#39; alarm for the same device again, the previous alarm will be updated (the &#39;end_ts&#39; will be set to current timestamp). If the user clears the alarm (see &#39;Clear Alarm(clearAlarm)&#39;), than new alarm with the same type and same device may be created. Remove &#39;id&#39;, &#39;tenantId&#39; and optionally &#39;customerId&#39; from the request body example (below) to create new Alarm entity.   The alarm originator is an immutable routing key: when updating an existing alarm, the &#39;originator&#39; in the request body must match the stored alarm&#39;s originator. A request that references an existing alarm id but carries a different originator is treated as a lookup miss and causes a &#39;Not Found&#39; error.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority. Security check is performed to verify that the user has &#39;WRITE&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [alarm] - A JSON value representing the alarm.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Alarm] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Alarm>> saveAlarm({
    required Alarm alarm,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAlarm);
    final _path = r'/api/alarm';
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
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(Alarm);
      _bodyData = _serializers.serialize(alarm, specifiedType: _type);
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

    Alarm? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(Alarm),
                )
                as Alarm;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Alarm>(
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

  /// Unassign Alarm (unassignAlarm)
  /// Unassign the Alarm. Once unassigned, the &#39;assign_ts&#39; field will be set to current timestamp and special rule chain event &#39;ALARM_UNASSIGNED&#39; will be generated. Referencing non-existing Alarm Id will cause an error.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [alarmId] - A string value representing the alarm id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Alarm] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Alarm>> unassignAlarm({
    required String alarmId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAlarm);
    final _path = r'/api/alarm/{alarmId}/assign'.replaceAll(
      '{'
      r'alarmId'
      '}',
      encodeQueryParameter(
        _serializers,
        alarmId,
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

    Alarm? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(Alarm),
                )
                as Alarm;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Alarm>(
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
