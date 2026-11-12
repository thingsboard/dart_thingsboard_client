// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_fill_settings_gradient.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChartFillSettingsGradient extends ChartFillSettingsGradient {
  @override
  final double? start;
  @override
  final double? end;

  factory _$ChartFillSettingsGradient([
    void Function(ChartFillSettingsGradientBuilder)? updates,
  ]) => (ChartFillSettingsGradientBuilder()..update(updates))._build();

  _$ChartFillSettingsGradient._({this.start, this.end}) : super._();
  @override
  ChartFillSettingsGradient rebuild(
    void Function(ChartFillSettingsGradientBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ChartFillSettingsGradientBuilder toBuilder() =>
      ChartFillSettingsGradientBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChartFillSettingsGradient &&
        start == other.start &&
        end == other.end;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChartFillSettingsGradient')
          ..add('start', start)
          ..add('end', end))
        .toString();
  }
}

class ChartFillSettingsGradientBuilder
    implements
        Builder<ChartFillSettingsGradient, ChartFillSettingsGradientBuilder> {
  _$ChartFillSettingsGradient? _$v;

  double? _start;
  double? get start => _$this._start;
  set start(double? start) => _$this._start = start;

  double? _end;
  double? get end => _$this._end;
  set end(double? end) => _$this._end = end;

  ChartFillSettingsGradientBuilder() {
    ChartFillSettingsGradient._defaults(this);
  }

  ChartFillSettingsGradientBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _start = $v.start;
      _end = $v.end;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChartFillSettingsGradient other) {
    _$v = other as _$ChartFillSettingsGradient;
  }

  @override
  void update(void Function(ChartFillSettingsGradientBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChartFillSettingsGradient build() => _build();

  _$ChartFillSettingsGradient _build() {
    final _$result =
        _$v ?? _$ChartFillSettingsGradient._(start: start, end: end);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
