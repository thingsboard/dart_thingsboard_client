// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClaimRequest extends ClaimRequest {
  @override
  final String? secretKey;

  factory _$ClaimRequest([void Function(ClaimRequestBuilder)? updates]) =>
      (ClaimRequestBuilder()..update(updates))._build();

  _$ClaimRequest._({this.secretKey}) : super._();
  @override
  ClaimRequest rebuild(void Function(ClaimRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimRequestBuilder toBuilder() => ClaimRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimRequest && secretKey == other.secretKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, secretKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ClaimRequest',
    )..add('secretKey', secretKey)).toString();
  }
}

class ClaimRequestBuilder
    implements Builder<ClaimRequest, ClaimRequestBuilder> {
  _$ClaimRequest? _$v;

  String? _secretKey;
  String? get secretKey => _$this._secretKey;
  set secretKey(String? secretKey) => _$this._secretKey = secretKey;

  ClaimRequestBuilder() {
    ClaimRequest._defaults(this);
  }

  ClaimRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _secretKey = $v.secretKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimRequest other) {
    _$v = other as _$ClaimRequest;
  }

  @override
  void update(void Function(ClaimRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimRequest build() => _build();

  _$ClaimRequest _build() {
    final _$result = _$v ?? _$ClaimRequest._(secretKey: secretKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
