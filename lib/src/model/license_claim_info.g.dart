// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_claim_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicenseClaimInfo extends LicenseClaimInfo {
  @override
  final LicenseClaimStatus? status;

  factory _$LicenseClaimInfo([
    void Function(LicenseClaimInfoBuilder)? updates,
  ]) => (LicenseClaimInfoBuilder()..update(updates))._build();

  _$LicenseClaimInfo._({this.status}) : super._();
  @override
  LicenseClaimInfo rebuild(void Function(LicenseClaimInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicenseClaimInfoBuilder toBuilder() =>
      LicenseClaimInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicenseClaimInfo && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'LicenseClaimInfo',
    )..add('status', status)).toString();
  }
}

class LicenseClaimInfoBuilder
    implements Builder<LicenseClaimInfo, LicenseClaimInfoBuilder> {
  _$LicenseClaimInfo? _$v;

  LicenseClaimStatus? _status;
  LicenseClaimStatus? get status => _$this._status;
  set status(LicenseClaimStatus? status) => _$this._status = status;

  LicenseClaimInfoBuilder() {
    LicenseClaimInfo._defaults(this);
  }

  LicenseClaimInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicenseClaimInfo other) {
    _$v = other as _$LicenseClaimInfo;
  }

  @override
  void update(void Function(LicenseClaimInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicenseClaimInfo build() => _build();

  _$LicenseClaimInfo _build() {
    final _$result = _$v ?? _$LicenseClaimInfo._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
