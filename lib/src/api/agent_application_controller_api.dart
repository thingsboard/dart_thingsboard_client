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
import 'package:thingsboard_client/src/model/agent_app_event.dart';
import 'package:thingsboard_client/src/model/agent_app_event_action_type.dart';
import 'package:thingsboard_client/src/model/agent_app_event_request.dart';
import 'package:thingsboard_client/src/model/agent_app_install_response.dart';
import 'package:thingsboard_client/src/model/agent_app_unit_type.dart';
import 'package:thingsboard_client/src/model/agent_application.dart';
import 'package:thingsboard_client/src/model/agent_application_info.dart';
import 'package:thingsboard_client/src/model/agent_application_type.dart';
import 'package:thingsboard_client/src/model/agent_processing_status.dart';
import 'package:thingsboard_client/src/model/get_managed_related_entity_ids200_response_inner.dart';
import 'package:thingsboard_client/src/model/page_data_agent_app_event.dart';
import 'package:thingsboard_client/src/model/page_data_agent_app_unit.dart';
import 'package:thingsboard_client/src/model/page_data_agent_application_info.dart';
import 'package:thingsboard_client/src/model/page_data_entity_info.dart';
import 'package:thingsboard_client/src/model/thingsboard_error_response.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class AgentApplicationControllerApi {

  final Dio _dio;

  final Serializers? _serializers;

  const AgentApplicationControllerApi(this._dio, [this._serializers]);

  /// Assign Related Entity to Agent Application (assignRelatedEntityToAgentApp)
  /// Links an Edge or Gateway Device to the specified agent application and re-merges entity credentials into the compose.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [agentApplicationId] - A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [entityType] - Related entity type (EDGE or DEVICE)
  /// * [entityId] - Related entity id
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AgentApplication] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AgentApplication>> assignRelatedEntityToAgentApp({ 
    required String agentApplicationId,
    required String entityType,
    required String entityId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAgentApplication);
    final _path = r'/api/agent/app/{agentApplicationId}/relatedEntity/{entityType}/{entityId}'.replaceAll('{' r'agentApplicationId' '}', encodeQueryParameter(_serializers, agentApplicationId, const FullType(String)).toString()).replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString());
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AgentApplication? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AgentApplication),
      ) as AgentApplication;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AgentApplication>(
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

  /// Attach Application to Profile (attachToProfile)
  /// Re-attaches the application to a profile. The application adopts the profile&#39;s template version without running any upgrade or downgrade steps. After attachment the profile becomes the source of the config; the app&#39;s own credentials are carried over.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [agentApplicationId] - A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [profileId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AgentApplication] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AgentApplication>> attachToProfile({ 
    required String agentApplicationId,
    required String profileId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAgentApplication);
    final _path = r'/api/agent/app/{agentApplicationId}/attach/{profileId}'.replaceAll('{' r'agentApplicationId' '}', encodeQueryParameter(_serializers, agentApplicationId, const FullType(String)).toString()).replaceAll('{' r'profileId' '}', encodeQueryParameter(_serializers, profileId, const FullType(String)).toString());
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AgentApplication? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AgentApplication),
      ) as AgentApplication;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AgentApplication>(
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

  /// Cancel Agent Application Event (cancelAgentAppEvent)
  /// Force-cancels an in-flight or pending agent application event, marking it as ERROR. Cannot cancel events that are already in a terminal state (FINISHED or ERROR).  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [agentApplicationId] - A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [agentAppEventId] - A string value representing the agent app event id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> cancelAgentAppEvent({ 
    required String agentApplicationId,
    required String agentAppEventId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/agent/app/{agentApplicationId}/event/{agentAppEventId}/cancel'.replaceAll('{' r'agentApplicationId' '}', encodeQueryParameter(_serializers, agentApplicationId, const FullType(String)).toString()).replaceAll('{' r'agentAppEventId' '}', encodeQueryParameter(_serializers, agentAppEventId, const FullType(String)).toString());
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

  /// Execute Agent Application Event (createAgentAppEvent)
  /// Creates an event for the specified agent application. The action type determines the operation (UPDATE, DELETE, RESTART, UPGRADE, ROLLBACK). Step inputs can be provided for actions that require them. Returns the created event so the caller can open a progress view.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [agentApplicationId] - A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [agentAppEventRequest] - A JSON value representing the event request.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AgentAppEvent] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AgentAppEvent>> createAgentAppEvent({ 
    required String agentApplicationId,
    required AgentAppEventRequest agentAppEventRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAgentAppEventAndAgentAppEventRequest);
    final _path = r'/api/agent/app/{agentApplicationId}/event'.replaceAll('{' r'agentApplicationId' '}', encodeQueryParameter(_serializers, agentApplicationId, const FullType(String)).toString());
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
      const _type = FullType(AgentAppEventRequest);
      _bodyData = _serializers.serialize(agentAppEventRequest, specifiedType: _type);

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

    AgentAppEvent? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AgentAppEvent),
      ) as AgentAppEvent;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AgentAppEvent>(
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

  /// Detach Application from Profile (detachFromProfile)
  /// Detaches the application from its profile. The application keeps the effective config it already carries (profile config with its own credentials merged in) and becomes standalone and editable.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [agentApplicationId] - A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AgentApplication] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AgentApplication>> detachFromProfile({ 
    required String agentApplicationId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAgentApplication);
    final _path = r'/api/agent/app/{agentApplicationId}/detach'.replaceAll('{' r'agentApplicationId' '}', encodeQueryParameter(_serializers, agentApplicationId, const FullType(String)).toString());
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AgentApplication? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AgentApplication),
      ) as AgentApplication;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AgentApplication>(
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

  /// Get Agent Application Event (getAgentAppEventById)
  /// Fetches a single agent application event by id. Works for orphan events whose application has been deleted (application_id is nullable).  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [agentAppEventId] - A string value representing the agent app event id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AgentAppEvent] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AgentAppEvent>> getAgentAppEventById({ 
    required String agentAppEventId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAgentAppEvent);
    final _path = r'/api/agent/app/event/{agentAppEventId}'.replaceAll('{' r'agentAppEventId' '}', encodeQueryParameter(_serializers, agentAppEventId, const FullType(String)).toString());
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

    AgentAppEvent? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AgentAppEvent),
      ) as AgentAppEvent;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AgentAppEvent>(
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

  /// Get Agent Application Events (getAgentAppEvents)
  /// Returns a page of events for the specified agent application. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [agentApplicationId] - A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [textSearch] - Optional case-insensitive substring matched against the event action type and processing status
  /// * [actionType] - Optional action type filter
  /// * [processingStatus] - Optional processing status filter
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataAgentAppEvent] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataAgentAppEvent>> getAgentAppEvents({ 
    required String agentApplicationId,
    required int pageSize,
    required int page,
    String? textSearch,
    AgentAppEventActionType? actionType,
    AgentProcessingStatus? processingStatus,
    String? sortProperty,
    String? sortOrder,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerPageDataAgentAppEvent);
    final _path = r'/api/agent/app/{agentApplicationId}/events'.replaceAll('{' r'agentApplicationId' '}', encodeQueryParameter(_serializers, agentApplicationId, const FullType(String)).toString());
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
      r'pageSize': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
      r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (textSearch != null) r'textSearch': encodeQueryParameter(_serializers, textSearch, const FullType(String)),
      if (actionType != null) r'actionType': encodeQueryParameter(_serializers, actionType, const FullType(AgentAppEventActionType)),
      if (processingStatus != null) r'processingStatus': encodeQueryParameter(_serializers, processingStatus, const FullType(AgentProcessingStatus)),
      if (sortProperty != null) r'sortProperty': encodeQueryParameter(_serializers, sortProperty, const FullType(String)),
      if (sortOrder != null) r'sortOrder': encodeQueryParameter(_serializers, sortOrder, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PageDataAgentAppEvent? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PageDataAgentAppEvent),
      ) as PageDataAgentAppEvent;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataAgentAppEvent>(
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

  /// Get Agent Application Units (getAgentAppUnits)
  /// Returns a page of units (containers, volumes, networks) for the specified agent application. Live per-unit data such as &#x60;image&#x60; and &#x60;state&#x60; lives in server-scope attributes on each unit and should be fetched separately via the standard telemetry/attributes API.You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [agentApplicationId] - A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [textSearch] - Case-insensitive substring match against the unit identifier
  /// * [type] - Optional unit type filter (CONTAINER, VOLUME, NETWORK)
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataAgentAppUnit] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataAgentAppUnit>> getAgentAppUnits({ 
    required String agentApplicationId,
    required int pageSize,
    required int page,
    String? textSearch,
    AgentAppUnitType? type,
    String? sortProperty,
    String? sortOrder,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerPageDataAgentAppUnit);
    final _path = r'/api/agent/app/{agentApplicationId}/units'.replaceAll('{' r'agentApplicationId' '}', encodeQueryParameter(_serializers, agentApplicationId, const FullType(String)).toString());
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
      r'pageSize': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
      r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (textSearch != null) r'textSearch': encodeQueryParameter(_serializers, textSearch, const FullType(String)),
      if (type != null) r'type': encodeQueryParameter(_serializers, type, const FullType(AgentAppUnitType)),
      if (sortProperty != null) r'sortProperty': encodeQueryParameter(_serializers, sortProperty, const FullType(String)),
      if (sortOrder != null) r'sortOrder': encodeQueryParameter(_serializers, sortOrder, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PageDataAgentAppUnit? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PageDataAgentAppUnit),
      ) as PageDataAgentAppUnit;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataAgentAppUnit>(
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

  /// Get Agent Application (getAgentApplicationById)
  /// Fetch the Agent Application object based on the provided Agent Application Id.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [agentApplicationId] - A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AgentApplicationInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AgentApplicationInfo>> getAgentApplicationById({ 
    required String agentApplicationId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAgentApplicationInfo);
    final _path = r'/api/agent/app/{agentApplicationId}'.replaceAll('{' r'agentApplicationId' '}', encodeQueryParameter(_serializers, agentApplicationId, const FullType(String)).toString());
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

    AgentApplicationInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AgentApplicationInfo),
      ) as AgentApplicationInfo;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AgentApplicationInfo>(
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

  /// Get Agent Application by Related Entity (getAgentApplicationByRelatedEntity)
  /// Returns the agent application linked to the specified entity.   Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - Entity type
  /// * [entityId] - Entity id
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AgentApplication] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AgentApplication>> getAgentApplicationByRelatedEntity({ 
    required String entityType,
    required String entityId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAgentApplication);
    final _path = r'/api/agent/apps/{entityType}/{entityId}'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString()).replaceAll('{' r'entityId' '}', encodeQueryParameter(_serializers, entityId, const FullType(String)).toString());
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

    AgentApplication? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AgentApplication),
      ) as AgentApplication;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AgentApplication>(
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

  /// Get Agent Applications by Agent Id (getAgentApplicationsByAgentId)
  /// Returns a page of agent applications that belong to the specified agent. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [agentId] - A string value representing the agent id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [textSearch] - Optional String value representing application name
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataAgentApplicationInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataAgentApplicationInfo>> getAgentApplicationsByAgentId({ 
    required String agentId,
    required int pageSize,
    required int page,
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
    final _serializers = this._serializers ?? apiSerializers(registerPageDataAgentApplicationInfo);
    final _path = r'/api/agent/{agentId}/apps'.replaceAll('{' r'agentId' '}', encodeQueryParameter(_serializers, agentId, const FullType(String)).toString());
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
      r'pageSize': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
      r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (textSearch != null) r'textSearch': encodeQueryParameter(_serializers, textSearch, const FullType(String)),
      if (sortProperty != null) r'sortProperty': encodeQueryParameter(_serializers, sortProperty, const FullType(String)),
      if (sortOrder != null) r'sortOrder': encodeQueryParameter(_serializers, sortOrder, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PageDataAgentApplicationInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PageDataAgentApplicationInfo),
      ) as PageDataAgentApplicationInfo;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataAgentApplicationInfo>(
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

  /// Get Managed Related Entity Ids (getManagedRelatedEntityIds)
  /// Returns the ids of entities of the given type that are already linked to an agent application.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - Related entity type (EDGE or DEVICE)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<GetManagedRelatedEntityIds200ResponseInner>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<GetManagedRelatedEntityIds200ResponseInner>>> getManagedRelatedEntityIds({ 
    required String entityType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfGetManagedRelatedEntityIds200ResponseInner);
    final _path = r'/api/agent/app/managedRelatedEntities/{entityType}'.replaceAll('{' r'entityType' '}', encodeQueryParameter(_serializers, entityType, const FullType(String)).toString());
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

    BuiltList<GetManagedRelatedEntityIds200ResponseInner>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(GetManagedRelatedEntityIds200ResponseInner)]),
      ) as BuiltList<GetManagedRelatedEntityIds200ResponseInner>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<GetManagedRelatedEntityIds200ResponseInner>>(
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

  /// Get Related Entity Candidates (getRelatedEntityCandidates)
  /// Returns a page of Edges or Gateway Devices (devices with &#39;gateway&#39; set in additional info) that can be linked to an agent application. Entities already linked to another application are excluded unless passed as &#39;currentEntityId&#39;. Results are sorted by name. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - Related entity type (EDGE or DEVICE)
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [textSearch] - Optional String value representing entity name
  /// * [currentEntityId] - Optional id of the entity currently linked to the edited application; it is kept in the result even though it is managed
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataEntityInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataEntityInfo>> getRelatedEntityCandidates({ 
    required String entityType,
    required int pageSize,
    required int page,
    String? textSearch,
    String? currentEntityId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerPageDataEntityInfo);
    final _path = r'/api/agent/app/relatedEntityCandidates';
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
      r'entityType': encodeQueryParameter(_serializers, entityType, const FullType(String)),
      r'pageSize': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
      r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      if (textSearch != null) r'textSearch': encodeQueryParameter(_serializers, textSearch, const FullType(String)),
      if (currentEntityId != null) r'currentEntityId': encodeQueryParameter(_serializers, currentEntityId, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PageDataEntityInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PageDataEntityInfo),
      ) as PageDataEntityInfo;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataEntityInfo>(
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

  /// Install Agent Application (installAgentApp)
  /// Creates a new agent application and an INSTALL event in a single operation. Returns both the created application and the INSTALL event so the caller can open a progress view without a second round-trip. The request body must include the application object.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [agentAppEventRequest] - A JSON value representing the install event request with the application.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AgentAppInstallResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AgentAppInstallResponse>> installAgentApp({ 
    required AgentAppEventRequest agentAppEventRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAgentAppEventRequestAndAgentAppInstallResponse);
    final _path = r'/api/agent/app/event';
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
      const _type = FullType(AgentAppEventRequest);
      _bodyData = _serializers.serialize(agentAppEventRequest, specifiedType: _type);

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

    AgentAppInstallResponse? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AgentAppInstallResponse),
      ) as AgentAppInstallResponse;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AgentAppInstallResponse>(
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

  /// Merge template into application for preview (mergeAgentApplicationForPreview)
  /// Merges the specified template into an agent application for preview purposes. If no application is provided in the body, a new one is created from the template. The compose type determines which compose configuration variant from the template is used. Optionally provide relatedEntityType and relatedEntityId to auto-fill entity credentials (Edge routing key/secret or Gateway access token) into the compose.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [templateVersion] - The template version to merge (e.g. '4.3.1.2EDGEPE')
  /// * [appType] - Application type (EDGE, GATEWAY, GENERIC). Required when no application body is supplied.
  /// * [composeType] - The compose type to select from the template (e.g. 'monolith', 'microservices')
  /// * [actionType] - The event action this merge previews (e.g. UPGRADE). Drives action-specific merge rules.
  /// * [setHostValues] - Whether to auto-fill host values (e.g. CLOUD_RPC_HOST) from the platform base URL. Should be true only for the install preview; keep false when previewing the saved compose of an existing application to preserve user-configured host values.
  /// * [relatedEntityType] - Related entity type (EDGE or DEVICE)
  /// * [relatedEntityId] - Related entity id
  /// * [agentApplication] - Optional agent application to merge with. If null, a new application is created from the template.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AgentApplication] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AgentApplication>> mergeAgentApplicationForPreview({ 
    required String templateVersion,
    AgentApplicationType? appType,
    String? composeType,
    AgentAppEventActionType? actionType,
    bool? setHostValues = false,
    String? relatedEntityType,
    String? relatedEntityId,
    AgentApplication? agentApplication,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAgentAppEventActionTypeAndAgentApplication);
    final _path = r'/api/agent/app/merge/{templateVersion}/preview'.replaceAll('{' r'templateVersion' '}', encodeQueryParameter(_serializers, templateVersion, const FullType(String)).toString());
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

    final _queryParameters = <String, dynamic>{
      if (appType != null) r'appType': encodeQueryParameter(_serializers, appType, const FullType(AgentApplicationType)),
      if (composeType != null) r'composeType': encodeQueryParameter(_serializers, composeType, const FullType(String)),
      if (actionType != null) r'actionType': encodeQueryParameter(_serializers, actionType, const FullType(AgentAppEventActionType)),
      if (setHostValues != null) r'setHostValues': encodeQueryParameter(_serializers, setHostValues, const FullType(bool)),
      if (relatedEntityType != null) r'relatedEntityType': encodeQueryParameter(_serializers, relatedEntityType, const FullType(String)),
      if (relatedEntityId != null) r'relatedEntityId': encodeQueryParameter(_serializers, relatedEntityId, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(AgentApplication);
      _bodyData = agentApplication == null ? null : _serializers.serialize(agentApplication, specifiedType: _type);

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

    AgentApplication? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AgentApplication),
      ) as AgentApplication;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AgentApplication>(
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

  /// Unassign Related Entity from Agent Application (unassignRelatedEntityFromAgentApp)
  /// Removes the link between an agent application and its related Edge or Gateway Device.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [agentApplicationId] - A string value representing the agent application id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AgentApplication] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AgentApplication>> unassignRelatedEntityFromAgentApp({ 
    required String agentApplicationId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAgentApplication);
    final _path = r'/api/agent/app/{agentApplicationId}/relatedEntity'.replaceAll('{' r'agentApplicationId' '}', encodeQueryParameter(_serializers, agentApplicationId, const FullType(String)).toString());
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

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AgentApplication? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AgentApplication),
      ) as AgentApplication;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AgentApplication>(
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

  /// Update Agent Application (saveAgentApplication)
  /// Updates the Agent Application.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [agentApplication] - A JSON value representing the agent application.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AgentApplication] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AgentApplication>> updateAgentApplication({ 
    required AgentApplication agentApplication,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAgentApplication);
    final _path = r'/api/agent/app';
    final _options = Options(
      method: r'PUT',
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
      const _type = FullType(AgentApplication);
      _bodyData = _serializers.serialize(agentApplication, specifiedType: _type);

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

    AgentApplication? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AgentApplication),
      ) as AgentApplication;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AgentApplication>(
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
