// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_claim_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicenseClaimResult extends LicenseClaimResult {
  @override
  final String? signUpUrl;
  @override
  final LicenseClaimMode? mode;
  @override
  final String? claimToken;

  factory _$LicenseClaimResult([
    void Function(LicenseClaimResultBuilder)? updates,
  ]) => (LicenseClaimResultBuilder()..update(updates))._build();

  _$LicenseClaimResult._({this.signUpUrl, this.mode, this.claimToken})
    : super._();
  @override
  LicenseClaimResult rebuild(
    void Function(LicenseClaimResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LicenseClaimResultBuilder toBuilder() =>
      LicenseClaimResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicenseClaimResult &&
        signUpUrl == other.signUpUrl &&
        mode == other.mode &&
        claimToken == other.claimToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, signUpUrl.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, claimToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LicenseClaimResult')
          ..add('signUpUrl', signUpUrl)
          ..add('mode', mode)
          ..add('claimToken', claimToken))
        .toString();
  }
}

class LicenseClaimResultBuilder
    implements Builder<LicenseClaimResult, LicenseClaimResultBuilder> {
  _$LicenseClaimResult? _$v;

  String? _signUpUrl;
  String? get signUpUrl => _$this._signUpUrl;
  set signUpUrl(String? signUpUrl) => _$this._signUpUrl = signUpUrl;

  LicenseClaimMode? _mode;
  LicenseClaimMode? get mode => _$this._mode;
  set mode(LicenseClaimMode? mode) => _$this._mode = mode;

  String? _claimToken;
  String? get claimToken => _$this._claimToken;
  set claimToken(String? claimToken) => _$this._claimToken = claimToken;

  LicenseClaimResultBuilder() {
    LicenseClaimResult._defaults(this);
  }

  LicenseClaimResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _signUpUrl = $v.signUpUrl;
      _mode = $v.mode;
      _claimToken = $v.claimToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicenseClaimResult other) {
    _$v = other as _$LicenseClaimResult;
  }

  @override
  void update(void Function(LicenseClaimResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicenseClaimResult build() => _build();

  _$LicenseClaimResult _build() {
    final _$result =
        _$v ??
        _$LicenseClaimResult._(
          signUpUrl: signUpUrl,
          mode: mode,
          claimToken: claimToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
