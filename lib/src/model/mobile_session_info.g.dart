// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_session_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MobileSessionInfo extends MobileSessionInfo {
  @override
  final int? fcmTokenTimestamp;

  factory _$MobileSessionInfo([
    void Function(MobileSessionInfoBuilder)? updates,
  ]) => (MobileSessionInfoBuilder()..update(updates))._build();

  _$MobileSessionInfo._({this.fcmTokenTimestamp}) : super._();
  @override
  MobileSessionInfo rebuild(void Function(MobileSessionInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MobileSessionInfoBuilder toBuilder() =>
      MobileSessionInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MobileSessionInfo &&
        fcmTokenTimestamp == other.fcmTokenTimestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fcmTokenTimestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'MobileSessionInfo',
    )..add('fcmTokenTimestamp', fcmTokenTimestamp)).toString();
  }
}

class MobileSessionInfoBuilder
    implements Builder<MobileSessionInfo, MobileSessionInfoBuilder> {
  _$MobileSessionInfo? _$v;

  int? _fcmTokenTimestamp;
  int? get fcmTokenTimestamp => _$this._fcmTokenTimestamp;
  set fcmTokenTimestamp(int? fcmTokenTimestamp) =>
      _$this._fcmTokenTimestamp = fcmTokenTimestamp;

  MobileSessionInfoBuilder() {
    MobileSessionInfo._defaults(this);
  }

  MobileSessionInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fcmTokenTimestamp = $v.fcmTokenTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MobileSessionInfo other) {
    _$v = other as _$MobileSessionInfo;
  }

  @override
  void update(void Function(MobileSessionInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MobileSessionInfo build() => _build();

  _$MobileSessionInfo _build() {
    final _$result =
        _$v ?? _$MobileSessionInfo._(fcmTokenTimestamp: fcmTokenTimestamp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
