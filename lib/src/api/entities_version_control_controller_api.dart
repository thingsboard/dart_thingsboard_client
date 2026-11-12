// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';
import 'dart:convert';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/api_util.dart';
import 'package:thingsboard_client/src/model/branch_info.dart';
import 'package:thingsboard_client/src/model/entity_data_diff.dart';
import 'package:thingsboard_client/src/model/entity_data_info.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:thingsboard_client/src/model/page_data_entity_version.dart';
import 'package:thingsboard_client/src/model/version_create_request.dart';
import 'package:thingsboard_client/src/model/version_creation_result.dart';
import 'package:thingsboard_client/src/model/version_load_request.dart';
import 'package:thingsboard_client/src/model/version_load_result.dart';
import 'package:thingsboard_client/src/model/versioned_entity_info.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class EntitiesVersionControlControllerApi {
  final Dio _dio;

  final Serializers? _serializers;

  const EntitiesVersionControlControllerApi(this._dio, [this._serializers]);

  /// Compare entity data to version (compareEntityDataToVersion)
  /// Returns an object with current entity data and the one at a specific version. Entity data structure is the same as stored in a repository.   Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [internalEntityUuid] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [versionId] - Version id, for example fd82625bdd7d6131cf8027b44ee967012ecaf990. Represents commit hash.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EntityDataDiff] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EntityDataDiff>> compareEntityDataToVersion({
    required EntityType entityType,
    required String internalEntityUuid,
    required String versionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerEntityDataDiff);
    final _path = r'/api/entities/vc/diff/{entityType}/{internalEntityUuid}'
        .replaceAll(
          '{'
          r'entityType'
          '}',
          encodeQueryParameter(
            _serializers,
            entityType,
            const FullType(EntityType),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'internalEntityUuid'
          '}',
          encodeQueryParameter(
            _serializers,
            internalEntityUuid,
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
      r'versionId': encodeQueryParameter(
        _serializers,
        versionId,
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

    EntityDataDiff? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(EntityDataDiff),
                )
                as EntityDataDiff;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EntityDataDiff>(
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

  /// Get entity data info (getEntityDataInfo)
  /// Retrieves short info about the remote entity by external id at a concrete version.  Returned entity data info contains following properties: &#x60;hasRelations&#x60; (whether stored entity data contains relations), &#x60;hasAttributes&#x60; (contains attributes), &#x60;hasCredentials&#x60; (whether stored device data has credentials), &#x60;hasPermissions&#x60; (user group data contains group permission list) and &#x60;hasGroupEntities&#x60; (entity group data contains group entities).  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [versionId] - Version id, for example fd82625bdd7d6131cf8027b44ee967012ecaf990. Represents commit hash.
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [externalEntityUuid] - A string value representing external entity id
  /// * [internalEntityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EntityDataInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EntityDataInfo>> getEntityDataInfo({
    required String versionId,
    required EntityType entityType,
    required String externalEntityUuid,
    String? internalEntityId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ??
        apiSerializers(registerEntityDataInfoAndEntityType);
    final _path =
        r'/api/entities/vc/info/{versionId}/{entityType}/{externalEntityUuid}'
            .replaceAll(
              '{'
              r'versionId'
              '}',
              encodeQueryParameter(
                _serializers,
                versionId,
                const FullType(String),
              ).toString(),
            )
            .replaceAll(
              '{'
              r'entityType'
              '}',
              encodeQueryParameter(
                _serializers,
                entityType,
                const FullType(EntityType),
              ).toString(),
            )
            .replaceAll(
              '{'
              r'externalEntityUuid'
              '}',
              encodeQueryParameter(
                _serializers,
                externalEntityUuid,
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
      if (internalEntityId != null)
        r'internalEntityId': encodeQueryParameter(
          _serializers,
          internalEntityId,
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

    EntityDataInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(EntityDataInfo),
                )
                as EntityDataInfo;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EntityDataInfo>(
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

  /// Get version create request status (getVersionCreateRequestStatus)
  /// Returns the status of previously made version create request.   This status contains following properties: - &#x60;done&#x60; - whether request processing is finished; - &#x60;version&#x60; - created version info: timestamp, version id (commit hash), commit name and commit author; - &#x60;added&#x60; - count of items that were created in the remote repo; - &#x60;modified&#x60; - modified items count; - &#x60;removed&#x60; - removed items count; - &#x60;error&#x60; - error message, if an error occurred while handling the request.  An example of successful status: &#x60;&#x60;&#x60;json {   \&quot;done\&quot;: true,   \&quot;added\&quot;: 10,   \&quot;modified\&quot;: 2,   \&quot;removed\&quot;: 5,   \&quot;version\&quot;: {     \&quot;timestamp\&quot;: 1655198528000,     \&quot;id\&quot;:\&quot;8a834dd389ed80e0759ba8ee338b3f1fd160a114\&quot;,     \&quot;name\&quot;: \&quot;My devices v2.0\&quot;,     \&quot;author\&quot;: \&quot;John Doe\&quot;   },   \&quot;error\&quot;: null } &#x60;&#x60;&#x60;  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [requestId] - A string value representing the version control request id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [VersionCreationResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<VersionCreationResult>> getVersionCreateRequestStatus({
    required String requestId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerVersionCreationResult);
    final _path = r'/api/entities/vc/version/{requestId}/status'.replaceAll(
      '{'
      r'requestId'
      '}',
      encodeQueryParameter(
        _serializers,
        requestId,
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

    VersionCreationResult? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(VersionCreationResult),
                )
                as VersionCreationResult;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<VersionCreationResult>(
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

  /// Get version load request status (getVersionLoadRequestStatus)
  /// Returns the status of previously made version load request. The structure contains following parameters: - &#x60;done&#x60; - if the request was successfully processed; - &#x60;result&#x60; - a list of load results for each entity type:      - &#x60;created&#x60; - created entities count;      - &#x60;updated&#x60; - updated entities count;      - &#x60;deleted&#x60; - removed entities count;      - &#x60;groupsCreated&#x60; - created entity groups count;      - &#x60;groupsUpdated&#x60; - updated entity groups count;      - &#x60;groupsDeleted&#x60; - removed entity groups count. - &#x60;error&#x60; - if an error occurred during processing, error info:      - &#x60;type&#x60; - error type;      - &#x60;source&#x60; - an external id of remote entity;      - &#x60;target&#x60; - if failed to find referenced entity by external id - this external id;      - &#x60;message&#x60; - error message.  An example of successfully processed request status: &#x60;&#x60;&#x60;json {   \&quot;done\&quot;: true,   \&quot;result\&quot;: [     {       \&quot;entityType\&quot;: \&quot;DEVICE\&quot;,       \&quot;created\&quot;: 10,       \&quot;updated\&quot;: 5,       \&quot;deleted\&quot;: 5,       \&quot;groupsCreated\&quot;: 1,       \&quot;groupsUpdated\&quot;: 1,       \&quot;groupsDeleted\&quot;: 1     },      {       \&quot;entityType\&quot;: \&quot;ASSET\&quot;,       \&quot;created\&quot;: 4,       \&quot;updated\&quot;: 0,       \&quot;deleted\&quot;: 8,       \&quot;groupsCreated\&quot;: 1,       \&quot;groupsUpdated\&quot;: 0,       \&quot;groupsDeleted\&quot;: 2     }   ] } &#x60;&#x60;&#x60;  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [requestId] - A string value representing the version control request id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [VersionLoadResult] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<VersionLoadResult>> getVersionLoadRequestStatus({
    required String requestId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerVersionLoadResult);
    final _path = r'/api/entities/vc/entity/{requestId}/status'.replaceAll(
      '{'
      r'requestId'
      '}',
      encodeQueryParameter(
        _serializers,
        requestId,
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

    VersionLoadResult? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(VersionLoadResult),
                )
                as VersionLoadResult;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<VersionLoadResult>(
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

  /// List all entities at version (listAllEntitiesAtVersion)
  /// Returns a list of all remote entities available in a specific version. Response type is the same as for listAllEntitiesAtVersion API method.  Returned entities order will be the same as in the repository.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [versionId] - Version id, for example fd82625bdd7d6131cf8027b44ee967012ecaf990. Represents commit hash.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<VersionedEntityInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<VersionedEntityInfo>>> listAllEntitiesAtVersion({
    required String versionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerListOfVersionedEntityInfo);
    final _path = r'/api/entities/vc/entity/{versionId}'.replaceAll(
      '{'
      r'versionId'
      '}',
      encodeQueryParameter(
        _serializers,
        versionId,
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

    BuiltList<VersionedEntityInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(BuiltList, [
                    FullType(VersionedEntityInfo),
                  ]),
                )
                as BuiltList<VersionedEntityInfo>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<VersionedEntityInfo>>(
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

  /// List branches (listBranches)
  /// Lists branches available in the remote repository.   Response example:  &#x60;&#x60;&#x60;json [   {     \&quot;name\&quot;: \&quot;master\&quot;,     \&quot;default\&quot;: true   },   {     \&quot;name\&quot;: \&quot;dev\&quot;,     \&quot;default\&quot;: false   },   {     \&quot;name\&quot;: \&quot;dev-2\&quot;,     \&quot;default\&quot;: false   } ] &#x60;&#x60;&#x60;
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<BranchInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<BranchInfo>>> listBranches({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerListOfBranchInfo);
    final _path = r'/api/entities/vc/branches';
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

    BuiltList<BranchInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(BuiltList, [
                    FullType(BranchInfo),
                  ]),
                )
                as BuiltList<BranchInfo>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<BranchInfo>>(
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

  /// List entities at version (listEntitiesAtVersion)
  /// Returns a list of remote entities of a specific entity type that are available at a concrete version.  Each entity item in the result has &#x60;externalId&#x60; property. Entities order will be the same as in the repository.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [versionId] - Version id, for example fd82625bdd7d6131cf8027b44ee967012ecaf990. Represents commit hash.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<VersionedEntityInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<VersionedEntityInfo>>> listEntitiesAtVersion({
    required EntityType entityType,
    required String versionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerListOfVersionedEntityInfo);
    final _path = r'/api/entities/vc/entity/{entityType}/{versionId}'
        .replaceAll(
          '{'
          r'entityType'
          '}',
          encodeQueryParameter(
            _serializers,
            entityType,
            const FullType(EntityType),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'versionId'
          '}',
          encodeQueryParameter(
            _serializers,
            versionId,
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

    BuiltList<VersionedEntityInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(BuiltList, [
                    FullType(VersionedEntityInfo),
                  ]),
                )
                as BuiltList<VersionedEntityInfo>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<VersionedEntityInfo>>(
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

  /// List entity type versions (listEntityTypeVersions)
  /// Returns list of versions of an entity type in a branch. This is a collected list of versions that were created for entities of this type in a remote branch.  If specified branch does not exist - empty page data will be returned. The response structure is the same as for &#x60;listEntityVersions&#x60; API method.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [branch] - The name of the working branch, for example 'master'
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [textSearch] - The case insensitive 'substring' filter based on the entity version name.
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataEntityVersion] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataEntityVersion>> listEntityTypeVersions({
    required EntityType entityType,
    required String branch,
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
    final _serializers =
        this._serializers ??
        apiSerializers(registerEntityTypeAndPageDataEntityVersion);
    final _path = r'/api/entities/vc/version/{entityType}'.replaceAll(
      '{'
      r'entityType'
      '}',
      encodeQueryParameter(
        _serializers,
        entityType,
        const FullType(EntityType),
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
      r'branch': encodeQueryParameter(
        _serializers,
        branch,
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PageDataEntityVersion? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(PageDataEntityVersion),
                )
                as PageDataEntityVersion;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataEntityVersion>(
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

  /// List entity versions (listEntityVersions)
  /// Returns list of versions for a specific entity in a concrete branch.  You need to specify external id of an entity to list versions for. This is &#x60;externalId&#x60; property of an entity, or otherwise if not set - simply id of this entity.  If specified branch does not exist - empty page data will be returned.   Each version info item has timestamp, id, name and author. Version id can then be used to restore the version. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Response example:  &#x60;&#x60;&#x60;json {   \&quot;data\&quot;: [     {       \&quot;timestamp\&quot;: 1655198593000,       \&quot;id\&quot;: \&quot;fd82625bdd7d6131cf8027b44ee967012ecaf990\&quot;,       \&quot;name\&quot;: \&quot;Devices and assets - v2.0\&quot;,       \&quot;author\&quot;: \&quot;John Doe (johndoe@gmail.com)\&quot;     },     {       \&quot;timestamp\&quot;: 1655198528000,       \&quot;id\&quot;: \&quot;682adcffa9c8a2f863af6f00c4850323acbd4219\&quot;,       \&quot;name\&quot;: \&quot;Update my device\&quot;,       \&quot;author\&quot;: \&quot;John Doe (johndoe@gmail.com)\&quot;     },     {       \&quot;timestamp\&quot;: 1655198280000,       \&quot;id\&quot;: \&quot;d2a6087c2b30e18cc55e7cdda345a8d0dfb959a4\&quot;,       \&quot;name\&quot;: \&quot;Devices and assets - v1.0\&quot;,       \&quot;author\&quot;: \&quot;John Doe (johndoe@gmail.com)\&quot;     }   ],   \&quot;totalPages\&quot;: 1,   \&quot;totalElements\&quot;: 3,   \&quot;hasNext\&quot;: false } &#x60;&#x60;&#x60;  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [externalEntityUuid] - A string value representing external entity id. This is `externalId` property of an entity, or otherwise if not set - simply id of this entity.
  /// * [branch] - The name of the working branch, for example 'master'
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [internalEntityId]
  /// * [textSearch] - The case insensitive 'substring' filter based on the entity version name.
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataEntityVersion] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataEntityVersion>> listEntityVersions({
    required EntityType entityType,
    required String externalEntityUuid,
    required String branch,
    required int pageSize,
    required int page,
    String? internalEntityId,
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
    final _serializers =
        this._serializers ??
        apiSerializers(registerEntityTypeAndPageDataEntityVersion);
    final _path = r'/api/entities/vc/version/{entityType}/{externalEntityUuid}'
        .replaceAll(
          '{'
          r'entityType'
          '}',
          encodeQueryParameter(
            _serializers,
            entityType,
            const FullType(EntityType),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'externalEntityUuid'
          '}',
          encodeQueryParameter(
            _serializers,
            externalEntityUuid,
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
      r'branch': encodeQueryParameter(
        _serializers,
        branch,
        const FullType(String),
      ),
      if (internalEntityId != null)
        r'internalEntityId': encodeQueryParameter(
          _serializers,
          internalEntityId,
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PageDataEntityVersion? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(PageDataEntityVersion),
                )
                as PageDataEntityVersion;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataEntityVersion>(
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

  /// List all versions (listVersions)
  /// Lists all available versions in a branch for all entity types.  If specified branch does not exist - empty page data will be returned. The response format is the same as for &#x60;listEntityVersions&#x60; API method.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [branch] - The name of the working branch, for example 'master'
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [textSearch] - The case insensitive 'substring' filter based on the entity version name.
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataEntityVersion] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataEntityVersion>> listVersions({
    required String branch,
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
    final _serializers =
        this._serializers ?? apiSerializers(registerPageDataEntityVersion);
    final _path = r'/api/entities/vc/version';
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
      r'branch': encodeQueryParameter(
        _serializers,
        branch,
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PageDataEntityVersion? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(PageDataEntityVersion),
                )
                as PageDataEntityVersion;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataEntityVersion>(
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

  /// Load entities version (loadEntitiesVersion)
  /// Loads specific version of remote entities (or single entity) by request. Supported entity types: CUSTOMER, ASSET, RULE_CHAIN, DASHBOARD, DEVICE_PROFILE, DEVICE, ENTITY_VIEW, WIDGETS_BUNDLE, CONVERTER, INTEGRATION, ROLE and USER group.  There are multiple types of request. Each of them requires branch name (&#x60;branch&#x60;) and version id (&#x60;versionId&#x60;). Request of type &#x60;SINGLE_ENTITY&#x60; is needed to restore a concrete version of a specific entity. It contains id of a remote entity (&#x60;externalEntityId&#x60;), internal entity id (&#x60;internalEntityId&#x60;) and additional configuration (&#x60;config&#x60;): - &#x60;loadRelations&#x60; - to update relations list (in case &#x60;saveRelations&#x60; option was enabled during version creation); - &#x60;loadAttributes&#x60; - to load entity attributes (if &#x60;saveAttributes&#x60; config option was enabled); - &#x60;loadCredentials&#x60; - to update device credentials (if &#x60;saveCredentials&#x60; option was enabled during version creation); - &#x60;loadPermissions&#x60; - when loading user group, to update group permission list; - &#x60;loadGroupEntities&#x60; - when loading an entity group, to load its entities as well; - &#x60;autoGenerateIntegrationKey&#x60; - if loading integration version, to autogenerate routing key.  An example of such request: &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;SINGLE_ENTITY\&quot;,      \&quot;branch\&quot;: \&quot;dev\&quot;,   \&quot;versionId\&quot;: \&quot;b3c28d722d328324c7c15b0b30047b0c40011cf7\&quot;,      \&quot;externalEntityId\&quot;: {     \&quot;entityType\&quot;: \&quot;DEVICE\&quot;,     \&quot;id\&quot;: \&quot;b7944123-d4f4-11ec-847b-0f432358ab48\&quot;   },   \&quot;config\&quot;: {     \&quot;loadRelations\&quot;: false,     \&quot;loadAttributes\&quot;: true,     \&quot;loadCredentials\&quot;: true   } } &#x60;&#x60;&#x60;  Another request type (&#x60;ENTITY_TYPE&#x60;) is needed to load specific version of the whole entity types. It contains a structure with entity types to load and configs for each entity type (&#x60;entityTypes&#x60;). For each specified entity type, the method will load all remote entities of this type that are present at the version. A config for each entity type contains the same options as in &#x60;SINGLE_ENTITY&#x60; request type, and additionally contains following options: - &#x60;removeOtherEntities&#x60; - to remove local entities that are not present on the remote - basically to    overwrite local entity type with the remote one; - &#x60;findExistingEntityByName&#x60; - when you are loading some remote entities that are not yet present at this tenant,    try to find existing entity by name and update it rather than create new.  Here is an example of the request to completely restore version of the whole device entity type: &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;ENTITY_TYPE\&quot;,    \&quot;branch\&quot;: \&quot;dev\&quot;,   \&quot;versionId\&quot;: \&quot;b3c28d722d328324c7c15b0b30047b0c40011cf7\&quot;,    \&quot;entityTypes\&quot;: {     \&quot;DEVICE\&quot;: {       \&quot;removeOtherEntities\&quot;: true,       \&quot;findExistingEntityByName\&quot;: false,       \&quot;loadRelations\&quot;: true,       \&quot;loadAttributes\&quot;: true,       \&quot;loadCredentials\&quot;: true     }   } } &#x60;&#x60;&#x60;  The response will contain generated request UUID that is to be used to check the status of operation via &#x60;getVersionLoadRequestStatus&#x60;.  Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [versionLoadRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> loadEntitiesVersion({
    required VersionLoadRequest versionLoadRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerVersionLoadRequest);
    final _path = r'/api/entities/vc/entity';
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
      const _type = FullType(VersionLoadRequest);
      _bodyData = _serializers.serialize(
        versionLoadRequest,
        specifiedType: _type,
      );
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
      _responseData = rawResponse == null
          ? null
          : rawResponse is String
          ? rawResponse
          : jsonEncode(rawResponse);
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

  /// Save entities version (saveEntitiesVersion)
  /// Creates a new version of entities (or a single entity) by request. Supported entity types: CUSTOMER, ASSET, RULE_CHAIN, DASHBOARD, DEVICE_PROFILE, DEVICE, ENTITY_VIEW, WIDGETS_BUNDLE, CONVERTER, INTEGRATION, ROLE and USER group.  There are two available types of request: &#x60;SINGLE_ENTITY&#x60; and &#x60;COMPLEX&#x60;. Each of them contains version name (&#x60;versionName&#x60;) and name of a branch (&#x60;branch&#x60;) to create version (commit) in. If specified branch does not exists in a remote repo, then new empty branch will be created. Request of the &#x60;SINGLE_ENTITY&#x60; type has id of an entity (&#x60;entityId&#x60;) and additional configuration (&#x60;config&#x60;) which has following options:  - &#x60;saveRelations&#x60; - whether to add inbound and outbound relations of type COMMON to created entity version; - &#x60;saveAttributes&#x60; - to save attributes of server scope (and also shared scope for devices); - &#x60;saveCredentials&#x60; - when saving a version of a device, to add its credentials to the version; - &#x60;savePermissions&#x60; - when saving a user group - to save group permission list; - &#x60;saveGroupEntities&#x60; - when saving an entity group - to save its entities as well.  An example of a &#x60;SINGLE_ENTITY&#x60; version create request: &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;SINGLE_ENTITY\&quot;,    \&quot;versionName\&quot;: \&quot;Version 1.0\&quot;,   \&quot;branch\&quot;: \&quot;dev\&quot;,    \&quot;entityId\&quot;: {     \&quot;entityType\&quot;: \&quot;DEVICE\&quot;,     \&quot;id\&quot;: \&quot;b79448e0-d4f4-11ec-847b-0f432358ab48\&quot;   },   \&quot;config\&quot;: {     \&quot;saveRelations\&quot;: true,     \&quot;saveAttributes\&quot;: true,     \&quot;saveCredentials\&quot;: false   } } &#x60;&#x60;&#x60;  Second request type (&#x60;COMPLEX&#x60;), additionally to &#x60;branch&#x60; and &#x60;versionName&#x60;, contains following properties: - &#x60;entityTypes&#x60; - a structure with entity types to export and configuration for each entity type;    this configuration has all the options available for &#x60;SINGLE_ENTITY&#x60; and additionally has these ones:       - &#x60;allEntities&#x60; and &#x60;entityIds&#x60; - if you want to save the version of all entities of the entity type         then set &#x60;allEntities&#x60; param to true, otherwise set it to false and specify &#x60;entityIds&#x60; -         in case entity type is group entity, list of specific entity groups, or if not - list of entities;      - &#x60;syncStrategy&#x60; - synchronization strategy to use for this entity type: when set to &#x60;OVERWRITE&#x60;         then the list of remote entities of this type will be overwritten by newly added entities. If set to         &#x60;MERGE&#x60; - existing remote entities of this entity type will not be removed, new entities will just         be added on top (or existing remote entities will be updated). - &#x60;syncStrategy&#x60; - default synchronization strategy to use when it is not specified for an entity type.  Example for this type of request: &#x60;&#x60;&#x60;json {   \&quot;type\&quot;: \&quot;COMPLEX\&quot;,    \&quot;versionName\&quot;: \&quot;Devices and profiles: release 2\&quot;,   \&quot;branch\&quot;: \&quot;master\&quot;,    \&quot;syncStrategy\&quot;: \&quot;OVERWRITE\&quot;,   \&quot;entityTypes\&quot;: {     \&quot;DEVICE\&quot;: {       \&quot;syncStrategy\&quot;: null,       \&quot;allEntities\&quot;: true,       \&quot;saveRelations\&quot;: true,       \&quot;saveAttributes\&quot;: true,       \&quot;saveCredentials\&quot;: true     },     \&quot;DEVICE_PROFILE\&quot;: {       \&quot;syncStrategy\&quot;: \&quot;MERGE\&quot;,       \&quot;allEntities\&quot;: false,       \&quot;entityIds\&quot;: [         \&quot;b79448e0-d4f4-11ec-847b-0f432358ab48\&quot;       ],       \&quot;saveRelations\&quot;: true     }   } } &#x60;&#x60;&#x60;  Response wil contain generated request UUID, that can be then used to retrieve status of operation via &#x60;getVersionCreateRequestStatus&#x60;.   Available for users with &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [versionCreateRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> saveEntitiesVersion({
    required VersionCreateRequest versionCreateRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerVersionCreateRequest);
    final _path = r'/api/entities/vc/version';
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
      const _type = FullType(VersionCreateRequest);
      _bodyData = _serializers.serialize(
        versionCreateRequest,
        specifiedType: _type,
      );
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
      _responseData = rawResponse == null
          ? null
          : rawResponse is String
          ? rawResponse
          : jsonEncode(rawResponse);
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
