// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_pie_chart_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportPieChartSettings extends ReportPieChartSettings {
  @override
  final String? borderColor;
  @override
  final Font? labelFont;
  @override
  final PieChartLabelPosition? labelPosition;
  @override
  final double? borderWidth;
  @override
  final bool? clockwise;
  @override
  final double? radius;
  @override
  final bool? showLabel;
  @override
  final String? labelColor;
  @override
  final bool? showTitle;
  @override
  final String? title;
  @override
  final Font? titleFont;
  @override
  final String? titleColor;
  @override
  final TextAlignment? titleAlignment;
  @override
  final String? units;
  @override
  final int? decimals;
  @override
  final bool? autoScale;
  @override
  final bool? sortSeries;
  @override
  final bool? showTotal;
  @override
  final bool? showLegend;
  @override
  final LegendPosition? legendPosition;
  @override
  final Font? legendLabelFont;
  @override
  final String? legendLabelColor;
  @override
  final Font? legendValueFont;
  @override
  final String? legendValueColor;
  @override
  final bool? legendShowTotal;

  factory _$ReportPieChartSettings([
    void Function(ReportPieChartSettingsBuilder)? updates,
  ]) => (ReportPieChartSettingsBuilder()..update(updates))._build();

  _$ReportPieChartSettings._({
    this.borderColor,
    this.labelFont,
    this.labelPosition,
    this.borderWidth,
    this.clockwise,
    this.radius,
    this.showLabel,
    this.labelColor,
    this.showTitle,
    this.title,
    this.titleFont,
    this.titleColor,
    this.titleAlignment,
    this.units,
    this.decimals,
    this.autoScale,
    this.sortSeries,
    this.showTotal,
    this.showLegend,
    this.legendPosition,
    this.legendLabelFont,
    this.legendLabelColor,
    this.legendValueFont,
    this.legendValueColor,
    this.legendShowTotal,
  }) : super._();
  @override
  ReportPieChartSettings rebuild(
    void Function(ReportPieChartSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportPieChartSettingsBuilder toBuilder() =>
      ReportPieChartSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportPieChartSettings &&
        borderColor == other.borderColor &&
        labelFont == other.labelFont &&
        labelPosition == other.labelPosition &&
        borderWidth == other.borderWidth &&
        clockwise == other.clockwise &&
        radius == other.radius &&
        showLabel == other.showLabel &&
        labelColor == other.labelColor &&
        showTitle == other.showTitle &&
        title == other.title &&
        titleFont == other.titleFont &&
        titleColor == other.titleColor &&
        titleAlignment == other.titleAlignment &&
        units == other.units &&
        decimals == other.decimals &&
        autoScale == other.autoScale &&
        sortSeries == other.sortSeries &&
        showTotal == other.showTotal &&
        showLegend == other.showLegend &&
        legendPosition == other.legendPosition &&
        legendLabelFont == other.legendLabelFont &&
        legendLabelColor == other.legendLabelColor &&
        legendValueFont == other.legendValueFont &&
        legendValueColor == other.legendValueColor &&
        legendShowTotal == other.legendShowTotal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, borderColor.hashCode);
    _$hash = $jc(_$hash, labelFont.hashCode);
    _$hash = $jc(_$hash, labelPosition.hashCode);
    _$hash = $jc(_$hash, borderWidth.hashCode);
    _$hash = $jc(_$hash, clockwise.hashCode);
    _$hash = $jc(_$hash, radius.hashCode);
    _$hash = $jc(_$hash, showLabel.hashCode);
    _$hash = $jc(_$hash, labelColor.hashCode);
    _$hash = $jc(_$hash, showTitle.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, titleFont.hashCode);
    _$hash = $jc(_$hash, titleColor.hashCode);
    _$hash = $jc(_$hash, titleAlignment.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, decimals.hashCode);
    _$hash = $jc(_$hash, autoScale.hashCode);
    _$hash = $jc(_$hash, sortSeries.hashCode);
    _$hash = $jc(_$hash, showTotal.hashCode);
    _$hash = $jc(_$hash, showLegend.hashCode);
    _$hash = $jc(_$hash, legendPosition.hashCode);
    _$hash = $jc(_$hash, legendLabelFont.hashCode);
    _$hash = $jc(_$hash, legendLabelColor.hashCode);
    _$hash = $jc(_$hash, legendValueFont.hashCode);
    _$hash = $jc(_$hash, legendValueColor.hashCode);
    _$hash = $jc(_$hash, legendShowTotal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportPieChartSettings')
          ..add('borderColor', borderColor)
          ..add('labelFont', labelFont)
          ..add('labelPosition', labelPosition)
          ..add('borderWidth', borderWidth)
          ..add('clockwise', clockwise)
          ..add('radius', radius)
          ..add('showLabel', showLabel)
          ..add('labelColor', labelColor)
          ..add('showTitle', showTitle)
          ..add('title', title)
          ..add('titleFont', titleFont)
          ..add('titleColor', titleColor)
          ..add('titleAlignment', titleAlignment)
          ..add('units', units)
          ..add('decimals', decimals)
          ..add('autoScale', autoScale)
          ..add('sortSeries', sortSeries)
          ..add('showTotal', showTotal)
          ..add('showLegend', showLegend)
          ..add('legendPosition', legendPosition)
          ..add('legendLabelFont', legendLabelFont)
          ..add('legendLabelColor', legendLabelColor)
          ..add('legendValueFont', legendValueFont)
          ..add('legendValueColor', legendValueColor)
          ..add('legendShowTotal', legendShowTotal))
        .toString();
  }
}

