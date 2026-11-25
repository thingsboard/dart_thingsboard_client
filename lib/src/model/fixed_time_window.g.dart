// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixed_time_window.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FixedTimeWindow extends FixedTimeWindow {
  @override
  final int? startTimeMs;
  @override
  final int? endTimeMs;

  factory _$FixedTimeWindow([void Function(FixedTimeWindowBuilder)? updates]) =>
      (FixedTimeWindowBuilder()..update(updates))._build();

  _$FixedTimeWindow._({this.startTimeMs, this.endTimeMs}) : super._();
  @override
  FixedTimeWindow rebuild(void Function(FixedTimeWindowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FixedTimeWindowBuilder toBuilder() => FixedTimeWindowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FixedTimeWindow &&
        startTimeMs == other.startTimeMs &&
        endTimeMs == other.endTimeMs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startTimeMs.hashCode);
    _$hash = $jc(_$hash, endTimeMs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FixedTimeWindow')
          ..add('startTimeMs', startTimeMs)
          ..add('endTimeMs', endTimeMs))
        .toString();
  }
}

class FixedTimeWindowBuilder
    implements Builder<FixedTimeWindow, FixedTimeWindowBuilder> {
  _$FixedTimeWindow? _$v;

  int? _startTimeMs;
  int? get startTimeMs => _$this._startTimeMs;
  set startTimeMs(int? startTimeMs) => _$this._startTimeMs = startTimeMs;

  int? _endTimeMs;
  int? get endTimeMs => _$this._endTimeMs;
  set endTimeMs(int? endTimeMs) => _$this._endTimeMs = endTimeMs;

  FixedTimeWindowBuilder() {
    FixedTimeWindow._defaults(this);
  }

  FixedTimeWindowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startTimeMs = $v.startTimeMs;
      _endTimeMs = $v.endTimeMs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FixedTimeWindow other) {
    _$v = other as _$FixedTimeWindow;
  }

  @override
  void update(void Function(FixedTimeWindowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FixedTimeWindow build() => _build();

  _$FixedTimeWindow _build() {
    final _$result =
        _$v ??
        _$FixedTimeWindow._(startTimeMs: startTimeMs, endTimeMs: endTimeMs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
