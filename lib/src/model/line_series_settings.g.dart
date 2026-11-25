// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_series_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LineSeriesSettings extends LineSeriesSettings {
  @override
  final bool? showLine;
  @override
  final bool? step;
  @override
  final LineSeriesStepType? stepType;
  @override
  final bool? smooth;
  @override
  final ChartLineType? lineType;
  @override
  final double? lineWidth;
  @override
  final bool? showPoints;
  @override
  final bool? showPointLabel;
  @override
  final ChartLabelPosition? pointLabelPosition;
  @override
  final Font? pointLabelFont;
  @override
  final String? pointLabelColor;
  @override
  final bool? enablePointLabelBackground;
  @override
  final String? pointLabelBackground;
  @override
  final ChartShape? pointShape;
  @override
  final double? pointSize;
  @override
  final ChartFillSettings? fillAreaSettings;

  factory _$LineSeriesSettings([
    void Function(LineSeriesSettingsBuilder)? updates,
  ]) => (LineSeriesSettingsBuilder()..update(updates))._build();

  _$LineSeriesSettings._({
    this.showLine,
    this.step,
    this.stepType,
    this.smooth,
    this.lineType,
    this.lineWidth,
    this.showPoints,
    this.showPointLabel,
    this.pointLabelPosition,
    this.pointLabelFont,
    this.pointLabelColor,
    this.enablePointLabelBackground,
    this.pointLabelBackground,
    this.pointShape,
    this.pointSize,
    this.fillAreaSettings,
  }) : super._();
  @override
  LineSeriesSettings rebuild(
    void Function(LineSeriesSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LineSeriesSettingsBuilder toBuilder() =>
      LineSeriesSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LineSeriesSettings &&
        showLine == other.showLine &&
        step == other.step &&
        stepType == other.stepType &&
        smooth == other.smooth &&
        lineType == other.lineType &&
        lineWidth == other.lineWidth &&
        showPoints == other.showPoints &&
        showPointLabel == other.showPointLabel &&
        pointLabelPosition == other.pointLabelPosition &&
        pointLabelFont == other.pointLabelFont &&
        pointLabelColor == other.pointLabelColor &&
        enablePointLabelBackground == other.enablePointLabelBackground &&
        pointLabelBackground == other.pointLabelBackground &&
        pointShape == other.pointShape &&
        pointSize == other.pointSize &&
        fillAreaSettings == other.fillAreaSettings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showLine.hashCode);
    _$hash = $jc(_$hash, step.hashCode);
    _$hash = $jc(_$hash, stepType.hashCode);
    _$hash = $jc(_$hash, smooth.hashCode);
    _$hash = $jc(_$hash, lineType.hashCode);
    _$hash = $jc(_$hash, lineWidth.hashCode);
    _$hash = $jc(_$hash, showPoints.hashCode);
    _$hash = $jc(_$hash, showPointLabel.hashCode);
    _$hash = $jc(_$hash, pointLabelPosition.hashCode);
    _$hash = $jc(_$hash, pointLabelFont.hashCode);
    _$hash = $jc(_$hash, pointLabelColor.hashCode);
    _$hash = $jc(_$hash, enablePointLabelBackground.hashCode);
    _$hash = $jc(_$hash, pointLabelBackground.hashCode);
    _$hash = $jc(_$hash, pointShape.hashCode);
    _$hash = $jc(_$hash, pointSize.hashCode);
    _$hash = $jc(_$hash, fillAreaSettings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LineSeriesSettings')
          ..add('showLine', showLine)
          ..add('step', step)
          ..add('stepType', stepType)
          ..add('smooth', smooth)
          ..add('lineType', lineType)
          ..add('lineWidth', lineWidth)
          ..add('showPoints', showPoints)
          ..add('showPointLabel', showPointLabel)
          ..add('pointLabelPosition', pointLabelPosition)
          ..add('pointLabelFont', pointLabelFont)
          ..add('pointLabelColor', pointLabelColor)
          ..add('enablePointLabelBackground', enablePointLabelBackground)
          ..add('pointLabelBackground', pointLabelBackground)
          ..add('pointShape', pointShape)
          ..add('pointSize', pointSize)
          ..add('fillAreaSettings', fillAreaSettings))
        .toString();
  }
}

