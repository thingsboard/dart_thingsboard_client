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
import 'package:thingsboard_client/src/model/event_filter.dart';
import 'package:thingsboard_client/src/model/page_data_event_info.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class EventControllerApi {
  final Dio _dio;

  final Serializers? _serializers;

  const EventControllerApi(this._dio, [this._serializers]);

  /// Clear Events (clearEvents)
  /// Clears events by filter for specified entity.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [eventFilter]
  /// * [startTime] - Timestamp. Events with creation time before it won't be queried.
  /// * [endTime] - Timestamp. Events with creation time after it won't be queried.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> clearEvents({
    required String entityType,
    required String entityId,
    required EventFilter eventFilter,
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
        this._serializers ?? apiSerializers(registerEventFilter);
    final _path = r'/api/events/{entityType}/{entityId}/clear'
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

    final _queryParameters = <String, dynamic>{
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

    dynamic _bodyData;

    try {
      const _type = FullType(EventFilter);
      _bodyData = _serializers.serialize(eventFilter, specifiedType: _type);
    } catch (error, stackTrace) {
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

    return _response;
  }

  /// Get Events by event filter (getEventsByFilter)
  /// Returns a page of events for the chosen entity by specifying the event filter. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   # Event Filter Definition  6 different eventFilter objects could be set for different event types. The eventType field is required. Others are optional. If some of them are set, the filtering will be applied according to them. See the examples below for all the fields used for each event type filtering.   Note,   * &#39;server&#39; - string value representing the server name, identif   ier or ip address where the platform is running;  * &#39;errorStr&#39; - the case insensitive &#39;contains&#39; filter based on error message.  ## Error Event Filter  &#x60;&#x60;&#x60;json {    \&quot;eventType\&quot;:\&quot;ERROR\&quot;,    \&quot;server\&quot;:\&quot;ip-172-31-24-152\&quot;,    \&quot;method\&quot;:\&quot;onClusterEventMsg\&quot;,    \&quot;errorStr\&quot;:\&quot;Error Message\&quot; } &#x60;&#x60;&#x60;   * &#39;method&#39; - string value representing the method name when the error happened.  ## Lifecycle Event Filter  &#x60;&#x60;&#x60;json {    \&quot;eventType\&quot;:\&quot;LC_EVENT\&quot;,    \&quot;server\&quot;:\&quot;ip-172-31-24-152\&quot;,    \&quot;event\&quot;:\&quot;STARTED\&quot;,    \&quot;status\&quot;:\&quot;Success\&quot;,    \&quot;errorStr\&quot;:\&quot;Error Message\&quot; } &#x60;&#x60;&#x60;   * &#39;event&#39; - string value representing the lifecycle event type;  * &#39;status&#39; - string value representing status of the lifecycle event.  ## Statistics Event Filter  &#x60;&#x60;&#x60;json {    \&quot;eventType\&quot;:\&quot;STATS\&quot;,    \&quot;server\&quot;:\&quot;ip-172-31-24-152\&quot;,    \&quot;messagesProcessed\&quot;:10,    \&quot;errorsOccurred\&quot;:5 } &#x60;&#x60;&#x60;   * &#39;messagesProcessed&#39; - the minimum number of successfully processed messages;  * &#39;errorsOccurred&#39; - the minimum number of errors occurred during messages processing.  ## Debug Rule Node Event Filter  &#x60;&#x60;&#x60;json {    \&quot;eventType\&quot;:\&quot;DEBUG_RULE_NODE\&quot;,    \&quot;msgDirectionType\&quot;:\&quot;IN\&quot;,    \&quot;server\&quot;:\&quot;ip-172-31-24-152\&quot;,    \&quot;dataSearch\&quot;:\&quot;humidity\&quot;,    \&quot;metadataSearch\&quot;:\&quot;deviceName\&quot;,    \&quot;entityName\&quot;:\&quot;DEVICE\&quot;,    \&quot;relationType\&quot;:\&quot;Success\&quot;,    \&quot;entityId\&quot;:\&quot;de9d54a0-2b7a-11ec-a3cc-23386423d98f\&quot;,    \&quot;msgType\&quot;:\&quot;POST_TELEMETRY_REQUEST\&quot;,    \&quot;isError\&quot;:\&quot;false\&quot;,    \&quot;errorStr\&quot;:\&quot;Error Message\&quot; } &#x60;&#x60;&#x60;  ## Debug Rule Chain Event Filter  &#x60;&#x60;&#x60;json {    \&quot;eventType\&quot;:\&quot;DEBUG_RULE_CHAIN\&quot;,    \&quot;msgDirectionType\&quot;:\&quot;IN\&quot;,    \&quot;server\&quot;:\&quot;ip-172-31-24-152\&quot;,    \&quot;dataSearch\&quot;:\&quot;humidity\&quot;,    \&quot;metadataSearch\&quot;:\&quot;deviceName\&quot;,    \&quot;entityName\&quot;:\&quot;DEVICE\&quot;,    \&quot;relationType\&quot;:\&quot;Success\&quot;,    \&quot;entityId\&quot;:\&quot;de9d54a0-2b7a-11ec-a3cc-23386423d98f\&quot;,    \&quot;msgType\&quot;:\&quot;POST_TELEMETRY_REQUEST\&quot;,    \&quot;isError\&quot;:\&quot;false\&quot;,    \&quot;errorStr\&quot;:\&quot;Error Message\&quot; } &#x60;&#x60;&#x60;   * &#39;msgDirectionType&#39; - string value representing msg direction type (incoming to entity or outcoming from entity);  * &#39;dataSearch&#39; - the case insensitive &#39;contains&#39; filter based on data (key and value) for the message;  * &#39;metadataSearch&#39; - the case insensitive &#39;contains&#39; filter based on metadata (key and value) for the message;  * &#39;entityName&#39; - string value representing the entity type;  * &#39;relationType&#39; - string value representing the type of message routing;  * &#39;entityId&#39; - string value representing the entity id in the event body (originator of the message);  * &#39;msgType&#39; - string value representing the message type;  * &#39;isError&#39; - boolean value to filter the errors.  ## Debug Calculated Field Event Filter  &#x60;&#x60;&#x60;json {    \&quot;eventType\&quot;:\&quot;DEBUG_CALCULATED_FIELD\&quot;,    \&quot;server\&quot;:\&quot;ip-172-31-24-152\&quot;,    \&quot;isError\&quot;:\&quot;false\&quot;,    \&quot;errorStr\&quot;:\&quot;Error Message\&quot;    \&quot;entityId\&quot;:\&quot;cf4b8741-f618-471f-ae08-d881ca7f9fe9\&quot;,    \&quot;msgId\&quot;:\&quot;5cf7d3a0-aee7-40dd-a737-ade05528e7eb\&quot;,    \&quot;msgType\&quot;:\&quot;POST_TELEMETRY_REQUEST\&quot;,    \&quot;arguments\&quot;:\&quot;{     \&quot;x\&quot;: {       \&quot;ts\&quot;: 1739432016629,       \&quot;value\&quot;: 20     },     \&quot;y\&quot;: {       \&quot;ts\&quot;: 1739429717656,       \&quot;value\&quot;: 12     }   }\&quot;,    \&quot;result\&quot;:\&quot;{     \&quot;x + y\&quot;: 32   }\&quot;, } &#x60;&#x60;&#x60;   * &#39;entityId&#39; - string value representing the entity id in the event body;  * &#39;entityType&#39; - string value representing the entity type;  * &#39;msgId&#39; - string value representing the message id in the rule engine;  * &#39;msgType&#39; - string value representing the message type;  * &#39;arguments&#39; - string value representing the arguments that were used in the calculation performed;  * &#39;result&#39; - string value representing the result of a calculation;  * &#39;isError&#39; - boolean value to filter the errors.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [tenantId] - A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [eventFilter]
  /// * [textSearch] - The value is not used in searching.
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [startTime] - Timestamp. Events with creation time before it won't be queried.
  /// * [endTime] - Timestamp. Events with creation time after it won't be queried.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataEventInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataEventInfo>> getEventsByFilter({
    required String entityType,
    required String entityId,
    required String tenantId,
    required int pageSize,
    required int page,
    required EventFilter eventFilter,
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
        this._serializers ??
        apiSerializers(registerEventFilterAndPageDataEventInfo);
    final _path = r'/api/events/{entityType}/{entityId}'
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

    final _queryParameters = <String, dynamic>{
      r'tenantId': encodeQueryParameter(
        _serializers,
        tenantId,
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

    dynamic _bodyData;

    try {
      const _type = FullType(EventFilter);
      _bodyData = _serializers.serialize(eventFilter, specifiedType: _type);
    } catch (error, stackTrace) {
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

    PageDataEventInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(PageDataEventInfo),
                )
                as PageDataEventInfo;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataEventInfo>(
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

  /// Get Events by type (getEventsByType)
  /// Returns a page of events for specified entity by specifying event type. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [eventType] - A string value representing event type
  /// * [tenantId] - A string value representing the tenant id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [textSearch] - The value is not used in searching.
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [startTime] - Timestamp. Events with creation time before it won't be queried.
  /// * [endTime] - Timestamp. Events with creation time after it won't be queried.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataEventInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataEventInfo>> getEventsByType({
    required String entityType,
    required String entityId,
    required String eventType,
    required String tenantId,
    required int pageSize,
    required int page,
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
        this._serializers ?? apiSerializers(registerPageDataEventInfo);
    final _path = r'/api/events/{entityType}/{entityId}/{eventType}'
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
        )
        .replaceAll(
          '{'
          r'eventType'
          '}',
          encodeQueryParameter(
            _serializers,
            eventType,
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
      r'tenantId': encodeQueryParameter(
        _serializers,
        tenantId,
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

    PageDataEventInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(PageDataEventInfo),
                )
                as PageDataEventInfo;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataEventInfo>(
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
