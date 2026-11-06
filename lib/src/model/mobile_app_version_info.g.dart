// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_app_version_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MobileAppVersionInfo extends MobileAppVersionInfo {
  @override
  final String? minVersion;
  @override
  final String? minVersionReleaseNotes;
  @override
  final String? latestVersion;
  @override
  final String? latestVersionReleaseNotes;

  factory _$MobileAppVersionInfo([
    void Function(MobileAppVersionInfoBuilder)? updates,
  ]) => (MobileAppVersionInfoBuilder()..update(updates))._build();

  _$MobileAppVersionInfo._({
    this.minVersion,
    this.minVersionReleaseNotes,
    this.latestVersion,
    this.latestVersionReleaseNotes,
  }) : super._();
  @override
  MobileAppVersionInfo rebuild(
    void Function(MobileAppVersionInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MobileAppVersionInfoBuilder toBuilder() =>
      MobileAppVersionInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MobileAppVersionInfo &&
        minVersion == other.minVersion &&
        minVersionReleaseNotes == other.minVersionReleaseNotes &&
        latestVersion == other.latestVersion &&
        latestVersionReleaseNotes == other.latestVersionReleaseNotes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minVersion.hashCode);
    _$hash = $jc(_$hash, minVersionReleaseNotes.hashCode);
    _$hash = $jc(_$hash, latestVersion.hashCode);
    _$hash = $jc(_$hash, latestVersionReleaseNotes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MobileAppVersionInfo')
          ..add('minVersion', minVersion)
          ..add('minVersionReleaseNotes', minVersionReleaseNotes)
          ..add('latestVersion', latestVersion)
          ..add('latestVersionReleaseNotes', latestVersionReleaseNotes))
        .toString();
  }
}

class MobileAppVersionInfoBuilder
    implements Builder<MobileAppVersionInfo, MobileAppVersionInfoBuilder> {
  _$MobileAppVersionInfo? _$v;

  String? _minVersion;
  String? get minVersion => _$this._minVersion;
  set minVersion(String? minVersion) => _$this._minVersion = minVersion;

  String? _minVersionReleaseNotes;
  String? get minVersionReleaseNotes => _$this._minVersionReleaseNotes;
  set minVersionReleaseNotes(String? minVersionReleaseNotes) =>
      _$this._minVersionReleaseNotes = minVersionReleaseNotes;

  String? _latestVersion;
  String? get latestVersion => _$this._latestVersion;
  set latestVersion(String? latestVersion) =>
      _$this._latestVersion = latestVersion;

  String? _latestVersionReleaseNotes;
  String? get latestVersionReleaseNotes => _$this._latestVersionReleaseNotes;
  set latestVersionReleaseNotes(String? latestVersionReleaseNotes) =>
      _$this._latestVersionReleaseNotes = latestVersionReleaseNotes;

  MobileAppVersionInfoBuilder() {
    MobileAppVersionInfo._defaults(this);
  }

  MobileAppVersionInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minVersion = $v.minVersion;
      _minVersionReleaseNotes = $v.minVersionReleaseNotes;
      _latestVersion = $v.latestVersion;
      _latestVersionReleaseNotes = $v.latestVersionReleaseNotes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MobileAppVersionInfo other) {
    _$v = other as _$MobileAppVersionInfo;
  }

  @override
  void update(void Function(MobileAppVersionInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MobileAppVersionInfo build() => _build();

  _$MobileAppVersionInfo _build() {
    final _$result =
        _$v ??
        _$MobileAppVersionInfo._(
          minVersion: minVersion,
          minVersionReleaseNotes: minVersionReleaseNotes,
          latestVersion: latestVersion,
          latestVersionReleaseNotes: latestVersionReleaseNotes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
