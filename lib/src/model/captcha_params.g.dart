// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captcha_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class CaptchaParamsBuilder {
  void replace(CaptchaParams other);
  void update(void Function(CaptchaParamsBuilder) updates);
  String? get version;
  set version(String? version);
}

class _$$CaptchaParams extends $CaptchaParams {
  @override
  final String version;

  factory _$$CaptchaParams([void Function($CaptchaParamsBuilder)? updates]) =>
      ($CaptchaParamsBuilder()..update(updates))._build();

  _$$CaptchaParams._({required this.version}) : super._();
  @override
  $CaptchaParams rebuild(void Function($CaptchaParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $CaptchaParamsBuilder toBuilder() => $CaptchaParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $CaptchaParams && version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'$CaptchaParams',
    )..add('version', version)).toString();
  }
}

class $CaptchaParamsBuilder
    implements
        Builder<$CaptchaParams, $CaptchaParamsBuilder>,
        CaptchaParamsBuilder {
  _$$CaptchaParams? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(covariant String? version) => _$this._version = version;

  $CaptchaParamsBuilder() {
    $CaptchaParams._defaults(this);
  }

  $CaptchaParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $CaptchaParams other) {
    _$v = other as _$$CaptchaParams;
  }

  @override
  void update(void Function($CaptchaParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $CaptchaParams build() => _build();

  _$$CaptchaParams _build() {
    final _$result =
        _$v ??
        _$$CaptchaParams._(
          version: BuiltValueNullFieldError.checkNotNull(
            version,
            r'$CaptchaParams',
            'version',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
