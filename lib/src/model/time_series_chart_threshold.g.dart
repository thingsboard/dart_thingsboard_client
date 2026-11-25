// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_chart_threshold.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimeSeriesChartThreshold extends TimeSeriesChartThreshold {
  @override
  final ValueSourceType? type;
  @override
  final double? value;
  @override
  final String? latestKeyType;
  @override
  final String? latestKey;
  @override
  final String? entityKeyType;
  @override
  final String? entityAlias;
  @override
  final String? entityKey;
  @override
  final String? yAxisId;
  @override
  final String? units;
  @override
  final int? decimals;
  @override
  final String? lineColor;
  @override
  final ChartLineType? lineType;
  @override
  final double? lineWidth;
  @override
  final ChartShape? startSymbol;
  @override
  final double? startSymbolSize;
  @override
  final ChartShape? endSymbol;
  @override
  final double? endSymbolSize;
  @override
  final bool? showLabel;
  @override
  final ThresholdLabelPosition? labelPosition;
  @override
  final Font? labelFont;
  @override
  final String? labelColor;
  @override
  final bool? enableLabelBackground;
  @override
  final String? labelBackground;
  @override
  final String? yaxisId;

  factory _$TimeSeriesChartThreshold([
    void Function(TimeSeriesChartThresholdBuilder)? updates,
  ]) => (TimeSeriesChartThresholdBuilder()..update(updates))._build();

  _$TimeSeriesChartThreshold._({
    this.type,
    this.value,
    this.latestKeyType,
    this.latestKey,
    this.entityKeyType,
    this.entityAlias,
    this.entityKey,
    this.yAxisId,
    this.units,
    this.decimals,
    this.lineColor,
    this.lineType,
    this.lineWidth,
    this.startSymbol,
    this.startSymbolSize,
    this.endSymbol,
    this.endSymbolSize,
    this.showLabel,
    this.labelPosition,
    this.labelFont,
    this.labelColor,
    this.enableLabelBackground,
    this.labelBackground,
    this.yaxisId,
  }) : super._();
  @override
  TimeSeriesChartThreshold rebuild(
    void Function(TimeSeriesChartThresholdBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TimeSeriesChartThresholdBuilder toBuilder() =>
      TimeSeriesChartThresholdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimeSeriesChartThreshold &&
        type == other.type &&
        value == other.value &&
        latestKeyType == other.latestKeyType &&
        latestKey == other.latestKey &&
        entityKeyType == other.entityKeyType &&
        entityAlias == other.entityAlias &&
        entityKey == other.entityKey &&
        yAxisId == other.yAxisId &&
        units == other.units &&
        decimals == other.decimals &&
        lineColor == other.lineColor &&
        lineType == other.lineType &&
        lineWidth == other.lineWidth &&
        startSymbol == other.startSymbol &&
        startSymbolSize == other.startSymbolSize &&
        endSymbol == other.endSymbol &&
        endSymbolSize == other.endSymbolSize &&
        showLabel == other.showLabel &&
        labelPosition == other.labelPosition &&
        labelFont == other.labelFont &&
        labelColor == other.labelColor &&
        enableLabelBackground == other.enableLabelBackground &&
        labelBackground == other.labelBackground &&
        yaxisId == other.yaxisId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, latestKeyType.hashCode);
    _$hash = $jc(_$hash, latestKey.hashCode);
    _$hash = $jc(_$hash, entityKeyType.hashCode);
    _$hash = $jc(_$hash, entityAlias.hashCode);
    _$hash = $jc(_$hash, entityKey.hashCode);
    _$hash = $jc(_$hash, yAxisId.hashCode);
    _$hash = $jc(_$hash, units.hashCode);
    _$hash = $jc(_$hash, decimals.hashCode);
    _$hash = $jc(_$hash, lineColor.hashCode);
    _$hash = $jc(_$hash, lineType.hashCode);
    _$hash = $jc(_$hash, lineWidth.hashCode);
    _$hash = $jc(_$hash, startSymbol.hashCode);
    _$hash = $jc(_$hash, startSymbolSize.hashCode);
    _$hash = $jc(_$hash, endSymbol.hashCode);
    _$hash = $jc(_$hash, endSymbolSize.hashCode);
    _$hash = $jc(_$hash, showLabel.hashCode);
    _$hash = $jc(_$hash, labelPosition.hashCode);
    _$hash = $jc(_$hash, labelFont.hashCode);
    _$hash = $jc(_$hash, labelColor.hashCode);
    _$hash = $jc(_$hash, enableLabelBackground.hashCode);
    _$hash = $jc(_$hash, labelBackground.hashCode);
    _$hash = $jc(_$hash, yaxisId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimeSeriesChartThreshold')
          ..add('type', type)
          ..add('value', value)
          ..add('latestKeyType', latestKeyType)
          ..add('latestKey', latestKey)
          ..add('entityKeyType', entityKeyType)
          ..add('entityAlias', entityAlias)
          ..add('entityKey', entityKey)
          ..add('yAxisId', yAxisId)
          ..add('units', units)
          ..add('decimals', decimals)
          ..add('lineColor', lineColor)
          ..add('lineType', lineType)
          ..add('lineWidth', lineWidth)
          ..add('startSymbol', startSymbol)
          ..add('startSymbolSize', startSymbolSize)
          ..add('endSymbol', endSymbol)
          ..add('endSymbolSize', endSymbolSize)
          ..add('showLabel', showLabel)
          ..add('labelPosition', labelPosition)
          ..add('labelFont', labelFont)
          ..add('labelColor', labelColor)
          ..add('enableLabelBackground', enableLabelBackground)
          ..add('labelBackground', labelBackground)
          ..add('yaxisId', yaxisId))
        .toString();
  }
}

