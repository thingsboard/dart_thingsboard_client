// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debug_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DebugSettings extends DebugSettings {
  @override
  final bool? failuresEnabled;
  @override
  final bool? allEnabled;
  @override
  final int? allEnabledUntil;

  factory _$DebugSettings([void Function(DebugSettingsBuilder)? updates]) =>
      (DebugSettingsBuilder()..update(updates))._build();

  _$DebugSettings._({
    this.failuresEnabled,
    this.allEnabled,
    this.allEnabledUntil,
  }) : super._();
  @override
  DebugSettings rebuild(void Function(DebugSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DebugSettingsBuilder toBuilder() => DebugSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DebugSettings &&
        failuresEnabled == other.failuresEnabled &&
        allEnabled == other.allEnabled &&
        allEnabledUntil == other.allEnabledUntil;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, failuresEnabled.hashCode);
    _$hash = $jc(_$hash, allEnabled.hashCode);
    _$hash = $jc(_$hash, allEnabledUntil.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DebugSettings')
          ..add('failuresEnabled', failuresEnabled)
          ..add('allEnabled', allEnabled)
          ..add('allEnabledUntil', allEnabledUntil))
        .toString();
  }
}

class DebugSettingsBuilder
    implements Builder<DebugSettings, DebugSettingsBuilder> {
  _$DebugSettings? _$v;

  bool? _failuresEnabled;
  bool? get failuresEnabled => _$this._failuresEnabled;
  set failuresEnabled(bool? failuresEnabled) =>
      _$this._failuresEnabled = failuresEnabled;

  bool? _allEnabled;
  bool? get allEnabled => _$this._allEnabled;
  set allEnabled(bool? allEnabled) => _$this._allEnabled = allEnabled;

  int? _allEnabledUntil;
  int? get allEnabledUntil => _$this._allEnabledUntil;
  set allEnabledUntil(int? allEnabledUntil) =>
      _$this._allEnabledUntil = allEnabledUntil;

  DebugSettingsBuilder() {
    DebugSettings._defaults(this);
  }

  DebugSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _failuresEnabled = $v.failuresEnabled;
      _allEnabled = $v.allEnabled;
      _allEnabledUntil = $v.allEnabledUntil;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DebugSettings other) {
    _$v = other as _$DebugSettings;
  }

  @override
  void update(void Function(DebugSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DebugSettings build() => _build();

  _$DebugSettings _build() {
    final _$result =
        _$v ??
        _$DebugSettings._(
          failuresEnabled: failuresEnabled,
          allEnabled: allEnabled,
          allEnabledUntil: allEnabledUntil,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
