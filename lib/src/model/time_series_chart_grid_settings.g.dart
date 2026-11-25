// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_chart_grid_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSeriesChartGridSettings extends TimeSeriesChartGridSettings {
  @override
  final bool? show_;
  @override
  final String? backgroundColor;
  @override
  final double? borderWidth;
  @override
  final String? borderColor;

  factory _$TimeSeriesChartGridSettings([
    void Function(TimeSeriesChartGridSettingsBuilder)? updates,
  ]) => (TimeSeriesChartGridSettingsBuilder()..update(updates))._build();

  _$TimeSeriesChartGridSettings._({
    this.show_,
    this.backgroundColor,
    this.borderWidth,
    this.borderColor,
  }) : super._();
  @override
  TimeSeriesChartGridSettings rebuild(
    void Function(TimeSeriesChartGridSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimeSeriesChartGridSettingsBuilder toBuilder() =>
      TimeSeriesChartGridSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSeriesChartGridSettings &&
        show_ == other.show_ &&
        backgroundColor == other.backgroundColor &&
        borderWidth == other.borderWidth &&
        borderColor == other.borderColor;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, show_.hashCode);
    _$hash = $jc(_$hash, backgroundColor.hashCode);
    _$hash = $jc(_$hash, borderWidth.hashCode);
    _$hash = $jc(_$hash, borderColor.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSeriesChartGridSettings')
          ..add('show_', show_)
          ..add('backgroundColor', backgroundColor)
          ..add('borderWidth', borderWidth)
          ..add('borderColor', borderColor))
        .toString();
  }
}

class TimeSeriesChartGridSettingsBuilder
    implements
        Builder<
          TimeSeriesChartGridSettings,
          TimeSeriesChartGridSettingsBuilder
        > {
  _$TimeSeriesChartGridSettings? _$v;

  bool? _show_;
  bool? get show_ => _$this._show_;
  set show_(bool? show_) => _$this._show_ = show_;

  String? _backgroundColor;
  String? get backgroundColor => _$this._backgroundColor;
  set backgroundColor(String? backgroundColor) =>
      _$this._backgroundColor = backgroundColor;

  double? _borderWidth;
  double? get borderWidth => _$this._borderWidth;
  set borderWidth(double? borderWidth) => _$this._borderWidth = borderWidth;

  String? _borderColor;
  String? get borderColor => _$this._borderColor;
  set borderColor(String? borderColor) => _$this._borderColor = borderColor;

  TimeSeriesChartGridSettingsBuilder() {
    TimeSeriesChartGridSettings._defaults(this);
  }

  TimeSeriesChartGridSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _show_ = $v.show_;
      _backgroundColor = $v.backgroundColor;
      _borderWidth = $v.borderWidth;
      _borderColor = $v.borderColor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSeriesChartGridSettings other) {
    _$v = other as _$TimeSeriesChartGridSettings;
  }

  @override
  void update(void Function(TimeSeriesChartGridSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSeriesChartGridSettings build() => _build();

  _$TimeSeriesChartGridSettings _build() {
    final _$result =
        _$v ??
        _$TimeSeriesChartGridSettings._(
          show_: show_,
          backgroundColor: backgroundColor,
          borderWidth: borderWidth,
          borderColor: borderColor,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
