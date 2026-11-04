// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpRequest extends SignUpRequest {
  @override
  final BuiltMap<String, String>? fields;
  @override
  final String? recaptchaResponse;
  @override
  final String? pkgName;
  @override
  final PlatformType? platform;
  @override
  final String? appSecret;

  factory _$SignUpRequest([void Function(SignUpRequestBuilder)? updates]) =>
      (SignUpRequestBuilder()..update(updates))._build();

  _$SignUpRequest._({
    this.fields,
    this.recaptchaResponse,
    this.pkgName,
    this.platform,
    this.appSecret,
  }) : super._();
  @override
  SignUpRequest rebuild(void Function(SignUpRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpRequestBuilder toBuilder() => SignUpRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpRequest &&
        fields == other.fields &&
        recaptchaResponse == other.recaptchaResponse &&
        pkgName == other.pkgName &&
        platform == other.platform &&
        appSecret == other.appSecret;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fields.hashCode);
    _$hash = $jc(_$hash, recaptchaResponse.hashCode);
    _$hash = $jc(_$hash, pkgName.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, appSecret.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpRequest')
          ..add('fields', fields)
          ..add('recaptchaResponse', recaptchaResponse)
          ..add('pkgName', pkgName)
          ..add('platform', platform)
          ..add('appSecret', appSecret))
        .toString();
  }
}

class SignUpRequestBuilder
    implements Builder<SignUpRequest, SignUpRequestBuilder> {
  _$SignUpRequest? _$v;

  MapBuilder<String, String>? _fields;
  MapBuilder<String, String> get fields =>
      _$this._fields ??= MapBuilder<String, String>();
  set fields(MapBuilder<String, String>? fields) => _$this._fields = fields;

  String? _recaptchaResponse;
  String? get recaptchaResponse => _$this._recaptchaResponse;
  set recaptchaResponse(String? recaptchaResponse) =>
      _$this._recaptchaResponse = recaptchaResponse;

  String? _pkgName;
  String? get pkgName => _$this._pkgName;
  set pkgName(String? pkgName) => _$this._pkgName = pkgName;

  PlatformType? _platform;
  PlatformType? get platform => _$this._platform;
  set platform(PlatformType? platform) => _$this._platform = platform;

  String? _appSecret;
  String? get appSecret => _$this._appSecret;
  set appSecret(String? appSecret) => _$this._appSecret = appSecret;

  SignUpRequestBuilder() {
    SignUpRequest._defaults(this);
  }

  SignUpRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fields = $v.fields?.toBuilder();
      _recaptchaResponse = $v.recaptchaResponse;
      _pkgName = $v.pkgName;
      _platform = $v.platform;
      _appSecret = $v.appSecret;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpRequest other) {
    _$v = other as _$SignUpRequest;
  }

  @override
  void update(void Function(SignUpRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpRequest build() => _build();

  _$SignUpRequest _build() {
    _$SignUpRequest _$result;
    try {
      _$result =
          _$v ??
          _$SignUpRequest._(
            fields: _fields?.build(),
            recaptchaResponse: recaptchaResponse,
            pkgName: pkgName,
            platform: platform,
            appSecret: appSecret,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        _fields?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SignUpRequest',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
