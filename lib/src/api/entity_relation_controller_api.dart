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
import 'package:thingsboard_client/src/model/entity_relation.dart';
import 'package:thingsboard_client/src/model/entity_relation_info.dart';
import 'package:thingsboard_client/src/model/entity_relations_query.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class EntityRelationControllerApi {
  final Dio _dio;

  final Serializers? _serializers;

  const EntityRelationControllerApi(this._dio, [this._serializers]);

  /// Delete Relation (deleteRelation)
  /// Deletes a relation between two entities in the platform.   If the user has the authority of &#39;System Administrator&#39;, the server checks that &#39;from&#39; and &#39;to&#39; entities are owned by the sysadmin. If the user has the authority of &#39;Tenant Administrator&#39;, the server checks that &#39;from&#39; and &#39;to&#39; entities are owned by the same tenant. If the user has the authority of &#39;Customer User&#39;, the server checks that the &#39;from&#39; and &#39;to&#39; entities are assigned to the same customer.
  ///
  /// Parameters:
  /// * [fromId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [fromType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [relationType] - A string value representing relation type between entities. For example, 'Contains', 'Manages'. It can be any string value.
  /// * [toId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [toType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [relationTypeGroup] - A string value representing relation type group. For example, 'COMMON'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EntityRelation] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EntityRelation>> deleteRelation({
    required String fromId,
    required String fromType,
    required String relationType,
    required String toId,
    required String toType,
    String? relationTypeGroup,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerEntityRelation);
    final _path = r'/api/v2/relation';
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

    final _queryParameters = <String, dynamic>{
      r'fromId': encodeQueryParameter(
        _serializers,
        fromId,
        const FullType(String),
      ),
      r'fromType': encodeQueryParameter(
        _serializers,
        fromType,
        const FullType(String),
      ),
      r'relationType': encodeQueryParameter(
        _serializers,
        relationType,
        const FullType(String),
      ),
      if (relationTypeGroup != null)
        r'relationTypeGroup': encodeQueryParameter(
          _serializers,
          relationTypeGroup,
          const FullType(String),
        ),
      r'toId': encodeQueryParameter(_serializers, toId, const FullType(String)),
      r'toType': encodeQueryParameter(
        _serializers,
        toType,
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

    EntityRelation? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(EntityRelation),
                )
                as EntityRelation;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EntityRelation>(
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

  /// Delete common relations (deleteRelations)
  /// Deletes all the relations (&#39;from&#39; and &#39;to&#39; direction) for the specified entity and relation type group: &#39;COMMON&#39;.   If the user has the authority of &#39;System Administrator&#39;, the server checks that the entity is owned by the sysadmin. If the user has the authority of &#39;Tenant Administrator&#39;, the server checks that the entity is owned by the same tenant. If the user has the authority of &#39;Customer User&#39;, the server checks that the entity is assigned to the same customer.
  ///
  /// Parameters:
  /// * [entityId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [entityType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deleteRelations({
    required String entityId,
    required String entityType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/relations';
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

    final _queryParameters = <String, dynamic>{
      r'entityId': encodeQueryParameter(
        _serializers,
        entityId,
        const FullType(String),
      ),
      r'entityType': encodeQueryParameter(
        _serializers,
        entityType,
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

    return _response;
  }

  /// Get List of Relation Infos (findEntityRelationInfosByFrom)
  /// Returns list of relation info objects for the specified entity by the &#39;from&#39; direction.   If the user has the authority of &#39;System Administrator&#39;, the server checks that the entity is owned by the sysadmin. If the user has the authority of &#39;Tenant Administrator&#39;, the server checks that the entity is owned by the same tenant. If the user has the authority of &#39;Customer User&#39;, the server checks that the entity is assigned to the same customer. Relation Info is an extension of the default Relation object that contains information about the &#39;from&#39; and &#39;to&#39; entity names.
  ///
  /// Parameters:
  /// * [fromType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [fromId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [relationTypeGroup] - A string value representing relation type group. For example, 'COMMON'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<EntityRelationInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<EntityRelationInfo>>>
  findEntityRelationInfosByFrom({
    required String fromType,
    required String fromId,
    String? relationTypeGroup,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerListOfEntityRelationInfo);
    final _path = r'/api/relations/info/from/{fromType}/{fromId}'
        .replaceAll(
          '{'
          r'fromType'
          '}',
          encodeQueryParameter(
            _serializers,
            fromType,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'fromId'
          '}',
          encodeQueryParameter(
            _serializers,
            fromId,
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
      if (relationTypeGroup != null)
        r'relationTypeGroup': encodeQueryParameter(
          _serializers,
          relationTypeGroup,
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

    BuiltList<EntityRelationInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(BuiltList, [
                    FullType(EntityRelationInfo),
                  ]),
                )
                as BuiltList<EntityRelationInfo>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<EntityRelationInfo>>(
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

  /// Find related entity infos (findEntityRelationInfosByQuery)
  /// Returns all entity infos that are related to the specific entity. The entity id, relation type, entity types, depth of the search, and other query parameters defined using complex &#39;EntityRelationsQuery&#39; object. See &#39;Model&#39; tab of the Parameters for more info. Relation Info is an extension of the default Relation object that contains information about the &#39;from&#39; and &#39;to&#39; entity names.
  ///
  /// Parameters:
  /// * [entityRelationsQuery]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<EntityRelationInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<EntityRelationInfo>>>
  findEntityRelationInfosByQuery({
    required EntityRelationsQuery entityRelationsQuery,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ??
        apiSerializers(registerListOfEntityRelationInfoAndEntityRelationsQuery);
    final _path = r'/api/relations/info';
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
      const _type = FullType(EntityRelationsQuery);
      _bodyData = _serializers.serialize(
        entityRelationsQuery,
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

    BuiltList<EntityRelationInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(BuiltList, [
                    FullType(EntityRelationInfo),
                  ]),
                )
                as BuiltList<EntityRelationInfo>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<EntityRelationInfo>>(
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

  /// Get List of Relation Infos (findEntityRelationInfosByTo)
  /// Returns list of relation info objects for the specified entity by the &#39;to&#39; direction.   If the user has the authority of &#39;System Administrator&#39;, the server checks that the entity is owned by the sysadmin. If the user has the authority of &#39;Tenant Administrator&#39;, the server checks that the entity is owned by the same tenant. If the user has the authority of &#39;Customer User&#39;, the server checks that the entity is assigned to the same customer. Relation Info is an extension of the default Relation object that contains information about the &#39;from&#39; and &#39;to&#39; entity names.
  ///
  /// Parameters:
  /// * [toType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [toId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [relationTypeGroup] - A string value representing relation type group. For example, 'COMMON'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<EntityRelationInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<EntityRelationInfo>>> findEntityRelationInfosByTo({
    required String toType,
    required String toId,
    String? relationTypeGroup,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerListOfEntityRelationInfo);
    final _path = r'/api/relations/info/to/{toType}/{toId}'
        .replaceAll(
          '{'
          r'toType'
          '}',
          encodeQueryParameter(
            _serializers,
            toType,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'toId'
          '}',
          encodeQueryParameter(
            _serializers,
            toId,
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
      if (relationTypeGroup != null)
        r'relationTypeGroup': encodeQueryParameter(
          _serializers,
          relationTypeGroup,
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

    BuiltList<EntityRelationInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(BuiltList, [
                    FullType(EntityRelationInfo),
                  ]),
                )
                as BuiltList<EntityRelationInfo>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<EntityRelationInfo>>(
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

  /// Get List of Relations (findEntityRelationsByFrom)
  /// Returns list of relation objects for the specified entity by the &#39;from&#39; direction.   If the user has the authority of &#39;System Administrator&#39;, the server checks that the entity is owned by the sysadmin. If the user has the authority of &#39;Tenant Administrator&#39;, the server checks that the entity is owned by the same tenant. If the user has the authority of &#39;Customer User&#39;, the server checks that the entity is assigned to the same customer.
  ///
  /// Parameters:
  /// * [fromType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [fromId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [relationTypeGroup] - A string value representing relation type group. For example, 'COMMON'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<EntityRelation>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<EntityRelation>>> findEntityRelationsByFrom({
    required String fromType,
    required String fromId,
    String? relationTypeGroup,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerListOfEntityRelation);
    final _path = r'/api/relations/from/{fromType}/{fromId}'
        .replaceAll(
          '{'
          r'fromType'
          '}',
          encodeQueryParameter(
            _serializers,
            fromType,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'fromId'
          '}',
          encodeQueryParameter(
            _serializers,
            fromId,
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
      if (relationTypeGroup != null)
        r'relationTypeGroup': encodeQueryParameter(
          _serializers,
          relationTypeGroup,
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

    BuiltList<EntityRelation>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(BuiltList, [
                    FullType(EntityRelation),
                  ]),
                )
                as BuiltList<EntityRelation>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<EntityRelation>>(
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

  /// Get List of Relations (findEntityRelationsByFromAndRelationType)
  /// Returns list of relation objects for the specified entity by the &#39;from&#39; direction and relation type.   If the user has the authority of &#39;System Administrator&#39;, the server checks that the entity is owned by the sysadmin. If the user has the authority of &#39;Tenant Administrator&#39;, the server checks that the entity is owned by the same tenant. If the user has the authority of &#39;Customer User&#39;, the server checks that the entity is assigned to the same customer.
  ///
  /// Parameters:
  /// * [fromType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [fromId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [relationType] - A string value representing relation type between entities. For example, 'Contains', 'Manages'. It can be any string value.
  /// * [relationTypeGroup] - A string value representing relation type group. For example, 'COMMON'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<EntityRelation>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<EntityRelation>>>
  findEntityRelationsByFromAndRelationType({
    required String fromType,
    required String fromId,
    required String relationType,
    String? relationTypeGroup,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerListOfEntityRelation);
    final _path = r'/api/relations/from/{fromType}/{fromId}/{relationType}'
        .replaceAll(
          '{'
          r'fromType'
          '}',
          encodeQueryParameter(
            _serializers,
            fromType,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'fromId'
          '}',
          encodeQueryParameter(
            _serializers,
            fromId,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'relationType'
          '}',
          encodeQueryParameter(
            _serializers,
            relationType,
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
      if (relationTypeGroup != null)
        r'relationTypeGroup': encodeQueryParameter(
          _serializers,
          relationTypeGroup,
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

    BuiltList<EntityRelation>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(BuiltList, [
                    FullType(EntityRelation),
                  ]),
                )
                as BuiltList<EntityRelation>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<EntityRelation>>(
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

  /// Find related entities (findEntityRelationsByQuery)
  /// Returns all entities that are related to the specific entity. The entity id, relation type, entity types, depth of the search, and other query parameters defined using complex &#39;EntityRelationsQuery&#39; object. See &#39;Model&#39; tab of the Parameters for more info.
  ///
  /// Parameters:
  /// * [entityRelationsQuery]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<EntityRelation>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<EntityRelation>>> findEntityRelationsByQuery({
    required EntityRelationsQuery entityRelationsQuery,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ??
        apiSerializers(registerListOfEntityRelationAndEntityRelationsQuery);
    final _path = r'/api/relations';
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
      const _type = FullType(EntityRelationsQuery);
      _bodyData = _serializers.serialize(
        entityRelationsQuery,
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

    BuiltList<EntityRelation>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(BuiltList, [
                    FullType(EntityRelation),
                  ]),
                )
                as BuiltList<EntityRelation>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<EntityRelation>>(
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

  /// Get List of Relations (findEntityRelationsByTo)
  /// Returns list of relation objects for the specified entity by the &#39;to&#39; direction.   If the user has the authority of &#39;System Administrator&#39;, the server checks that the entity is owned by the sysadmin. If the user has the authority of &#39;Tenant Administrator&#39;, the server checks that the entity is owned by the same tenant. If the user has the authority of &#39;Customer User&#39;, the server checks that the entity is assigned to the same customer.
  ///
  /// Parameters:
  /// * [toType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [toId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [relationTypeGroup] - A string value representing relation type group. For example, 'COMMON'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<EntityRelation>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<EntityRelation>>> findEntityRelationsByTo({
    required String toType,
    required String toId,
    String? relationTypeGroup,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerListOfEntityRelation);
    final _path = r'/api/relations/to/{toType}/{toId}'
        .replaceAll(
          '{'
          r'toType'
          '}',
          encodeQueryParameter(
            _serializers,
            toType,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'toId'
          '}',
          encodeQueryParameter(
            _serializers,
            toId,
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
      if (relationTypeGroup != null)
        r'relationTypeGroup': encodeQueryParameter(
          _serializers,
          relationTypeGroup,
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

    BuiltList<EntityRelation>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(BuiltList, [
                    FullType(EntityRelation),
                  ]),
                )
                as BuiltList<EntityRelation>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<EntityRelation>>(
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

  /// Get List of Relations (findEntityRelationsByToAndRelationType)
  /// Returns list of relation objects for the specified entity by the &#39;to&#39; direction and relation type.   If the user has the authority of &#39;System Administrator&#39;, the server checks that the entity is owned by the sysadmin. If the user has the authority of &#39;Tenant Administrator&#39;, the server checks that the entity is owned by the same tenant. If the user has the authority of &#39;Customer User&#39;, the server checks that the entity is assigned to the same customer.
  ///
  /// Parameters:
  /// * [toType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [toId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [relationType] - A string value representing relation type between entities. For example, 'Contains', 'Manages'. It can be any string value.
  /// * [relationTypeGroup] - A string value representing relation type group. For example, 'COMMON'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<EntityRelation>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<EntityRelation>>>
  findEntityRelationsByToAndRelationType({
    required String toType,
    required String toId,
    required String relationType,
    String? relationTypeGroup,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerListOfEntityRelation);
    final _path = r'/api/relations/to/{toType}/{toId}/{relationType}'
        .replaceAll(
          '{'
          r'toType'
          '}',
          encodeQueryParameter(
            _serializers,
            toType,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'toId'
          '}',
          encodeQueryParameter(
            _serializers,
            toId,
            const FullType(String),
          ).toString(),
        )
        .replaceAll(
          '{'
          r'relationType'
          '}',
          encodeQueryParameter(
            _serializers,
            relationType,
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
      if (relationTypeGroup != null)
        r'relationTypeGroup': encodeQueryParameter(
          _serializers,
          relationTypeGroup,
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

    BuiltList<EntityRelation>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(BuiltList, [
                    FullType(EntityRelation),
                  ]),
                )
                as BuiltList<EntityRelation>;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<EntityRelation>>(
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

  /// Get Relation (getRelation)
  /// Returns relation object between two specified entities if present. Otherwise throws exception.   If the user has the authority of &#39;System Administrator&#39;, the server checks that &#39;from&#39; and &#39;to&#39; entities are owned by the sysadmin. If the user has the authority of &#39;Tenant Administrator&#39;, the server checks that &#39;from&#39; and &#39;to&#39; entities are owned by the same tenant. If the user has the authority of &#39;Customer User&#39;, the server checks that the &#39;from&#39; and &#39;to&#39; entities are assigned to the same customer.
  ///
  /// Parameters:
  /// * [fromId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [fromType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [relationType] - A string value representing relation type between entities. For example, 'Contains', 'Manages'. It can be any string value.
  /// * [toId] - A string value representing the entity id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [toType] - A string value representing the entity type. For example, 'DEVICE'
  /// * [relationTypeGroup] - A string value representing relation type group. For example, 'COMMON'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EntityRelation] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EntityRelation>> getRelation({
    required String fromId,
    required String fromType,
    required String relationType,
    required String toId,
    required String toType,
    String? relationTypeGroup,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerEntityRelation);
    final _path = r'/api/relation';
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
      r'fromId': encodeQueryParameter(
        _serializers,
        fromId,
        const FullType(String),
      ),
      r'fromType': encodeQueryParameter(
        _serializers,
        fromType,
        const FullType(String),
      ),
      r'relationType': encodeQueryParameter(
        _serializers,
        relationType,
        const FullType(String),
      ),
      if (relationTypeGroup != null)
        r'relationTypeGroup': encodeQueryParameter(
          _serializers,
          relationTypeGroup,
          const FullType(String),
        ),
      r'toId': encodeQueryParameter(_serializers, toId, const FullType(String)),
      r'toType': encodeQueryParameter(
        _serializers,
        toType,
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

    EntityRelation? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(EntityRelation),
                )
                as EntityRelation;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EntityRelation>(
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

  /// Create Relation (saveRelation)
  /// Creates or updates a relation between two entities in the platform. Relations unique key is a combination of from/to entity id and relation type group and relation type.   If the user has the authority of &#39;System Administrator&#39;, the server checks that &#39;from&#39; and &#39;to&#39; entities are owned by the sysadmin. If the user has the authority of &#39;Tenant Administrator&#39;, the server checks that &#39;from&#39; and &#39;to&#39; entities are owned by the same tenant. If the user has the authority of &#39;Customer User&#39;, the server checks that the &#39;from&#39; and &#39;to&#39; entities are assigned to the same customer.
  ///
  /// Parameters:
  /// * [entityRelation]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EntityRelation] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EntityRelation>> saveRelation({
    required EntityRelation entityRelation,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerEntityRelation);
    final _path = r'/api/v2/relation';
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
      const _type = FullType(EntityRelation);
      _bodyData = _serializers.serialize(entityRelation, specifiedType: _type);
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

    EntityRelation? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(EntityRelation),
                )
                as EntityRelation;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EntityRelation>(
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
