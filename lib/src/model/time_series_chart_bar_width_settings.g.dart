// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_chart_bar_width_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSeriesChartBarWidthSettings
    extends TimeSeriesChartBarWidthSettings {
  @override
  final double? barGap;
  @override
  final double? intervalGap;

  factory _$TimeSeriesChartBarWidthSettings([
    void Function(TimeSeriesChartBarWidthSettingsBuilder)? updates,
  ]) => (TimeSeriesChartBarWidthSettingsBuilder()..update(updates))._build();

  _$TimeSeriesChartBarWidthSettings._({this.barGap, this.intervalGap})
    : super._();
  @override
  TimeSeriesChartBarWidthSettings rebuild(
    void Function(TimeSeriesChartBarWidthSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimeSeriesChartBarWidthSettingsBuilder toBuilder() =>
      TimeSeriesChartBarWidthSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSeriesChartBarWidthSettings &&
        barGap == other.barGap &&
        intervalGap == other.intervalGap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, barGap.hashCode);
    _$hash = $jc(_$hash, intervalGap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSeriesChartBarWidthSettings')
          ..add('barGap', barGap)
          ..add('intervalGap', intervalGap))
        .toString();
  }
}

class TimeSeriesChartBarWidthSettingsBuilder
    implements
        Builder<
          TimeSeriesChartBarWidthSettings,
          TimeSeriesChartBarWidthSettingsBuilder
        > {
  _$TimeSeriesChartBarWidthSettings? _$v;

  double? _barGap;
  double? get barGap => _$this._barGap;
  set barGap(double? barGap) => _$this._barGap = barGap;

  double? _intervalGap;
  double? get intervalGap => _$this._intervalGap;
  set intervalGap(double? intervalGap) => _$this._intervalGap = intervalGap;

  TimeSeriesChartBarWidthSettingsBuilder() {
    TimeSeriesChartBarWidthSettings._defaults(this);
  }

  TimeSeriesChartBarWidthSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _barGap = $v.barGap;
      _intervalGap = $v.intervalGap;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSeriesChartBarWidthSettings other) {
    _$v = other as _$TimeSeriesChartBarWidthSettings;
  }

  @override
  void update(void Function(TimeSeriesChartBarWidthSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSeriesChartBarWidthSettings build() => _build();

  _$TimeSeriesChartBarWidthSettings _build() {
    final _$result =
        _$v ??
        _$TimeSeriesChartBarWidthSettings._(
          barGap: barGap,
          intervalGap: intervalGap,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