class TimeSeriesChartThresholdBuilder
    implements
        Builder<TimeSeriesChartThreshold, TimeSeriesChartThresholdBuilder> {
  _$TimeSeriesChartThreshold? _$v;

  ValueSourceType? _type;
  ValueSourceType? get type => _$this._type;
  set type(ValueSourceType? type) => _$this._type = type;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  String? _latestKeyType;
  String? get latestKeyType => _$this._latestKeyType;
  set latestKeyType(String? latestKeyType) =>
      _$this._latestKeyType = latestKeyType;

  String? _latestKey;
  String? get latestKey => _$this._latestKey;
  set latestKey(String? latestKey) => _$this._latestKey = latestKey;

  String? _entityKeyType;
  String? get entityKeyType => _$this._entityKeyType;
  set entityKeyType(String? entityKeyType) =>
      _$this._entityKeyType = entityKeyType;

  String? _entityAlias;
  String? get entityAlias => _$this._entityAlias;
  set entityAlias(String? entityAlias) => _$this._entityAlias = entityAlias;

  String? _entityKey;
  String? get entityKey => _$this._entityKey;
  set entityKey(String? entityKey) => _$this._entityKey = entityKey;

  String? _yAxisId;
  String? get yAxisId => _$this._yAxisId;
  set yAxisId(String? yAxisId) => _$this._yAxisId = yAxisId;

  String? _units;
  String? get units => _$this._units;
  set units(String? units) => _$this._units = units;

  int? _decimals;
  int? get decimals => _$this._decimals;
  set decimals(int? decimals) => _$this._decimals = decimals;

  String? _lineColor;
  String? get lineColor => _$this._lineColor;
  set lineColor(String? lineColor) => _$this._lineColor = lineColor;

  ChartLineType? _lineType;
  ChartLineType? get lineType => _$this._lineType;
  set lineType(ChartLineType? lineType) => _$this._lineType = lineType;

  double? _lineWidth;
  double? get lineWidth => _$this._lineWidth;
  set lineWidth(double? lineWidth) => _$this._lineWidth = lineWidth;

  ChartShape? _startSymbol;
  ChartShape? get startSymbol => _$this._startSymbol;
  set startSymbol(ChartShape? startSymbol) => _$this._startSymbol = startSymbol;

  double? _startSymbolSize;
  double? get startSymbolSize => _$this._startSymbolSize;
  set startSymbolSize(double? startSymbolSize) =>
      _$this._startSymbolSize = startSymbolSize;

  ChartShape? _endSymbol;
  ChartShape? get endSymbol => _$this._endSymbol;
  set endSymbol(ChartShape? endSymbol) => _$this._endSymbol = endSymbol;

  double? _endSymbolSize;
  double? get endSymbolSize => _$this._endSymbolSize;
  set endSymbolSize(double? endSymbolSize) =>
      _$this._endSymbolSize = endSymbolSize;

  bool? _showLabel;
  bool? get showLabel => _$this._showLabel;
  set showLabel(bool? showLabel) => _$this._showLabel = showLabel;

  ThresholdLabelPosition? _labelPosition;
  ThresholdLabelPosition? get labelPosition => _$this._labelPosition;
  set labelPosition(ThresholdLabelPosition? labelPosition) =>
      _$this._labelPosition = labelPosition;

  FontBuilder? _labelFont;
  FontBuilder get labelFont => _$this._labelFont ??= FontBuilder();
  set labelFont(FontBuilder? labelFont) => _$this._labelFont = labelFont;

  String? _labelColor;
  String? get labelColor => _$this._labelColor;
  set labelColor(String? labelColor) => _$this._labelColor = labelColor;

  bool? _enableLabelBackground;
  bool? get enableLabelBackground => _$this._enableLabelBackground;
  set enableLabelBackground(bool? enableLabelBackground) =>
      _$this._enableLabelBackground = enableLabelBackground;

  String? _labelBackground;
  String? get labelBackground => _$this._labelBackground;
  set labelBackground(String? labelBackground) =>
      _$this._labelBackground = labelBackground;

  String? _yaxisId;
  String? get yaxisId => _$this._yaxisId;
  set yaxisId(String? yaxisId) => _$this._yaxisId = yaxisId;

  TimeSeriesChartThresholdBuilder() {
    TimeSeriesChartThreshold._defaults(this);
  }

  TimeSeriesChartThresholdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _value = $v.value;
      _latestKeyType = $v.latestKeyType;
      _latestKey = $v.latestKey;
      _entityKeyType = $v.entityKeyType;
      _entityAlias = $v.entityAlias;
      _entityKey = $v.entityKey;
      _yAxisId = $v.yAxisId;
      _units = $v.units;
      _decimals = $v.decimals;
      _lineColor = $v.lineColor;
      _lineType = $v.lineType;
      _lineWidth = $v.lineWidth;
      _startSymbol = $v.startSymbol;
      _startSymbolSize = $v.startSymbolSize;
      _endSymbol = $v.endSymbol;
      _endSymbolSize = $v.endSymbolSize;
      _showLabel = $v.showLabel;
      _labelPosition = $v.labelPosition;
      _labelFont = $v.labelFont?.toBuilder();
      _labelColor = $v.labelColor;
      _enableLabelBackground = $v.enableLabelBackground;
      _labelBackground = $v.labelBackground;
      _yaxisId = $v.yaxisId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimeSeriesChartThreshold other) {
    _$v = other as _$TimeSeriesChartThreshold;
  }

  @override
  void update(void Function(TimeSeriesChartThresholdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimeSeriesChartThreshold build() => _build();

  _$TimeSeriesChartThreshold _build() {
    _$TimeSeriesChartThreshold _$result;
    try {
      _$result =
          _$v ??
          _$TimeSeriesChartThreshold._(
            type: type,
            value: value,
            latestKeyType: latestKeyType,
            latestKey: latestKey,
            entityKeyType: entityKeyType,
            entityAlias: entityAlias,
            entityKey: entityKey,
            yAxisId: yAxisId,
            units: units,
            decimals: decimals,
            lineColor: lineColor,
            lineType: lineType,
            lineWidth: lineWidth,
            startSymbol: startSymbol,
            startSymbolSize: startSymbolSize,
            endSymbol: endSymbol,
            endSymbolSize: endSymbolSize,
            showLabel: showLabel,
            labelPosition: labelPosition,
            labelFont: _labelFont?.build(),
            labelColor: labelColor,
            enableLabelBackground: enableLabelBackground,
            labelBackground: labelBackground,
            yaxisId: yaxisId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'labelFont';
        _labelFont?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TimeSeriesChartThreshold',
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
