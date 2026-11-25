// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemInfo extends SystemInfo {
  @override
  final bool? monolith;
  @override
  final BuiltList<SystemInfoData>? systemData;

  factory _$SystemInfo([void Function(SystemInfoBuilder)? updates]) =>
      (SystemInfoBuilder()..update(updates))._build();

  _$SystemInfo._({this.monolith, this.systemData}) : super._();
  @override
  SystemInfo rebuild(void Function(SystemInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemInfoBuilder toBuilder() => SystemInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemInfo &&
        monolith == other.monolith &&
        systemData == other.systemData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, monolith.hashCode);
    _$hash = $jc(_$hash, systemData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemInfo')
          ..add('monolith', monolith)
          ..add('systemData', systemData))
        .toString();
  }
}

class SystemInfoBuilder implements Builder<SystemInfo, SystemInfoBuilder> {
  _$SystemInfo? _$v;

  bool? _monolith;
  bool? get monolith => _$this._monolith;
  set monolith(bool? monolith) => _$this._monolith = monolith;

  ListBuilder<SystemInfoData>? _systemData;
  ListBuilder<SystemInfoData> get systemData =>
      _$this._systemData ??= ListBuilder<SystemInfoData>();
  set systemData(ListBuilder<SystemInfoData>? systemData) =>
      _$this._systemData = systemData;

  SystemInfoBuilder() {
    SystemInfo._defaults(this);
  }

  SystemInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _monolith = $v.monolith;
      _systemData = $v.systemData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemInfo other) {
    _$v = other as _$SystemInfo;
  }

  @override
  void update(void Function(SystemInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemInfo build() => _build();

  _$SystemInfo _build() {
    _$SystemInfo _$result;
    try {
      _$result =
          _$v ??
          _$SystemInfo._(monolith: monolith, systemData: _systemData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'systemData';
        _systemData?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SystemInfo',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
