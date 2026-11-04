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
import 'package:thingsboard_client/src/model/agent_app_config_type.dart';
import 'package:thingsboard_client/src/model/agent_app_template.dart';
import 'package:thingsboard_client/src/model/agent_application_type.dart';
import 'package:thingsboard_client/src/model/thingsboard_error_response.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class AgentAppTemplateControllerApi {

  final Dio _dio;

  final Serializers? _serializers;

  const AgentAppTemplateControllerApi(this._dio, [this._serializers]);

  /// Get Agent App Template by current version (getAgentAppTemplateByCurrentVersion)
  /// Fetch the Agent App Template object based on the provided app type, config type, and current version. Matches the version exactly, including a floating tag used as a version such as the gateway &#39;latest&#39; tag.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [appType] - A string value representing the agent application type, e.g. 'EDGE', 'GATEWAY'
  /// * [configType] - A string value representing the agent configuration type, e.g. 'DOCKER_COMPOSE'
  /// * [currentVersion] - A string value representing the current version of the template, e.g. '1.0.0'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AgentAppTemplate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AgentAppTemplate>> getAgentAppTemplateByCurrentVersion({ 
    required AgentApplicationType appType,
    required AgentAppConfigType configType,
    required String currentVersion,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAgentAppTemplate);
    final _path = r'/api/agent/app/template/{appType}/{configType}/version/{currentVersion}'.replaceAll('{' r'appType' '}', encodeQueryParameter(_serializers, appType, const FullType(AgentApplicationType)).toString()).replaceAll('{' r'configType' '}', encodeQueryParameter(_serializers, configType, const FullType(AgentAppConfigType)).toString()).replaceAll('{' r'currentVersion' '}', encodeQueryParameter(_serializers, currentVersion, const FullType(String)).toString());
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

    AgentAppTemplate? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AgentAppTemplate),
      ) as AgentAppTemplate;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AgentAppTemplate>(
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

  /// Get all Agent App Templates (getAgentAppTemplates)
  /// Returns a list of all agent app templates available for the current tenant.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<AgentAppTemplate>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<AgentAppTemplate>>> getAgentAppTemplates({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfAgentAppTemplate);
    final _path = r'/api/agent/app/templates';
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

    BuiltList<AgentAppTemplate>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(AgentAppTemplate)]),
      ) as BuiltList<AgentAppTemplate>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<AgentAppTemplate>>(
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

  /// Get Agent App Templates by type (getAgentAppTemplatesByAppType)
  /// Returns a list of agent app templates filtered by application type and config type.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [appType] - A string value representing the agent application type, e.g. 'EDGE', 'GATEWAY'
  /// * [configType] - A string value representing the agent configuration type, e.g. 'DOCKER_COMPOSE'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<AgentAppTemplate>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<AgentAppTemplate>>> getAgentAppTemplatesByAppType({ 
    required AgentApplicationType appType,
    required AgentAppConfigType configType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfAgentAppTemplate);
    final _path = r'/api/agent/app/templates/{appType}/{configType}'.replaceAll('{' r'appType' '}', encodeQueryParameter(_serializers, appType, const FullType(AgentApplicationType)).toString()).replaceAll('{' r'configType' '}', encodeQueryParameter(_serializers, configType, const FullType(AgentAppConfigType)).toString());
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

    BuiltList<AgentAppTemplate>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(AgentAppTemplate)]),
      ) as BuiltList<AgentAppTemplate>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<AgentAppTemplate>>(
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

  /// Get Agent App Template (getLatestAgentAppTemplateByType)
  /// Fetch the latest Agent App Template object for the given app type and config type.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [appType] - A string value representing the agent application type, e.g. 'EDGE', 'GATEWAY'
  /// * [configType] - A string value representing the agent configuration type, e.g. 'DOCKER_COMPOSE'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AgentAppTemplate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AgentAppTemplate>> getLatestAgentAppTemplateByAppTypeAndConfigType({ 
    required AgentApplicationType appType,
    required AgentAppConfigType configType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAgentAppTemplate);
    final _path = r'/api/agent/app/template/{appType}/{configType}/latest'.replaceAll('{' r'appType' '}', encodeQueryParameter(_serializers, appType, const FullType(AgentApplicationType)).toString()).replaceAll('{' r'configType' '}', encodeQueryParameter(_serializers, configType, const FullType(AgentAppConfigType)).toString());
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

    AgentAppTemplate? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AgentAppTemplate),
      ) as AgentAppTemplate;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AgentAppTemplate>(
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
