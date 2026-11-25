// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_time_series_chart_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class ReportTimeSeriesChartSettingsBuilder {
  void replace(ReportTimeSeriesChartSettings other);
  void update(void Function(ReportTimeSeriesChartSettingsBuilder) updates);
  bool? get showTitle;
  set showTitle(bool? showTitle);

  String? get title;
  set title(String? title);

  FontBuilder get titleFont;
  set titleFont(FontBuilder? titleFont);

  String? get titleColor;
  set titleColor(String? titleColor);

  TextAlignment? get titleAlignment;
  set titleAlignment(TextAlignment? titleAlignment);

  ListBuilder<TimeSeriesChartThreshold> get thresholds;
  set thresholds(ListBuilder<TimeSeriesChartThreshold>? thresholds);

  bool? get stack;
  set stack(bool? stack);

  TimeSeriesChartGridSettingsBuilder get grid;
  set grid(TimeSeriesChartGridSettingsBuilder? grid);

  MapBuilder<String, TimeSeriesChartYAxisSettings> get yAxes;
  set yAxes(MapBuilder<String, TimeSeriesChartYAxisSettings>? yAxes);

  TimeSeriesChartXAxisSettingsBuilder get xAxis;
  set xAxis(TimeSeriesChartXAxisSettingsBuilder? xAxis);

  TimeSeriesChartBarWidthSettingsBuilder get barWidthSettings;
  set barWidthSettings(
    TimeSeriesChartBarWidthSettingsBuilder? barWidthSettings,
  );

  TimeSeriesChartNoAggregationBarWidthSettingsBuilder
  get noAggregationBarWidthSettings;
  set noAggregationBarWidthSettings(
    TimeSeriesChartNoAggregationBarWidthSettingsBuilder?
    noAggregationBarWidthSettings,
  );

  ListBuilder<TimeSeriesChartStateSettings> get states;
  set states(ListBuilder<TimeSeriesChartStateSettings>? states);

  bool? get comparisonEnabled;
  set comparisonEnabled(bool? comparisonEnabled);

  ComparisonDuration? get timeForComparison;
  set timeForComparison(ComparisonDuration? timeForComparison);

  int? get comparisonCustomIntervalValue;
  set comparisonCustomIntervalValue(int? comparisonCustomIntervalValue);

  TimeSeriesChartXAxisSettingsBuilder get comparisonXAxis;
  set comparisonXAxis(TimeSeriesChartXAxisSettingsBuilder? comparisonXAxis);

  bool? get showLegend;
  set showLegend(bool? showLegend);

  FontBuilder get legendColumnTitleFont;
  set legendColumnTitleFont(FontBuilder? legendColumnTitleFont);

  String? get legendColumnTitleColor;
  set legendColumnTitleColor(String? legendColumnTitleColor);

  FontBuilder get legendLabelFont;
  set legendLabelFont(FontBuilder? legendLabelFont);

  String? get legendLabelColor;
  set legendLabelColor(String? legendLabelColor);

  FontBuilder get legendValueFont;
  set legendValueFont(FontBuilder? legendValueFont);

  String? get legendValueColor;
  set legendValueColor(String? legendValueColor);

  LegendConfigBuilder get legendConfig;
  set legendConfig(LegendConfigBuilder? legendConfig);

  TimeSeriesChartXAxisSettingsBuilder get xaxis;
  set xaxis(TimeSeriesChartXAxisSettingsBuilder? xaxis);

  MapBuilder<String, TimeSeriesChartYAxisSettings> get yaxes;
  set yaxes(MapBuilder<String, TimeSeriesChartYAxisSettings>? yaxes);
}

class _$$ReportTimeSeriesChartSettings extends $ReportTimeSeriesChartSettings {
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
  final BuiltList<TimeSeriesChartThreshold>? thresholds;
  @override
  final bool? stack;
  @override
  final TimeSeriesChartGridSettings? grid;
  @override
  final BuiltMap<String, TimeSeriesChartYAxisSettings>? yAxes;
  @override
  final TimeSeriesChartXAxisSettings? xAxis;
  @override
  final TimeSeriesChartBarWidthSettings? barWidthSettings;
  @override
  final TimeSeriesChartNoAggregationBarWidthSettings?
  noAggregationBarWidthSettings;
  @override
  final BuiltList<TimeSeriesChartStateSettings>? states;
  @override
  final bool? comparisonEnabled;
  @override
  final ComparisonDuration? timeForComparison;
  @override
  final int? comparisonCustomIntervalValue;
  @override
  final TimeSeriesChartXAxisSettings? comparisonXAxis;
  @override
  final bool? showLegend;
  @override
  final Font? legendColumnTitleFont;
  @override
  final String? legendColumnTitleColor;
  @override
  final Font? legendLabelFont;
  @override
  final String? legendLabelColor;
  @override
  final Font? legendValueFont;
  @override
  final String? legendValueColor;
  @override
  final LegendConfig? legendConfig;
  @override
  final TimeSeriesChartXAxisSettings? xaxis;
  @override
  final BuiltMap<String, TimeSeriesChartYAxisSettings>? yaxes;

