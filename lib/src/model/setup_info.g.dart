// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setup_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetupInfo extends SetupInfo {
  @override
  final SystemSetupState? status;

  factory _$SetupInfo([void Function(SetupInfoBuilder)? updates]) =>
      (SetupInfoBuilder()..update(updates))._build();

  _$SetupInfo._({this.status}) : super._();
  @override
  SetupInfo rebuild(void Function(SetupInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetupInfoBuilder toBuilder() => SetupInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetupInfo && status == other.status;
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
      r'SetupInfo',
    )..add('status', status)).toString();
  }
}

class SetupInfoBuilder implements Builder<SetupInfo, SetupInfoBuilder> {
  _$SetupInfo? _$v;

  SystemSetupState? _status;
  SystemSetupState? get status => _$this._status;
  set status(SystemSetupState? status) => _$this._status = status;

  SetupInfoBuilder() {
    SetupInfo._defaults(this);
  }

  SetupInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetupInfo other) {
    _$v = other as _$SetupInfo;
  }

  @override
  void update(void Function(SetupInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetupInfo build() => _build();

  _$SetupInfo _build() {
    final _$result = _$v ?? _$SetupInfo._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
