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
import 'package:thingsboard_client/src/model/job.dart';
import 'package:thingsboard_client/src/model/page_data_job.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class JobControllerApi {
  final Dio _dio;

  final Serializers? _serializers;

  const JobControllerApi(this._dio, [this._serializers]);

  /// Cancel job (cancelJob)
  /// Cancels the job. The status of the job must be QUEUED, PENDING or RUNNING.  For a running job, all the tasks not yet processed will be discarded.  See the example of a cancelled job result in getJobById method description.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [id]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> cancelJob({
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/job/{id}/cancel'.replaceAll(
      '{'
      r'id'
      '}',
      encodeQueryParameter(_serializers, id, const FullType(String)).toString(),
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

    return _response;
  }

  /// deleteJob
  ///
  ///
  /// Parameters:
  /// * [id]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> deleteJob({
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/job/{id}'.replaceAll(
      '{'
      r'id'
      '}',
      encodeQueryParameter(_serializers, id, const FullType(String)).toString(),
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

  /// Get job by id (getJobById)
  /// Fetches job info by id.  Example of a RUNNING CF_REPROCESSING job response: &#x60;&#x60;&#x60;json {   \&quot;id\&quot;: {     \&quot;entityType\&quot;: \&quot;JOB\&quot;,     \&quot;id\&quot;: \&quot;475e94e0-2f2d-11f0-8240-91e99922a704\&quot;   },   \&quot;createdTime\&quot;: 1747053196590,   \&quot;tenantId\&quot;: {     \&quot;entityType\&quot;: \&quot;TENANT\&quot;,     \&quot;id\&quot;: \&quot;46859a00-2f2d-11f0-8240-91e99922a704\&quot;   },   \&quot;type\&quot;: \&quot;CF_REPROCESSING\&quot;,   \&quot;key\&quot;: \&quot;474e4130-2f2d-11f0-8240-91e99922a704\&quot;,   \&quot;entityId\&quot;: {     \&quot;entityType\&quot;: \&quot;DEVICE_PROFILE\&quot;,     \&quot;id\&quot;: \&quot;9fd41f20-31a1-11f0-933e-27998d6db02e\&quot;    },   \&quot;status\&quot;: \&quot;RUNNING\&quot;,   \&quot;configuration\&quot;: {     \&quot;type\&quot;: \&quot;CF_REPROCESSING\&quot;,     \&quot;calculatedFieldId\&quot;: {       \&quot;entityType\&quot;: \&quot;CALCULATED_FIELD\&quot;,       \&quot;id\&quot;: \&quot;474e4130-2f2d-11f0-8240-91e99922a704\&quot;     },     \&quot;startTs\&quot;: 1747051995760,     \&quot;endTs\&quot;: 1747052895760,     \&quot;tasksKey\&quot;: \&quot;c3cdbd42-799e-4d3a-9aad-9310f767aa36\&quot;,     \&quot;toReprocess\&quot;: null   },   \&quot;result\&quot;: {     \&quot;jobType\&quot;: \&quot;CF_REPROCESSING\&quot;,     \&quot;successfulCount\&quot;: 1,     \&quot;failedCount\&quot;: 0,     \&quot;discardedCount\&quot;: 0,     \&quot;totalCount\&quot;: 2,     \&quot;results\&quot;: [],     \&quot;generalError\&quot;: null,     \&quot;startTs\&quot;: 1747323069445,     \&quot;finishTs\&quot;: 1747323070585,     \&quot;cancellationTs\&quot;: 0   } }  &#x60;&#x60;&#x60;  Example of a CF_REPROCESSING job with failures: &#x60;&#x60;&#x60;json {   ...,   \&quot;status\&quot;: \&quot;FAILED\&quot;,   ...,   \&quot;result\&quot;: {     \&quot;jobType\&quot;: \&quot;CF_REPROCESSING\&quot;,     \&quot;successfulCount\&quot;: 0,     \&quot;failedCount\&quot;: 2,     \&quot;discardedCount\&quot;: 0,     \&quot;totalCount\&quot;: 2,     \&quot;results\&quot;: [       {         \&quot;jobType\&quot;: \&quot;CF_REPROCESSING\&quot;,         \&quot;key\&quot;: \&quot;c3cdbd42-799e-4d3a-9aad-9310f767aa36\&quot;,         \&quot;success\&quot;: false,         \&quot;discarded\&quot;: false,         \&quot;failure\&quot;: {           \&quot;error\&quot;: \&quot;Failed to fetch temperature: Failed to fetch timeseries data\&quot;,           \&quot;entityInfo\&quot;: {             \&quot;id\&quot;: {               \&quot;entityType\&quot;: \&quot;DEVICE\&quot;,               \&quot;id\&quot;: \&quot;9fd41f20-31a1-11f0-933e-27998d6db02e\&quot;             },             \&quot;name\&quot;: \&quot;Test device 1\&quot;           }         }       },       {         \&quot;jobType\&quot;: \&quot;CF_REPROCESSING\&quot;,         \&quot;key\&quot;: \&quot;c3cdbd42-799e-4d3a-9aad-9310f767aa36\&quot;,         \&quot;success\&quot;: false,         \&quot;discarded\&quot;: false,         \&quot;failure\&quot;: {           \&quot;error\&quot;: \&quot;Failed to fetch temperature: Failed to fetch timeseries data\&quot;,           \&quot;entityInfo\&quot;: {             \&quot;id\&quot;: {               \&quot;entityType\&quot;: \&quot;DEVICE\&quot;,               \&quot;id\&quot;: \&quot;9ffc4090-31a1-11f0-933e-27998d6db02e\&quot;             },             \&quot;name\&quot;: \&quot;Test device 2\&quot;           }         }       }     ],     \&quot;generalError\&quot;: null,     \&quot;startTs\&quot;: 1747323069445,     \&quot;finishTs\&quot;: 1747323070585,     \&quot;cancellationTs\&quot;: 0   } }  &#x60;&#x60;&#x60;  Example of a FAILED job result with general error: &#x60;&#x60;&#x60;json {   ...,   \&quot;status\&quot;: \&quot;FAILED\&quot;,   ...,   \&quot;result\&quot;: {     \&quot;jobType\&quot;: \&quot;CF_REPROCESSING\&quot;,     \&quot;successfulCount\&quot;: 1,     \&quot;failedCount\&quot;: 0,     \&quot;discardedCount\&quot;: 0,     \&quot;totalCount\&quot;: null,     \&quot;results\&quot;: [],     \&quot;generalError\&quot;: \&quot;Timeout to find devices by profile\&quot;,     \&quot;cancellationTs\&quot;: 0   } }  &#x60;&#x60;&#x60;  Example of a CANCELLED job result: &#x60;&#x60;&#x60;json {   ...,   \&quot;status\&quot;: \&quot;CANCELLED\&quot;,   ...,   \&quot;result\&quot;: {     \&quot;jobType\&quot;: \&quot;CF_REPROCESSING\&quot;,     \&quot;successfulCount\&quot;: 15,     \&quot;failedCount\&quot;: 0,     \&quot;discardedCount\&quot;: 85,     \&quot;totalCount\&quot;: 100,     \&quot;results\&quot;: [],     \&quot;generalError\&quot;: null,     \&quot;cancellationTs\&quot;: 1747065908414   } }  &#x60;&#x60;&#x60;  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [id]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Job] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Job>> getJobById({
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerJob);
    final _path = r'/api/job/{id}'.replaceAll(
      '{'
      r'id'
      '}',
      encodeQueryParameter(_serializers, id, const FullType(String)).toString(),
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

    Job? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(Job),
                )
                as Job;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Job>(
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

  /// Get jobs (getJobs)
  /// Returns the page of jobs.  You can specify parameters to filter the results. The result is wrapped with PageData object that allows you to iterate over result set using pagination. See response schema for more details.   Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [pageSize] - Maximum amount of entities in a one page
  /// * [page] - Sequence number of page starting from 0
  /// * [textSearch] - Case-insensitive 'substring' filter based on job's description
  /// * [sortProperty] - Property of entity to sort by
  /// * [sortOrder] - Sort order. ASC (ASCENDING) or DESC (DESCENDING)
  /// * [types] - Comma-separated list of job types to include. If empty - all job types are included.
  /// * [statuses] - Comma-separated list of job statuses to include. If empty - all job statuses are included.
  /// * [entities] - Comma-separated list of entity ids. If empty - jobs for all entities are included.
  /// * [startTime] - To only include jobs created after this timestamp.
  /// * [endTime] - To only include jobs created before this timestamp.
  /// * [includeCustomers] - Include customer or sub-customer entities. For tenant administrator: when true, includes entities for all customers; when false (default), only own entities are returned. For customer user: when true, includes entities for all sub-customers.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PageDataJob] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PageDataJob>> getJobs({
    required int pageSize,
    required int page,
    String? textSearch,
    String? sortProperty,
    String? sortOrder,
    BuiltList<String>? types,
    BuiltList<String>? statuses,
    BuiltList<String>? entities,
    int? startTime,
    int? endTime,
    bool? includeCustomers,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers =
        this._serializers ?? apiSerializers(registerPageDataJob);
    final _path = r'/api/jobs';
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
      if (types != null)
        r'types': encodeCollectionQueryParameter<String>(
          _serializers,
          types,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (statuses != null)
        r'statuses': encodeCollectionQueryParameter<String>(
          _serializers,
          statuses,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
        ),
      if (entities != null)
        r'entities': encodeCollectionQueryParameter<String>(
          _serializers,
          entities,
          const FullType(BuiltList, [FullType(String)]),
          format: ListFormat.multi,
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
      if (includeCustomers != null)
        r'includeCustomers': encodeQueryParameter(
          _serializers,
          includeCustomers,
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

    PageDataJob? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null
          ? null
          : _serializers.deserialize(
                  rawResponse,
                  specifiedType: const FullType(PageDataJob),
                )
                as PageDataJob;
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PageDataJob>(
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

  /// Reprocess job (reprocessJob)
  /// Reprocesses the job. Failures are located at job.result.results list. Platform iterates over this list and submits new tasks for them. Doesn&#39;t create new job entity but updates the existing one. Successfully reprocessed job will look the same as completed one.  Available for users with &#39;TENANT_ADMIN&#39; or &#39;CUSTOMER_USER&#39; authority.
  ///
  /// Parameters:
  /// * [id]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> reprocessJob({
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers();
    final _path = r'/api/job/{id}/reprocess'.replaceAll(
      '{'
      r'id'
      '}',
      encodeQueryParameter(_serializers, id, const FullType(String)).toString(),
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

    return _response;
  }
}
