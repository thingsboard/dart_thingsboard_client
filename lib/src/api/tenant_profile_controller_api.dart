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
import 'package:thingsboard_client/src/model/entity_info.dart';
import 'package:thingsboard_client/src/model/page_data_entity_info.dart';
import 'package:thingsboard_client/src/model/page_data_tenant_profile.dart';
import 'package:thingsboard_client/src/model/tenant_profile.dart';
import 'package:thingsboard_client/src/model/thingsboard_error_response.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class TenantProfileControllerApi {

  final Dio _dio;

  final Serializers? _serializers;

  const TenantProfileControllerApi(this._dio, [this._serializers]);

  /// Delete Tenant Profile (deleteTenantProfile)
  /// Deletes the tenant profile. Referencing non-existing tenant profile Id will cause an error. Referencing profile that is used by the tenants will cause an error.   Available for users with &#39;SYS_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [tenantProfileId] - A string value representing the tenant profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deleteTenantProfile({ 
    required String tenantProfileId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/tenantProfile/{tenantProfileId}'.replaceAll('{' r'tenantProfileId' '}', encodeQueryParameter(_serializers, tenantProfileId, const FullType(String)).toString());
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

  /// Get default Tenant Profile Info (getDefaultTenantProfileInfo)
  /// Fetch the default Tenant Profile Info object based. Tenant Profile Info is a lightweight object that contains only id and name of the profile.   Available for users with &#39;SYS_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EntityInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EntityInfo>> getDefaultTenantProfileInfo({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerEntityInfo);
    final _path = r'/api/tenantProfileInfo/default';
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

    EntityInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(EntityInfo),
      ) as EntityInfo;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EntityInfo>(
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

  /// Get Tenant Profile (getTenantProfileById)
  /// Fetch the Tenant Profile object based on the provided Tenant Profile Id.   Available for users with &#39;SYS_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [tenantProfileId] - A string value representing the tenant profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TenantProfile] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TenantProfile>> getTenantProfileById({ 
    required String tenantProfileId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerTenantProfile);
    final _path = r'/api/tenantProfile/{tenantProfileId}'.replaceAll('{' r'tenantProfileId' '}', encodeQueryParameter(_serializers, tenantProfileId, const FullType(String)).toString());
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

    TenantProfile? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TenantProfile),
      ) as TenantProfile;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TenantProfile>(
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

  /// Get Tenant Profile Info (getTenantProfileInfoById)
  /// Fetch the Tenant Profile Info object based on the provided Tenant Profile Id. Tenant Profile Info is a lightweight object that contains only id and name of the profile.   Available for users with &#39;SYS_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [tenantProfileId] - A string value representing the tenant profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EntityInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EntityInfo>> getTenantProfileInfoById({ 
    required String tenantProfileId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerEntityInfo);
    final _path = r'/api/tenantProfileInfo/{tenantProfileId}'.replaceAll('{' r'tenantProfileId' '}', encodeQueryParameter(_serializers, tenantProfileId, const FullType(String)).toString());
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

    EntityInfo? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(EntityInfo),
      ) as EntityInfo;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EntityInfo>(
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

  /// Get Tenant Profiles Info (getTenantProfileInfos)
  /// Returns a page of tenant profile info objects registered in the platform. Tenant Profile Info is a lightweight object that contains only id and name of the profile. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with &#39;SYS_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [textSearch] - The case insensitive 'substring' filter based on the tenant profile name.
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataEntityInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataEntityInfo>> getTenantProfileInfos({ 
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
    final _serializers = this._serializers ?? apiSerializers(registerPageDataEntityInfo);
    final _path = r'/api/tenantProfileInfos';
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

  /// Get Tenant Profile list (getTenantProfileList)
  /// 
  ///
  /// Parameters:
  /// * [ids] - Comma-separated list of tenant profile ids
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<TenantProfile>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<TenantProfile>>> getTenantProfileList({ 
    required BuiltList<String> ids,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfStringAndListOfTenantProfile);
    final _path = r'/api/tenantProfiles/list';
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
      r'ids': encodeCollectionQueryParameter<String>(_serializers, ids, const FullType(BuiltList, [FullType(String)]), format: ListFormat.multi,),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuiltList<TenantProfile>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(TenantProfile)]),
      ) as BuiltList<TenantProfile>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<TenantProfile>>(
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

  /// Get Tenant Profiles (getTenantProfiles)
  /// Returns a page of tenant profiles registered in the platform. You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with &#39;SYS_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [textSearch] - The case insensitive 'substring' filter based on the tenant profile name.
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataTenantProfile] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataTenantProfile>> getTenantProfiles({ 
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
    final _serializers = this._serializers ?? apiSerializers(registerPageDataTenantProfile);
    final _path = r'/api/tenantProfiles';
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

    PageDataTenantProfile? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PageDataTenantProfile),
      ) as PageDataTenantProfile;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataTenantProfile>(
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

  /// Create Or update Tenant Profile (saveTenantProfile)
  /// Create or update the Tenant Profile. When creating tenant profile, platform generates Tenant Profile Id as [time-based UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier#Version_1_(date-time_and_MAC_address)). The newly created Tenant Profile Id will be present in the response. Specify existing Tenant Profile Id id to update the Tenant Profile. Referencing non-existing Tenant Profile Id will cause &#39;Not Found&#39; error.   Update of the tenant profile configuration will cause immediate recalculation of API limits for all affected Tenants.   The **&#39;profileData&#39;** object is the part of Tenant Profile that defines API limits and Rate limits.   You have an ability to define maximum number of devices (&#39;maxDevice&#39;), assets (&#39;maxAssets&#39;) and other entities. You may also define maximum number of messages to be processed per month (&#39;maxTransportMessages&#39;, &#39;maxREExecutions&#39;, etc). The &#39;*RateLimit&#39; defines the rate limits using simple syntax. For example, &#39;1000:1,20000:60&#39; means up to 1000 events per second but no more than 20000 event per minute. Let&#39;s review the example of tenant profile data below:   &#x60;&#x60;&#x60;json {   \&quot;name\&quot;: \&quot;Your name\&quot;,   \&quot;description\&quot;: \&quot;Your description\&quot;,   \&quot;isolatedTbRuleEngine\&quot;: false,   \&quot;profileData\&quot;: {     \&quot;configuration\&quot;: {       \&quot;type\&quot;: \&quot;DEFAULT\&quot;,       \&quot;maxDevices\&quot;: 0,       \&quot;maxAssets\&quot;: 0,       \&quot;maxCustomers\&quot;: 0,       \&quot;maxUsers\&quot;: 0,       \&quot;maxDashboards\&quot;: 0,       \&quot;maxRuleChains\&quot;: 0,       \&quot;maxResourcesInBytes\&quot;: 0,       \&quot;maxOtaPackagesInBytes\&quot;: 0,       \&quot;maxResourceSize\&quot;: 0,       \&quot;transportTenantMsgRateLimit\&quot;: \&quot;1000:1,20000:60\&quot;,       \&quot;transportTenantTelemetryMsgRateLimit\&quot;: \&quot;1000:1,20000:60\&quot;,       \&quot;transportTenantTelemetryDataPointsRateLimit\&quot;: \&quot;1000:1,20000:60\&quot;,       \&quot;transportDeviceMsgRateLimit\&quot;: \&quot;20:1,600:60\&quot;,       \&quot;transportDeviceTelemetryMsgRateLimit\&quot;: \&quot;20:1,600:60\&quot;,       \&quot;transportDeviceTelemetryDataPointsRateLimit\&quot;: \&quot;20:1,600:60\&quot;,       \&quot;transportGatewayMsgRateLimit\&quot;: \&quot;20:1,600:60\&quot;,       \&quot;transportGatewayTelemetryMsgRateLimit\&quot;: \&quot;20:1,600:60\&quot;,       \&quot;transportGatewayTelemetryDataPointsRateLimit\&quot;: \&quot;20:1,600:60\&quot;,       \&quot;transportGatewayDeviceMsgRateLimit\&quot;: \&quot;20:1,600:60\&quot;,       \&quot;transportGatewayDeviceTelemetryMsgRateLimit\&quot;: \&quot;20:1,600:60\&quot;,       \&quot;transportGatewayDeviceTelemetryDataPointsRateLimit\&quot;: \&quot;20:1,600:60\&quot;,       \&quot;integrationMsgsPerTenantRateLimit\&quot;: \&quot;20:1,600:60\&quot;,       \&quot;integrationMsgsPerDeviceRateLimit\&quot;: \&quot;20:1,600:60\&quot;,       \&quot;integrationMsgsPerAssetRateLimit\&quot;: \&quot;20:1,600:60\&quot;,       \&quot;maxTransportMessages\&quot;: 10000000,       \&quot;maxTransportDataPoints\&quot;: 10000000,       \&quot;maxREExecutions\&quot;: 4000000,       \&quot;maxJSExecutions\&quot;: 5000000,       \&quot;maxDPStorageDays\&quot;: 0,       \&quot;maxRuleNodeExecutionsPerMessage\&quot;: 50,       \&quot;maxDebugModeDurationMinutes\&quot;: 15,       \&quot;maxEmails\&quot;: 0,       \&quot;maxSms\&quot;: 0,       \&quot;maxCreatedAlarms\&quot;: 1000,       \&quot;defaultStorageTtlDays\&quot;: 0,       \&quot;alarmsTtlDays\&quot;: 0,       \&quot;rpcTtlDays\&quot;: 0,       \&quot;queueStatsTtlDays\&quot;: 0,       \&quot;ruleEngineExceptionsTtlDays\&quot;: 0,       \&quot;blobEntityTtlDays\&quot;: 0,       \&quot;warnThreshold\&quot;: 0,       \&quot;maxCalculatedFieldsPerEntity\&quot;: 100,       \&quot;maxArgumentsPerCF\&quot;: 10,       \&quot;minAllowedScheduledUpdateIntervalInSecForCF\&quot;: 10,       \&quot;maxRelationLevelPerCfArgument\&quot;: 2,       \&quot;maxRelatedEntitiesToReturnPerCfArgument\&quot;: 1000,       \&quot;maxDataPointsPerRollingArg\&quot;: 1000,       \&quot;maxStateSizeInKBytes\&quot;: 512,       \&quot;maxSingleValueArgumentSizeInKBytes\&quot;: 32,      \&quot;minAllowedDeduplicationIntervalInSecForCF\&quot;: 10,      \&quot;minAllowedAggregationIntervalInSecForCF\&quot;: 60,      \&quot;intermediateAggregationIntervalInSecForCF\&quot;: 300,      \&quot;cfReevaluationCheckInterval\&quot;: 60,      \&quot;alarmsReevaluationInterval\&quot;: 60    }   },   \&quot;default\&quot;: false } &#x60;&#x60;&#x60;Remove &#39;id&#39;, from the request body example (below) to create new Tenant Profile entity.  Available for users with &#39;SYS_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [tenantProfile] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TenantProfile] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TenantProfile>> saveTenantProfile({ 
    required TenantProfile tenantProfile,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerTenantProfile);
    final _path = r'/api/tenantProfile';
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
      const _type = FullType(TenantProfile);
      _bodyData = _serializers.serialize(tenantProfile, specifiedType: _type);

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

    TenantProfile? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TenantProfile),
      ) as TenantProfile;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TenantProfile>(
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

  /// Make tenant profile default (setDefaultTenantProfile)
  /// Makes specified tenant profile to be default. Referencing non-existing tenant profile Id will cause an error.   Available for users with &#39;SYS_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [tenantProfileId] - A string value representing the tenant profile id. For example, '784f394c-42b6-435a-983c-b7beff2784f9'
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TenantProfile] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TenantProfile>> setDefaultTenantProfile({ 
    required String tenantProfileId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerTenantProfile);
    final _path = r'/api/tenantProfile/{tenantProfileId}/default'.replaceAll('{' r'tenantProfileId' '}', encodeQueryParameter(_serializers, tenantProfileId, const FullType(String)).toString());
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

    TenantProfile? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TenantProfile),
      ) as TenantProfile;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TenantProfile>(
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
