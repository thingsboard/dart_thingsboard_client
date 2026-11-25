// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_captcha_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V2CaptchaParams extends V2CaptchaParams {
  @override
  final String? siteKey;
  @override
  final String? logActionName;
  @override
  final String? secretKey;
  @override
  final String version;

  factory _$V2CaptchaParams([void Function(V2CaptchaParamsBuilder)? updates]) =>
      (V2CaptchaParamsBuilder()..update(updates))._build();

  _$V2CaptchaParams._({
    this.siteKey,
    this.logActionName,
    this.secretKey,
    required this.version,
  }) : super._();
  @override
  V2CaptchaParams rebuild(void Function(V2CaptchaParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V2CaptchaParamsBuilder toBuilder() => V2CaptchaParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V2CaptchaParams &&
        siteKey == other.siteKey &&
        logActionName == other.logActionName &&
        secretKey == other.secretKey &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, siteKey.hashCode);
    _$hash = $jc(_$hash, logActionName.hashCode);
    _$hash = $jc(_$hash, secretKey.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V2CaptchaParams')
          ..add('siteKey', siteKey)
          ..add('logActionName', logActionName)
          ..add('secretKey', secretKey)
          ..add('version', version))
        .toString();
  }
}

class V2CaptchaParamsBuilder
    implements
        Builder<V2CaptchaParams, V2CaptchaParamsBuilder>,
        CaptchaParamsBuilder {
  _$V2CaptchaParams? _$v;

  String? _siteKey;
  String? get siteKey => _$this._siteKey;
  set siteKey(covariant String? siteKey) => _$this._siteKey = siteKey;

  String? _logActionName;
  String? get logActionName => _$this._logActionName;
  set logActionName(covariant String? logActionName) =>
      _$this._logActionName = logActionName;

  String? _secretKey;
  String? get secretKey => _$this._secretKey;
  set secretKey(covariant String? secretKey) => _$this._secretKey = secretKey;

  String? _version;
  String? get version => _$this._version;
  set version(covariant String? version) => _$this._version = version;

  V2CaptchaParamsBuilder() {
    V2CaptchaParams._defaults(this);
  }

  V2CaptchaParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _siteKey = $v.siteKey;
      _logActionName = $v.logActionName;
      _secretKey = $v.secretKey;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant V2CaptchaParams other) {
    _$v = other as _$V2CaptchaParams;
  }

  @override
  void update(void Function(V2CaptchaParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V2CaptchaParams build() => _build();

  _$V2CaptchaParams _build() {
    final _$result =
        _$v ??
        _$V2CaptchaParams._(
          siteKey: siteKey,
          logActionName: logActionName,
          secretKey: secretKey,
          version: BuiltValueNullFieldError.checkNotNull(
            version,
            r'V2CaptchaParams',
            'version',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