class ReportPieChartSettingsBuilder
    implements
        Builder<ReportPieChartSettings, ReportPieChartSettingsBuilder>,
        ReportLatestChartSettingsBuilder {
  _$ReportPieChartSettings? _$v;

  String? _borderColor;
  String? get borderColor => _$this._borderColor;
  set borderColor(covariant String? borderColor) =>
      _$this._borderColor = borderColor;

  FontBuilder? _labelFont;
  FontBuilder get labelFont => _$this._labelFont ??= FontBuilder();
  set labelFont(covariant FontBuilder? labelFont) =>
      _$this._labelFont = labelFont;

  PieChartLabelPosition? _labelPosition;
  PieChartLabelPosition? get labelPosition => _$this._labelPosition;
  set labelPosition(covariant PieChartLabelPosition? labelPosition) =>
      _$this._labelPosition = labelPosition;

  double? _borderWidth;
  double? get borderWidth => _$this._borderWidth;
  set borderWidth(covariant double? borderWidth) =>
      _$this._borderWidth = borderWidth;

  bool? _clockwise;
  bool? get clockwise => _$this._clockwise;
  set clockwise(covariant bool? clockwise) => _$this._clockwise = clockwise;

  double? _radius;
  double? get radius => _$this._radius;
  set radius(covariant double? radius) => _$this._radius = radius;

  bool? _showLabel;
  bool? get showLabel => _$this._showLabel;
  set showLabel(covariant bool? showLabel) => _$this._showLabel = showLabel;

  String? _labelColor;
  String? get labelColor => _$this._labelColor;
  set labelColor(covariant String? labelColor) =>
      _$this._labelColor = labelColor;

  bool? _showTitle;
  bool? get showTitle => _$this._showTitle;
  set showTitle(covariant bool? showTitle) => _$this._showTitle = showTitle;

  String? _title;
  String? get title => _$this._title;
  set title(covariant String? title) => _$this._title = title;

  FontBuilder? _titleFont;
  FontBuilder get titleFont => _$this._titleFont ??= FontBuilder();
  set titleFont(covariant FontBuilder? titleFont) =>
      _$this._titleFont = titleFont;

  String? _titleColor;
  String? get titleColor => _$this._titleColor;
  set titleColor(covariant String? titleColor) =>
      _$this._titleColor = titleColor;

  TextAlignment? _titleAlignment;
  TextAlignment? get titleAlignment => _$this._titleAlignment;
  set titleAlignment(covariant TextAlignment? titleAlignment) =>
      _$this._titleAlignment = titleAlignment;

  String? _units;
  String? get units => _$this._units;
  set units(covariant String? units) => _$this._units = units;

  int? _decimals;
  int? get decimals => _$this._decimals;
  set decimals(covariant int? decimals) => _$this._decimals = decimals;

  bool? _autoScale;
  bool? get autoScale => _$this._autoScale;
  set autoScale(covariant bool? autoScale) => _$this._autoScale = autoScale;

  bool? _sortSeries;
  bool? get sortSeries => _$this._sortSeries;
  set sortSeries(covariant bool? sortSeries) => _$this._sortSeries = sortSeries;

  bool? _showTotal;
  bool? get showTotal => _$this._showTotal;
  set showTotal(covariant bool? showTotal) => _$this._showTotal = showTotal;

  bool? _showLegend;
  bool? get showLegend => _$this._showLegend;
  set showLegend(covariant bool? showLegend) => _$this._showLegend = showLegend;

  LegendPosition? _legendPosition;
  LegendPosition? get legendPosition => _$this._legendPosition;
  set legendPosition(covariant LegendPosition? legendPosition) =>
      _$this._legendPosition = legendPosition;

  FontBuilder? _legendLabelFont;
  FontBuilder get legendLabelFont => _$this._legendLabelFont ??= FontBuilder();
  set legendLabelFont(covariant FontBuilder? legendLabelFont) =>
      _$this._legendLabelFont = legendLabelFont;

  String? _legendLabelColor;
  String? get legendLabelColor => _$this._legendLabelColor;
  set legendLabelColor(covariant String? legendLabelColor) =>
      _$this._legendLabelColor = legendLabelColor;

  FontBuilder? _legendValueFont;
  FontBuilder get legendValueFont => _$this._legendValueFont ??= FontBuilder();
  set legendValueFont(covariant FontBuilder? legendValueFont) =>
      _$this._legendValueFont = legendValueFont;

  String? _legendValueColor;
  String? get legendValueColor => _$this._legendValueColor;
  set legendValueColor(covariant String? legendValueColor) =>
      _$this._legendValueColor = legendValueColor;

  bool? _legendShowTotal;
  bool? get legendShowTotal => _$this._legendShowTotal;
  set legendShowTotal(covariant bool? legendShowTotal) =>
      _$this._legendShowTotal = legendShowTotal;

  ReportPieChartSettingsBuilder() {
    ReportPieChartSettings._defaults(this);
  }

  ReportPieChartSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _borderColor = $v.borderColor;
      _labelFont = $v.labelFont?.toBuilder();
      _labelPosition = $v.labelPosition;
      _borderWidth = $v.borderWidth;
      _clockwise = $v.clockwise;
      _radius = $v.radius;
      _showLabel = $v.showLabel;
      _labelColor = $v.labelColor;
      _showTitle = $v.showTitle;
      _title = $v.title;
      _titleFont = $v.titleFont?.toBuilder();
      _titleColor = $v.titleColor;
      _titleAlignment = $v.titleAlignment;
      _units = $v.units;
      _decimals = $v.decimals;
      _autoScale = $v.autoScale;
      _sortSeries = $v.sortSeries;
      _showTotal = $v.showTotal;
      _showLegend = $v.showLegend;
      _legendPosition = $v.legendPosition;
      _legendLabelFont = $v.legendLabelFont?.toBuilder();
      _legendLabelColor = $v.legendLabelColor;
      _legendValueFont = $v.legendValueFont?.toBuilder();
      _legendValueColor = $v.legendValueColor;
      _legendShowTotal = $v.legendShowTotal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ReportPieChartSettings other) {
    _$v = other as _$ReportPieChartSettings;
  }

  @override
  void update(void Function(ReportPieChartSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportPieChartSettings build() => _build();

  _$ReportPieChartSettings _build() {
    _$ReportPieChartSettings _$result;
    try {
      _$result =
          _$v ??
          _$ReportPieChartSettings._(
            borderColor: borderColor,
            labelFont: _labelFont?.build(),
            labelPosition: labelPosition,
            borderWidth: borderWidth,
            clockwise: clockwise,
            radius: radius,
            showLabel: showLabel,
            labelColor: labelColor,
            showTitle: showTitle,
            title: title,
            titleFont: _titleFont?.build(),
            titleColor: titleColor,
            titleAlignment: titleAlignment,
            units: units,
            decimals: decimals,
            autoScale: autoScale,
            sortSeries: sortSeries,
            showTotal: showTotal,
            showLegend: showLegend,
            legendPosition: legendPosition,
            legendLabelFont: _legendLabelFont?.build(),
            legendLabelColor: legendLabelColor,
            legendValueFont: _legendValueFont?.build(),
            legendValueColor: legendValueColor,
            legendShowTotal: legendShowTotal,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'labelFont';
        _labelFont?.build();

        _$failedField = 'titleFont';
        _titleFont?.build();

        _$failedField = 'legendLabelFont';
        _legendLabelFont?.build();

        _$failedField = 'legendValueFont';
        _legendValueFont?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportPieChartSettings',
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
