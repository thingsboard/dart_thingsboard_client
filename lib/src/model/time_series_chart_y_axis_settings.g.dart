// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_chart_y_axis_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSeriesChartYAxisSettings extends TimeSeriesChartYAxisSettings {
  @override
  final bool? show_;
  @override
  final String? label;
  @override
  final Font? labelFont;
  @override
  final String? labelColor;
  @override
  final AxisPosition? position;
  @override
  final bool? showTickLabels;
  @override
  final Font? tickLabelFont;
  @override
  final String? tickLabelColor;
  @override
  final bool? showTicks;
  @override
  final String? ticksColor;
  @override
  final bool? showLine;
  @override
  final String? lineColor;
  @override
  final bool? showSplitLines;
  @override
  final String? splitLinesColor;
  @override
  final String? id;
  @override
  final int? order;
  @override
  final String? units;
  @override
  final int? decimals;
  @override
  final double? interval;
  @override
  final int? splitNumber;
  @override
  final SimpleValueSourceConfig? min;
  @override
  final SimpleValueSourceConfig? max;

  factory _$TimeSeriesChartYAxisSettings([
    void Function(TimeSeriesChartYAxisSettingsBuilder)? updates,
  ]) => (TimeSeriesChartYAxisSettingsBuilder()..update(updates))._build();

  _$TimeSeriesChartYAxisSettings._({
    this.show_,
    this.label,
    this.labelFont,
    this.labelColor,
    this.position,
    this.showTickLabels,
    this.tickLabelFont,
    this.tickLabelColor,
    this.showTicks,
    this.ticksColor,
    this.showLine,
    this.lineColor,
    this.showSplitLines,
    this.splitLinesColor,
    this.id,
    this.order,
    this.units,
    this.decimals,
    this.interval,
    this.splitNumber,
    this.min,
    this.max,
  }) : super._();
  @override
  TimeSeriesChartYAxisSettings rebuild(
    void Function(TimeSeriesChartYAxisSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimeSeriesChartYAxisSettingsBuilder toBuilder() =>
      TimeSeriesChartYAxisSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSeriesChartYAxisSettings &&
        show_ == other.show_ &&
        label == other.label &&
        labelFont == other.labelFont &&
        labelColor == other.labelColor &&
        position == other.position &&
        showTickLabels == other.showTickLabels &&
        tickLabelFont == other.tickLabelFont &&
        tickLabelColor == other.tickLabelColor &&
        showTicks == other.showTicks &&
        ticksColor == other.ticksColor &&
        showLine == other.showLine &&
        lineColor == other.lineColor &&
        showSplitLines == other.showSplitLines &&
        splitLinesColor == other.splitLinesColor &&
        id == other.id &&
        order == other.order &&
        units == other.units &&
        decimals == other.decimals &&
        interval == other.interval &&
        splitNumber == other.splitNumber &&
        min == other.min &&
        max == other.max;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, show_.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, labelFont.hashCode);
    _$hash = $jc(_$hash, labelColor.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, showTickLabels.hashCode);
    _$hash = $jc(_$hash, tickLabelFont.hashCode);
    _$hash = $jc(_$hash, tickLabelColor.hashCode);
    _$hash = $jc(_$hash, showTicks.hashCode);
    _$hash = $jc(_$hash, ticksColor.hashCode);
    _$hash = $jc(_$hash, showLine.hashCode);
    _$hash = $jc(_$hash, lineColor.hashCode);
    _$hash = $jc(_$hash, showSplitLines.hashCode);
    _$hash = $jc(_$hash, splitLinesColor.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, decimals.hashCode);
    _$hash = $jc(_$hash, interval.hashCode);
    _$hash = $jc(_$hash, splitNumber.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSeriesChartYAxisSettings')
          ..add('show_', show_)
          ..add('label', label)
          ..add('labelFont', labelFont)
          ..add('labelColor', labelColor)
          ..add('position', position)
          ..add('showTickLabels', showTickLabels)
          ..add('tickLabelFont', tickLabelFont)
          ..add('tickLabelColor', tickLabelColor)
          ..add('showTicks', showTicks)
          ..add('ticksColor', ticksColor)
          ..add('showLine', showLine)
          ..add('lineColor', lineColor)
          ..add('showSplitLines', showSplitLines)
          ..add('splitLinesColor', splitLinesColor)
          ..add('id', id)
          ..add('order', order)
          ..add('units', units)
          ..add('decimals', decimals)
          ..add('interval', interval)
          ..add('splitNumber', splitNumber)
          ..add('min', min)
          ..add('max', max))
        .toString();
  }
}

