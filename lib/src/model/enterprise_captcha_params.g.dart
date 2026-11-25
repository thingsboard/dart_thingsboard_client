// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enterprise_captcha_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnterpriseCaptchaParams extends EnterpriseCaptchaParams {
  @override
  final String? logActionName;
  @override
  final String? androidKey;
  @override
  final String? serviceAccountCredentials;
  @override
  final String? iosKey;
  @override
  final String? projectId;
  @override
  final String? serviceAccountCredentialsFileName;
  @override
  final String version;

  factory _$EnterpriseCaptchaParams([
    void Function(EnterpriseCaptchaParamsBuilder)? updates,
  ]) => (EnterpriseCaptchaParamsBuilder()..update(updates))._build();

  _$EnterpriseCaptchaParams._({
    this.logActionName,
    this.androidKey,
    this.serviceAccountCredentials,
    this.iosKey,
    this.projectId,
    this.serviceAccountCredentialsFileName,
    required this.version,
  }) : super._();
  @override
  EnterpriseCaptchaParams rebuild(
    void Function(EnterpriseCaptchaParamsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EnterpriseCaptchaParamsBuilder toBuilder() =>
      EnterpriseCaptchaParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnterpriseCaptchaParams &&
        logActionName == other.logActionName &&
        androidKey == other.androidKey &&
        serviceAccountCredentials == other.serviceAccountCredentials &&
        iosKey == other.iosKey &&
        projectId == other.projectId &&
        serviceAccountCredentialsFileName ==
            other.serviceAccountCredentialsFileName &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logActionName.hashCode);
    _$hash = $jc(_$hash, androidKey.hashCode);
    _$hash = $jc(_$hash, serviceAccountCredentials.hashCode);
    _$hash = $jc(_$hash, iosKey.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, serviceAccountCredentialsFileName.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnterpriseCaptchaParams')
          ..add('logActionName', logActionName)
          ..add('androidKey', androidKey)
          ..add('serviceAccountCredentials', serviceAccountCredentials)
          ..add('iosKey', iosKey)
          ..add('projectId', projectId)
          ..add(
            'serviceAccountCredentialsFileName',
            serviceAccountCredentialsFileName,
          )
          ..add('version', version))
        .toString();
  }
}

class EnterpriseCaptchaParamsBuilder
    implements
        Builder<EnterpriseCaptchaParams, EnterpriseCaptchaParamsBuilder>,
        CaptchaParamsBuilder {
  _$EnterpriseCaptchaParams? _$v;

  String? _logActionName;
  String? get logActionName => _$this._logActionName;
  set logActionName(covariant String? logActionName) =>
      _$this._logActionName = logActionName;

  String? _androidKey;
  String? get androidKey => _$this._androidKey;
  set androidKey(covariant String? androidKey) =>
      _$this._androidKey = androidKey;

  String? _serviceAccountCredentials;
  String? get serviceAccountCredentials => _$this._serviceAccountCredentials;
  set serviceAccountCredentials(covariant String? serviceAccountCredentials) =>
      _$this._serviceAccountCredentials = serviceAccountCredentials;

  String? _iosKey;
  String? get iosKey => _$this._iosKey;
  set iosKey(covariant String? iosKey) => _$this._iosKey = iosKey;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(covariant String? projectId) => _$this._projectId = projectId;

  String? _serviceAccountCredentialsFileName;
  String? get serviceAccountCredentialsFileName =>
      _$this._serviceAccountCredentialsFileName;
  set serviceAccountCredentialsFileName(
    covariant String? serviceAccountCredentialsFileName,
  ) => _$this._serviceAccountCredentialsFileName =
      serviceAccountCredentialsFileName;

  String? _version;
  String? get version => _$this._version;
  set version(covariant String? version) => _$this._version = version;

  EnterpriseCaptchaParamsBuilder() {
    EnterpriseCaptchaParams._defaults(this);
  }

  EnterpriseCaptchaParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logActionName = $v.logActionName;
      _androidKey = $v.androidKey;
      _serviceAccountCredentials = $v.serviceAccountCredentials;
      _iosKey = $v.iosKey;
      _projectId = $v.projectId;
      _serviceAccountCredentialsFileName = $v.serviceAccountCredentialsFileName;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EnterpriseCaptchaParams other) {
    _$v = other as _$EnterpriseCaptchaParams;
  }

  @override
  void update(void Function(EnterpriseCaptchaParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnterpriseCaptchaParams build() => _build();

  _$EnterpriseCaptchaParams _build() {
    final _$result =
        _$v ??
        _$EnterpriseCaptchaParams._(
          logActionName: logActionName,
          androidKey: androidKey,
          serviceAccountCredentials: serviceAccountCredentials,
          iosKey: iosKey,
          projectId: projectId,
          serviceAccountCredentialsFileName: serviceAccountCredentialsFileName,
          version: BuiltValueNullFieldError.checkNotNull(
            version,
            r'EnterpriseCaptchaParams',
            'version',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
