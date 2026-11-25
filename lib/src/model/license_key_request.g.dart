// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_key_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicenseKeyRequest extends LicenseKeyRequest {
  @override
  final String? secret;

  factory _$LicenseKeyRequest([
    void Function(LicenseKeyRequestBuilder)? updates,
  ]) => (LicenseKeyRequestBuilder()..update(updates))._build();

  _$LicenseKeyRequest._({this.secret}) : super._();
  @override
  LicenseKeyRequest rebuild(void Function(LicenseKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicenseKeyRequestBuilder toBuilder() =>
      LicenseKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicenseKeyRequest && secret == other.secret;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, secret.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'LicenseKeyRequest',
    )..add('secret', secret)).toString();
  }
}

class LicenseKeyRequestBuilder
    implements Builder<LicenseKeyRequest, LicenseKeyRequestBuilder> {
  _$LicenseKeyRequest? _$v;

  String? _secret;
  String? get secret => _$this._secret;
  set secret(String? secret) => _$this._secret = secret;

  LicenseKeyRequestBuilder() {
    LicenseKeyRequest._defaults(this);
  }

  LicenseKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _secret = $v.secret;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicenseKeyRequest other) {
    _$v = other as _$LicenseKeyRequest;
  }

  @override
  void update(void Function(LicenseKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicenseKeyRequest build() => _build();

  _$LicenseKeyRequest _build() {
    final _$result = _$v ?? _$LicenseKeyRequest._(secret: secret);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