class TimeSeriesChartYAxisSettingsBuilder
    implements
        Builder<
          TimeSeriesChartYAxisSettings,
          TimeSeriesChartYAxisSettingsBuilder
        > {
  _$TimeSeriesChartYAxisSettings? _$v;

  bool? _show_;
  bool? get show_ => _$this._show_;
  set show_(bool? show_) => _$this._show_ = show_;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  FontBuilder? _labelFont;
  FontBuilder get labelFont => _$this._labelFont ??= FontBuilder();
  set labelFont(FontBuilder? labelFont) => _$this._labelFont = labelFont;

  String? _labelColor;
  String? get labelColor => _$this._labelColor;
  set labelColor(String? labelColor) => _$this._labelColor = labelColor;

  AxisPosition? _position;
  AxisPosition? get position => _$this._position;
  set position(AxisPosition? position) => _$this._position = position;

  bool? _showTickLabels;
  bool? get showTickLabels => _$this._showTickLabels;
  set showTickLabels(bool? showTickLabels) =>
      _$this._showTickLabels = showTickLabels;

  FontBuilder? _tickLabelFont;
  FontBuilder get tickLabelFont => _$this._tickLabelFont ??= FontBuilder();
  set tickLabelFont(FontBuilder? tickLabelFont) =>
      _$this._tickLabelFont = tickLabelFont;

  String? _tickLabelColor;
  String? get tickLabelColor => _$this._tickLabelColor;
  set tickLabelColor(String? tickLabelColor) =>
      _$this._tickLabelColor = tickLabelColor;

  bool? _showTicks;
  bool? get showTicks => _$this._showTicks;
  set showTicks(bool? showTicks) => _$this._showTicks = showTicks;

  String? _ticksColor;
  String? get ticksColor => _$this._ticksColor;
  set ticksColor(String? ticksColor) => _$this._ticksColor = ticksColor;

  bool? _showLine;
  bool? get showLine => _$this._showLine;
  set showLine(bool? showLine) => _$this._showLine = showLine;

  String? _lineColor;
  String? get lineColor => _$this._lineColor;
  set lineColor(String? lineColor) => _$this._lineColor = lineColor;

  bool? _showSplitLines;
  bool? get showSplitLines => _$this._showSplitLines;
  set showSplitLines(bool? showSplitLines) =>
      _$this._showSplitLines = showSplitLines;

  String? _splitLinesColor;
  String? get splitLinesColor => _$this._splitLinesColor;
  set splitLinesColor(String? splitLinesColor) =>
      _$this._splitLinesColor = splitLinesColor;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  int? _decimals;
  int? get decimals => _$this._decimals;
  set decimals(int? decimals) => _$this._decimals = decimals;

  double? _interval;
  double? get interval => _$this._interval;
  set interval(double? interval) => _$this._interval = interval;

  int? _splitNumber;
  int? get splitNumber => _$this._splitNumber;
  set splitNumber(int? splitNumber) => _$this._splitNumber = splitNumber;

  SimpleValueSourceConfigBuilder? _min;
  SimpleValueSourceConfigBuilder get min =>
      _$this._min ??= SimpleValueSourceConfigBuilder();
  set min(SimpleValueSourceConfigBuilder? min) => _$this._min = min;

  SimpleValueSourceConfigBuilder? _max;
  SimpleValueSourceConfigBuilder get max =>
      _$this._max ??= SimpleValueSourceConfigBuilder();
  set max(SimpleValueSourceConfigBuilder? max) => _$this._max = max;

  TimeSeriesChartYAxisSettingsBuilder() {
    TimeSeriesChartYAxisSettings._defaults(this);
  }

  TimeSeriesChartYAxisSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _show_ = $v.show_;
      _label = $v.label;
      _labelFont = $v.labelFont?.toBuilder();
      _labelColor = $v.labelColor;
      _position = $v.position;
      _showTickLabels = $v.showTickLabels;
      _tickLabelFont = $v.tickLabelFont?.toBuilder();
      _tickLabelColor = $v.tickLabelColor;
      _showTicks = $v.showTicks;
      _ticksColor = $v.ticksColor;
      _showLine = $v.showLine;
      _lineColor = $v.lineColor;
      _showSplitLines = $v.showSplitLines;
      _splitLinesColor = $v.splitLinesColor;
      _id = $v.id;
      _order = $v.order;
      _units = $v.units;
      _decimals = $v.decimals;
      _interval = $v.interval;
      _splitNumber = $v.splitNumber;
      _min = $v.min?.toBuilder();
      _max = $v.max?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSeriesChartYAxisSettings other) {
    _$v = other as _$TimeSeriesChartYAxisSettings;
  }

  @override
  void update(void Function(TimeSeriesChartYAxisSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSeriesChartYAxisSettings build() => _build();

  _$TimeSeriesChartYAxisSettings _build() {
    _$TimeSeriesChartYAxisSettings _$result;
    try {
      _$result =
          _$v ??
          _$TimeSeriesChartYAxisSettings._(
            show_: show_,
            label: label,
            labelFont: _labelFont?.build(),
            labelColor: labelColor,
            position: position,
            showTickLabels: showTickLabels,
            tickLabelFont: _tickLabelFont?.build(),
            tickLabelColor: tickLabelColor,
            showTicks: showTicks,
            ticksColor: ticksColor,
            showLine: showLine,
            lineColor: lineColor,
            showSplitLines: showSplitLines,
            splitLinesColor: splitLinesColor,
            id: id,
            order: order,
            units: units,
            decimals: decimals,
            interval: interval,
            splitNumber: splitNumber,
            min: _min?.build(),
            max: _max?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'labelFont';
        _labelFont?.build();

        _$failedField = 'tickLabelFont';
        _tickLabelFont?.build();

        _$failedField = 'min';
        _min?.build();
        _$failedField = 'max';
        _max?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TimeSeriesChartYAxisSettings',
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
