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
import 'package:thingsboard_client/src/model/account_two_fa_settings.dart';
import 'package:thingsboard_client/src/model/platform_two_fa_settings.dart';
import 'package:thingsboard_client/src/model/thingsboard_error_response.dart';
import 'package:thingsboard_client/src/model/two_fa_account_config.dart';
import 'package:thingsboard_client/src/model/two_fa_account_config_update_request.dart';
import 'package:thingsboard_client/src/model/two_fa_provider_type.dart';
import 'package:thingsboard_client/src/api_serializers.dart';

class TwoFactorAuthConfigControllerApi {

  final Dio _dio;

  final Serializers? _serializers;

  const TwoFactorAuthConfigControllerApi(this._dio, [this._serializers]);

  /// Delete 2FA account config (deleteTwoFaAccountConfig)
  /// Delete 2FA config for a given 2FA provider type.  Returns whole account&#39;s 2FA settings object.   Available for any authorized user. 
  ///
  /// Parameters:
  /// * [providerType] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AccountTwoFaSettings] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AccountTwoFaSettings>> deleteTwoFaAccountConfig({ 
    required TwoFaProviderType providerType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAccountTwoFaSettingsAndTwoFaProviderType);
    final _path = r'/api/2fa/account/config';
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
      r'providerType': encodeQueryParameter(_serializers, providerType, const FullType(TwoFaProviderType)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AccountTwoFaSettings? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AccountTwoFaSettings),
      ) as AccountTwoFaSettings;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AccountTwoFaSettings>(
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

  /// Generate 2FA account config (generateTwoFaAccountConfig)
  /// Generate new 2FA account config template for specified provider type.   For TOTP, this will return a corresponding account config template with a generated OTP auth URL (with new random secret key for each API call) that can be then converted to a QR code to scan with an authenticator app. Example: &#x60;&#x60;&#x60; {   \&quot;providerType\&quot;: \&quot;TOTP\&quot;,   \&quot;useByDefault\&quot;: false,   \&quot;authUrl\&quot;: \&quot;otpauth://totp/TB%202FA:tenant@thingsboard.org?issuer&#x3D;TB+2FA&amp;secret&#x3D;PNJDNWJVAK4ZTUYT7RFGPQLXA7XGU7PX\&quot; } &#x60;&#x60;&#x60;  For EMAIL, the generated config will contain email from user&#39;s account: &#x60;&#x60;&#x60; {   \&quot;providerType\&quot;: \&quot;EMAIL\&quot;,   \&quot;useByDefault\&quot;: false,   \&quot;email\&quot;: \&quot;tenant@thingsboard.org\&quot; } &#x60;&#x60;&#x60;  For SMS 2FA this method will just return a config with empty/default values as there is nothing to generate/preset: &#x60;&#x60;&#x60; {   \&quot;providerType\&quot;: \&quot;SMS\&quot;,   \&quot;useByDefault\&quot;: false,   \&quot;phoneNumber\&quot;: null } &#x60;&#x60;&#x60;  Will throw an error (Bad Request) if the provider is not configured for usage.   Available for any authorized user. 
  ///
  /// Parameters:
  /// * [providerType] - 2FA provider type to generate new account config for
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TwoFaAccountConfig] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TwoFaAccountConfig>> generateTwoFaAccountConfig({ 
    required String providerType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerTwoFaAccountConfig);
    final _path = r'/api/2fa/account/config/generate';
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

    final _queryParameters = <String, dynamic>{
      r'providerType': encodeQueryParameter(_serializers, providerType, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TwoFaAccountConfig? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(TwoFaAccountConfig),
      ) as TwoFaAccountConfig;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TwoFaAccountConfig>(
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

  /// Get account 2FA settings (getAccountTwoFaSettings)
  /// Get user&#39;s account 2FA configuration. Configuration contains configs for different 2FA providers.  Example: &#x60;&#x60;&#x60; {   \&quot;configs\&quot;: {     \&quot;EMAIL\&quot;: {       \&quot;providerType\&quot;: \&quot;EMAIL\&quot;,       \&quot;useByDefault\&quot;: true,       \&quot;email\&quot;: \&quot;tenant@thingsboard.org\&quot;     },     \&quot;TOTP\&quot;: {       \&quot;providerType\&quot;: \&quot;TOTP\&quot;,       \&quot;useByDefault\&quot;: false,       \&quot;authUrl\&quot;: \&quot;otpauth://totp/TB%202FA:tenant@thingsboard.org?issuer&#x3D;TB+2FA&amp;secret&#x3D;P6Z2TLYTASOGP6LCJZAD24ETT5DACNNX\&quot;     },     \&quot;SMS\&quot;: {       \&quot;providerType\&quot;: \&quot;SMS\&quot;,       \&quot;useByDefault\&quot;: false,       \&quot;phoneNumber\&quot;: \&quot;+380501253652\&quot;     }   } } &#x60;&#x60;&#x60;  Available for any authorized user. 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AccountTwoFaSettings] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AccountTwoFaSettings>> getAccountTwoFaSettings({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAccountTwoFaSettings);
    final _path = r'/api/2fa/account/settings';
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

    AccountTwoFaSettings? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AccountTwoFaSettings),
      ) as AccountTwoFaSettings;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AccountTwoFaSettings>(
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

  /// Get available 2FA providers (getAvailableTwoFaProviderTypes)
  /// Get the list of provider types available for user to use (the ones configured by tenant or sysadmin). Example of response: &#x60;&#x60;&#x60; [   \&quot;TOTP\&quot;,   \&quot;EMAIL\&quot;,   \&quot;SMS\&quot; ] &#x60;&#x60;&#x60;  Available for any authorized user. 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuiltList<TwoFaProviderType>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuiltList<TwoFaProviderType>>> getAvailableTwoFaProviderTypes({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerListOfTwoFaProviderType);
    final _path = r'/api/2fa/providers';
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

    BuiltList<TwoFaProviderType>? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(BuiltList, [FullType(TwoFaProviderType)]),
      ) as BuiltList<TwoFaProviderType>;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuiltList<TwoFaProviderType>>(
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

  /// Get platform 2FA settings (getPlatformTwoFaSettings)
  /// Get platform settings for 2FA. The settings are described for savePlatformTwoFaSettings API method. If 2FA is not configured, then an empty response will be returned.  Available for users with &#39;SYS_ADMIN&#39; or &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PlatformTwoFaSettings] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PlatformTwoFaSettings>> getPlatformTwoFaSettings({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerPlatformTwoFaSettings);
    final _path = r'/api/2fa/settings';
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

    PlatformTwoFaSettings? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PlatformTwoFaSettings),
      ) as PlatformTwoFaSettings;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PlatformTwoFaSettings>(
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

  /// Save platform 2FA settings (savePlatformTwoFaSettings)
  /// Save 2FA settings for platform. The settings have following properties: - &#x60;useSystemTwoFactorAuthSettings&#x60; - option for tenant admins to use 2FA settings configured by sysadmin. If this param is set to true, then the settings will not be validated for constraints (if it is a tenant admin; for sysadmin this param is ignored). - &#x60;providers&#x60; - the list of 2FA providers&#39; configs. Users will only be allowed to use 2FA providers from this list.   - &#x60;minVerificationCodeSendPeriod&#x60; - minimal period in seconds to wait after verification code send request to send next request.  - &#x60;verificationCodeCheckRateLimit&#x60; - rate limit configuration for verification code checking. The format is standard: &#39;amountOfRequests:periodInSeconds&#39;. The value of &#39;1:60&#39; would limit verification code checking requests to one per minute. - &#x60;maxVerificationFailuresBeforeUserLockout&#x60; - maximum number of verification failures before a user gets disabled. - &#x60;totalAllowedTimeForVerification&#x60; - total amount of time in seconds allotted for verification. Basically, this property sets a lifetime for pre-verification token. If not set, default value of 30 minutes is used.   TOTP 2FA provider config has following settings: - &#x60;issuerName&#x60; - issuer name that will be displayed in an authenticator app near a username. Must not be blank.  For SMS 2FA provider: - &#x60;smsVerificationMessageTemplate&#x60; - verification message template.  Available template variables are ${code} and ${userEmail}. It must not be blank and must contain verification code variable. - &#x60;verificationCodeLifetime&#x60; - verification code lifetime in seconds. Required to be positive.  For EMAIL provider type: - &#x60;verificationCodeLifetime&#x60; - the same as for SMS.  Example of the settings: &#x60;&#x60;&#x60; {   \&quot;useSystemTwoFactorAuthSettings\&quot;: false,   \&quot;providers\&quot;: [     {       \&quot;providerType\&quot;: \&quot;TOTP\&quot;,       \&quot;issuerName\&quot;: \&quot;TB\&quot;     },     {       \&quot;providerType\&quot;: \&quot;EMAIL\&quot;,       \&quot;verificationCodeLifetime\&quot;: 60     },     {       \&quot;providerType\&quot;: \&quot;SMS\&quot;,       \&quot;verificationCodeLifetime\&quot;: 60,       \&quot;smsVerificationMessageTemplate\&quot;: \&quot;Here is your verification code: ${code}\&quot;     }   ],   \&quot;minVerificationCodeSendPeriod\&quot;: 60,   \&quot;verificationCodeCheckRateLimit\&quot;: \&quot;3:900\&quot;,   \&quot;maxVerificationFailuresBeforeUserLockout\&quot;: 10,   \&quot;totalAllowedTimeForVerification\&quot;: 600 } &#x60;&#x60;&#x60;  Available for users with &#39;SYS_ADMIN&#39; or &#39;TENANT_ADMIN&#39; authority.
  ///
  /// Parameters:
  /// * [platformTwoFaSettings] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PlatformTwoFaSettings] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PlatformTwoFaSettings>> savePlatformTwoFaSettings({ 
    required PlatformTwoFaSettings platformTwoFaSettings,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerPlatformTwoFaSettings);
    final _path = r'/api/2fa/settings';
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
      const _type = FullType(PlatformTwoFaSettings);
      _bodyData = _serializers.serialize(platformTwoFaSettings, specifiedType: _type);

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

    PlatformTwoFaSettings? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(PlatformTwoFaSettings),
      ) as PlatformTwoFaSettings;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PlatformTwoFaSettings>(
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

  /// Submit 2FA account config (submitTwoFaAccountConfig)
  /// Submit 2FA account config to prepare for a future verification. Basically, this method will send a verification code for a given account config, if this has sense for a chosen 2FA provider. This code is needed to then verify and save the account config.  Example of EMAIL 2FA account config: &#x60;&#x60;&#x60; {   \&quot;providerType\&quot;: \&quot;EMAIL\&quot;,   \&quot;useByDefault\&quot;: true,   \&quot;email\&quot;: \&quot;separate-email-for-2fa@thingsboard.org\&quot; } &#x60;&#x60;&#x60;  Example of SMS 2FA account config: &#x60;&#x60;&#x60; {   \&quot;providerType\&quot;: \&quot;SMS\&quot;,   \&quot;useByDefault\&quot;: false,   \&quot;phoneNumber\&quot;: \&quot;+38012312321\&quot; } &#x60;&#x60;&#x60;  For TOTP this method does nothing.  Will throw an error (Bad Request) if submitted account config is not valid, or if the provider is not configured for usage.   Available for any authorized user. 
  ///
  /// Parameters:
  /// * [twoFaAccountConfig] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> submitTwoFaAccountConfig({ 
    required TwoFaAccountConfig twoFaAccountConfig,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerTwoFaAccountConfig);
    final _path = r'/api/2fa/account/config/submit';
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
      const _type = FullType(TwoFaAccountConfig);
      _bodyData = _serializers.serialize(twoFaAccountConfig, specifiedType: _type);

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

    return _response;
  }

  /// Update 2FA account config (updateTwoFaAccountConfig)
  /// Update config for a given provider type.  Update request example: &#x60;&#x60;&#x60; {   \&quot;useByDefault\&quot;: true } &#x60;&#x60;&#x60; Returns whole account&#39;s 2FA settings object.   Available for any authorized user. 
  ///
  /// Parameters:
  /// * [providerType] 
  /// * [twoFaAccountConfigUpdateRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AccountTwoFaSettings] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AccountTwoFaSettings>> updateTwoFaAccountConfig({ 
    required TwoFaProviderType providerType,
    required TwoFaAccountConfigUpdateRequest twoFaAccountConfigUpdateRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAccountTwoFaSettingsAndTwoFaAccountConfigUpdateRequestAndTwoFaProviderType);
    final _path = r'/api/2fa/account/config';
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

    final _queryParameters = <String, dynamic>{
      r'providerType': encodeQueryParameter(_serializers, providerType, const FullType(TwoFaProviderType)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(TwoFaAccountConfigUpdateRequest);
      _bodyData = _serializers.serialize(twoFaAccountConfigUpdateRequest, specifiedType: _type);

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

    AccountTwoFaSettings? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AccountTwoFaSettings),
      ) as AccountTwoFaSettings;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AccountTwoFaSettings>(
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

  /// Verify and save 2FA account config (verifyAndSaveTwoFaAccountConfig)
  /// Checks the verification code for submitted config, and if it is correct, saves the provided account config.   Returns whole account&#39;s 2FA settings object. Will throw an error (Bad Request) if the provider is not configured for usage.   Available for any authorized user. 
  ///
  /// Parameters:
  /// * [twoFaAccountConfig] 
  /// * [verificationCode] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AccountTwoFaSettings] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AccountTwoFaSettings>> verifyAndSaveTwoFaAccountConfig({ 
    required TwoFaAccountConfig twoFaAccountConfig,
    String? verificationCode,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _serializers = this._serializers ?? apiSerializers(registerAccountTwoFaSettings);
    final _path = r'/api/2fa/account/config';
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
      if (verificationCode != null) r'verificationCode': encodeQueryParameter(_serializers, verificationCode, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(TwoFaAccountConfig);
      _bodyData = _serializers.serialize(twoFaAccountConfig, specifiedType: _type);

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

    AccountTwoFaSettings? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(AccountTwoFaSettings),
      ) as AccountTwoFaSettings;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AccountTwoFaSettings>(
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
