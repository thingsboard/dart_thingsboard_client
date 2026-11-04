// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_chart_bar_width.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSeriesChartBarWidth extends TimeSeriesChartBarWidth {
  @override
  final bool? relative;
  @override
  final double? relativeWidth;
  @override
  final double? absoluteWidth;

  factory _$TimeSeriesChartBarWidth([
    void Function(TimeSeriesChartBarWidthBuilder)? updates,
  ]) => (TimeSeriesChartBarWidthBuilder()..update(updates))._build();

  _$TimeSeriesChartBarWidth._({
    this.relative,
    this.relativeWidth,
    this.absoluteWidth,
  }) : super._();
  @override
  TimeSeriesChartBarWidth rebuild(
    void Function(TimeSeriesChartBarWidthBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimeSeriesChartBarWidthBuilder toBuilder() =>
      TimeSeriesChartBarWidthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSeriesChartBarWidth &&
        relative == other.relative &&
        relativeWidth == other.relativeWidth &&
        absoluteWidth == other.absoluteWidth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, relative.hashCode);
    _$hash = $jc(_$hash, relativeWidth.hashCode);
    _$hash = $jc(_$hash, absoluteWidth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSeriesChartBarWidth')
          ..add('relative', relative)
          ..add('relativeWidth', relativeWidth)
          ..add('absoluteWidth', absoluteWidth))
        .toString();
  }
}

class TimeSeriesChartBarWidthBuilder
    implements
        Builder<TimeSeriesChartBarWidth, TimeSeriesChartBarWidthBuilder> {
  _$TimeSeriesChartBarWidth? _$v;

  bool? _relative;
  bool? get relative => _$this._relative;
  set relative(bool? relative) => _$this._relative = relative;

  double? _relativeWidth;
  double? get relativeWidth => _$this._relativeWidth;
  set relativeWidth(double? relativeWidth) =>
      _$this._relativeWidth = relativeWidth;

  double? _absoluteWidth;
  double? get absoluteWidth => _$this._absoluteWidth;
  set absoluteWidth(double? absoluteWidth) =>
      _$this._absoluteWidth = absoluteWidth;

  TimeSeriesChartBarWidthBuilder() {
    TimeSeriesChartBarWidth._defaults(this);
  }

  TimeSeriesChartBarWidthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _relative = $v.relative;
      _relativeWidth = $v.relativeWidth;
      _absoluteWidth = $v.absoluteWidth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSeriesChartBarWidth other) {
    _$v = other as _$TimeSeriesChartBarWidth;
  }

  @override
  void update(void Function(TimeSeriesChartBarWidthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSeriesChartBarWidth build() => _build();

  _$TimeSeriesChartBarWidth _build() {
    final _$result =
        _$v ??
        _$TimeSeriesChartBarWidth._(
          relative: relative,
          relativeWidth: relativeWidth,
          absoluteWidth: absoluteWidth,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
