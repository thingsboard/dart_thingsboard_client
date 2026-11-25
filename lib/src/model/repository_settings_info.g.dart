// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_settings_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RepositorySettingsInfo extends RepositorySettingsInfo {
  @override
  final bool? configured;
  @override
  final bool? readOnly;

  factory _$RepositorySettingsInfo([
    void Function(RepositorySettingsInfoBuilder)? updates,
  ]) => (RepositorySettingsInfoBuilder()..update(updates))._build();

  _$RepositorySettingsInfo._({this.configured, this.readOnly}) : super._();
  @override
  RepositorySettingsInfo rebuild(
    void Function(RepositorySettingsInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RepositorySettingsInfoBuilder toBuilder() =>
      RepositorySettingsInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositorySettingsInfo &&
        configured == other.configured &&
        readOnly == other.readOnly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configured.hashCode);
    _$hash = $jc(_$hash, readOnly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RepositorySettingsInfo')
          ..add('configured', configured)
          ..add('readOnly', readOnly))
        .toString();
  }
}

class RepositorySettingsInfoBuilder
    implements Builder<RepositorySettingsInfo, RepositorySettingsInfoBuilder> {
  _$RepositorySettingsInfo? _$v;

  bool? _configured;
  bool? get configured => _$this._configured;
  set configured(bool? configured) => _$this._configured = configured;

  bool? _readOnly;
  bool? get readOnly => _$this._readOnly;
  set readOnly(bool? readOnly) => _$this._readOnly = readOnly;

  RepositorySettingsInfoBuilder() {
    RepositorySettingsInfo._defaults(this);
  }

  RepositorySettingsInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configured = $v.configured;
      _readOnly = $v.readOnly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepositorySettingsInfo other) {
    _$v = other as _$RepositorySettingsInfo;
  }

  @override
  void update(void Function(RepositorySettingsInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RepositorySettingsInfo build() => _build();

  _$RepositorySettingsInfo _build() {
    final _$result =
        _$v ??
        _$RepositorySettingsInfo._(configured: configured, readOnly: readOnly);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
