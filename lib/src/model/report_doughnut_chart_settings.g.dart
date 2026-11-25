// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_doughnut_chart_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportDoughnutChartSettings extends ReportDoughnutChartSettings {
  @override
  final DoughnutLayout? layout;
  @override
  final Font? totalValueFont;
  @override
  final bool? clockwise;
  @override
  final String? totalValueColor;
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

  factory _$ReportDoughnutChartSettings([
    void Function(ReportDoughnutChartSettingsBuilder)? updates,
  ]) => (ReportDoughnutChartSettingsBuilder()..update(updates))._build();

  _$ReportDoughnutChartSettings._({
    this.layout,
    this.totalValueFont,
    this.clockwise,
    this.totalValueColor,
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
  ReportDoughnutChartSettings rebuild(
    void Function(ReportDoughnutChartSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportDoughnutChartSettingsBuilder toBuilder() =>
      ReportDoughnutChartSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportDoughnutChartSettings &&
        layout == other.layout &&
        totalValueFont == other.totalValueFont &&
        clockwise == other.clockwise &&
        totalValueColor == other.totalValueColor &&
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
    _$hash = $jc(_$hash, layout.hashCode);
    _$hash = $jc(_$hash, totalValueFont.hashCode);
    _$hash = $jc(_$hash, clockwise.hashCode);
    _$hash = $jc(_$hash, totalValueColor.hashCode);
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
    return (newBuiltValueToStringHelper(r'ReportDoughnutChartSettings')
          ..add('layout', layout)
          ..add('totalValueFont', totalValueFont)
          ..add('clockwise', clockwise)
          ..add('totalValueColor', totalValueColor)
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

class ReportDoughnutChartSettingsBuilder
    implements
        Builder<
          ReportDoughnutChartSettings,
          ReportDoughnutChartSettingsBuilder
        >,
        ReportLatestChartSettingsBuilder {
  _$ReportDoughnutChartSettings? _$v;

  DoughnutLayout? _layout;
  DoughnutLayout? get layout => _$this._layout;
  set layout(covariant DoughnutLayout? layout) => _$this._layout = layout;

  FontBuilder? _totalValueFont;
  FontBuilder get totalValueFont => _$this._totalValueFont ??= FontBuilder();
  set totalValueFont(covariant FontBuilder? totalValueFont) =>
      _$this._totalValueFont = totalValueFont;

  bool? _clockwise;
  bool? get clockwise => _$this._clockwise;
  set clockwise(covariant bool? clockwise) => _$this._clockwise = clockwise;

  String? _totalValueColor;
  String? get totalValueColor => _$this._totalValueColor;
  set totalValueColor(covariant String? totalValueColor) =>
      _$this._totalValueColor = totalValueColor;

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

  ReportDoughnutChartSettingsBuilder() {
    ReportDoughnutChartSettings._defaults(this);
  }

  ReportDoughnutChartSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _layout = $v.layout;
      _totalValueFont = $v.totalValueFont?.toBuilder();
      _clockwise = $v.clockwise;
      _totalValueColor = $v.totalValueColor;
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
  void replace(covariant ReportDoughnutChartSettings other) {
    _$v = other as _$ReportDoughnutChartSettings;
  }

  @override
  void update(void Function(ReportDoughnutChartSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportDoughnutChartSettings build() => _build();

  _$ReportDoughnutChartSettings _build() {
    _$ReportDoughnutChartSettings _$result;
    try {
      _$result =
          _$v ??
          _$ReportDoughnutChartSettings._(
            layout: layout,
            totalValueFont: _totalValueFont?.build(),
            clockwise: clockwise,
            totalValueColor: totalValueColor,
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
        _$failedField = 'totalValueFont';
        _totalValueFont?.build();

        _$failedField = 'titleFont';
        _titleFont?.build();

        _$failedField = 'legendLabelFont';
        _legendLabelFont?.build();

        _$failedField = 'legendValueFont';
        _legendValueFont?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportDoughnutChartSettings',
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
