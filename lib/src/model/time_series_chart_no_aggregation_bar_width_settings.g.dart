// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_chart_no_aggregation_bar_width_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSeriesChartNoAggregationBarWidthSettings
    extends TimeSeriesChartNoAggregationBarWidthSettings {
  @override
  final TimeSeriesChartNoAggregationBarWidthStrategy? strategy;
  @override
  final TimeSeriesChartBarWidth? groupWidth;
  @override
  final TimeSeriesChartBarWidth? barWidth;

  factory _$TimeSeriesChartNoAggregationBarWidthSettings([
    void Function(TimeSeriesChartNoAggregationBarWidthSettingsBuilder)? updates,
  ]) => (TimeSeriesChartNoAggregationBarWidthSettingsBuilder()..update(updates))
      ._build();

  _$TimeSeriesChartNoAggregationBarWidthSettings._({
    this.strategy,
    this.groupWidth,
    this.barWidth,
  }) : super._();
  @override
  TimeSeriesChartNoAggregationBarWidthSettings rebuild(
    void Function(TimeSeriesChartNoAggregationBarWidthSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimeSeriesChartNoAggregationBarWidthSettingsBuilder toBuilder() =>
      TimeSeriesChartNoAggregationBarWidthSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSeriesChartNoAggregationBarWidthSettings &&
        strategy == other.strategy &&
        groupWidth == other.groupWidth &&
        barWidth == other.barWidth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, strategy.hashCode);
    _$hash = $jc(_$hash, groupWidth.hashCode);
    _$hash = $jc(_$hash, barWidth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'TimeSeriesChartNoAggregationBarWidthSettings',
          )
          ..add('strategy', strategy)
          ..add('groupWidth', groupWidth)
          ..add('barWidth', barWidth))
        .toString();
  }
}

class TimeSeriesChartNoAggregationBarWidthSettingsBuilder
    implements
        Builder<
          TimeSeriesChartNoAggregationBarWidthSettings,
          TimeSeriesChartNoAggregationBarWidthSettingsBuilder
        > {
  _$TimeSeriesChartNoAggregationBarWidthSettings? _$v;

  TimeSeriesChartNoAggregationBarWidthStrategy? _strategy;
  TimeSeriesChartNoAggregationBarWidthStrategy? get strategy =>
      _$this._strategy;
  set strategy(TimeSeriesChartNoAggregationBarWidthStrategy? strategy) =>
      _$this._strategy = strategy;

  TimeSeriesChartBarWidthBuilder? _groupWidth;
  TimeSeriesChartBarWidthBuilder get groupWidth =>
      _$this._groupWidth ??= TimeSeriesChartBarWidthBuilder();
  set groupWidth(TimeSeriesChartBarWidthBuilder? groupWidth) =>
      _$this._groupWidth = groupWidth;

  TimeSeriesChartBarWidthBuilder? _barWidth;
  TimeSeriesChartBarWidthBuilder get barWidth =>
      _$this._barWidth ??= TimeSeriesChartBarWidthBuilder();
  set barWidth(TimeSeriesChartBarWidthBuilder? barWidth) =>
      _$this._barWidth = barWidth;

  TimeSeriesChartNoAggregationBarWidthSettingsBuilder() {
    TimeSeriesChartNoAggregationBarWidthSettings._defaults(this);
  }

  TimeSeriesChartNoAggregationBarWidthSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _strategy = $v.strategy;
      _groupWidth = $v.groupWidth?.toBuilder();
      _barWidth = $v.barWidth?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSeriesChartNoAggregationBarWidthSettings other) {
    _$v = other as _$TimeSeriesChartNoAggregationBarWidthSettings;
  }

  @override
  void update(
    void Function(TimeSeriesChartNoAggregationBarWidthSettingsBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  TimeSeriesChartNoAggregationBarWidthSettings build() => _build();

  _$TimeSeriesChartNoAggregationBarWidthSettings _build() {
    _$TimeSeriesChartNoAggregationBarWidthSettings _$result;
    try {
      _$result =
          _$v ??
          _$TimeSeriesChartNoAggregationBarWidthSettings._(
            strategy: strategy,
            groupWidth: _groupWidth?.build(),
            barWidth: _barWidth?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groupWidth';
        _groupWidth?.build();
        _$failedField = 'barWidth';
        _barWidth?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TimeSeriesChartNoAggregationBarWidthSettings',
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
