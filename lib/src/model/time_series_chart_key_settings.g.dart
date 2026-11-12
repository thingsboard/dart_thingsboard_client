// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_chart_key_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSeriesChartKeySettings extends TimeSeriesChartKeySettings {
  @override
  final BarSeriesSettings? barSettings;
  @override
  final String? yaxisId;
  @override
  final TimeSeriesChartSeriesType? seriesType;
  @override
  final String? yAxisId;
  @override
  final LineSeriesSettings? lineSettings;
  @override
  final bool? showInLegend;
  @override
  final DataKeyComparisonSettings? comparisonSettings;
  @override
  final DataKeySettingsType type;

  factory _$TimeSeriesChartKeySettings([
    void Function(TimeSeriesChartKeySettingsBuilder)? updates,
  ]) => (TimeSeriesChartKeySettingsBuilder()..update(updates))._build();

  _$TimeSeriesChartKeySettings._({
    this.barSettings,
    this.yaxisId,
    this.seriesType,
    this.yAxisId,
    this.lineSettings,
    this.showInLegend,
    this.comparisonSettings,
    required this.type,
  }) : super._();
  @override
  TimeSeriesChartKeySettings rebuild(
    void Function(TimeSeriesChartKeySettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimeSeriesChartKeySettingsBuilder toBuilder() =>
      TimeSeriesChartKeySettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSeriesChartKeySettings &&
        barSettings == other.barSettings &&
        yaxisId == other.yaxisId &&
        seriesType == other.seriesType &&
        yAxisId == other.yAxisId &&
        lineSettings == other.lineSettings &&
        showInLegend == other.showInLegend &&
        comparisonSettings == other.comparisonSettings &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, barSettings.hashCode);
    _$hash = $jc(_$hash, yaxisId.hashCode);
    _$hash = $jc(_$hash, seriesType.hashCode);
    _$hash = $jc(_$hash, yAxisId.hashCode);
    _$hash = $jc(_$hash, lineSettings.hashCode);
    _$hash = $jc(_$hash, showInLegend.hashCode);
    _$hash = $jc(_$hash, comparisonSettings.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSeriesChartKeySettings')
          ..add('barSettings', barSettings)
          ..add('yaxisId', yaxisId)
          ..add('seriesType', seriesType)
          ..add('yAxisId', yAxisId)
          ..add('lineSettings', lineSettings)
          ..add('showInLegend', showInLegend)
          ..add('comparisonSettings', comparisonSettings)
          ..add('type', type))
        .toString();
  }
}

class TimeSeriesChartKeySettingsBuilder
    implements
        Builder<TimeSeriesChartKeySettings, TimeSeriesChartKeySettingsBuilder>,
        DataKeySettingsBuilder {
  _$TimeSeriesChartKeySettings? _$v;

  BarSeriesSettingsBuilder? _barSettings;
  BarSeriesSettingsBuilder get barSettings =>
      _$this._barSettings ??= BarSeriesSettingsBuilder();
  set barSettings(covariant BarSeriesSettingsBuilder? barSettings) =>
      _$this._barSettings = barSettings;

  String? _yaxisId;
  String? get yaxisId => _$this._yaxisId;
  set yaxisId(covariant String? yaxisId) => _$this._yaxisId = yaxisId;

  TimeSeriesChartSeriesType? _seriesType;
  TimeSeriesChartSeriesType? get seriesType => _$this._seriesType;
  set seriesType(covariant TimeSeriesChartSeriesType? seriesType) =>
      _$this._seriesType = seriesType;

  String? _yAxisId;
  String? get yAxisId => _$this._yAxisId;
  set yAxisId(covariant String? yAxisId) => _$this._yAxisId = yAxisId;

  LineSeriesSettingsBuilder? _lineSettings;
  LineSeriesSettingsBuilder get lineSettings =>
      _$this._lineSettings ??= LineSeriesSettingsBuilder();
  set lineSettings(covariant LineSeriesSettingsBuilder? lineSettings) =>
      _$this._lineSettings = lineSettings;

  bool? _showInLegend;
  bool? get showInLegend => _$this._showInLegend;
  set showInLegend(covariant bool? showInLegend) =>
      _$this._showInLegend = showInLegend;

  DataKeyComparisonSettingsBuilder? _comparisonSettings;
  DataKeyComparisonSettingsBuilder get comparisonSettings =>
      _$this._comparisonSettings ??= DataKeyComparisonSettingsBuilder();
  set comparisonSettings(
    covariant DataKeyComparisonSettingsBuilder? comparisonSettings,
  ) => _$this._comparisonSettings = comparisonSettings;

  DataKeySettingsType? _type;
  DataKeySettingsType? get type => _$this._type;
  set type(covariant DataKeySettingsType? type) => _$this._type = type;

  TimeSeriesChartKeySettingsBuilder() {
    TimeSeriesChartKeySettings._defaults(this);
  }

  TimeSeriesChartKeySettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _barSettings = $v.barSettings?.toBuilder();
      _yaxisId = $v.yaxisId;
      _seriesType = $v.seriesType;
      _yAxisId = $v.yAxisId;
      _lineSettings = $v.lineSettings?.toBuilder();
      _showInLegend = $v.showInLegend;
      _comparisonSettings = $v.comparisonSettings?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TimeSeriesChartKeySettings other) {
    _$v = other as _$TimeSeriesChartKeySettings;
  }

  @override
  void update(void Function(TimeSeriesChartKeySettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSeriesChartKeySettings build() => _build();

  _$TimeSeriesChartKeySettings _build() {
    _$TimeSeriesChartKeySettings _$result;
    try {
      _$result =
          _$v ??
          _$TimeSeriesChartKeySettings._(
            barSettings: _barSettings?.build(),
            yaxisId: yaxisId,
            seriesType: seriesType,
            yAxisId: yAxisId,
            lineSettings: _lineSettings?.build(),
            showInLegend: showInLegend,
            comparisonSettings: _comparisonSettings?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'TimeSeriesChartKeySettings',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'barSettings';
        _barSettings?.build();

        _$failedField = 'lineSettings';
        _lineSettings?.build();

        _$failedField = 'comparisonSettings';
        _comparisonSettings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TimeSeriesChartKeySettings',
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