  factory _$$ReportTimeSeriesChartSettings([
    void Function($ReportTimeSeriesChartSettingsBuilder)? updates,
  ]) => ($ReportTimeSeriesChartSettingsBuilder()..update(updates))._build();

  _$$ReportTimeSeriesChartSettings._({
    this.showTitle,
    this.title,
    this.titleFont,
    this.titleColor,
    this.titleAlignment,
    this.thresholds,
    this.stack,
    this.grid,
    this.yAxes,
    this.xAxis,
    this.barWidthSettings,
    this.noAggregationBarWidthSettings,
    this.states,
    this.comparisonEnabled,
    this.timeForComparison,
    this.comparisonCustomIntervalValue,
    this.comparisonXAxis,
    this.showLegend,
    this.legendColumnTitleFont,
    this.legendColumnTitleColor,
    this.legendLabelFont,
    this.legendLabelColor,
    this.legendValueFont,
    this.legendValueColor,
    this.legendConfig,
    this.xaxis,
    this.yaxes,
  }) : super._();
  @override
  $ReportTimeSeriesChartSettings rebuild(
    void Function($ReportTimeSeriesChartSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $ReportTimeSeriesChartSettingsBuilder toBuilder() =>
      $ReportTimeSeriesChartSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $ReportTimeSeriesChartSettings &&
        showTitle == other.showTitle &&
        title == other.title &&
        titleFont == other.titleFont &&
        titleColor == other.titleColor &&
        titleAlignment == other.titleAlignment &&
        thresholds == other.thresholds &&
        stack == other.stack &&
        grid == other.grid &&
        yAxes == other.yAxes &&
        xAxis == other.xAxis &&
        barWidthSettings == other.barWidthSettings &&
        noAggregationBarWidthSettings == other.noAggregationBarWidthSettings &&
        states == other.states &&
        comparisonEnabled == other.comparisonEnabled &&
        timeForComparison == other.timeForComparison &&
        comparisonCustomIntervalValue == other.comparisonCustomIntervalValue &&
        comparisonXAxis == other.comparisonXAxis &&
        showLegend == other.showLegend &&
        legendColumnTitleFont == other.legendColumnTitleFont &&
        legendColumnTitleColor == other.legendColumnTitleColor &&
        legendLabelFont == other.legendLabelFont &&
        legendLabelColor == other.legendLabelColor &&
        legendValueFont == other.legendValueFont &&
        legendValueColor == other.legendValueColor &&
        legendConfig == other.legendConfig &&
        xaxis == other.xaxis &&
        yaxes == other.yaxes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showTitle.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, titleFont.hashCode);
    _$hash = $jc(_$hash, titleColor.hashCode);
    _$hash = $jc(_$hash, titleAlignment.hashCode);
    _$hash = $jc(_$hash, thresholds.hashCode);
    _$hash = $jc(_$hash, stack.hashCode);
    _$hash = $jc(_$hash, grid.hashCode);
    _$hash = $jc(_$hash, yAxes.hashCode);
    _$hash = $jc(_$hash, xAxis.hashCode);
    _$hash = $jc(_$hash, barWidthSettings.hashCode);
    _$hash = $jc(_$hash, noAggregationBarWidthSettings.hashCode);
    _$hash = $jc(_$hash, states.hashCode);
    _$hash = $jc(_$hash, comparisonEnabled.hashCode);
    _$hash = $jc(_$hash, timeForComparison.hashCode);
    _$hash = $jc(_$hash, comparisonCustomIntervalValue.hashCode);
    _$hash = $jc(_$hash, comparisonXAxis.hashCode);
    _$hash = $jc(_$hash, showLegend.hashCode);
    _$hash = $jc(_$hash, legendColumnTitleFont.hashCode);
    _$hash = $jc(_$hash, legendColumnTitleColor.hashCode);
    _$hash = $jc(_$hash, legendLabelFont.hashCode);
    _$hash = $jc(_$hash, legendLabelColor.hashCode);
    _$hash = $jc(_$hash, legendValueFont.hashCode);
    _$hash = $jc(_$hash, legendValueColor.hashCode);
    _$hash = $jc(_$hash, legendConfig.hashCode);
    _$hash = $jc(_$hash, xaxis.hashCode);
    _$hash = $jc(_$hash, yaxes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$ReportTimeSeriesChartSettings')
          ..add('showTitle', showTitle)
          ..add('title', title)
          ..add('titleFont', titleFont)
          ..add('titleColor', titleColor)
          ..add('titleAlignment', titleAlignment)
          ..add('thresholds', thresholds)
          ..add('stack', stack)
          ..add('grid', grid)
          ..add('yAxes', yAxes)
          ..add('xAxis', xAxis)
          ..add('barWidthSettings', barWidthSettings)
          ..add('noAggregationBarWidthSettings', noAggregationBarWidthSettings)
          ..add('states', states)
          ..add('comparisonEnabled', comparisonEnabled)
          ..add('timeForComparison', timeForComparison)
          ..add('comparisonCustomIntervalValue', comparisonCustomIntervalValue)
          ..add('comparisonXAxis', comparisonXAxis)
          ..add('showLegend', showLegend)
          ..add('legendColumnTitleFont', legendColumnTitleFont)
          ..add('legendColumnTitleColor', legendColumnTitleColor)
          ..add('legendLabelFont', legendLabelFont)
          ..add('legendLabelColor', legendLabelColor)
          ..add('legendValueFont', legendValueFont)
          ..add('legendValueColor', legendValueColor)
          ..add('legendConfig', legendConfig)
          ..add('xaxis', xaxis)
          ..add('yaxes', yaxes))
        .toString();
  }
}

