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
import 'package:thingsboard_client/src/model/group_permission.dart';
import 'package:thingsboard_client/src/model/group_permission_info.dart';
import 'package:thingsboard_client/src/model/thingsboard_error_response.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class GroupPermissionControllerApi {

  final Dio _dio;

  final Serializers? _serializers;

  const GroupPermissionControllerApi(this._dio, [this._serializers]);

  /// Delete group permission (deleteGroupPermission)
  /// Deletes the group permission. Referencing non-existing group permission Id will cause an error.   Security check is performed to verify that the user has &#39;DELETE&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [groupPermissionId] - A string value representing the group permission id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deleteGroupPermission({ 
    required String groupPermissionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/groupPermission/{groupPermissionId}'.replaceAll('{' r'groupPermissionId' '}', encodeQueryParameter(_serializers, groupPermissionId, const FullType(String)).toString());
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

    return _response;
  }

  /// Get group permissions by Entity Group Id (getEntityGroupPermissions)
  /// Returns a list of group permission objects that is assigned for the specified Entity Group Id. Group permission entity represents list of allowed operations for certain User Group to perform against certain Entity Group. Basically, this entity wires three other entities:    * Role that defines set of allowed operations;  * User Group that defines set of users who may perform the operations;   * Entity Group that defines set of entities which will be accessible to users;  There are two types of group permissions depending on the Role type:    * **Generic permission** — uses a GENERIC role. The &#39;entityGroupId&#39; field must be null (or omitted). Grants the role&#39;s operations to all entities within the owner&#39;s scope (all tenant entities for tenant admins, only customer-owned entities for customer users).  * **Group permission** — uses a GROUP role. The &#39;entityGroupId&#39; field must reference a valid entity group. Grants the role&#39;s operations only to entities in the specified group.  Assigning a GENERIC role with a non-null &#39;entityGroupId&#39; will cause an error. The &#39;entityGroupType&#39; field is auto-populated from the referenced entity group and should not be set manually. Duplicate permissions (same userGroupId + roleId + entityGroupId combination) are rejected.   Group Permission Info object extends the Group Permissions with the full information about Role and User and/or Entity Groups.    Security check is performed to verify that the user has &#39;READ&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [entityGroupId] - A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<GroupPermissionInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<GroupPermissionInfo>>> getEntityGroupPermissions({ 
    required String entityGroupId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfGroupPermissionInfo);
    final _path = r'/api/entityGroup/{entityGroupId}/groupPermissions'.replaceAll('{' r'entityGroupId' '}', encodeQueryParameter(_serializers, entityGroupId, const FullType(String)).toString());
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

    BuiltList<GroupPermissionInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(GroupPermissionInfo)]),
      ) as BuiltList<GroupPermissionInfo>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<GroupPermissionInfo>>(
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

  /// Get Group Permission (getGroupPermissionById)
  /// Fetch the Group Permission object based on the provided Group Permission Id. Group permission entity represents list of allowed operations for certain User Group to perform against certain Entity Group. Basically, this entity wires three other entities:    * Role that defines set of allowed operations;  * User Group that defines set of users who may perform the operations;   * Entity Group that defines set of entities which will be accessible to users;  There are two types of group permissions depending on the Role type:    * **Generic permission** — uses a GENERIC role. The &#39;entityGroupId&#39; field must be null (or omitted). Grants the role&#39;s operations to all entities within the owner&#39;s scope (all tenant entities for tenant admins, only customer-owned entities for customer users).  * **Group permission** — uses a GROUP role. The &#39;entityGroupId&#39; field must reference a valid entity group. Grants the role&#39;s operations only to entities in the specified group.  Assigning a GENERIC role with a non-null &#39;entityGroupId&#39; will cause an error. The &#39;entityGroupType&#39; field is auto-populated from the referenced entity group and should not be set manually. Duplicate permissions (same userGroupId + roleId + entityGroupId combination) are rejected.   Security check is performed to verify that the user has &#39;READ&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [groupPermissionId] - A string value representing the group permission id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GroupPermission] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GroupPermission>> getGroupPermissionById({ 
    required String groupPermissionId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerGroupPermission);
    final _path = r'/api/groupPermission/{groupPermissionId}'.replaceAll('{' r'groupPermissionId' '}', encodeQueryParameter(_serializers, groupPermissionId, const FullType(String)).toString());
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

    GroupPermission? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(GroupPermission),
      ) as GroupPermission;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GroupPermission>(
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

  /// Get Group Permission Info (getGroupPermissionInfoById)
  /// Fetch the Group Permission Info object based on the provided Group Permission Id and the flag that controls what additional information to load: User or Entity Group. Group permission entity represents list of allowed operations for certain User Group to perform against certain Entity Group. Basically, this entity wires three other entities:    * Role that defines set of allowed operations;  * User Group that defines set of users who may perform the operations;   * Entity Group that defines set of entities which will be accessible to users;  There are two types of group permissions depending on the Role type:    * **Generic permission** — uses a GENERIC role. The &#39;entityGroupId&#39; field must be null (or omitted). Grants the role&#39;s operations to all entities within the owner&#39;s scope (all tenant entities for tenant admins, only customer-owned entities for customer users).  * **Group permission** — uses a GROUP role. The &#39;entityGroupId&#39; field must reference a valid entity group. Grants the role&#39;s operations only to entities in the specified group.  Assigning a GENERIC role with a non-null &#39;entityGroupId&#39; will cause an error. The &#39;entityGroupType&#39; field is auto-populated from the referenced entity group and should not be set manually. Duplicate permissions (same userGroupId + roleId + entityGroupId combination) are rejected.   Group Permission Info object extends the Group Permissions with the full information about Role and User and/or Entity Groups.  Security check is performed to verify that the user has &#39;READ&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [groupPermissionId] - A string value representing the group permission id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [isUserGroup] - Load additional information about User('true') or Entity Group('false).
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GroupPermissionInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GroupPermissionInfo>> getGroupPermissionInfoById({ 
    required String groupPermissionId,
    required bool isUserGroup,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerGroupPermissionInfo);
    final _path = r'/api/groupPermission/info/{groupPermissionId}'.replaceAll('{' r'groupPermissionId' '}', encodeQueryParameter(_serializers, groupPermissionId, const FullType(String)).toString());
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
      r'isUserGroup': encodeQueryParameter(_serializers, isUserGroup, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GroupPermissionInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(GroupPermissionInfo),
      ) as GroupPermissionInfo;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GroupPermissionInfo>(
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

  /// Get group permissions by User Group Id (getUserGroupPermissions)
  /// Returns a list of group permission objects that belongs to specified User Group Id. Group permission entity represents list of allowed operations for certain User Group to perform against certain Entity Group. Basically, this entity wires three other entities:    * Role that defines set of allowed operations;  * User Group that defines set of users who may perform the operations;   * Entity Group that defines set of entities which will be accessible to users;  There are two types of group permissions depending on the Role type:    * **Generic permission** — uses a GENERIC role. The &#39;entityGroupId&#39; field must be null (or omitted). Grants the role&#39;s operations to all entities within the owner&#39;s scope (all tenant entities for tenant admins, only customer-owned entities for customer users).  * **Group permission** — uses a GROUP role. The &#39;entityGroupId&#39; field must reference a valid entity group. Grants the role&#39;s operations only to entities in the specified group.  Assigning a GENERIC role with a non-null &#39;entityGroupId&#39; will cause an error. The &#39;entityGroupType&#39; field is auto-populated from the referenced entity group and should not be set manually. Duplicate permissions (same userGroupId + roleId + entityGroupId combination) are rejected.   Group Permission Info object extends the Group Permissions with the full information about Role and User and/or Entity Groups.    Security check is performed to verify that the user has &#39;READ&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [userGroupId] - A string value representing the Entity Group Id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<GroupPermissionInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<GroupPermissionInfo>>> getUserGroupPermissions({ 
    required String userGroupId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfGroupPermissionInfo);
    final _path = r'/api/userGroup/{userGroupId}/groupPermissions'.replaceAll('{' r'userGroupId' '}', encodeQueryParameter(_serializers, userGroupId, const FullType(String)).toString());
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

    BuiltList<GroupPermissionInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(GroupPermissionInfo)]),
      ) as BuiltList<GroupPermissionInfo>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<GroupPermissionInfo>>(
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

  /// Load User Group Permissions (loadUserGroupPermissionInfos)
  /// Enrich a list of group permission objects with the information about Role, User and Entity Groups. Group permission entity represents list of allowed operations for certain User Group to perform against certain Entity Group. Basically, this entity wires three other entities:    * Role that defines set of allowed operations;  * User Group that defines set of users who may perform the operations;   * Entity Group that defines set of entities which will be accessible to users;  There are two types of group permissions depending on the Role type:    * **Generic permission** — uses a GENERIC role. The &#39;entityGroupId&#39; field must be null (or omitted). Grants the role&#39;s operations to all entities within the owner&#39;s scope (all tenant entities for tenant admins, only customer-owned entities for customer users).  * **Group permission** — uses a GROUP role. The &#39;entityGroupId&#39; field must reference a valid entity group. Grants the role&#39;s operations only to entities in the specified group.  Assigning a GENERIC role with a non-null &#39;entityGroupId&#39; will cause an error. The &#39;entityGroupType&#39; field is auto-populated from the referenced entity group and should not be set manually. Duplicate permissions (same userGroupId + roleId + entityGroupId combination) are rejected.   Group Permission Info object extends the Group Permissions with the full information about Role and User and/or Entity Groups.    Security check is performed to verify that the user has &#39;READ&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [groupPermission] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<GroupPermissionInfo>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<GroupPermissionInfo>>> loadUserGroupPermissionInfos({ 
    required BuiltList<GroupPermission> groupPermission,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfGroupPermissionAndListOfGroupPermissionInfo);
    final _path = r'/api/userGroup/groupPermissions/info';
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
      const _type = FullType(BuiltList, [FullType(GroupPermission)]);
      _bodyData = _serializers.serialize(groupPermission, specifiedType: _type);

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

    BuiltList<GroupPermissionInfo>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(GroupPermissionInfo)]),
      ) as BuiltList<GroupPermissionInfo>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<GroupPermissionInfo>>(
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

  /// Create Or Update Group Permission (saveGroupPermission)
  /// Creates or Updates the Group Permission. When creating group permission, platform generates Group Permission Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Group Permission id will be present in the response. Specify existing Group Permission id to update the permission. Referencing non-existing Group Permission Id will cause &#39;Not Found&#39; error.  Group permission entity represents list of allowed operations for certain User Group to perform against certain Entity Group. Basically, this entity wires three other entities:    * Role that defines set of allowed operations;  * User Group that defines set of users who may perform the operations;   * Entity Group that defines set of entities which will be accessible to users;  There are two types of group permissions depending on the Role type:    * **Generic permission** — uses a GENERIC role. The &#39;entityGroupId&#39; field must be null (or omitted). Grants the role&#39;s operations to all entities within the owner&#39;s scope (all tenant entities for tenant admins, only customer-owned entities for customer users).  * **Group permission** — uses a GROUP role. The &#39;entityGroupId&#39; field must reference a valid entity group. Grants the role&#39;s operations only to entities in the specified group.  Assigning a GENERIC role with a non-null &#39;entityGroupId&#39; will cause an error. The &#39;entityGroupType&#39; field is auto-populated from the referenced entity group and should not be set manually. Duplicate permissions (same userGroupId + roleId + entityGroupId combination) are rejected.   Security check is performed to verify that the user has &#39;WRITE&#39; permission for the entity (entities).
  ///
  /// Parameters:
  /// * [groupPermission] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GroupPermission] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GroupPermission>> saveGroupPermission({ 
    required GroupPermission groupPermission,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerGroupPermission);
    final _path = r'/api/groupPermission';
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
      const _type = FullType(GroupPermission);
      _bodyData = _serializers.serialize(groupPermission, specifiedType: _type);

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

    GroupPermission? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(GroupPermission),
      ) as GroupPermission;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GroupPermission>(
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
