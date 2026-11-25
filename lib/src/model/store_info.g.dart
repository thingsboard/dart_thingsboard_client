// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StoreInfo extends StoreInfo {
  @override
  final String? appId;
  @override
  final String? sha256CertFingerprints;
  @override
  final String? storeLink;

  factory _$StoreInfo([void Function(StoreInfoBuilder)? updates]) =>
      (StoreInfoBuilder()..update(updates))._build();

  _$StoreInfo._({this.appId, this.sha256CertFingerprints, this.storeLink})
    : super._();
  @override
  StoreInfo rebuild(void Function(StoreInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreInfoBuilder toBuilder() => StoreInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreInfo &&
        appId == other.appId &&
        sha256CertFingerprints == other.sha256CertFingerprints &&
        storeLink == other.storeLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, appId.hashCode);
    _$hash = $jc(_$hash, sha256CertFingerprints.hashCode);
    _$hash = $jc(_$hash, storeLink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StoreInfo')
          ..add('appId', appId)
          ..add('sha256CertFingerprints', sha256CertFingerprints)
          ..add('storeLink', storeLink))
        .toString();
  }
}

class StoreInfoBuilder implements Builder<StoreInfo, StoreInfoBuilder> {
  _$StoreInfo? _$v;

  String? _appId;
  String? get appId => _$this._appId;
  set appId(String? appId) => _$this._appId = appId;

  String? _sha256CertFingerprints;
  String? get sha256CertFingerprints => _$this._sha256CertFingerprints;
  set sha256CertFingerprints(String? sha256CertFingerprints) =>
      _$this._sha256CertFingerprints = sha256CertFingerprints;

  String? _storeLink;
  String? get storeLink => _$this._storeLink;
  set storeLink(String? storeLink) => _$this._storeLink = storeLink;

  StoreInfoBuilder() {
    StoreInfo._defaults(this);
  }

  StoreInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appId = $v.appId;
      _sha256CertFingerprints = $v.sha256CertFingerprints;
      _storeLink = $v.storeLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreInfo other) {
    _$v = other as _$StoreInfo;
  }

  @override
  void update(void Function(StoreInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StoreInfo build() => _build();

  _$StoreInfo _build() {
    final _$result =
        _$v ??
        _$StoreInfo._(
          appId: appId,
          sha256CertFingerprints: sha256CertFingerprints,
          storeLink: storeLink,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