class LineSeriesSettingsBuilder
    implements Builder<LineSeriesSettings, LineSeriesSettingsBuilder> {
  _$LineSeriesSettings? _$v;

  bool? _showLine;
  bool? get showLine => _$this._showLine;
  set showLine(bool? showLine) => _$this._showLine = showLine;

  bool? _step;
  bool? get step => _$this._step;
  set step(bool? step) => _$this._step = step;

  LineSeriesStepType? _stepType;
  LineSeriesStepType? get stepType => _$this._stepType;
  set stepType(LineSeriesStepType? stepType) => _$this._stepType = stepType;

  bool? _smooth;
  bool? get smooth => _$this._smooth;
  set smooth(bool? smooth) => _$this._smooth = smooth;

  ChartLineType? _lineType;
  ChartLineType? get lineType => _$this._lineType;
  set lineType(ChartLineType? lineType) => _$this._lineType = lineType;

  double? _lineWidth;
  double? get lineWidth => _$this._lineWidth;
  set lineWidth(double? lineWidth) => _$this._lineWidth = lineWidth;

  bool? _showPoints;
  bool? get showPoints => _$this._showPoints;
  set showPoints(bool? showPoints) => _$this._showPoints = showPoints;

  bool? _showPointLabel;
  bool? get showPointLabel => _$this._showPointLabel;
  set showPointLabel(bool? showPointLabel) =>
      _$this._showPointLabel = showPointLabel;

  ChartLabelPosition? _pointLabelPosition;
  ChartLabelPosition? get pointLabelPosition => _$this._pointLabelPosition;
  set pointLabelPosition(ChartLabelPosition? pointLabelPosition) =>
      _$this._pointLabelPosition = pointLabelPosition;

  FontBuilder? _pointLabelFont;
  FontBuilder get pointLabelFont => _$this._pointLabelFont ??= FontBuilder();
  set pointLabelFont(FontBuilder? pointLabelFont) =>
      _$this._pointLabelFont = pointLabelFont;

  String? _pointLabelColor;
  String? get pointLabelColor => _$this._pointLabelColor;
  set pointLabelColor(String? pointLabelColor) =>
      _$this._pointLabelColor = pointLabelColor;

  bool? _enablePointLabelBackground;
  bool? get enablePointLabelBackground => _$this._enablePointLabelBackground;
  set enablePointLabelBackground(bool? enablePointLabelBackground) =>
      _$this._enablePointLabelBackground = enablePointLabelBackground;

  String? _pointLabelBackground;
  String? get pointLabelBackground => _$this._pointLabelBackground;
  set pointLabelBackground(String? pointLabelBackground) =>
      _$this._pointLabelBackground = pointLabelBackground;

  ChartShape? _pointShape;
  ChartShape? get pointShape => _$this._pointShape;
  set pointShape(ChartShape? pointShape) => _$this._pointShape = pointShape;

  double? _pointSize;
  double? get pointSize => _$this._pointSize;
  set pointSize(double? pointSize) => _$this._pointSize = pointSize;

  ChartFillSettingsBuilder? _fillAreaSettings;
  ChartFillSettingsBuilder get fillAreaSettings =>
      _$this._fillAreaSettings ??= ChartFillSettingsBuilder();
  set fillAreaSettings(ChartFillSettingsBuilder? fillAreaSettings) =>
      _$this._fillAreaSettings = fillAreaSettings;

  LineSeriesSettingsBuilder() {
    LineSeriesSettings._defaults(this);
  }

  LineSeriesSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showLine = $v.showLine;
      _step = $v.step;
      _stepType = $v.stepType;
      _smooth = $v.smooth;
      _lineType = $v.lineType;
      _lineWidth = $v.lineWidth;
      _showPoints = $v.showPoints;
      _showPointLabel = $v.showPointLabel;
      _pointLabelPosition = $v.pointLabelPosition;
      _pointLabelFont = $v.pointLabelFont?.toBuilder();
      _pointLabelColor = $v.pointLabelColor;
      _enablePointLabelBackground = $v.enablePointLabelBackground;
      _pointLabelBackground = $v.pointLabelBackground;
      _pointShape = $v.pointShape;
      _pointSize = $v.pointSize;
      _fillAreaSettings = $v.fillAreaSettings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LineSeriesSettings other) {
    _$v = other as _$LineSeriesSettings;
  }

  @override
  void update(void Function(LineSeriesSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LineSeriesSettings build() => _build();

  _$LineSeriesSettings _build() {
    _$LineSeriesSettings _$result;
    try {
      _$result =
          _$v ??
          _$LineSeriesSettings._(
            showLine: showLine,
            step: step,
            stepType: stepType,
            smooth: smooth,
            lineType: lineType,
            lineWidth: lineWidth,
            showPoints: showPoints,
            showPointLabel: showPointLabel,
            pointLabelPosition: pointLabelPosition,
            pointLabelFont: _pointLabelFont?.build(),
            pointLabelColor: pointLabelColor,
            enablePointLabelBackground: enablePointLabelBackground,
            pointLabelBackground: pointLabelBackground,
            pointShape: pointShape,
            pointSize: pointSize,
            fillAreaSettings: _fillAreaSettings?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pointLabelFont';
        _pointLabelFont?.build();

        _$failedField = 'fillAreaSettings';
        _fillAreaSettings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LineSeriesSettings',
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