class $ReportTimeSeriesChartSettingsBuilder
    implements
        Builder<
          $ReportTimeSeriesChartSettings,
          $ReportTimeSeriesChartSettingsBuilder
        >,
        ReportTimeSeriesChartSettingsBuilder {
  _$$ReportTimeSeriesChartSettings? _$v;

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

  ListBuilder<TimeSeriesChartThreshold>? _thresholds;
  ListBuilder<TimeSeriesChartThreshold> get thresholds =>
      _$this._thresholds ??= ListBuilder<TimeSeriesChartThreshold>();
  set thresholds(covariant ListBuilder<TimeSeriesChartThreshold>? thresholds) =>
      _$this._thresholds = thresholds;

  bool? _stack;
  bool? get stack => _$this._stack;
  set stack(covariant bool? stack) => _$this._stack = stack;

  TimeSeriesChartGridSettingsBuilder? _grid;
  TimeSeriesChartGridSettingsBuilder get grid =>
      _$this._grid ??= TimeSeriesChartGridSettingsBuilder();
  set grid(covariant TimeSeriesChartGridSettingsBuilder? grid) =>
      _$this._grid = grid;

  MapBuilder<String, TimeSeriesChartYAxisSettings>? _yAxes;
  MapBuilder<String, TimeSeriesChartYAxisSettings> get yAxes =>
      _$this._yAxes ??= MapBuilder<String, TimeSeriesChartYAxisSettings>();
  set yAxes(
    covariant MapBuilder<String, TimeSeriesChartYAxisSettings>? yAxes,
  ) => _$this._yAxes = yAxes;

  TimeSeriesChartXAxisSettingsBuilder? _xAxis;
  TimeSeriesChartXAxisSettingsBuilder get xAxis =>
      _$this._xAxis ??= TimeSeriesChartXAxisSettingsBuilder();
  set xAxis(covariant TimeSeriesChartXAxisSettingsBuilder? xAxis) =>
      _$this._xAxis = xAxis;

  TimeSeriesChartBarWidthSettingsBuilder? _barWidthSettings;
  TimeSeriesChartBarWidthSettingsBuilder get barWidthSettings =>
      _$this._barWidthSettings ??= TimeSeriesChartBarWidthSettingsBuilder();
  set barWidthSettings(
    covariant TimeSeriesChartBarWidthSettingsBuilder? barWidthSettings,
  ) => _$this._barWidthSettings = barWidthSettings;

  TimeSeriesChartNoAggregationBarWidthSettingsBuilder?
  _noAggregationBarWidthSettings;
  TimeSeriesChartNoAggregationBarWidthSettingsBuilder
  get noAggregationBarWidthSettings => _$this._noAggregationBarWidthSettings ??=
      TimeSeriesChartNoAggregationBarWidthSettingsBuilder();
  set noAggregationBarWidthSettings(
    covariant TimeSeriesChartNoAggregationBarWidthSettingsBuilder?
    noAggregationBarWidthSettings,
  ) => _$this._noAggregationBarWidthSettings = noAggregationBarWidthSettings;

  ListBuilder<TimeSeriesChartStateSettings>? _states;
  ListBuilder<TimeSeriesChartStateSettings> get states =>
      _$this._states ??= ListBuilder<TimeSeriesChartStateSettings>();
  set states(covariant ListBuilder<TimeSeriesChartStateSettings>? states) =>
      _$this._states = states;

  bool? _comparisonEnabled;
  bool? get comparisonEnabled => _$this._comparisonEnabled;
  set comparisonEnabled(covariant bool? comparisonEnabled) =>
      _$this._comparisonEnabled = comparisonEnabled;

  ComparisonDuration? _timeForComparison;
  ComparisonDuration? get timeForComparison => _$this._timeForComparison;
  set timeForComparison(covariant ComparisonDuration? timeForComparison) =>
      _$this._timeForComparison = timeForComparison;

  int? _comparisonCustomIntervalValue;
  int? get comparisonCustomIntervalValue =>
      _$this._comparisonCustomIntervalValue;
  set comparisonCustomIntervalValue(
    covariant int? comparisonCustomIntervalValue,
  ) => _$this._comparisonCustomIntervalValue = comparisonCustomIntervalValue;

  TimeSeriesChartXAxisSettingsBuilder? _comparisonXAxis;
  TimeSeriesChartXAxisSettingsBuilder get comparisonXAxis =>
      _$this._comparisonXAxis ??= TimeSeriesChartXAxisSettingsBuilder();
  set comparisonXAxis(
    covariant TimeSeriesChartXAxisSettingsBuilder? comparisonXAxis,
  ) => _$this._comparisonXAxis = comparisonXAxis;

  bool? _showLegend;
  bool? get showLegend => _$this._showLegend;
  set showLegend(covariant bool? showLegend) => _$this._showLegend = showLegend;

  FontBuilder? _legendColumnTitleFont;
  FontBuilder get legendColumnTitleFont =>
      _$this._legendColumnTitleFont ??= FontBuilder();
  set legendColumnTitleFont(covariant FontBuilder? legendColumnTitleFont) =>
      _$this._legendColumnTitleFont = legendColumnTitleFont;

  String? _legendColumnTitleColor;
  String? get legendColumnTitleColor => _$this._legendColumnTitleColor;
  set legendColumnTitleColor(covariant String? legendColumnTitleColor) =>
      _$this._legendColumnTitleColor = legendColumnTitleColor;

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

  LegendConfigBuilder? _legendConfig;
  LegendConfigBuilder get legendConfig =>
      _$this._legendConfig ??= LegendConfigBuilder();
  set legendConfig(covariant LegendConfigBuilder? legendConfig) =>
      _$this._legendConfig = legendConfig;

  TimeSeriesChartXAxisSettingsBuilder? _xaxis;
  TimeSeriesChartXAxisSettingsBuilder get xaxis =>
      _$this._xaxis ??= TimeSeriesChartXAxisSettingsBuilder();
  set xaxis(covariant TimeSeriesChartXAxisSettingsBuilder? xaxis) =>
      _$this._xaxis = xaxis;

  MapBuilder<String, TimeSeriesChartYAxisSettings>? _yaxes;
  MapBuilder<String, TimeSeriesChartYAxisSettings> get yaxes =>
      _$this._yaxes ??= MapBuilder<String, TimeSeriesChartYAxisSettings>();
  set yaxes(
    covariant MapBuilder<String, TimeSeriesChartYAxisSettings>? yaxes,
  ) => _$this._yaxes = yaxes;

  $ReportTimeSeriesChartSettingsBuilder() {
    $ReportTimeSeriesChartSettings._defaults(this);
  }

  $ReportTimeSeriesChartSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showTitle = $v.showTitle;
      _title = $v.title;
      _titleFont = $v.titleFont?.toBuilder();
      _titleColor = $v.titleColor;
      _titleAlignment = $v.titleAlignment;
      _thresholds = $v.thresholds?.toBuilder();
      _stack = $v.stack;
      _grid = $v.grid?.toBuilder();
      _yAxes = $v.yAxes?.toBuilder();
      _xAxis = $v.xAxis?.toBuilder();
      _barWidthSettings = $v.barWidthSettings?.toBuilder();
      _noAggregationBarWidthSettings = $v.noAggregationBarWidthSettings
          ?.toBuilder();
      _states = $v.states?.toBuilder();
      _comparisonEnabled = $v.comparisonEnabled;
      _timeForComparison = $v.timeForComparison;
      _comparisonCustomIntervalValue = $v.comparisonCustomIntervalValue;
      _comparisonXAxis = $v.comparisonXAxis?.toBuilder();
      _showLegend = $v.showLegend;
      _legendColumnTitleFont = $v.legendColumnTitleFont?.toBuilder();
      _legendColumnTitleColor = $v.legendColumnTitleColor;
      _legendLabelFont = $v.legendLabelFont?.toBuilder();
      _legendLabelColor = $v.legendLabelColor;
      _legendValueFont = $v.legendValueFont?.toBuilder();
      _legendValueColor = $v.legendValueColor;
      _legendConfig = $v.legendConfig?.toBuilder();
      _xaxis = $v.xaxis?.toBuilder();
      _yaxes = $v.yaxes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $ReportTimeSeriesChartSettings other) {
    _$v = other as _$$ReportTimeSeriesChartSettings;
  }

  @override
  void update(void Function($ReportTimeSeriesChartSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $ReportTimeSeriesChartSettings build() => _build();

  _$$ReportTimeSeriesChartSettings _build() {
    _$$ReportTimeSeriesChartSettings _$result;
    try {
      _$result =
          _$v ??
          _$$ReportTimeSeriesChartSettings._(
            showTitle: showTitle,
            title: title,
            titleFont: _titleFont?.build(),
            titleColor: titleColor,
            titleAlignment: titleAlignment,
            thresholds: _thresholds?.build(),
            stack: stack,
            grid: _grid?.build(),
            yAxes: _yAxes?.build(),
            xAxis: _xAxis?.build(),
            barWidthSettings: _barWidthSettings?.build(),
            noAggregationBarWidthSettings: _noAggregationBarWidthSettings
                ?.build(),
            states: _states?.build(),
            comparisonEnabled: comparisonEnabled,
            timeForComparison: timeForComparison,
            comparisonCustomIntervalValue: comparisonCustomIntervalValue,
            comparisonXAxis: _comparisonXAxis?.build(),
            showLegend: showLegend,
            legendColumnTitleFont: _legendColumnTitleFont?.build(),
            legendColumnTitleColor: legendColumnTitleColor,
            legendLabelFont: _legendLabelFont?.build(),
            legendLabelColor: legendLabelColor,
            legendValueFont: _legendValueFont?.build(),
            legendValueColor: legendValueColor,
            legendConfig: _legendConfig?.build(),
            xaxis: _xaxis?.build(),
            yaxes: _yaxes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'titleFont';
        _titleFont?.build();

        _$failedField = 'thresholds';
        _thresholds?.build();

        _$failedField = 'grid';
        _grid?.build();
        _$failedField = 'yAxes';
        _yAxes?.build();
        _$failedField = 'xAxis';
        _xAxis?.build();
        _$failedField = 'barWidthSettings';
        _barWidthSettings?.build();
        _$failedField = 'noAggregationBarWidthSettings';
        _noAggregationBarWidthSettings?.build();
        _$failedField = 'states';
        _states?.build();

        _$failedField = 'comparisonXAxis';
        _comparisonXAxis?.build();

        _$failedField = 'legendColumnTitleFont';
        _legendColumnTitleFont?.build();

        _$failedField = 'legendLabelFont';
        _legendLabelFont?.build();

        _$failedField = 'legendValueFont';
        _legendValueFont?.build();

        _$failedField = 'legendConfig';
        _legendConfig?.build();
        _$failedField = 'xaxis';
        _xaxis?.build();
        _$failedField = 'yaxes';
        _yaxes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'$ReportTimeSeriesChartSettings',
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
